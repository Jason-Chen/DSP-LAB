fp=fopen('bird.wav','r');
fseek(fp,44,-1);
x=fread(fp,'short');
Fs=16000;
subplot(3,2,1); plot(x);
xlabel('time in samples');
title('audio sampled at 16kHz');
sound(x./32766,Fs,16)
subplot(3,2,2); specgram(x,512,Fs,320);

% downsampling
y=decimate(x,2);
subplot(3,2,3); plot(y);
xlabel('time in samples')
title('audio downsampled from 16kHz to 8kHz');
sound(y./32766,Fs/2,16)
subplot(3,2,4); specgram(y,512,Fs,320);

% upsampling
z=interp(y,2);
subplot(3,2,5); plot(z);
xlabel('time in samples');
title('audio upsampled from 8kHz to 16kHz');
sound(z./32766,Fs,16);
subplot(3,2,6); specgram(z,512,Fs,320);
