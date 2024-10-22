//
// JASCalc
//

#include "JSystem/JAudio2/JASCalc.h"
#include "dolphin/os/OSCache.h"
#include "math.h"
#include "limits.h"

/* 8028F2E8-8028F318 289C28 0030+00 0/0 1/1 0/0 .text            imixcopy__7JASCalcFPCsPCsPsUl */
void JASCalc::imixcopy(const s16 *s1, const s16 *s2, s16 *dst, u32 n) {
    for (n; n != 0; n--) {
        *dst++ = *((s16 *)s1)++;
        *dst++ = *((s16 *)s2)++;
    }
}

/* 8028F318-8028F354 289C58 003C+00 1/1 0/0 0/0 .text            bcopyfast__7JASCalcFPCvPvUl */
void JASCalc::bcopyfast(const void *src, void *dest, u32 size) {
    u32 copy1, copy2, copy3, copy4;

    u32 *usrc = (u32 *)src;
    u32 *udest = (u32 *)dest;

    for (size = size / (4 * sizeof(u32)); size != 0; size--) {
        copy1 = *((u32 *)usrc)++;
        copy2 = *((u32 *)usrc)++;
        copy3 = *((u32 *)usrc)++;
        copy4 = *((u32 *)usrc)++;

        *udest++ = copy1;
        *udest++ = copy2;
        *udest++ = copy3;
        *udest++ = copy4;
    }
}

/* 8028F354-8028F454 289C94 0100+00 0/0 3/3 0/0 .text            bcopy__7JASCalcFPCvPvUl */
void JASCalc::bcopy(const void *src, void *dest, u32 size) {
    u32 *usrc;
    u32 *udest;

    u8 *bsrc = (u8 *)src;
    u8 *bdest = (u8 *)dest;

    u8 endbitsSrc = (reinterpret_cast<u32>(bsrc) & 0x03);
    u8 enbitsDst = (reinterpret_cast<u32>(bdest) & 0x03);
    if ((endbitsSrc) == (enbitsDst) && (size & 0x0f) == 0) {
        bcopyfast(src, dest, size);
    }
    else if ((endbitsSrc == enbitsDst) && (size >= 16)) {
        if (endbitsSrc != 0) {
            for (endbitsSrc = 4 - endbitsSrc; endbitsSrc != 0; endbitsSrc--) {
                *bdest++ = (u32)*bsrc++;
                size--;
            }
        }

        udest = (u32 *)bdest;
        usrc = (u32 *)bsrc;

        for (; size >= 4; size -= 4) {
            *udest++ = *usrc++;
        }

        if (size != 0) {
            bdest = (u8 *)udest;
            bsrc = (u8 *)usrc;

            for (; size != 0; size--) {
                *bdest++ = (u32)*bsrc++;
            }
        }
    }
    else {
        for (; size != 0; size--) {
            *bdest++ = (u32)*bsrc++;
        }
    }
}

/* 8028F454-8028F480 289D94 002C+00 1/1 0/0 0/0 .text            bzerofast__7JASCalcFPvUl */
void JASCalc::bzerofast(void *dest, u32 size) {
    u32 *udest = (u32 *)dest;

    for (size = size / (4 * sizeof(u32)); size != 0; size--) {
        *udest++ = 0;
        *udest++ = 0;
        *udest++ = 0;
        *udest++ = 0;
    }
}

/* 8028F480-8028F578 289DC0 00F8+00 0/0 6/6 0/0 .text            bzero__7JASCalcFPvUl */
void JASCalc::bzero(void *dest, u32 size) {
    u32 *udest;
    u8 *bdest = (u8 *)dest;
    if ((size & 0x1f) == 0 && (reinterpret_cast<u32>(dest) & 0x1f) == 0) {
        DCZeroRange(dest, size);
        return;
    }

    u8 alignedbitsDst = reinterpret_cast<u32>(bdest) & 0x3;

    if ((size & 0xf) == 0 && alignedbitsDst == 0) {
        bzerofast(dest, size);
        return;
    }

    if (size >= 16) {
        if (alignedbitsDst != 0) {
            for (alignedbitsDst = 4 - alignedbitsDst; alignedbitsDst != 0; alignedbitsDst--) {
                *bdest++ = 0;
                size--;
            }
        }

        udest = (u32 *)bdest;
        for (; size >= 4; size -= 4) {
            *udest++ = 0;
        }

        if (size != 0) {
            bdest = (u8 *)udest;
            for (; size != 0; size--) {
                *bdest++ = 0;
            }
        }
    }
    else {
        for (; size != 0; size--) {
            *bdest++ = 0;
        }
    }
}

