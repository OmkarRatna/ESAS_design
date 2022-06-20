# ESAS_design
ESAS is exponent series based approximate square root design, It is part of new methodlogy called approximate computing which draw the benefit of low hardware
cost at the expense of accuracy. ESAS generates approximate square root of radicand.It perform better than LESQ-EC in terms of accuracy which is another approxinmate 
squar root and also perform well in the hardware parameter w.r.t traditional restoring array based square root which is accurate square root design. While LESQ-EC
is limited with integer implementation and restoring array is limited to the fixed or integer implementation, ESAS designed for all three representaion which make
it suitable for numerous application which may use different data format.

In this project Hardware Implementation of ESAS for three different data formats including Integer, fixed and IEEE half precision floating point format 
along with Implementation of LESQ-EC and Restoring array based square root. All the verilog code for these implemenattion is available in verilog folder.
For application level evalution these square root design are verified on sobel edge detection application and envelope detector for AM demodulation these application 
are written in matlab and logical equivalent code for square root design written as function and used in the above application code for these are available in matlab 
folder.Sobel edge detection application evaluated on three parameter namely SSIM,PSNR and MSE, while AM demodulation evaluation SNR is used to validate these square 
root designs.

For error analaysis of these approximate square root designs three different matlab code also uploaded in matlab folder.Error distribution plot shows clear improvement
of ESAS for all data format over LESQ-EC for this analysis over half million random inputs are given to these designs. Error rate shows rate at which error are generated
by these desgins code for this calculation also provided in matlab. In error analysis code Normalize mean error distance and mean realtive error distance are calculated.
 
![Hardware_implement](https://user-images.githubusercontent.com/90371805/174610669-e14bfcc4-cd25-4d3b-bce4-9655b904d49a.png)
