int potentiometerValue = 0;

void setup() {
  Serial.begin(9600);
}

void loop() {
  potentiometerValue = analogRead(A0);
  int colors[3];
  colors[0] = potentiometerValue / 4;
  colors[1] = 255 - colors[0];
  colors[2] = colors[0]; //127 + colors[0] / 2;
  Serial.write(colors[0]);
  Serial.write(colors[1]);
  Serial.write(colors[2]);
  Serial.write('*');
  
  
  delay(10);
}
