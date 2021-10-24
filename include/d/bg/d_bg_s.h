#ifndef D_BG_D_BG_S_H
#define D_BG_D_BG_S_H

#include "SSystem/SComponent/c_bg_s_gnd_chk.h"
#include "SSystem/SComponent/c_bg_s_lin_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "d/bg/d_bg_w.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class cBgS_ChkElm {
private:
    /* 0x00 */ dBgW_Base* m_bgw_base_ptr;
    /* 0x04 */ bool m_used;
    /* 0x08 */ u32 field_0x8;
    /* 0x0C */ fopAc_ac_c* m_actor_ptr;
    /* 0x10 vtable */

public:
    cBgS_ChkElm() { this->Init(); }
    void Init();
    void Release();

    virtual ~cBgS_ChkElm() {}
    virtual void Regist2(dBgW_Base*, unsigned int, void*);
};  // Size: 0x14

STATIC_ASSERT(sizeof(cBgS_ChkElm) == 0x14);

class cBgS {
private:
    /* 0x0000 */ cBgS_ChkElm m_chk_element[256];
    /* 0x1400 vtable */

public:
    cBgS() {}
    bool Regist(dBgW_Base*, unsigned int, void*);
    void Release(dBgW_Base*);
    void LineCross(cBgS_LinChk*);
    void GroundCross(cBgS_GndChk*);
    void ConvDzb(void*);
    void GetActorPointer(int) const;
    void GetBgWBasePointer(cBgS_PolyInfo const&) const;
    void ChkPolySafe(cBgS_PolyInfo const&);
    void GetGrpRoomId(cBgS_PolyInfo const&) const;
    void GetTriPla(cBgS_PolyInfo const&, cM3dGPla*) const;
    void GetTriPnt(cBgS_PolyInfo const&, cXyz*, cXyz*, cXyz*) const;
    void ShdwDraw(cBgS_ShdwDraw*);
    void GetGrpInf(cBgS_PolyInfo const&) const;

    virtual ~cBgS() {}
    virtual void Ct();
    virtual void Dt();
};  // Size = 0x1404

class dBgS_HIO {
    /* 0x00 */ u8 vtable[4];
    /* 0x04 */ u8 field_0x4[2];
    /* 0x06 */ u16 field_0x6;
    /* 0x08 */ u16 field_0x8;
    /* 0x0A */ u8 field_0xa[2];
    /* 0x0C */ cXyz field_0xc;
    /* 0x18 */ cXyz field_0x18;
    /* 0x24 */ cXyz field_0x24;
    /* 0x30 */ u8 field_0x30[4];
};

class dBgS_Acch;

class dBgS : public cBgS {
public:
    dBgS() {}
    ~dBgS() {}
    void Ct();
    void Dt();
    void ClrMoveFlag();
    void Move();
    bool Regist(dBgW_Base*, fopAc_ac_c*);
    void ChkMoveBG(cBgS_PolyInfo const&);
    void ChkMoveBG_NoDABg(cBgS_PolyInfo const&);
    void GetExitId(cBgS_PolyInfo const&);
    void GetPolyColor(cBgS_PolyInfo const&);
    void GetHorseNoEntry(cBgS_PolyInfo const&);
    void GetSpecialCode(cBgS_PolyInfo const&);
    void GetMagnetCode(cBgS_PolyInfo const&);
    void GetMonkeyBarsCode(cBgS_PolyInfo const&);
    void GetUnderwaterRoofCode(cBgS_PolyInfo const&);
    void GetWallCode(cBgS_PolyInfo const&);
    void GetPolyAtt0(cBgS_PolyInfo const&);
    void GetPolyAtt1(cBgS_PolyInfo const&);
    void GetGroundCode(cBgS_PolyInfo const&);
    void GetCamMoveBG(cBgS_PolyInfo const&);
    void GetRoomCamId(cBgS_PolyInfo const&);
    void GetRoomPathId(cBgS_PolyInfo const&);
    void GetRoomPathPntNo(cBgS_PolyInfo const&);
    void GetGrpSoundId(cBgS_PolyInfo const&);
    void ChkGrpInf(cBgS_PolyInfo const&, u32);
    void GetRoomId(cBgS_PolyInfo const&);
    void GetPolyAttackThrough(cBgS_PolyInfo const&);
    void ChkPolyHSStick(cBgS_PolyInfo const&);
    void WallCorrect(dBgS_Acch*);
    void WallCorrectSort(dBgS_Acch*);
    void RoofChk(dBgS_RoofChk*);
    void SplGrpChk(dBgS_SplGrpChk*);
    void SphChk(dBgS_SphChk*, void*);
    void MoveBgCrrPos(cBgS_PolyInfo const&, bool, cXyz*, csXyz*, csXyz*, bool, bool);
    void MoveBgTransPos(cBgS_PolyInfo const&, bool, cXyz*, csXyz*, csXyz*);
    void MoveBgMatrixCrrPos(cBgS_PolyInfo const&, bool, cXyz*, csXyz*, csXyz*);
    void RideCallBack(cBgS_PolyInfo const&, fopAc_ac_c*);
    void ArrowStickCallBack(cBgS_PolyInfo const&, fopAc_ac_c*, cXyz&);
    void PushPullCallBack(cBgS_PolyInfo const&, fopAc_ac_c*, s16, dBgW_Base::PushPullLabel);

private:
    // /* 0x0000 */ cBgS cbgs;
    // /* 0x1400 */ void* vtable;
};

#endif /* D_BG_D_BG_S_H */
