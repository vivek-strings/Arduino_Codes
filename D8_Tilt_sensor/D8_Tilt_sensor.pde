//For Arduino Start kit
//Compatible with all Arduino version
//Last updated 2011-1-14
//www.dfrobot.com
//Tilt Sensor Control Lesson


int light=8;//Connect the led to Digital Pin 8 

void setup()
{
    pinMode(light,OUTPUT);//C
}
void loop()
{
    int i;
    while(1)
    {
       i=analogRead(5);//Read Analog Pin 5 which connect to Tilt Sensor
       if(i>200)// if reading is over 200（1V） (When you tilt the tilt sensor)
       {
          digitalWrite(light,HIGH);//Turn on led
       }
       else
       {
          digitalWrite(light,LOW);//Turn off led
       }
    }
}
