#ifndef D_BG_D_BG_S_H
#define D_BG_D_BG_S_H

#include "SSystem/SComponent/c_bg_s_gnd_chk.h"
#include "SSystem/SComponent/c_bg_s_lin_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "d/bg/d_bg_w.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class cBgS_ChkElm {
public:
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

    bool ChkUsed() const { return m_used; }
};  // Size: 0x14

STATIC_ASSERT(sizeof(cBgS_ChkElm) == 0x14);

class cBgS {
public:
    /* 0x0000 */ cBgS_ChkElm m_chk_element[256];
    /* 0x1400 vtable */

public:
    cBgS() {}
    bool Regist(dBgW_Base*, unsigned int, void*);
    void Release(dBgW_Base*);
    bool LineCross(cBgS_LinChk*);
    f32 GroundCross(cBgS_GndChk*);
    static void ConvDzb(void*);
    fopAc_ac_c* GetActorPointer(int) const;
    dBgW_Base* GetBgWBasePointer(cBgS_PolyInfo const&) const;
    bool ChkPolySafe(cBgS_PolyInfo const&);
    s32 GetGrpRoomId(cBgS_PolyInfo const&) const;
    bool GetTriPla(cBgS_PolyInfo const&, cM3dGPla*) const;
    bool GetTriPnt(cBgS_PolyInfo const&, cXyz*, cXyz*, cXyz*) const;
    void ShdwDraw(cBgS_ShdwDraw*);
    u32 GetGrpInf(cBgS_PolyInfo const&) const;

    virtual ~cBgS() {}
    virtual void Ct();
    virtual void Dt();

    fopAc_ac_c* GetActorPointer(cBgS_PolyInfo const& info) const {
        return GetActorPointer(info.GetBgIndex());
    }
};  // Size: 0x1404

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
    bool ChkMoveBG(cBgS_PolyInfo const&);
    bool ChkMoveBG_NoDABg(cBgS_PolyInfo const&);
    s32 GetExitId(cBgS_PolyInfo const&);
    s32 GetPolyColor(cBgS_PolyInfo const&);
    BOOL GetHorseNoEntry(cBgS_PolyInfo const&);
    bool GetSpecialCode(cBgS_PolyInfo const&);
    int GetMagnetCode(cBgS_PolyInfo const&);
    bool GetMonkeyBarsCode(cBgS_PolyInfo const&);
    bool GetUnderwaterRoofCode(cBgS_PolyInfo const&);
    s32 GetWallCode(cBgS_PolyInfo const&);
    int GetPolyAtt0(cBgS_PolyInfo const&);
    int GetPolyAtt1(cBgS_PolyInfo const&);
    bool GetGroundCode(cBgS_PolyInfo const&);
    s32 GetCamMoveBG(cBgS_PolyInfo const&);
    s32 GetRoomCamId(cBgS_PolyInfo const&);
    s32 GetRoomPathId(cBgS_PolyInfo const&);
    s32 GetRoomPathPntNo(cBgS_PolyInfo const&);
    s32 GetGrpSoundId(cBgS_PolyInfo const&);
    u32 ChkGrpInf(cBgS_PolyInfo const&, u32);
    s32 GetRoomId(cBgS_PolyInfo const&);
    bool GetPolyAttackThrough(cBgS_PolyInfo const&);
    u32 ChkPolyHSStick(cBgS_PolyInfo const&);
    void WallCorrect(dBgS_Acch*);
    void WallCorrectSort(dBgS_Acch*);
    f32 RoofChk(dBgS_RoofChk*);
    bool SplGrpChk(dBgS_SplGrpChk*);
    void SphChk(dBgS_SphChk*, void*);
    void MoveBgCrrPos(cBgS_PolyInfo const&, bool, cXyz*, csXyz*, csXyz*, bool, bool);
    void MoveBgTransPos(cBgS_PolyInfo const&, bool, cXyz*, csXyz*, csXyz*);
    void MoveBgMatrixCrrPos(cBgS_PolyInfo const&, bool, cXyz*, csXyz*, csXyz*);
    void RideCallBack(cBgS_PolyInfo const&, fopAc_ac_c*);
    void ArrowStickCallBack(cBgS_PolyInfo const&, fopAc_ac_c*, cXyz&);
    bool PushPullCallBack(cBgS_PolyInfo const&, fopAc_ac_c*, s16, dBgW_Base::PushPullLabel);

    bool WaterChk(dBgS_SplGrpChk* chk) { return SplGrpChk(chk); }
};  // Size: 0x1404

bool dBgS_CheckBGroundPoly(cBgS_PolyInfo const&);
bool dBgS_CheckBWallPoly(cBgS_PolyInfo const&);

#endif /* D_BG_D_BG_S_H */