/* ############################################################################################## */
/* 8039ABB8-8039AFB8 027218 0400+00 0/0 4/4 0/0 .rodata          CUTOFF_TO_IIR_TABLE__7JASCalc */
s16 const JASCalc::CUTOFF_TO_IIR_TABLE[128][4] = {
    0x0F5C, 0x0A3D, 0x4665, 0x1E73,
    0x0F5E, 0x0A3D, 0x4664, 0x1E73,
    0x0F63, 0x0A3C, 0x4661, 0x1E71,
    0x0F6C, 0x0A3C, 0x465B, 0x1E6F,
    0x0F79, 0x0A3A, 0x4653, 0x1E6B,
    0x0F89, 0x0A39, 0x4649, 0x1E67,
    0x0F9C, 0x0A37, 0x463D, 0x1E62,
    0x0FB4, 0x0A35, 0x462E, 0x1E5B,
    0x0FCE, 0x0A33, 0x461D, 0x1E54,
    0x0FED, 0x0A30, 0x460A, 0x1E4C,
    0x100F, 0x0A2D, 0x45F5, 0x1E43,
    0x1034, 0x0A29, 0x45DE, 0x1E39,
    0x105D, 0x0A26, 0x45C4, 0x1E2D,
    0x108A, 0x0A22, 0x45A8, 0x1E21,
    0x10BA, 0x0A1D, 0x458A, 0x1E14,
    0x10EE, 0x0A18, 0x456A, 0x1E06,
    0x1126, 0x0A13, 0x4547, 0x1DF7,
    0x1161, 0x0A0E, 0x4522, 0x1DE7,
    0x119F, 0x0A08, 0x44FB, 0x1DD6,
    0x11E1, 0x0A02, 0x44D2, 0x1DC5,
    0x1227, 0x09FC, 0x44A6, 0x1DB2,
    0x1270, 0x09F5, 0x4478, 0x1D9E,
    0x12BD, 0x09EE, 0x4448, 0x1D89,
    0x130E, 0x09E7, 0x4416, 0x1D73,
    0x1362, 0x09DF, 0x43E1, 0x1D5D,
    0x13B9, 0x09D7, 0x43AB, 0x1D45,
    0x1415, 0x09CF, 0x4372, 0x1D2C,
    0x1473, 0x09C7, 0x4336, 0x1D13,
    0x14D6, 0x09BE, 0x42F9, 0x1CF8,
    0x153C, 0x09B4, 0x42B9, 0x1CDD,
    0x15A5, 0x09AB, 0x4277, 0x1CC0,
    0x1612, 0x09A1, 0x4233, 0x1CA3,
    0x1683, 0x0997, 0x41ED, 0x1C84,
    0x16F7, 0x098C, 0x41A4, 0x1C65,
    0x176F, 0x0981, 0x4159, 0x1C44,
    0x17EA, 0x0976, 0x410C, 0x1C23,
    0x1869, 0x096A, 0x40BD, 0x1C01,
    0x18EB, 0x095F, 0x406B, 0x1BDD,
    0x1972, 0x0952, 0x4018, 0x1BB9,
    0x19FB, 0x0946, 0x3FC2, 0x1B94,
    0x1A88, 0x0939, 0x3F69, 0x1B6E,
    0x1B19, 0x092C, 0x3F0F, 0x1B47,
    0x1BAE, 0x091E, 0x3EB2, 0x1B1E,
    0x1C46, 0x0911, 0x3E53, 0x1AF5,
    0x1CE1, 0x0902, 0x3DF2, 0x1ACB,
    0x1D80, 0x08F4, 0x3D8E, 0x1AA0,
    0x1E23, 0x08E5, 0x3D29, 0x1A74,
    0x1EC9, 0x08D6, 0x3CC1, 0x1A47,
    0x1F73, 0x08C7, 0x3C57, 0x1A19,
    0x2020, 0x08B7, 0x3BEA, 0x19EB,
    0x20D1, 0x08A7, 0x3B7C, 0x19BB,
    0x2186, 0x0896, 0x3B0B, 0x198A,
    0x223E, 0x0886, 0x3A98, 0x1958,
    0x22FA, 0x0875, 0x3A22, 0x1925,
    0x23B9, 0x0863, 0x39AB, 0x18F2,
    0x247C, 0x0851, 0x3931, 0x18BD,
    0x2542, 0x083F, 0x38B5, 0x1887,
    0x260C, 0x082D, 0x3837, 0x1851,
    0x26DA, 0x081A, 0x37B6, 0x1819,
    0x27AB, 0x0807, 0x3734, 0x17E1,
    0x2880, 0x07F4, 0x36AF, 0x17A7,
    0x2958, 0x07E0, 0x3628, 0x176D,
    0x2A34, 0x07CC, 0x359E, 0x1731,
    0x2B14, 0x07B8, 0x3512, 0x16F5,
    0x2BF7, 0x07A3, 0x3485, 0x16B7,
    0x2CDD, 0x078E, 0x33F4, 0x1679,
    0x2DC8, 0x0779, 0x3362, 0x163A,
    0x2EB5, 0x0764, 0x32CD, 0x15FA,
    0x2FA7, 0x074E, 0x3237, 0x15B8,
    0x309C, 0x0737, 0x319E, 0x1576,
    0x3194, 0x0721, 0x3102, 0x1533,
    0x3290, 0x070A, 0x3065, 0x14EF,
    0x3390, 0x06F3, 0x2FC5, 0x14AA,
    0x3493, 0x06DB, 0x2F23, 0x1464,
    0x359A, 0x06C3, 0x2E7F, 0x141C,
    0x36A4, 0x06AB, 0x2DD8, 0x13D4,
    0x37B2, 0x0692, 0x2D2F, 0x138C,
    0x38C4, 0x067A, 0x2C85, 0x1342,
    0x39D9, 0x0660, 0x2BD7, 0x12F7,
    0x3AF1, 0x0647, 0x2B28, 0x12AB,
    0x3C0E, 0x062D, 0x2A76, 0x125E,
    0x3D2E, 0x0613, 0x29C2, 0x1210,
    0x3E51, 0x05F8, 0x290C, 0x11C1,
    0x3F78, 0x05DE, 0x2854, 0x1172,
    0x40A3, 0x05C2, 0x2799, 0x1121,
    0x41D1, 0x05A7, 0x26DC, 0x10CF,
    0x4302, 0x058B, 0x261D, 0x107D,
    0x4438, 0x056F, 0x255C, 0x1029,
    0x4571, 0x0553, 0x2499, 0x0FD4,
    0x46AD, 0x0536, 0x23D3, 0x0F7F,
    0x47ED, 0x0519, 0x230B, 0x0F28,
    0x4931, 0x04FB, 0x2241, 0x0ED1,
    0x4A78, 0x04DE, 0x2174, 0x0E78,
    0x4BC2, 0x04C0, 0x20A5, 0x0E1F,
    0x4D11, 0x04A1, 0x1FD4, 0x0DC5,
    0x4E63, 0x0482, 0x1F01, 0x0D69,
    0x4FB8, 0x0463, 0x1E2C, 0x0D0D,
    0x5111, 0x0444, 0x1D54, 0x0CB0,
    0x526E, 0x0424, 0x1C7A, 0x0C51,
    0x53CE, 0x0404, 0x1B9E, 0x0BF2,
    0x5532, 0x03E4, 0x1AC0, 0x0B92,
    0x5699, 0x03C3, 0x19DF, 0x0B31,
    0x5804, 0x03A2, 0x18FD, 0x0ACF,
    0x5972, 0x0381, 0x1818, 0x0A6C,
    0x5AE5, 0x035F, 0x1730, 0x0A08,
    0x5C5A, 0x033D, 0x1647, 0x09A3,
    0x5DD3, 0x031B, 0x155B, 0x093D,
    0x5F50, 0x02F9, 0x146D, 0x08D6,
    0x60D1, 0x02D6, 0x137D, 0x086E,
    0x6255, 0x02B2, 0x128A, 0x0805,
    0x63DC, 0x028F, 0x1196, 0x079B,
    0x6567, 0x026B, 0x109F, 0x0730,
    0x66F6, 0x0247, 0x0FA6, 0x06C5,
    0x6888, 0x0222, 0x0EAA, 0x0658,
    0x6A1E, 0x01FD, 0x0DAD, 0x05EA,
    0x6BB7, 0x01D8, 0x0CAD, 0x057B,
    0x6D54, 0x01B2, 0x0BAB, 0x050C,
    0x6EF5, 0x018D, 0x0AA6, 0x049B,
    0x7099, 0x0166, 0x09A0, 0x042A,
    0x7241, 0x0140, 0x0897, 0x03B7,
    0x73EC, 0x0119, 0x078C, 0x0344,
    0x759B, 0x00F2, 0x067F, 0x02CF,
    0x774D, 0x00CA, 0x056F, 0x025A,
    0x7903, 0x00A3, 0x045D, 0x01E3,
    0x7ABD, 0x007A, 0x0349, 0x016C,
    0x7C7A, 0x0052, 0x0233, 0x00F4,
    0x7E3B, 0x0029, 0x011B, 0x007A,
    0x7FFF, 0x0000, 0x0000, 0x0000,
};

