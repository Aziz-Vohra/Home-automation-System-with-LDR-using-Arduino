#define BLYNK_PRINT DebugSerial
#include <SoftwareSerial.h>
SoftwareSerial DebugSerial(2, 3); 
#include <BlynkSimpleStream.h>

char auth[] = "f45626c103a94983b469637978b0c78a";

void setup()
{
  DebugSerial.begin(9600);
   Serial.begin(9600);
  Blynk.begin(Serial, auth);
}

void loop()
{
  Blynk.run();
  if(analogRead(A0)> 750){
    digitalWrite(12,0);
    digitalWrite(11,0);
    digitalWrite(10,0);
    digitalWrite(13,0);
  }
}