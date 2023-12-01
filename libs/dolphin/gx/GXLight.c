/**
 * GXLight.c
 * Description:
 */

#include "dolphin/gx/GXLight.h"
#include "MSL_C/math.h"
#include "dolphin/gx/GX.h"

/* 8035D630-8035D64C 357F70 001C+00 0/0 1/1 0/0 .text            GXInitLightAttn */
void GXInitLightAttn(GXLightObj* obj, f32 a0, f32 a1, f32 a2, f32 k0, f32 k1, f32 k2) {
    obj->a0 = a0;
    obj->a1 = a1;
    obj->a2 = a2;
    obj->k0 = k0;
    obj->k1 = k1;
    obj->k2 = k2;
}

/* 8035D64C-8035D7DC 357F8C 0190+00 1/0 2/2 0/0 .text            GXInitLightSpot */
void GXInitLightSpot(GXLightObj* obj, f32 cutoff, GXSpotFn spot_fn) {
    f32 rad;
    f32 a, b, c, d;

    if (cutoff <= 0.0f || cutoff > 90.0f) {
        spot_fn = GX_SP_OFF;
    }

    rad = cosf((3.1415927f * cutoff) / 180.0f);

    switch (spot_fn) {
    case GX_SP_FLAT:
        a = -1000.0f * rad;
        b = 1000.0f;
        c = 0.0f;
        break;
    case GX_SP_COS:
        b = 1.0f / (1.0f - rad);
        a = -rad * b;
        c = 0.0f;
        break;
    case GX_SP_COS2:
        c = 1.0f / (1.0f - rad);
        a = 0.0f;
        b = -rad * c;
        break;
    case GX_SP_SHARP:
        d = 1.0f / ((1.0f - rad) * (1.0f - rad));
        a = (rad * (rad - 2.0f)) * d;
        b = 2.0f * d;
        c = -d;
        break;
    case GX_SP_RING1:
        d = 1.0f / ((1.0f - rad) * (1.0f - rad));
        c = -4.0f * d;
        a = c * rad;
        b = 4.0f * (1.0f + rad) * d;
        break;
    case GX_SP_RING2:
        d = 1.0f / ((1.0f - rad) * (1.0f - rad));
        a = 1.0f - 2.0f * rad * rad * d;
        b = 4.0f * rad * d;
        c = -2.0f * d;
        break;
    case GX_SP_OFF:
    default:
        a = 1.0f;
        b = 0.0f;
        c = 0.0f;
        break;
    }

    obj->a0 = a;
    obj->a1 = b;
    obj->a2 = c;
}

/* 8035D7DC-8035D8AC 35811C 00D0+00 0/0 2/2 0/0 .text            GXInitLightDistAttn */
void GXInitLightDistAttn(GXLightObj* obj, f32 dist, f32 brightness, GXDistAttnFn dist_fn) {
    f32 a, b, c;

    if (dist < 0.0f) {
        dist_fn = GX_DA_OFF;
    }

    if (brightness <= 0.0f || brightness >= 1.0f) {
        dist_fn = GX_DA_OFF;
    }

    switch (dist_fn) {
    case GX_DA_GENTLE:
        a = 1.0f;
        b = (1.0f - brightness) / (brightness * dist);
        c = 0.0f;
        break;
    case GX_DA_MEDIUM:
        a = 1.0f;
        b = (0.5f * (1.0f - brightness)) / (brightness * dist);
        c = (0.5f * (1.0f - brightness)) / (dist * (brightness * dist));
        break;
    case GX_DA_STEEP:
        a = 1.0f;
        b = 0.0f;
        c = (1.0f - brightness) / (dist * (brightness * dist));
        break;
    case GX_DA_OFF:
    default:
        a = 1.0f;
        b = 0.0f;
        c = 0.0f;
        break;
    }

    obj->k0 = a;
    obj->k1 = b;
    obj->k2 = c;
}

/* 8035D8AC-8035D8BC 3581EC 0010+00 0/0 3/3 0/0 .text            GXInitLightPos */
void GXInitLightPos(GXLightObj* obj, f32 x, f32 y, f32 z) {
    obj->posX = x;
    obj->posY = y;
    obj->posZ = z;
}

