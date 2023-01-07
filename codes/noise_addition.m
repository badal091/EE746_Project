path = 'C:\Users\badal\OneDrive\Desktop\sem7\EE746\project\746_project\ti46\ti46\ti20\train';
`   path_save = 'C:\Users\badal\OneDrive\Desktop\sem7\EE746\project\746_project\ti46\ti46\data_with_noise\ti46\ti20\train';
folders = dir(path);
dataset = load('TI46-IF.mat')
unprocessed = dataset.DATA;
%DATA = struct([]); % output structure
%l = DATA.sig;

for k=4:length(folders)
    path_2 = strcat(path,'\',folders(k).name);
    path_save2 = strcat(path_save,'\',folders(k).name);
    %disp(path_2)
    path_2_files = dir(path_2);
    for i=4:length(path_2_files)
        path_3 = strcat(path_2,'\',path_2_files(i).name);
        [s,fs]= audioread(path_3);
        p = extractBefore(path_2_files(i).name,10)
        path_save3 = strcat(path_save2,'\',p,'wav');
        unprocessed.sig = awgn(s,0.4,'measured');
        audiowrite(path_save3,data_noise,fs);
    end
end

load('TI46-IF.mat')
l = DATA.sig;

