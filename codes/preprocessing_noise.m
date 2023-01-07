addpath AuditoryToolbox
addpath support_functions

% Parameters
DATASET = 'TI46-IF.mat';
fs = 12E3; out_fs = 1E3; df =12; 
earQ = 8; stepfactor =0.25; differ=1; 
agcf=1; tauf=32; max_AGC = 4e-4; 
BSAtau1 =4e-3; BSAtau2 = 1e-3; BSAfilterFac = 1;
rng(1);
% ----------

dataset=load(DATASET);
unprocessed = dataset.DATA;
max_len=0;
noise=-1;
for i=1:500
    if size(unprocessed(i).sig,1)>max_len
        max_len=size(unprocessed(i).sig,1);
    end
end
for i=1:500
    if size(unprocessed(i).sig,1)<max_len
        DATA_eq=[unprocessed(i).sig(:,1);zeros((max_len-size(unprocessed(i).sig,1)),1)];
        unprocessed(i).sig=DATA_eq;
    end
end

%%%% Adding noise in this loop
for i=1:100
    unprocessed(i).sig=unprocessed(i).sig+wgn(max_len,1,noise).*(unprocessed(i).sig~=0);
end
DATA = struct([]); % output structure

for i = 1:numel(unprocessed) % Use parfor for parallel pool
    disp(i)
    
    s = LyonPassiveEar(unprocessed(i).sig,fs,df,earQ,stepfactor,differ,agcf,tauf);
    s = min(s,max_AGC);
    s = s/max_AGC;
    S = BSA(s,BSAfilterFac*BSA_filter(out_fs,BSAtau1,BSAtau2));
    DATA(i).type = unprocessed(i).class;
    DATA(i).spk = str2num(unprocessed(i).info{2}{12,2}(2));
    DATA(i).S =sparse(logical(S));
    DATA(i).info = unprocessed(i).info;
end

save('preprocessing.mat', 'DATA')