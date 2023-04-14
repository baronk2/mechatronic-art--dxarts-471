import processing.serial.*;

Serial serialPort;

void setup(){
  serialPort = new Serial(this, Serial.list()[1], 9600);
}

void draw(){}

void keyPressed(){
  serialPort.write(key);
}
