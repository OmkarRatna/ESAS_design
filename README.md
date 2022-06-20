# ESAS_design
ESAS is exponent series based approximate square root design, It is part of new methodlogy called approximate computing which draw the benefit of low hardware
cost at the expense of accuracy. ESAS generates approximate square root of radicand it perform better than LESQ-EC in terms of accuracy another approxinmate 
squar root and also perform well in the hardware parameter w.r.t traditional restoring array based square root which is accurate square root design. While LESQ-EC
is limited with integer implementation and restoring array is limited to the fixed or integer implementation, ESAS designed for all three representaion which make
it suitable for numerous application which uses different number representation.

In this project Hardware Implementation of ESAS for three different data formats including Integer, fixed and IEEE half precision floating point format 
along with Implementation of LESQ-EC and Restoring array based square root. All the verilog code for these implemenattion is available in verilog folder.
For application level evalution these square root design are verified on sobel edge detection application and envelope detector for AM demodulation these application 
are written in matlab and logical equivalent code for square root design written as function and used in the above application code for these are available in matlab 
folder.Sobel edge detection application evaluated on three parameter namely SSIM,PSNR and MSE, while AM demodulation evaluation SNR is used to validate these square 
root designs.

For error analaysis of these approximate square root designs three different matlab code also uploaded in matlab folder.In which error disribution code over half 
million random inputs are provided to these design and error distribution plots are plotted which clearly shows advantage of ESAS all implementation over  
