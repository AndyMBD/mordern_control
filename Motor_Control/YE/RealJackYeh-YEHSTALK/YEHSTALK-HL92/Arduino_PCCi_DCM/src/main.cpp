extern "C" {
#include "PCCi_DCM.h"
#include "DCM_control.h"
}

#include <Arduino.h>

void setup() {
  // put your setup code here, to run once:
  pinMode(10, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(7, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  PCCi_DCM_U.percRawVal_U16 = analogRead(A0);
  PCCi_DCM_U.motRotationDir_B = digitalRead(7);
  PCCi_DCM_DCM_control(PCCi_DCM_U.percRawVal_U16, PCCi_DCM_U.motRotationDir_B,
                       &PCCi_DCM_Y.indicatorLamp_B, &PCCi_DCM_Y.motTerminalA_B,
                       &PCCi_DCM_Y.motTerminalB_B, &PCCi_DCM_DW.DCM_control,
                       &PCCi_DCM_PrevZCX.DCM_control);
  digitalWrite(8, PCCi_DCM_Y.motTerminalA_B);
  digitalWrite(9, PCCi_DCM_Y.motTerminalB_B);
  digitalWrite(10,  PCCi_DCM_Y.indicatorLamp_B);
}
