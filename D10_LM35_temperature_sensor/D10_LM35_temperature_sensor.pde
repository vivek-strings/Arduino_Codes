/*
If you’re using a 5V Arduino, and connecting the sensor directly into an Analog pin, you can use these formulas to turn the 10-bit analog reading into a temperature:
Voltage at pin in milliVolts = (reading from ADC) * (5000/1024)
This formula converts the number 0-1023 from the ADC into 0-5000mV (= 5V)
If you’re using a 3.3V Arduino, you’ll want to use this:
Voltage at pin in milliVolts = (reading from ADC) * (3300/1024)
This formula converts the number 0-1023 from the ADC into 0-3300mV (= 3.3V)
Then, to convert millivolts into temperature, use this formula:
Centigrade temperature = [(analog voltage in mV) - 500] / 10
*/
void setup()

{

Serial.begin(9600);

}

void loop()

{

// read the analog input into a variable:

int analogValue = analogRead(0);

// print the result:

Serial.println(analogValue);

// wait 10 milliseconds for the analog-to-digital converter

// to settle after the last reading:

delay(10);

}
