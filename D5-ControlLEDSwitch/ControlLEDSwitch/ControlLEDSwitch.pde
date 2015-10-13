/*
 *  Switch and LED test program
 */
 
int ledPin = 12;                // LED is connected to pin 12
int switchPin = 2;              // switch is connected to pin 2
int val;                        // variable for reading the pin status


void setup() 
{
  Serial.begin(9600); 
  pinMode(ledPin, OUTPUT);      // Set the LED pin as output
  pinMode(switchPin, INPUT);    // Set the switch pin as input
}


void loop()
{
  val = digitalRead(switchPin);   // read input value and store it in val
  if (val == LOW) 
  {               // check if the button is pressed
    digitalWrite(ledPin, HIGH);   // turn LED on
    Serial.println(digitalRead(switchPin));
  }
  if (val == HIGH) 
  {              // check if the button is not pressed
    digitalWrite(ledPin, LOW);    // turn LED off
    Serial.println(digitalRead(switchPin));
  }
}
