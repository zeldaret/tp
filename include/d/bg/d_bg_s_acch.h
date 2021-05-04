#ifndef D_BG_D_BG_S_ACCH_H
#define D_BG_D_BG_S_ACCH_H

#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_m3d_g_cir.h"
#include "SSystem/SComponent/c_m3d_g_cyl.h"
#include "SSystem/SComponent/c_m3d_g_lin.h"
#include "SSystem/SComponent/c_m3d_g_pla.h"
#include "d/a/d_a_player.h"
#include "d/bg/d_bg_s_gnd_chk.h"
#include "d/bg/d_bg_s_lin_chk.h"
#include "d/bg/d_bg_s_roof_chk.h"
#include "d/bg/d_bg_s_wtr_chk.h"
#include "dolphin/types.h"
//#include "d/bg/d_bg_s.h"

class dBgS_AcchCir {
public:
    /* 80075EAC */ dBgS_AcchCir();
    /* 80075F14 */ void ClrWallHit();
    /* 80075F40 */ void SetWallR(f32);
    /* 80075F48 */ void CalcWallRR();
    /* 80075F58 */ void SetWall(f32, f32);
    /* 80075F80 */ void SetWallHDirect(f32);
    /* 80077414 */ ~dBgS_AcchCir();

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

class dBgS;
class dBgS_Acch {
public:
    /* 80075F94 */ ~dBgS_Acch();
    /* 800760A0 */ dBgS_Acch();
    /* 800761CC */ void Init();
    /* 80076288 */ void Set(fopAc_ac_c*, int, dBgS_AcchCir*);
    /* 80076248 */ void Set(cXyz*, cXyz*, fopAc_ac_c*, int, dBgS_AcchCir*, cXyz*, csXyz*, csXyz*);
    /* 800762D8 */ void GroundCheckInit(dBgS&);
    /* 80076350 */ void GroundCheck(dBgS&);
    /* 8007654C */ void GroundRoofProc(dBgS&);
    /* 80076624 */ void LineCheck(dBgS&);
    /* 80076AAC */ void CrrPos(dBgS&);
    /* 80076F84 */ void GetWallAllR();
    /* 80076FC0 */ void SetWallCir();
    /* 8007703C */ void CalcWallBmdCyl();
    /* 80077114 */ void SetGroundUpY(f32);
    /* 80077128 */ void GetWallAllLowH();
    /* 80077178 */ void GetWallAllLowH_R();
    /* 800771E4 */ void GetSpeedY();
    /* 80077200 */ void GetWallAddY(Vec&);
    /* 80077278 */ void SetNowActorInfo(int, void*, unsigned int);
    /* 80077288 */ void SetWallPolyIndex(int, int);
    /* 800772E8 */ void CalcMovePosWork();
    /* 8007732C */ void CalcWallRR();
    /* 80077388 */ void SetMoveBGOnly();
    /* 800773A4 */ void ClrMoveBGOnly();
    /* 800773C0 */ void SetGndThinCellingOff();
    /* 800773D0 */ void ClrGndThinCellingOff();
    /* 800773E0 */ void ChkGndThinCellingOff();
    /* 800773EC */ void OnWallSort();
    /* 800773FC */ void ChkWallSort();
    /* 80077408 */ void ChkLineDown();
    /* 800D00D0 */ void ChkRoofHit() const;
    /* 800D00DC */ void ClrGroundHit();
    /* 80141404 */ void ChkGroundHit() const;

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

class dBgS_LinkAcch : public dBgS_Acch {
    /* 80140F30 */ ~dBgS_LinkAcch();
};

#endif /* D_BG_D_BG_S_ACCH_H */
