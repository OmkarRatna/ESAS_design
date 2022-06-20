clc;
clear;
% MATLAB Code | Sobel Operator from Scratch
addpath 'D:\iiitb\matlab\sqrt\16_bit'
% addpath 'D:\iiitb\matlab\sqrt\32_bit'
addpath 'D:\iiitb\matlab\standard_test_images\test_images\test'
% Read Input Image
input_image = imread('lena_color_256.tif');

% Displaying Input Image
input_image = uint8(input_image);
img=input_image;
%figure, imshow(input_image); title('Input Image');

% Convert the truecolor RGB image to the grayscale image
input_image = rgb2gray(input_image);

% Convert the image to double
input_image = double(input_image);

% Pre-allocate the filtered_image matrix with zeros
filtered_image_exact = zeros(size(input_image));
filtered_image_LESQ = zeros(size(input_image));
filtered_image_fixed = zeros(size(input_image));
filtered_image_float= zeros(size(input_image));
filtered_image_int=zeros(size(input_image));
% Sobel Operator Mask
Mx = [-1 0 1; -2 0 2; -1 0 1];
My = [-1 -2 -1; 0 0 0; 1 2 1];

% Edge Detection Process
% When i = 1 and j = 1, then filtered_image pixel
% position will be filtered_image(2, 2)
% The mask is of 3x3, so we need to traverse
% to filtered_image(size(input_image, 1) - 2
%, size(input_image, 2) - 2)
% Thus we are not considering the borders.
for i = 1:size(input_image, 1) - 2
	for j = 1:size(input_image, 2) - 2

		% Gradient approximations
		Gx = sum(sum(Mx.*input_image(i:i+2, j:j+2)));
		Gy = sum(sum(My.*input_image(i:i+2, j:j+2)));
				
		% Calculate magnitude of vector
		filtered_image_exact(i+1, j+1) = sqrt(Gx.^2 + Gy.^2);
		filtered_image_LESQ(i+1, j+1) = LESQ_EC(Gx.^2 + Gy.^2);
        filtered_image_fixed(i+1, j+1) = sqrt_proposed_fixed(Gx.^2 + Gy.^2);
        filtered_image_float(i+1, j+1) = sqrt_proposed_floating(Gx.^2 + Gy.^2);
        filtered_image_int(i+1, j+1) = sqrt_proposed_int(Gx.^2 + Gy.^2);        
	end
end

% Displaying Filtered Image
filtered_image_exact = uint8(filtered_image_exact);
filtered_image_LESQ = uint8(filtered_image_LESQ);
filtered_image_fixed= uint8(filtered_image_fixed);
filtered_image_float=uint8(filtered_image_float);
filtered_image_int=uint8(filtered_image_int);
%figure, imshow(filtered_image_exact); title('Filtered Image');

% Define a threshold value
 thresholdValue = 100; % varies between [0 255]
output_image_exact = max(filtered_image_exact, thresholdValue);
output_image_exact(output_image_exact == round(thresholdValue)) = 0;
output_image_LESQ = max(filtered_image_LESQ, thresholdValue);
output_image_LESQ(output_image_LESQ == round(thresholdValue)) = 0;
output_image_fixed = max(filtered_image_fixed, thresholdValue);
output_image_fixed(output_image_fixed == round(thresholdValue)) = 0;
output_image_float = max(filtered_image_float, thresholdValue);
output_image_float(output_image_float == round(thresholdValue)) = 0;
output_image_int = max(filtered_image_int, thresholdValue);
output_image_int(output_image_int == round(thresholdValue)) = 0;
% Displaying Output Image
output_image_exat = im2bw(output_image_exact);
output_image_LESQ = im2bw(output_image_LESQ);
output_image_fixed = im2bw(output_image_fixed);
output_image_float=im2bw(output_image_float);
output_image_int=im2bw(output_image_int);

figure, imshow(output_image_exact); title('edge detected Image using exact sqrt');
figure, imshow(img);                title('original image');
figure, imshow(output_image_LESQ);  title('edge detected image using LESQ-EC sqrt');
figure, imshow(output_image_fixed); title('edge detected image using ESAS-fixed sqrt');
figure, imshow(output_image_float); title('edge detected image using ESAS-float sqrt');
figure, imshow(output_image_int); title('edge detected image using ESAS-int sqrrt');

mselesq=immse(filtered_image_exact,filtered_image_LESQ);
msefixed=immse(filtered_image_exact,filtered_image_fixed);
msefloat=immse(filtered_image_exact,filtered_image_float);
mseint=immse(filtered_image_exact,filtered_image_int);

psnrlesq=psnr(filtered_image_exact,filtered_image_LESQ);
psnrfixed=psnr(filtered_image_exact,filtered_image_fixed);
psnrfloat=psnr(filtered_image_exact,filtered_image_float);
psnrint=psnr(filtered_image_exact,filtered_image_int);

ssimlesq=ssim(filtered_image_exact,filtered_image_LESQ);
ssimfixed=ssim(filtered_image_exact,filtered_image_fixed);
ssimfloat=ssim(filtered_image_exact,filtered_image_float);
ssimint=ssim(filtered_image_exact,filtered_image_int);
