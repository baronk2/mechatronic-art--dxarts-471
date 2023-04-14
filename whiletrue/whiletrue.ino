void setup() {
  pinMode(7, OUTPUT);
}

//the program runs the K'nex motor forever, until it stops working
void loop () {
  while (true) {
    digitalWrite(7, HIGH);
  } 
}
