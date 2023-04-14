int LEDpin = 13;

void setup(){
  pinMode(LEDpin, OUTPUT);
}

void loop(){
  int delayLength;
  if (random(100) > 50) {
    delayLength = 500;
  } else {
    delayLength = 100;
  }
  int increment = delayLength / 20;
  for (int i = 0; i < 10; i++) {
    digitalWrite(LEDpin, HIGH);
    delay(increment);
    digitalWrite(LEDpin, LOW);
    delay(increment);
  }
}
