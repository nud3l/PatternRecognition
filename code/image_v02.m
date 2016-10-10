% load digits as measurement variables
a = prnist([0:9],[1:100]); 
%figure; show(a)
% add rows and columns to create square figure (aspect ratio 1)
b = im_box(a,[],1);
%figure; show(b)
% resample by 16 x 16 pixels
c = im_resize(b,[16,16]);
%figure; show(c)
% convert to PRTools dataset and display
d = prdataset(c);
%scatterd(d,'legend');
% compute all features
nistdata = im_measure(d,'dimension');