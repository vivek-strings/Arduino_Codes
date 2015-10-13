int irPin= 0;  // for input from IR sensor
int sensorValue;

void setup()
{
  Serial.begin(9600);
}

void loop()
{
  sensorValue = analogRead(irPin);
  Serial.print("Analog reading =");
  Serial.println(sensorValue);
  
  delay(100);
}
  
  
