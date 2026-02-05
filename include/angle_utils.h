#ifndef _ANGLE_UTILS_H_
#define _ANGLE_UTILS_H_

#include "global.h"
#include "types.h"

#define ADD_VAR(x, y)  ((x) += (y))
#define SUB_VAR(x, y)  ((x) -= (y))
#define MULT_VAR(x, y) ((x) *= (y))

#define ADD_VAR_CAST(x, y, t)  ((x) += (t)(y))
#define SUB_VAR_CAST(x, y, t)  ((x) -= (t)(y))
#define MULT_VAR_CAST(x, y, t) ((x) *= (t)(y))

#define ADD_S8(x, y)  ADD_VAR_CAST(x, y, s8)
#define ADD_U8(x, y)  ADD_VAR_CAST(x, y, u8)
#define ADD_S16(x, y) ADD_VAR_CAST(x, y, s16)
#define ADD_U16(x, y) ADD_VAR_CAST(x, y, u16)
#define ADD_S32(x, y) ADD_VAR_CAST(x, y, s32)
#define ADD_U32(x, y) ADD_VAR_CAST(x, y, u32)

#define SUB_S8(x, y)  SUB_VAR_CAST(x, y, s8)
#define SUB_U8(x, y)  SUB_VAR_CAST(x, y, u8)
#define SUB_S16(x, y) SUB_VAR_CAST(x, y, s16)
#define SUB_U16(x, y) SUB_VAR_CAST(x, y, u16)
#define SUB_S32(x, y) SUB_VAR_CAST(x, y, s32)
#define SUB_U32(x, y) SUB_VAR_CAST(x, y, u32)

#define MULT_S8(x, y)  MULT_VAR_CAST(x, y, s8)
#define MULT_U8(x, y)  MULT_VAR_CAST(x, y, u8)
#define MULT_S16(x, y) MULT_VAR_CAST(x, y, s16)
#define MULT_U16(x, y) MULT_VAR_CAST(x, y, u16)
#define MULT_S32(x, y) MULT_VAR_CAST(x, y, s32)
#define MULT_U32(x, y) MULT_VAR_CAST(x, y, u32)

#define ADD_ANGLE(x, y)  ADD_S16(x, y)
#define SUB_ANGLE  SUB_S16
#define MULT_ANGLE MULT_S16

// There are some angles that weren't sign-extended until the shield version
#if !PLATFORM_SHIELD
    #define ADD_S8_2   ADD_VAR
    #define ADD_U8_2   ADD_VAR
    #define ADD_S16_2  ADD_VAR
    #define ADD_U16_2  ADD_VAR
    #define ADD_S32_2  ADD_VAR
    #define ADD_U32_2  ADD_VAR
    
    #define SUB_S8_2   SUB_VAR
    #define SUB_U8_2   SUB_VAR
    #define SUB_S16_2  SUB_VAR
    #define SUB_U16_2  SUB_VAR
    #define SUB_S32_2  SUB_VAR
    #define SUB_U32_2  SUB_VAR

    #define MULT_S8_2  MULT_VAR
    #define MULT_U8_2  MULT_VAR
    #define MULT_S16_2 MULT_VAR
    #define MULT_U16_2 MULT_VAR
    #define MULT_S32_2 MULT_VAR
    #define MULT_U32_2 MULT_VAR
#else
    #define ADD_S8_2   ADD_S8
    #define ADD_U8_2   ADD_U8
    #define ADD_S16_2  ADD_S16
    #define ADD_U16_2  ADD_U16
    #define ADD_S32_2  ADD_S32
    #define ADD_U32_2  ADD_U32

    #define SUB_S8_2   SUB_S8
    #define SUB_U8_2   SUB_U8
    #define SUB_S16_2  SUB_S16
    #define SUB_U16_2  SUB_U16
    #define SUB_S32_2  SUB_S32
    #define SUB_U32_2  SUB_U32

    #define MULT_S8_2  MULT_S8
    #define MULT_U8_2  MULT_U8
    #define MULT_S16_2 MULT_S16
    #define MULT_U16_2 MULT_U16
    #define MULT_S32_2 MULT_S32
    #define MULT_U32_2 MULT_U32
#endif

#define ADD_ANGLE_2  ADD_S16_2
#define SUB_ANGLE_2  SUB_S16_2
#define MULT_ANGLE_2 MULT_S16_2

#endif // !_ANGLE_UTILS_H_
