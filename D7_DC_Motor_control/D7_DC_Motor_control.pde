void setup()
{
  Serial.begin(9600);
  pinMode(3,INPUT);
  pinMode(9,OUTPUT);
}
void loop()
{
  int a= digitalRead(3);
  if(a==HIGH)
  {
    Serial.println("Movement Detected");
    digitalWrite (9, HIGH);
  }
  if(a==LOW)
  {
    Serial.println("Movement not Detected");
    digitalWrite(9, LOW);

  }
}
