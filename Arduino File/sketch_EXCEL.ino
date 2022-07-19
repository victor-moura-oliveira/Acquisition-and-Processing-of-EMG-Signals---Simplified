void setup(){
Serial.begin(19200);
Serial.println("CLEARDATA");
Serial.println("LABEL,Acolumn,Bcolumn,...");
Serial.println("RESETTIMER");
}
void loop(){
int sensorValue = analogRead(A0);
Serial.print("DATA,TIME,TIMER,");
Serial.println(sensorValue);
delay(1);
}
