//frequencies of possible notes (Hz)
int notes[] = {31, 33, 35, 37, 39, 41, 44, 46, 49, 52, 55, 58, 62,
65, 69, 73, 78, 82, 87, 93, 98, 104, 110, 117, 123, 131, 139,
147, 156, 165, 175, 185, 196, 208, 220, 233, 247, 262, 277, 294,
311, 330, 349, 370, 392, 415, 440, 466, 494, 523, 554, 587, 622,
659, 698, 740, 784, 831, 880, 932, 988, 1047, 1109, 1175, 1245,
1319, 1397, 1480, 1568, 1661, 1760, 1865};

number pattern corresponding to the harmonic scale
(C-E-G-C-E-G-C for example)
int harmonic[] = {0, 4, 7, 12, 16, 19, 24};

int pitchSelector = A0;
int frequencySelector = A1;
int numPiezo = 4;

void setup() {
  
}

void loop() {
  //tune the chime, using a base reference note
  int baseNote = map(analogRead(pitchSelector), 0, 1023, 20, 40);
  int possibleNotes[7];
  //load in the harmonic overtones of the base note
  for (int i = 0; i < 7; i++) {
    possibleNotes[i] = notes[baseNote + harmonic[i]];
  }
  //all four piezos sound a random note in the selected scale
  for (int i = 0; i < numPiezo; i++) {
    int note = int(random(7));
    int duration = random(analogRead(frequencySelector)) + 200;
    noTone(i);
    tone(i, possibleNotes[note], duration);
    //delay(duration);
  }
}
