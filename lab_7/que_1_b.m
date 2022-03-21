clc;
clear;
close all;

A = imread('photo1.jpg');
k=input("enter value of k:");

AG =im2double(A);

figure();
imshow(A)
title('Original picture')
figure();
imshow(AG)
title('gray picture')
[U1, S1, V1] = svd(AG(:,:,1));
[U2, S2, V2] = svd(AG(:,:,2));
[U3, S3, V3] = svd(AG(:,:,3));
Ak1 = U1(:, 1:k)*S1(1:k, 1:k)*V1(:,1:k)';
Ak2= U2(:, 1:k)*S2(1:k, 1:k)*V2(:,1:k)';
Ak3= U3(:, 1:k)*S3(1:k, 1:k)*V3(:,1:k)';
Ak=zeros(size(A));
Ak(:,:,1)=Ak1;
Ak(:,:,2)=Ak2;
Ak(:,:,3)=Ak3;
figure();
imshow(Ak);
title('compression picture 1');
a=size(A);

com_rate=((a(1)+a(2))*k)/(a(1)*a(2));
fprintf('compression rate: %s\n',com_rate);
 