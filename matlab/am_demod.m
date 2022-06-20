clc;
clear;
addpath 'D:\iiitb\matlab\sqrt\16_bit'
t=1:0.01:100;
SNR=5; %signal to noise ratio
k=1;%KHz frequancy
wm=0.25*k;%massage frequancey 
wc=100*k;% carrier frequancey
Am=1;%massage amplitude volt
Ac=10;% carrier amplitude volt

%transmitter
message=Am*cos(wm*t);
carrier=Ac*cos(wc*t);
AM_signal=(1+message).*carrier;

%....channel......
tX_signal=awgn(AM_signal,SNR);

%............reciver.........
RX_signal =  tX_signal.*tX_signal;
%RX_signal = AM_signal;
wn = .2;                               % PSD lowpass filter cut - off frequency
[b,a] = butter(5,wn);                   % Design lowpass filter
demod_signal = filter(b,a,RX_signal);   % Apply lowpass filter
demod_signal1 = sqrt(abs(demod_signal));
m=size(demod_signal,2);
for i=1:1:m
demod_signal2(i) = sqrt_proposed_fixed(demod_signal(i));
end
for i=1:1:m
demod_signal3(i) = sqrt_proposed_floating(demod_signal(i));
end
for i=1:1:m
demod_signal4(i) = sqrt_proposed_int(demod_signal(i));
end
for i=1:1:m
demod_signal5(i) = LESQ_EC(demod_signal(i));
end
snr_accurate = snr(demod_signal1,1,6);
snr_esas_fixed = snr(demod_signal2,1,6);
snr_esas_float = snr(demod_signal3,1,6);
snr_esas_int = snr(demod_signal4,1,6);
snr_lesq = snr(demod_signal5,1,6);


 subplot(5,1,1)
 plot(t,message,'.')
 grid on
 title('message signal')
 xlabel('time')
 ylabel('amplitude ') 
 
 subplot(5,1,2)
 plot(t,carrier,'.')
 grid on
 title('carrier signal')
 xlabel('time')
 ylabel('amplitude ')
 
 subplot(5,1,3)
 plot(t,AM_signal,'.')
 grid on
 title('AM signal')
 xlabel('time')
 ylabel('amplitude ')
 
 subplot(5,1,4)
  plot(t,tX_signal,'.')
 grid on
 title('TX signal')
 xlabel('time')
 ylabel('amplitude ')

  subplot(5,1,5)
  plot(t,demod_signal1,'.')
 grid on
 title('Demod signal')
 xlabel('time')
 ylabel('amplitude ')
 