// currently required because of missing functions
// JASCalc::hannWindow(short *, unsigned long)
// JASCalc::hammWindow(short *, unsigned long)
// JASCalc::fft(float *, float *, unsigned long, long)
f32 JASCalc::fake1() { return 0.5f; }
f32 JASCalc::fake2(long x) { return JASCalc::clamp<s16, long>(x); }
f32 JASCalc::fake3() { return 0.0f; }

/* 8028F578-8028F69C 289EB8 0124+00 0/0 2/2 0/0 .text            pow2__7JASCalcFf */
f32 JASCalc::pow2(f32 x) {
    s32 frac_index = 0;
    union {
        s32 l;
        f32 f;
    } exponent;
    exponent.l = (x >= 0.0f ? (s32)(x - 0.5f) : (s32)(x + 0.5f)); // Shift towards 0 and round
    f32 pannedval = x - exponent.l; // strictly between 1.5 and -1.5

    // 2^x will not fit in an IEEE-754 float
    if(exponent.l > 128) {
        return HUGE_VALF;
    }

    // convert to exponent of IEEE-754 float
    exponent.l += 127;
    exponent.l <<= 23;

    // Calculate the mantissa

    static const f32 scale_frac[] = { 0.0f, 0.5f };
    // { 1 , 1/sqrt2 }
    static const f32 two_to_frac[] = {1.0f, 0.70710677f};
    // coefficients of Taylor polynomial of 2^x - 1 at 0:
    // 2^x - 1 = (log2) * x + (log2)^2 / 2! * x^2 + ...
    static const f32 __two_to_x[] = {
        0.6931472f, 0.24022661,
        0.055502914f, 0.009625022f,
        0.0013131053f, 1.8300806E-4f        
    };

    if (pannedval < 0.0f) {
        frac_index += 1;
    }
    
    f32 ret = pannedval + scale_frac[frac_index];

    // Evaluate Taylor polynomial using Horner's method
    ret = ret * (ret * (ret * (ret * (ret * (ret * __two_to_x[5] + __two_to_x[4]) +
        __two_to_x[3]) + __two_to_x[2]) + __two_to_x[1]) + __two_to_x[0]);
    // 2^n * (corrected mantissa)
    ret = exponent.f * (0.75f * two_to_frac[frac_index] + ((0.25f + ret) * two_to_frac[frac_index]));

    return ret;
}

template <>
s16 JASCalc::clamp(s32 x) {
    if (std::numeric_limits<s16>::min() >= x)
        return std::numeric_limits<s16>::min();
    if (x >= std::numeric_limits<s16>::max())
        return std::numeric_limits<s16>::max();
    return x;
}