function [text, size_of_Text] = read_Image(img)
% [fname, path]=uigetfile('*png','Select a image');
% fname = strcat(path,fname);
% img = imread(fname);
% imshow(img);

text = ocr(img);
text = char(text.Words);
a = size(text);
size_of_Text = a;

end
% 
% for i = 1:a(1)
%     xxx = strcat(text(i, :));
%     eval(xxx)
% end
