clear;
close all;

%Part B

[impr, impr_fs] = audioread('impr.wav');
figure()
plot(impr);
title("impr.wav Waveform");
xlabel("Samples ("+ num2str(impr_fs)+"Hz Sampling Frequency)");
ylabel("Amplitude");

%soundsc(impr, impr_fs);

%Part C
[y,oily_fs] = audioread("oilyrag.wav");
figure();
plot(y);
title("oilyrag.wav Waveform");
xlabel("Samples ("+ num2str(oily_fs)+"Hz Sampling Frequency)");
ylabel("Amplitude");
%soundsc(y, oily_fs);

convSignal = conv(impr,y);

figure();
plot(convSignal);
title("Convolution of oilyrag.wav and impr.wav Waveform");
xlabel("Samples ("+ num2str(oily_fs)+"Hz Sampling Frequency)");
ylabel("Amplitude");

soundsc(convSignal, oily_fs);