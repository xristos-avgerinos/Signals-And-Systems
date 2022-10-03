image = 'monkey.jpg';
output = 'monkeyblurred.jpg';

c = 1;
T = 50; % 50% blurred

Input = imread(image);

K = 1/(c*T)*ones(1,c*T+1);      

Blurred_image = imfilter(Input,K,'replicate');  

imwrite(Blurred_image, output);
montage({Input,Blurred_image})
title('Original  Image (Left) and Blurred Image (Right)');