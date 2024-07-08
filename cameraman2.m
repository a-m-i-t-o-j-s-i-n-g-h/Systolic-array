clc
a=imread('cameraman.tif');
a = im2double(a);
%k=[0 0 1 2 1 0 0;0 3 13 22 13 3 0;1 13 59 97 59 13 1;2 22 97 159 97 22 2;1 13 59 97 59 13 1;0 3 13 22 13 3 0;0 0 1 2 1 0 0];
k=[1 4 7 4 1;4 16 26 16 4;7 26 41 26 7;4 16 26 16 4;1 4 7 4 1];
Kernel = k(:)';
image=im2col(a',[5 5]);
%disp('lowered kernel 1x49:')
%disp(Kernel);
out=Kernel*image;
OUT=reshape(out*(1/273),252,252)
B=OUT';
[Y,X] = size(B);
disp(Y);
disp(X);
[y,x] = size(out);
disp(x);
disp(y);
IMAGE = mat2gray(B); %which converts the matrix into image
min_image = min(IMAGE(:))
max_image = max(IMAGE(:))
figure,imshow(IMAGE)