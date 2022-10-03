      
Notes_Array = ['A ';'A#';'B ';'C ';'C#';'D ';'D#';'E ';'F ';'F#';'G ';'G#'];
%Happy Birthday Song
Song = ['C ';'C ';'D ';'C ';'F ';'E ';
        'C ';'C ';'D ';'C ';'G ';'F ';
        'C ';'C ';'C ';'A ';'F ';'E ';'D ';
        'A#';'A#';'A ';'F ';'G ';'F ';'F ';];
fs = 8000;     
Nt = 0.2;
for i = 1:1:length(Song)
        sound(g3function(Song(i,1:end),Nt,fs,(13-i)/10));
        sound(0);
        pause(0.3)
end