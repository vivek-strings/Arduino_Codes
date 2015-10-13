//For Arduino Start kit
//Compatible with all Arduino version
//Last updated 2011-1-13
//www.dfrobot.com
//Temperature Control Led Lesson


#define LED_GREEN 9//Connect Green Led to Digital Pin 9
#define LED_YELLOW 10//Connect Yellow Led to Digital Pin 10
#define LED_RED 11//Connect Red Led to Digital Pin 11
void setup()
{
  unsigned char j;
  Serial.begin(9600);
  for(j=9;j<=11;j++)//Set the led pin as output mode
  {
    pinMode(j,OUTPUT);
  }
}
void loop()
{
  int i;
  while(1)
  {
    i=analogRead(0);//Read temperature on Analog 0
    Serial.println(i);
    if(i>41&&i<61)//if the temperature is between 20-30
    {
      digitalWrite(LED_GREEN,HIGH);//Turn on Green led
      digitalWrite(LED_YELLOW,LOW);//Turn off Yellow led
      digitalWrite(LED_RED,LOW);//Turn off Red led
    }
    else if(i>=61&&i<81)//if the temperature is between 30~40
    {
      digitalWrite(LED_YELLOW,HIGH);//Turn on Yellow led
      digitalWrite(LED_GREEN,LOW);//Turn off Green led
      digitalWrite(LED_RED,LOW);//Turn off Red led
    }
    else//if the temperature is below 20 and over 40
        {
      digitalWrite(LED_RED,HIGH);//turn on Red led
      digitalWrite(LED_YELLOW,LOW);//Turn off yellow led
      digitalWrite(LED_GREEN,LOW);//Turn off green led
    }
      delay(2000);
  }

}
