import processing.serial.*;

Serial serialPort;

void setup(){
  println(Serial.list());
  serialPort = new Serial(this, Serial.list()[1], 9600);
}

void draw(){
  //to read an array of 7 bytes and convert them into a String
  /*
  byte[] inBuffer = new byte[7];
  while (serialPort.available() > 0){
    inBuffer = serialPort.readBytes();
    serialPort.readBytes(inBuffer);
    if (inBuffer != null){
      //println(inBuffer);
      String myString = new String(inBuffer);
      println(myString);
    }
  }
  */
  //to read a single byte, no conversion
  /*
  while (serialPort.available() > 0){
    int inByte = serialPort.read();
    println(inByte);
    if (inByte == 49){
      println("ascii 49");
    }
    char cByte = char(inByte);
    println(cByte);
    if (cByte == '1'){
      println("that's a one");
    }
  }
  */
  //to read an array of bytes until a particular end byte
  while (serialPort.available() > 0){
    int lf = 10;
    byte[]inBuffer = new byte[7];
    serialPort.readBytesUntil(lf, inBuffer);
    if (inBuffer != null){
      //println(inBuffer);
      String myString = new String(inBuffer);
      String tString = trim(myString);
      println("input:" + tString);
      if (tString.equals("1")){
        println("button pressed");
      }
    }
  }
}
