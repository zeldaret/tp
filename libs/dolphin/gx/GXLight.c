/**
 * GXLight.c
 * Description:
 */

#include "dolphin/gx/GXLight.h"
#include "dolphin/gx.h"
#include "math.h"

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

static inline void PushLight(const register GXLightObj* lt_obj, register void* dest) {
    register u32 zero, color;
    register f32 a0_a1, a2_k0, k1_k2;
    register f32 px_py, pz_dx, dy_dz;
#ifdef __MWERKS__  // clang-format off
	asm {
		lwz     color, 12(lt_obj)
		xor     zero, zero, zero
		psq_l   a0_a1, 16(lt_obj), 0, 0
		psq_l   a2_k0, 24(lt_obj), 0, 0
		psq_l   k1_k2, 32(lt_obj), 0, 0
		psq_l   px_py, 40(lt_obj), 0, 0
		psq_l   pz_dx, 48(lt_obj), 0, 0
		psq_l   dy_dz, 56(lt_obj), 0, 0

		stw     zero,  0(dest)
		stw     zero,  0(dest)
		stw     zero,  0(dest)
		stw     color, 0(dest)
		psq_st  a0_a1, 0(dest), 0, 0
		psq_st  a2_k0, 0(dest), 0, 0
		psq_st  k1_k2, 0(dest), 0, 0
		psq_st  px_py, 0(dest), 0, 0
		psq_st  pz_dx, 0(dest), 0, 0
		psq_st  dy_dz, 0(dest), 0, 0
	}
#endif  // clang-format on
}

/* 8035D8E4-8035D960 358224 007C+00 0/0 4/4 2/2 .text            GXLoadLightObjImm */
void GXLoadLightObjImm(GXLightObj* obj, GXLightID light) {
    u32 addr;
    u32 idx;
    GXLightObj* pObj = (GXLightObj*)obj;

    idx = 31 - __cntlzw(light);
    idx &= 7;

    addr = 0x600 + idx * 0x10;

    GX_XF_LOAD_REG_HDR(addr | (0x10 - 1) << 16);

    PushLight(pObj, (void*)GXFIFO_ADDR);
    __GXData->bpSentNot = 1;
}

/* 8035D960-8035DA48 3582A0 00E8+00 0/0 7/7 4/4 .text            GXSetChanAmbColor */
void GXSetChanAmbColor(GXChannelID channel, GXColor color) {
    u32 reg;
    u32 colorID;
    u8 alpha;

    switch (channel) {
    case GX_COLOR0:
        reg = __GXData->ambColor[GX_COLOR0];
        reg = GX_SET_TRUNC(reg, GXCOLOR_AS_U32(color), 0, 23);
        colorID = GX_COLOR0;
        break;
    case GX_COLOR1:
        reg = __GXData->ambColor[GX_COLOR1];
        reg = GX_SET_TRUNC(reg, GXCOLOR_AS_U32(color), 0, 23);
        colorID = GX_COLOR1;
        break;
    case GX_ALPHA0:
        reg = __GXData->ambColor[GX_COLOR0];
        reg = GX_SET_TRUNC(reg, color.a, 24, 31);
        colorID = GX_COLOR0;
        break;
    case GX_ALPHA1:
        reg = __GXData->ambColor[GX_COLOR1];
        reg = GX_SET_TRUNC(reg, color.a, 24, 31);
        colorID = GX_COLOR1;
        break;
    case GX_COLOR0A0:
        reg = GXCOLOR_AS_U32(color);
        colorID = GX_COLOR0;
        break;
    case GX_COLOR1A1:
        reg = GXCOLOR_AS_U32(color);
        colorID = GX_COLOR1;
        break;
    default:
        return;
    }

    GX_XF_LOAD_REG(GX_XF_REG_AMBIENT0 + colorID, reg);
    __GXData->bpSentNot = GX_TRUE;
    __GXData->ambColor[colorID] = reg;
}

