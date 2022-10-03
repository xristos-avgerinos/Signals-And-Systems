RGB = imread('monkey.jpg');
I = im2gray(RGB);
J = dct2(I);
J(abs(J) < 50) = 0; %compression by 50%
K = idct2(J);
K = rescale(K);
montage({I,K})
title('Original Grayscale Image (Left) and Processed Image (Right)');