/* 8035D8BC-8035D8D8 3581FC 001C+00 0/0 3/3 0/0 .text            GXInitLightDir */
void GXInitLightDir(GXLightObj* obj, f32 x, f32 y, f32 z) {
    obj->dirX = -x;
    obj->dirY = -y;
    obj->dirZ = -z;
}

/* 8035D8D8-8035D8E4 358218 000C+00 0/0 3/3 0/0 .text            GXInitLightColor */
void GXInitLightColor(GXLightObj* obj, GXColor color) {
    *(u32*)&obj->color = *(u32*)&color;
}

/* 8035D8E4-8035D960 358224 007C+00 0/0 4/4 2/2 .text            GXLoadLightObjImm */
asm void GXLoadLightObjImm(register GXLightObj* obj, register GXLightID id) {
    // clang-format off
    nofralloc

    cntlzw r0, id
    subfic r0, r0, 0x1f
    rlwinm r5, r0, 4, 0x19, 0x1b
    lis r4, 0xCC01
    li r0, 0x10
    addi r5, r5, 0x600
    stb r0, 0x8000(r4)
    oris r0, r5, 0xf
    stwu r0, -0x8000(r4)
    lwz r0, 0xc(r3)
    xor r6, r6, r6
    psq_l f5, 16(obj), 0, 0
    psq_l f4, 24(obj), 0, 0
    psq_l f3, 32(obj), 0, 0
    psq_l f2, 40(obj), 0, 0
    psq_l f1, 48(obj), 0, 0
    psq_l f0, 56(obj), 0, 0
    stw r6, 0(r4)
    stw r6, 0(r4)
    stw r6, 0(r4)
    stw r0, 0(r4)
    psq_st f5, 0(r4), 0, 0
    psq_st f4, 0(r4), 0, 0
    psq_st f3, 0(r4), 0, 0
    psq_st f2, 0(r4), 0, 0
    psq_st f1, 0(r4), 0, 0
    psq_st f0, 0(r4), 0, 0

    lwz r3, __GXData(r2)
    li r0, 1
    sth r0, 2(r3)

    blr
    // clang-format on
}

