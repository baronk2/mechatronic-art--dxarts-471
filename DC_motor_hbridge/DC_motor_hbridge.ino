// DC motor speed with h-bridge and potentiometers

int pwm_pin = 9; // PWM pin for motor (i.e speed)
int speedPin = 0;
int speedVal = 0;
int dirPin = 1;
int dirVal = 0;
int motor1Pin = 3;    // H-bridge leg 1 
int motor2Pin = 4;    // H-bridge leg 2

void setup() {
pinMode(motor1Pin, OUTPUT); 
pinMode(motor2Pin, OUTPUT); 
pinMode(pwm_pin, OUTPUT);
pinMode(speedPin, INPUT); // 1st pot control speed
pinMode(dirPin, INPUT); //2nd pot control direction
}

void clockwise(){
  digitalWrite(motor1Pin, LOW);   
  digitalWrite(motor2Pin, HIGH); 
}

void anti_clockwise(){
  digitalWrite(motor2Pin, LOW);   
  digitalWrite(motor1Pin, HIGH); 
}    

void loop() {
speedVal = analogRead(speedPin) / 4;  
analogWrite(pwm_pin, speedVal);
dirVal = analogRead(dirPin);

  if (dirVal > 0 && dirVal < 512){
    clockwise();
    } else {
    anti_clockwise(); 
    }
 }
