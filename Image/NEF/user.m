
 % Change Path to where dcraw image program is in NEF folder. 
 % Note this should be in the Image folder titled
 % "farhi-matlab-readraw-bbf1335"a
addpath('/Users/maxhegglin/Documents/MATLAB/Image/farhi-matlab-readraw-bbf1335'); 


dc = readraw;                       %Dcraw image allows normal use of propreitary image format

D = input('Directory: ', 's');
s = strcat(D, '/*NEF');             % Will only pull NEF images
movefile(s, pwd);

list = dir('*.NEF');
for i=1:length(list)
    NEF(list(i).name, dc, i);
end