
% Crops image and creates figures saved in targeted folder.
function [im] = NEF(nefImage, dc, k)
    im = imread(dc,nefImage, '-w -T -6');
    im = im + 100;
    im = imcrop(im, [3500,2200,1800,1500]);
    imshow(im);
    fileName = sprintf('NEF_%d', k);        % Change naming scheme.
    s = strcat('/Figures/', fileName);
    saveas(figure(1),[pwd s]);
end