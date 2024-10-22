#ifndef C_BG_S_LIN_CHK_H
#define C_BG_S_LIN_CHK_H

#include "SSystem/SComponent/c_bg_s_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_m3d_g_lin.h"

class cBgS_LinChk : public cBgS_Chk, public cBgS_PolyInfo {
public:
    /* 0x024 */ cM3dGLin mLin;
    /* 0x040 */ cXyz field_0x40;
    /* 0x04C */ u32 field_0x4c;
    /* 0x050 */ bool mPreWallChk;
    /* 0x051 */ bool mPreGroundChk;
    /* 0x052 */ bool mPreRoofChk;
    /* 0x053 */ bool mFrontFlag;
    /* 0x054 */ bool mBackFlag;

public:
    cBgS_LinChk();
    void ct();
    void Set2(const cXyz*, const cXyz*, unsigned int);
    void PreCalc();
    void GetCross();

    virtual ~cBgS_LinChk();

    void ClrHit() { field_0x4c &= ~16; }
    void SetHit() { field_0x4c |= 16; }
    u32 ChkHit() const { return field_0x4c & 16; }
    void SetCross(const cXyz& pos) { mLin.SetEnd(pos); }
    cXyz& i_GetCross() { return mLin.GetEnd(); }
    cXyz* GetCrossP() { return &mLin.GetEndP(); }
    cM3dGLin* GetLinP() { return &mLin; }
    bool ChkBackFlag() const { return mBackFlag; }
    void onBackFlag() { mBackFlag = true; }
    bool ChkFrontFlag() const { return mFrontFlag; }
    void onFrontFlag() { mFrontFlag = true; }
    bool GetPreWallChk() const { return mPreWallChk; }
    bool GetPreGroundChk() const { return mPreGroundChk; }
    bool GetPreRoofChk() const { return mPreRoofChk; }
    cXyz* GetStartP() { return &mLin.GetStartP(); }
    void ClrSttsRoofOff() { field_0x4c &= ~0x20000000; }
    void ClrSttsWallOff() { field_0x4c &= ~0x40000000; }
};

#endif /* C_BG_S_LIN_CHK_H */