/* 8035DA48-8035DB30 358388 00E8+00 0/0 20/20 2/2 .text            GXSetChanMatColor */
void GXSetChanMatColor(GXChannelID channel, GXColor color) {
    u32 reg = 0;
    GXChannelID colorID;

    switch (channel) {
    case GX_COLOR0:
        reg = __GXData->matColor[GX_COLOR0];
        reg = GX_SET_TRUNC(reg, GXCOLOR_AS_U32(color), 0, 23);
        colorID = GX_COLOR0;
        break;
    case GX_COLOR1:
        reg = __GXData->matColor[GX_COLOR1];
        reg = GX_SET_TRUNC(reg, GXCOLOR_AS_U32(color), 0, 23);
        colorID = GX_COLOR1;
        break;
    case GX_ALPHA0:
        reg = __GXData->matColor[GX_COLOR0];
        reg = GX_SET_TRUNC(reg, color.a, 24, 31);
        colorID = GX_COLOR0;
        break;
    case GX_ALPHA1:
        reg = __GXData->matColor[GX_COLOR1];
        reg = GX_SET_TRUNC(reg, color.a, 24, 31);
        colorID = GX_COLOR1;
        break;
    case GX_COLOR0A0:
        reg = GXCOLOR_AS_U32(color);
        colorID = GX_COLOR0;
        break;
    case GX_COLOR1A1:
        reg = GXCOLOR_AS_U32(color);
        colorID = GX_COLOR1;
        break;
    default:
        return;
    }

    GX_XF_LOAD_REG(GX_XF_REG_MATERIAL0 + colorID, reg);
    __GXData->bpSentNot = GX_TRUE;
    __GXData->matColor[colorID] = reg;
}

/* 8035DB30-8035DB6C 358470 003C+00 0/0 51/51 6/6 .text            GXSetNumChans */
void GXSetNumChans(u8 count) {
    GX_SET_REG(__GXData->genMode, count, 25, 27);
    GX_XF_LOAD_REG(GX_XF_REG_NUMCOLORS, count);
    __GXData->dirtyState |= GX_DIRTY_GEN_MODE;
}

/* 8035DB6C-8035DC1C 3584AC 00B0+00 0/0 34/34 4/4 .text            GXSetChanCtrl */
void GXSetChanCtrl(GXChannelID channel, GXBool doEnable, GXColorSrc ambSrc, GXColorSrc matSrc,
                   u32 mask, GXDiffuseFn diffFunc, GXAttnFn attnFunc) {
    const u32 colorID = (u32)channel & 0x3;
    u32 reg = 0;

    GX_SET_REG(reg, doEnable, GX_XF_CLR0CTRL_LIGHT_ST, GX_XF_CLR0CTRL_LIGHT_END);
    GX_SET_REG(reg, matSrc, GX_XF_CLR0CTRL_MTXSRC_ST, GX_XF_CLR0CTRL_MTXSRC_END);
    GX_SET_REG(reg, ambSrc, GX_XF_CLR0CTRL_AMBSRC_ST, GX_XF_CLR0CTRL_AMBSRC_END);
    GX_SET_REG(reg, (attnFunc == GX_AF_SPEC ? GX_DF_NONE : diffFunc), GX_XF_CLR0CTRL_DIFATTN_ST,
               GX_XF_CLR0CTRL_DIFATTN_END);
    GX_SET_REG(reg, (attnFunc != GX_AF_NONE), GX_XF_CLR0CTRL_ATTNENABLE_ST,
               GX_XF_CLR0CTRL_ATTNENABLE_END);
    GX_SET_REG(reg, (attnFunc != GX_AF_SPEC), GX_XF_CLR0CTRL_ATTNSEL_ST,
               GX_XF_CLR0CTRL_ATTNSEL_END);
    GX_BITFIELD_SET(reg, 26, 4, (u32)mask);
    reg = __rlwimi(reg, (u32)mask, 7, 0x11, 0x14);

    GX_XF_LOAD_REG(GX_XF_REG_COLOR0CNTRL + colorID, reg);

    if (channel == GX_COLOR0A0) {
        GX_XF_LOAD_REG(GX_XF_REG_ALPHA0CNTRL, reg);
    } else if (channel == GX_COLOR1A1) {
        GX_XF_LOAD_REG(GX_XF_REG_ALPHA1CNTRL, reg);
    }

    __GXData->bpSentNot = GX_TRUE;
}
