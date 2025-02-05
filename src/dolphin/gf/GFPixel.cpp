#include "dolphin/gf/GFPixel.h"
#include "dolphin/gf/GFGeometry.h"
#include "dolphin/gx.h"

/* 802CDE9C-802CE004 2C87DC 0168+00 0/0 1/1 0/0 .text GFSetFog__F10_GXFogTypeffff8_GXColor */
void GFSetFog(GXFogType param_0, f32 param_1, f32 param_2, f32 param_3, f32 param_4,
              GXColor param_5) {
    s32 r30;
    s32 r30shift2;
    u32 stack_c_u32;
    f32 stack_c;
    f32 r30shift;
    f32 f3;
    f32 f5;
    if (param_4 == param_3 || param_2 == param_1) {
        f5 = 0.0f;
        f3 = 0.5f;
        stack_c = 0.0f;
    } else {
        f5 = (param_4 * param_3) / ((param_4 - param_3) * (param_2 - param_1));
        f3 = param_4 / (param_4 - param_3);
        stack_c = param_1 / (param_2 - param_1);
    }

    r30 = 1;

    while (f3 > 1.0) {
        f3 *= 0.5f;
        r30++;
    }

    while (f3 > 0.0f && f3 < 0.5) {
        f3 *= 2.0f;
        r30--;
    }

    r30shift = (f5 / (1 << r30));
    r30shift2 = *(s32*)&r30shift;
    stack_c_u32 = (*(u32*)&stack_c);
    GFWriteBPCmd(((r30shift2 >> 12) & 0xfffff) | 0xee000000);
    GFWriteBPCmd((u32)(8388638.0f * f3) | 0xef000000);
    GFWriteBPCmd(r30 | 0xf0000000);
    GFWriteBPCmd(((stack_c_u32 >> 12) & 0xfffff) | (((u32)param_0 << 21) & 0xffe00000) |
                 0xf1000000);
    GFWriteBPCmd(param_5.b | param_5.g << 8 | param_5.r << 16 | 0xf2000000);
}

/* 802CE004-802CE0A4 2C8944 00A0+00 0/0 1/1 0/0 .text
 * GFSetBlendModeEtc__F12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOpUcUcUc */
void GFSetBlendModeEtc(GXBlendMode param_0, GXBlendFactor param_1, GXBlendFactor param_2,
                       GXLogicOp param_3, u8 param_4, u8 param_5, u8 param_6) {
    GFWriteBPCmd(((param_0 == 1) || (param_0 == 3)) | (param_0 == 2) << 1 | param_6 << 2 |
                 param_4 << 3 | param_5 << 4 | param_2 << 5 | param_1 << 8 | (param_0 == 3) << 11 |
                 param_3 << 12 | 0x41000000);
}

/* 802CE0A4-802CE0D0 2C89E4 002C+00 0/0 1/1 0/0 .text            GFSetZMode__FUc10_GXCompareUc */
void GFSetZMode(u8 param_0, GXCompare param_1, u8 param_2) {
    GFWriteBPCmd(param_0 | param_1 << 1 | param_2 << 4 | 0x40000000);
}
