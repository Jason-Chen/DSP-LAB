% Read, plot, and play a wav file.
fp=fopen('16kHz.wav','r');
fseek(fp,44,-1)
x=fread(fp,'short');
Fs=16000;
n=0:length(x)-1;
t=n/Fs;
plot(t,x);
xlabel('time in second')
title('audio sampled at 16kHz');
sound(x./32766,Fs,16)
specgram(x,512,Fs,320);
