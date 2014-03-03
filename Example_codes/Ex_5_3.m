% downsampling & upsampling
fp=fopen('16kHz.wav','r');
fseek(fp,44,-1)
x=fread(fp,'short');
Fs=16000;
subplot(3,1,1); plot(x);
xlabel('time in samples')
title('audio sampled at 16kHz');
sound(x./32766,Fs,16)
pause;
prompt='press any key'

% downsampling
y=decimate(x,2);
subplot(3,1,2); plot(y);
xlabel('time in samples')
title('audio downsampled from 16kHz to 8kHz');
sound(y./32766,Fs/2,16)
pause;
prompt='press any key'

% upsampling
z=interp(x,2);
subplot(3,1,3); plot(z);
xlabel('time in samples')
title('audio upsampled from 16kHz to 32kHz');
sound(z./32766,Fs*2,16)
prompt='press any key'

subplot(3,1,1); specgram(x,512,Fs,320);
title('audio sampled at 16kHz');
subplot(3,1,2); specgram(y,512,Fs/2,320);
title('downsampling to 8kHz');
subplot(3,1,3); specgram(z,512,Fs*2,320);
title('upsampling to 32kHz');