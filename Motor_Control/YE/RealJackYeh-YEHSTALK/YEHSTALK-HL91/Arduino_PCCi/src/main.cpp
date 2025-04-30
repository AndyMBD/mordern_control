extern "C" {
#include "PCCi.h"
#include "calculatePercentFunc.h"
}

#include <Arduino.h>


void setup() {
  // put your setup code here, to run once:
  pinMode(10, OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:
  PCCi_U.percRawVal_U16 = analogRead(A0);
  PCCi_Y.indicatorLamp_B = PCCi_calculatePercentFunc(PCCi_U.percRawVal_U16);
  digitalWrite(10, PCCi_Y.indicatorLamp_B);
}
