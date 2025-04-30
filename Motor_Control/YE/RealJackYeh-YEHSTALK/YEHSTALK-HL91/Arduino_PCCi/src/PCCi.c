/*
 * File: PCCi.c
 *
 * Code generated for Simulink model 'PCCi'.
 *
 * Model version                  : 1.11
 * Simulink Coder version         : 9.8 (R2022b) 13-May-2022
 * C/C++ source code generated on : Mon Jan  6 21:05:03 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "PCCi.h"
#include "calculatePercentFunc.h"

/* External inputs (root inport signals with default storage) */
ExtU_PCCi_T PCCi_U;

/* External outputs (root outports fed by signals with default storage) */
ExtY_PCCi_T PCCi_Y;

/* Real-time model */
static RT_MODEL_PCCi_T PCCi_M_;
RT_MODEL_PCCi_T *const PCCi_M = &PCCi_M_;

/* Model step function */
void PCCi_step(void)
{
  /* Outputs for Atomic SubSystem: '<Root>/calculatePercentFunc' */

  /* Outport: '<Root>/indicatorLamp_B' incorporates:
   *  Inport: '<Root>/percRawVal_U16'
   */
  PCCi_Y.indicatorLamp_B = PCCi_calculatePercentFunc(PCCi_U.percRawVal_U16);

  /* End of Outputs for SubSystem: '<Root>/calculatePercentFunc' */
}

/* Model initialize function */
void PCCi_initialize(void)
{
  /* (no initialization code required) */
}

/* Model terminate function */
void PCCi_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
