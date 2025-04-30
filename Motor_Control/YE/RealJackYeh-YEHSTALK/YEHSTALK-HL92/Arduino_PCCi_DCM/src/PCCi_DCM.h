/*
 * File: PCCi_DCM.h
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

#ifndef RTW_HEADER_PCCi_DCM_h_
#define RTW_HEADER_PCCi_DCM_h_
#ifndef PCCi_DCM_COMMON_INCLUDES_
#define PCCi_DCM_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* PCCi_DCM_COMMON_INCLUDES_ */

#include "PCCi_DCM_types.h"
#include "DCM_control.h"
#include "zero_crossing_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

/* Block states (default storage) for system '<Root>' */
typedef struct {
  DW_DCM_control_PCCi_DCM_T DCM_control;/* '<Root>/DCM_control' */
} DW_PCCi_DCM_T;

/* Zero-crossing (trigger) state */
typedef struct {
  ZCE_DCM_control_PCCi_DCM_T DCM_control;/* '<Root>/DCM_control' */
} PrevZCX_PCCi_DCM_T;

/* External inputs (root inport signals with default storage) */
typedef struct {
  uint16_T percRawVal_U16;             /* '<Root>/percRawVal_U16' */
  boolean_T motRotationDir_B;          /* '<Root>/motRotationDir_B' */
} ExtU_PCCi_DCM_T;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  boolean_T indicatorLamp_B;           /* '<Root>/indicatorLamp_B' */
  boolean_T motTerminalA_B;            /* '<Root>/motTerminalA_B' */
  boolean_T motTerminalB_B;            /* '<Root>/motTerminalB_B' */
} ExtY_PCCi_DCM_T;

/* Real-time Model Data Structure */
struct tag_RTM_PCCi_DCM_T {
  const char_T * volatile errorStatus;
};

/* Block states (default storage) */
extern DW_PCCi_DCM_T PCCi_DCM_DW;

/* Zero-crossing (trigger) state */
extern PrevZCX_PCCi_DCM_T PCCi_DCM_PrevZCX;

/* External inputs (root inport signals with default storage) */
extern ExtU_PCCi_DCM_T PCCi_DCM_U;

/* External outputs (root outports fed by signals with default storage) */
extern ExtY_PCCi_DCM_T PCCi_DCM_Y;

/* Model entry point functions */
extern void PCCi_DCM_initialize(void);
extern void PCCi_DCM_step(void);
extern void PCCi_DCM_terminate(void);

/* Real-time Model object */
extern RT_MODEL_PCCi_DCM_T *const PCCi_DCM_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'PCCi_DCM'
 * '<S1>'   : 'PCCi_DCM/DCM_control'
 */
#endif                                 /* RTW_HEADER_PCCi_DCM_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
