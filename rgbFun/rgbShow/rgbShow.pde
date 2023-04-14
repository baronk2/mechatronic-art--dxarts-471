import processing.serial.*;

Serial serialPort;
int[] rgbValues;
byte[] inBuffer;
int rgbSelected;

void setup() {
  serialPort = new Serial(this, Serial.list()[0], 9600);
  rgbValues = new int[3];
  inBuffer = new byte[5];
  rgbSelected = 0;
  size(200, 200);
}

void draw() {
  while (serialPort.available() > 0) {
    serialPort.readBytesUntil(10, inBuffer);
    println("inBuffer");
    println(inBuffer);
    println("rgbValues");
    println(rgbValues);
    if(inBuffer != null) {
      rgbSelected = inBuffer[0];
      rgbValues[rgbSelected] = inBuffer[1];
    }
  }
  background(rgbValues[0], rgbValues[1], rgbValues[2]);
  if (rgbSelected == 0) {
    fill(255, 0, 0);
  } else if (rgbSelected == 1) {
    fill(0, 255, 0);
  } else {
    fill(0, 0, 255);
  }
  rect(10, 10, 30, 30);
}
