clc;
clear;
close All;

A = imread('photo1.jpg');
k=input("enter value of k:");

AG =im2double(rgb2gray(A));

figure();
imshow(A)
title('Original picture')
figure();
imshow(AG)
title('gray picture')
[U, S, V] = svd(AG);

Ak = U(:, 1:k)*S(1:k, 1:k)*V(:,1:k)';
figure();
imshow(Ak);
title('compression picture');

com_rate=((a(1)+a(2))*k)/(a(1)*a(2));
fprintf('compression rate: %s\n',com_rate);
