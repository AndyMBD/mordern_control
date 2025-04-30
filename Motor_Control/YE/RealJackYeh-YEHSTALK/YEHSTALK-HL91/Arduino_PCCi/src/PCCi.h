/*
 * File: PCCi.h
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

#ifndef RTW_HEADER_PCCi_h_
#define RTW_HEADER_PCCi_h_
#ifndef PCCi_COMMON_INCLUDES_
#define PCCi_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* PCCi_COMMON_INCLUDES_ */

#include "PCCi_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

/* External inputs (root inport signals with default storage) */
typedef struct {
  uint16_T percRawVal_U16;             /* '<Root>/percRawVal_U16' */
} ExtU_PCCi_T;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  boolean_T indicatorLamp_B;           /* '<Root>/indicatorLamp_B' */
} ExtY_PCCi_T;

/* Real-time Model Data Structure */
struct tag_RTM_PCCi_T {
  const char_T * volatile errorStatus;
};

/* External inputs (root inport signals with default storage) */
extern ExtU_PCCi_T PCCi_U;

/* External outputs (root outports fed by signals with default storage) */
extern ExtY_PCCi_T PCCi_Y;

/* Model entry point functions */
extern void PCCi_initialize(void);
extern void PCCi_step(void);
extern void PCCi_terminate(void);

/* Real-time Model object */
extern RT_MODEL_PCCi_T *const PCCi_M;

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
 * '<Root>' : 'PCCi'
 * '<S1>'   : 'PCCi/calculatePercentFunc'
 */
#endif                                 /* RTW_HEADER_PCCi_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
