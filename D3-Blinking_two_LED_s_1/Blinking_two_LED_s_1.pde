/* This program will blink two LEDs together and then switch them
off for half a second. This loop continues. */

int yellowPin = 13;                  // Red LED connected to digital pin 12
int greenPin = 10;                // Green LED connected to digital pin 11

void setup()                      // run once, when the sketch starts
{
  pinMode(yellowPin, OUTPUT);        // sets the digital pin as output
  pinMode(greenPin, OUTPUT);      // sets the digital pin as output
}

void loop()                       // run over and over again
{
  digitalWrite(yellowPin, HIGH);     // sets the Red LED on
  digitalWrite(greenPin, HIGH);   // sets the Green LED on
  delay(500);                     // waits for half a second
  digitalWrite(yellowPin, LOW);      // sets the Red LED off
  digitalWrite(greenPin, LOW);    // sets the Green LED off
  delay(500);                     // waits for half a second
}
