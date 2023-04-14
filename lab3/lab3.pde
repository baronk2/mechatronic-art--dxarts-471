import processing.serial.*;

Serial serialPort;

void setup(){
  size(200,200);
  background(100);
  println(Serial.list());
  serialPort = new Serial(this, Serial.list()[0], 9600);
}

void draw(){
background(100);
  //to read a single byte, no conversion

  while (serialPort.available() > 0){
    int inByte = serialPort.read();
    println(inByte);
    if (inByte == 1){
      rect(130, 100, 55, 55);
    }else{
      triangle(30, 175, 58, 120, 86, 175);
    }
  }

  
}
