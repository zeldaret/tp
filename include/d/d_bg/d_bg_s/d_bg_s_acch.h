#ifndef D_BG_S_ACCH_H_
#define D_BG_S_ACCH_H_

#include "SComponent/c_bg_s_poly_info.h"
#include "SComponent/c_m3d_g_cir.h"
#include "SComponent/c_m3d_g_cyl.h"
#include "SComponent/c_m3d_g_lin.h"
#include "SComponent/c_m3d_g_pla.h"
#include "d/d_bg/d_bg_s/d_bg_s_gnd_chk.h"
#include "d/d_bg/d_bg_s/d_bg_s_roof_chk.h"
#include "d/d_bg/d_bg_s/d_bg_s_wtr_chk.h"
#include "global.h"

class dBgS_AcchCir {
private:
    /* 0x00 */ cBgS_PolyInfo mPolyInfo;
    /* 0x10 */ int mWallHit;
    /* 0x14 */ cM3dGCir m3DGCir;
    /* 0x28 */ float mWallRR;
    /* 0x2C */ float field_0x2c;
    /* 0x30 */ float mWallH;
    /* 0x34 */ float mWallR;
    /* 0x38 */ float mWallHDirect;
    /* 0x3C */ s16 mWallAngleY;
    /* 0x3E */ u8 padding[2];
};

class dBgS_Acch {
private:
    /* 0x000 */ cBgS_Chk field_0x000;
    /* 0x014 */ dBgS_Chk field_0x014;
    /* 0x02C */ int field_0x2c;
    /* 0x030 */ cXyz* mPos;
    /* 0x034 */ cXyz* mOldPos;
    /* 0x038 */ cXyz* mSpeed;
    /* 0x03C */ csXyz* mAngle;
    /* 0x040 */ csXyz* mShapeAngle;
    /* 0x044 */ cM3dGLin field_0x44;
    /* 0x060 */ cM3dGCyl mWallBmdCyl;
    /* 0x078 */ int field_0x78;
    /* 0x07C */ void* field_0x7c;
    /* 0x080 */ u32 field_0x80;
    /* 0x084 */ fopAc_ac_c* mMyAc;
    /* 0x088 */ int m_tbl_size;
    /* 0x08C */ dBgS_AcchCir* field_0x8c;
    /* 0x090 */ float field_0x90;
    /* 0x094 */ float field_0x94;
    /* 0x098 */ float mGroundH;
    /* 0x09C */ float field_0x9c;
    /* 0x0A0 */ cM3dGPla field_0xa0;
    /* 0x0B4 */ u8 field_0xb4[4];
    /* 0x0B8 */ float field_0xb8;
    /* 0x0BC */ float field_0xbc;
    /* 0x0C0 */ u8 field_0xc0[4];
    /* 0x0C4 */ float mRoofHeight;
    /* 0x0C8 */ float mRoofCrrHeight;
    /* 0x0CC */ float field_0xcc;
    /* 0x0D0 */ float mWaterCheckOffset;
    /* 0x0D4 */ int field_0xd4;
    /* 0x0D8 */ float field_0xd8;
    /* 0x0DC */ dBgS_GndChk mGndChk;
    /* 0x130 */ dBgS_RoofChk mRoofChk;
    /* 0x180 */ dBgS_WtrChk mWtrChk;
    /* 0x1D4 */ u8 mWtrChkMode;
};

class dBgS_LinkAcch : public dBgS_Acch {};

#endif