int message = 0;
//byte message = 0;

int ledPin = 13;

void setup() {
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
}

void loop() {

    if (message != 0){
      //char inChar = (char)message;
    //Serial.println(inChar); 
    Serial.println(message);
    }
    if (message == 'a'){
      digitalWrite(ledPin, HIGH);
    }
    if (message == 'b'){
      digitalWrite(ledPin, LOW);
    }
}


void serialEvent() {
  while (Serial.available()) {
    message = Serial.read();
  }
}


