/*
 * File: DCM_control.h
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

#ifndef RTW_HEADER_DCM_control_h_
#define RTW_HEADER_DCM_control_h_
#ifndef PCCi_DCM_COMMON_INCLUDES_
#define PCCi_DCM_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* PCCi_DCM_COMMON_INCLUDES_ */

#include "zero_crossing_types.h"

/* Block states (default storage) for system '<Root>/DCM_control' */
typedef struct {
  int8_T Delay_DSTATE;                 /* '<S1>/Delay' */
  boolean_T Delay1_DSTATE;             /* '<S1>/Delay1' */
} DW_DCM_control_PCCi_DCM_T;

/* Zero-crossing (trigger) state for system '<Root>/DCM_control' */
typedef struct {
  ZCSigState Delay_Reset_ZCE;          /* '<S1>/Delay' */
} ZCE_DCM_control_PCCi_DCM_T;

extern void PCCi_DCM_DCM_control(uint16_T rtu_percRawVal_U16, boolean_T
  rtu_motRotationDir_B, boolean_T *rty_indicatorLamp_B, boolean_T
  *rty_motTerminalA_B, boolean_T *rty_motTerminalB_B, DW_DCM_control_PCCi_DCM_T *
  localDW, ZCE_DCM_control_PCCi_DCM_T *localZCE);

#endif                                 /* RTW_HEADER_DCM_control_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
