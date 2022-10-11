clear;
close all;

%Part B

[impr, impr_fs] = audioread('impr.wav');
figure()
plot(impr);
%soundsc(impr);

%Part C
[y,oily_fs] = audioread("oilyrag.wav");
figure();
plot(y);
%soundsc(y);

convSignal = conv(impr,y);

figure();
plot(convSignal);
ylabel("Amplitude")
xlabel("Time Steps")

soundsc(convSignal);