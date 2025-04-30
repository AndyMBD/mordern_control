/*
 * File: PCCi_DCM.c
 *
 * Code generated for Simulink model 'PCCi_DCM'.
 *
 * Model version                  : 1.12
 * Simulink Coder version         : 9.8 (R2022b) 13-May-2022
 * C/C++ source code generated on : Wed Jan  8 10:27:00 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "PCCi_DCM.h"
#include "DCM_control.h"

/* Block states (default storage) */
DW_PCCi_DCM_T PCCi_DCM_DW;

/* Previous zero-crossings (trigger) states */
PrevZCX_PCCi_DCM_T PCCi_DCM_PrevZCX;

/* External inputs (root inport signals with default storage) */
ExtU_PCCi_DCM_T PCCi_DCM_U;

/* External outputs (root outports fed by signals with default storage) */
ExtY_PCCi_DCM_T PCCi_DCM_Y;

/* Real-time model */
static RT_MODEL_PCCi_DCM_T PCCi_DCM_M_;
RT_MODEL_PCCi_DCM_T *const PCCi_DCM_M = &PCCi_DCM_M_;

/* Model step function */
void PCCi_DCM_step(void)
{
  /* Outputs for Atomic SubSystem: '<Root>/DCM_control' */

  /* Inport: '<Root>/percRawVal_U16' incorporates:
   *  Inport: '<Root>/motRotationDir_B'
   *  Outport: '<Root>/indicatorLamp_B'
   *  Outport: '<Root>/motTerminalA_B'
   *  Outport: '<Root>/motTerminalB_B'
   */
  PCCi_DCM_DCM_control(PCCi_DCM_U.percRawVal_U16, PCCi_DCM_U.motRotationDir_B,
                       &PCCi_DCM_Y.indicatorLamp_B, &PCCi_DCM_Y.motTerminalA_B,
                       &PCCi_DCM_Y.motTerminalB_B, &PCCi_DCM_DW.DCM_control,
                       &PCCi_DCM_PrevZCX.DCM_control);

  /* End of Outputs for SubSystem: '<Root>/DCM_control' */
}

/* Model initialize function */
void PCCi_DCM_initialize(void)
{
  PCCi_DCM_PrevZCX.DCM_control.Delay_Reset_ZCE = POS_ZCSIG;
}

/* Model terminate function */
void PCCi_DCM_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
