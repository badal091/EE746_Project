rootdir = '.\ti20';
filelist = dir(fullfile(rootdir, '**\*.sph')); %get list of all sph files in any subfolder.
DATA =[];
for i = 1:numel(filelist)
    DATA(i).signal = audioread(append(filelist(i).folder, '\', filelist(i).name));
    DATA(i).label = filelist(i).name(1:2);
    DATA(i).speaker = filelist(i).name(3:4);
    DATA(i).session = filelist(i).name(5:6);
    DATA(i).token = filelist(i).name(7:8);
end