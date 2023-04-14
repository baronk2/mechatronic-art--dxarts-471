int rgbSelectorPin = A0;
int rgbValuePin = A1;
byte rgbSelector;
byte rgbValue;

void setup() {
  Serial.begin(9600);
}

void loop() {
  rgbSelector = map(analogRead(rgbSelectorPin), 0, 1023, 0, 2);
  //Serial.println(analogRead(rgbValuePin));
  rgbValue = map(analogRead(rgbValuePin), 0, 1023, 0, 255);
  Serial.write(rgbSelector);
  Serial.write(rgbValue);
  Serial.println();
  delay(1000);
}
