#ifndef _REVOLUTION_KPAD_H_
#define _REVOLUTION_KPAD_H_

#include <revolution/mtx.h>
#include <revolution/wpad.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct Vec2 {
	f32 x, y;
} Vec2;

typedef s32 KPADResult;

typedef union KPADEXStatus {
    struct {
        Vec2 stick;
        Vec acc;
        f32 acc_value;
        f32 acc_speed;
    } fs;  // size 0x1c

    struct {
        u32 hold;
        u32 trig;
        u32 release;
        Vec2 lstick;
        Vec2 rstick;
        f32 ltrigger;
        f32 rtrigger;
    } cl;  // size 0x24
} KPADEXStatus;

typedef struct KPADStatus {
    /* 0x00 */ u32 hold;
    /* 0x04 */ u32 trig;
    /* 0x08 */ u32 release;
    /* 0x0C */ Vec acc;
    /* 0x18 */ f32 acc_value;
    /* 0x1C */ f32 acc_speed;
    /* 0x20 */ Vec2 pos;
    /* 0x28 */ Vec2 vec;
    /* 0x30 */ f32 speed;
    /* 0x34 */ Vec2 horizon;
    /* 0x3C */ Vec2 hori_vec;
    /* 0x44 */ f32 hori_speed;
    /* 0x48 */ f32 dist;
    /* 0x4C */ f32 dist_vec;
    /* 0x50 */ f32 dist_speed;
    /* 0x54 */ Vec2 acc_vertical;
    /* 0x5C */ u8 dev_type;
    /* 0x5D */ s8 wpad_err;
    /* 0x5E */ s8 dpd_valid_fg;
    /* 0x5F */ u8 data_format;
    /* 0x60 */ KPADEXStatus ex_status;
    /* 0x84 */ u8 __paddings__[4];  // ??? is this the compiler?
} KPADStatus;                       // size 0x88

void KPADEnableDPD(s32);
void KPADDisableDPD(s32);

#ifdef __cplusplus
}
#endif

#endif  // _REVOLUTION_KPAD_H_
