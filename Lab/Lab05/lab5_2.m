notecreate = @(frq,dur) sin(2*pi* [1:dur]/8192 * (440*2.^((frq-1)/12)));
notename = {'A' 'A#' 'B' 'C' 'C#' 'D' 'D#' 'E' 'F' 'F#' 'G' 'G#'};
song = {'G' 'E' 'E' 'F' 'D' 'D' 'C' 'D' 'E' 'F' 'G' 'G' 'G' 'G' 'E' 'E' 'F' 'D' 'D' 'C' 'E' 'G' 'G' 'C'};
dur = [  1   1   2   1   1   2   1   1   1   1   1   1   2   1   1   2   1   1   2   1   1   1   1   2 ];

for k1 = 1:length(song)
    idx = strcmp(song(k1), notename);
    songidx(k1) = find(idx);
end

durA = 0.2*8192;
songnote = [];
for k1 = 1:length(songidx)
    songnote = [songnote; [notecreate(songidx(k1), durA*dur(k1))  zeros(1,durA)]'];
end
specgram(songnote,512,8192,320);
soundsc(songnote, 8192);
