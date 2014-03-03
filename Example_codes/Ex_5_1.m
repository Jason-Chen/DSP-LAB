% Record and play back 5 seconds of 16-bit audio sampled at 16000 kHz.
Fs=16000;
x = wavrecord(5*Fs, Fs);
wavplay(x,Fs);            % playback
wavwrite(x,Fs,'16kHz.wav');