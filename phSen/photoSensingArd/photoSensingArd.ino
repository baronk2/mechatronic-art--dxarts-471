int brightnessPin = A0;

void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);
}

void loop() {
  int photo = analogRead(A1);
  Serial.print(photo);
  Serial.print(",");
  Serial.println(map(analogRead(brightnessPin), 0, 1023, 0, 255));
  if (photo < 150 && photo > 100) {
    digitalWrite(13, HIGH);
  } else {
    digitalWrite(13, LOW);
  }
  delay(1);
}
