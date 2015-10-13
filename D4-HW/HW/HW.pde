/* My first program to send data from Arduino*/

static int i=0;
int ledPin=13;
void setup()
{
   Serial.begin(9600);
   Serial.println("Hello World");
   pinMode( ledPin, OUTPUT);
}

void loop()
{
  digitalWrite(ledPin, HIGH);
  for(; i<5; ++i)
  {
     Serial.println("Hello World");
  }
  delay(1000);
  digitalWrite(ledPin, LOW);
  delay(1000);
}