/* 8035D960-8035DA48 3582A0 00E8+00 0/0 7/7 4/4 .text            GXSetChanAmbColor */
// b's instead of blr's
#ifdef NONMATCHING
void GXSetChanAmbColor(GXChannelID chan, GXColor color) {
    u32 ambColor;
    u32 colorId;
    
    switch(chan) {
        case GX_COLOR0:
            ambColor = *(u32*)&__GXData->ambColors[0];
            ambColor = __rlwimi(ambColor, *(u32*)&color, 0, 0, 23);
            colorId = 0;
            break;
        case GX_COLOR1:
            ambColor = *(u32*)&__GXData->ambColors[1];
            ambColor = __rlwimi(ambColor, *(u32*)&color, 0, 0, 23);
            colorId = 1;
            break;
        case GX_ALPHA0:
            ambColor = *(u32*)&__GXData->ambColors[0];
            ambColor = __rlwimi(ambColor, color.a, 0, 24, 31);
            colorId = 0;
            break;
        case GX_ALPHA1:
            ambColor = *(u32*)&__GXData->ambColors[1];
            ambColor = __rlwimi(ambColor, color.a, 0, 24, 31);
            colorId = 1;
            break;
        case GX_COLOR0A0:
            ambColor = *(u32*)&color;
            colorId = 0;
            break;
        case GX_COLOR1A1:
            ambColor = *(u32*)&color;
            colorId = 1;
            break;
        default:
            return;
    }

    GXFIFO.u8 = 0x10;
    GXFIFO.u32 = colorId + 0x100a;
    GXFIFO.u32 = ambColor;
    __GXData->field_0x2 = 1;
    ((u32*)__GXData->ambColors)[colorId] = ambColor;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void GXSetChanAmbColor(GXChannelID channel, GXColor color) {
    nofralloc
#include "asm/dolphin/gx/GXLight/GXSetChanAmbColor.s"
}
#pragma pop
#endif

/* 8035DA48-8035DB30 358388 00E8+00 0/0 20/20 2/2 .text            GXSetChanMatColor */
// b's instead of blr's
#ifdef NONMATCHING
void GXSetChanMatColor(GXChannelID chan, GXColor color) {
    u32 matColor;
    u32 colorId;
    
    switch(chan) {
        case GX_COLOR0:
            matColor = *(u32*)&__GXData->matColors[0];
            matColor = __rlwimi(matColor, *(u32*)&color, 0, 0, 23);
            colorId = 0;
            break;
        case GX_COLOR1:
            matColor = *(u32*)&__GXData->matColors[1];
            matColor = __rlwimi(matColor, *(u32*)&color, 0, 0, 23);
            colorId = 1;
            break;
        case GX_ALPHA0:
            matColor = *(u32*)&__GXData->matColors[0];
            matColor = __rlwimi(matColor, color.a, 0, 24, 31);
            colorId = 0;
            break;
        case GX_ALPHA1:
            matColor = *(u32*)&__GXData->matColors[1];
            matColor = __rlwimi(matColor, color.a, 0, 24, 31);
            colorId = 1;
            break;
        case GX_COLOR0A0:
            matColor = *(u32*)&color;
            colorId = 0;
            break;
        case GX_COLOR1A1:
            matColor = *(u32*)&color;
            colorId = 1;
            break;
        default:
            return;
    }

    GXFIFO.u8 = 0x10;
    GXFIFO.u32 = colorId + 0x100c;
    GXFIFO.u32 = matColor;
    __GXData->field_0x2 = 1;
    ((u32*)__GXData->matColors)[colorId] = matColor;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void GXSetChanMatColor(GXChannelID channel, GXColor color) {
    nofralloc
#include "asm/dolphin/gx/GXLight/GXSetChanMatColor.s"
}
#pragma pop
#endif

/* 8035DB30-8035DB6C 358470 003C+00 0/0 51/51 6/6 .text            GXSetNumChans */
// 1 wrong reg
#ifdef NONMATCHING
void GXSetNumChans(u8 chan_num) {
    GXData* data = __GXData;
    GX_BITFIELD_SET(data->field_0x204, 25, 3, chan_num);

    GXFIFO.u8 = 0x10;
    GXFIFO.s32 = 0x1009;
    GXFIFO.s32 = chan_num;

    data->field_0x5ac |= 0x4;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void GXSetNumChans(u8 chan_num) {
    nofralloc
#include "asm/dolphin/gx/GXLight/GXSetNumChans.s"
}
#pragma pop
#endif

/* 8035DB6C-8035DC1C 3584AC 00B0+00 0/0 34/34 4/4 .text            GXSetChanCtrl */
// mr/addi, extra branch instruction
#ifdef NONMATCHING
void GXSetChanCtrl(GXChannelID channel, GXBool enable, GXColorSrc amb_src, GXColorSrc mat_src,
                       u32 light_mask, GXDiffuseFn diff_fn, GXAttnFn attn_fn) {
    u32 field = 0;
    const u32 idx = channel & 3;

    GX_BITFIELD_SET(field, 30, 1, enable);
    GX_BITFIELD_SET(field, 31, 1, amb_src);
    GX_BITFIELD_SET(field, 25, 1, mat_src);
    GX_BITFIELD_SET(field, 23, 2, (attn_fn == GX_AF_SPEC) ? GX_DF_NONE : diff_fn);
    GX_BITFIELD_SET(field, 22, 1, attn_fn != GX_AF_NONE);
    GX_BITFIELD_SET(field, 21, 1, attn_fn != GX_AF_SPEC);
    GX_BITFIELD_SET(field, 26, 4, (u32)light_mask);
    field = __rlwimi(field, (u32)light_mask, 7, 0x11, 0x14);

    GXFIFO.u8 = 0x10;
    GXFIFO.u32 = idx + 0x100e;
    GXFIFO.u32 = field;

    if (channel == GX_COLOR0A0) {
        GXFIFO.u8 = 0x10;
        GXFIFO.u32 = 0x1010;
        GXFIFO.u32 = field;
    } else if (channel == GX_COLOR1A1) {
        GXFIFO.u8 = 0x10;
        GXFIFO.u32 = 0x1011;
        GXFIFO.u32 = field;
    }

    __GXData->field_0x2 = 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void GXSetChanCtrl(GXChannelID channel, GXBool enable, GXColorSrc amb_src, GXColorSrc mat_src,
                       u32 light_mask, GXDiffuseFn diff_fn, GXAttnFn attn_fn) {
    nofralloc
#include "asm/dolphin/gx/GXLight/GXSetChanCtrl.s"
}
#pragma pop
#endif
