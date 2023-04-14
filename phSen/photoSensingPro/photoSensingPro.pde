import processing.serial.*;

Serial serialPort;

void setup() {
  serialPort = new Serial(this, Serial.list()[0], 9600);
  size(600, 600);
  background(255);
}

void draw() {
  
  while (serialPort.available() > 0) {
    String dataString = serialPort.readStringUntil('\n');
    if(dataString != null) {
      int dataArray[] = int(split(dataString, ","));
      println(dataArray);
      int y = mouseY;
      if (y > 600) {
        y = 600;
      }
      println(y);
      background(map(y, 0, 600, 0, 255));
      //background(int(trim(brightness)));
      //println(trim(brightness));
    }
  }
  
}
