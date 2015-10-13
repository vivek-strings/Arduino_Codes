/*
* this program creates the effect of a fading LED using
* analogWrite. Values change between 0 to 250. Data is written
* on analog pin 0.
*
*/

int ledPin=9, brightness=0;

void setup()
{
  pinMode(ledPin, OUTPUT);
}
 void loop()
{
  analogWrite(ledPin, brightness);
  ++brightness;
  if(brightness>=250)
    brightness=0;
  delay(30);
}
