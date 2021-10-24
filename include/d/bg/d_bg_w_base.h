#ifndef D_BG_D_BG_W_BASE_H
#define D_BG_D_BG_W_BASE_H

#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_bg_s_gnd_chk.h"
#include "SSystem/SComponent/c_bg_s_lin_chk.h"
#include "SSystem/SComponent/c_bg_s_shdw_draw.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/bg/d_bg_s_sph_chk.h"
#include "f_op/f_op_actor.h"
#include "dolphin/types.h"

class cBgW_BgId {
private:
    /* 0x0 */ u16 m_id;
    /* 0x4 vtable */

public:
    /* 802681C8 */ void Release();
    /* 802681D4 */ bool ChkUsed() const;

    /* 8007E5F8 */ virtual ~cBgW_BgId();

    cBgW_BgId() { Ct(); }
    void Ct() { m_id = 0x100; }
};

struct dBgS_CaptPoly;

class dBgW_Base : public cBgW_BgId {
public:
    enum PushPullLabel {};

    /* 8007E5A8 */ dBgW_Base();
    /* 8007E69C */ void ClrDBgWBase();
    /* 8007E6E0 */ void CalcDiffShapeAngleY(s16);

    /* 8007E640 */ virtual ~dBgW_Base();
    /* 8007E6D0 */ virtual bool ChkMemoryError();
    virtual void ChkNotReady() const = 0;
    virtual void ChkLock() const = 0;
    virtual void ChkMoveBg() const = 0;
    virtual void ChkMoveFlag() const = 0;
    virtual void GetTriPla(cBgS_PolyInfo const&) const = 0;
    virtual void GetTriPnt(cBgS_PolyInfo const&, cXyz*, cXyz*, cXyz*) const = 0;
    virtual void GetBnd() const = 0;
    virtual void GetGrpInf(cBgS_PolyInfo const&) const = 0;
    virtual void OffMoveFlag() = 0;
    virtual void GetTopUnder(f32*, f32*) const = 0;
    /* 80074AB4 */ virtual void SetOldShapeAngleY(s16);
    virtual void LineCheck(cBgS_LinChk*) = 0;
    virtual void GroundCross(cBgS_GndChk*) = 0;
    virtual void ShdwDraw(cBgS_ShdwDraw*) = 0;
    virtual void CaptPoly(dBgS_CaptPoly&) = 0;
    virtual void WallCorrect(dBgS_Acch*) = 0;
    virtual void WallCorrectSort(dBgS_Acch*) = 0;
    virtual void RoofChk(dBgS_RoofChk*) = 0;
    virtual void SplGrpChk(dBgS_SplGrpChk*) = 0;
    virtual void SphChk(dBgS_SphChk*, void*) = 0;
    virtual void GetGrpRoomIndex(cBgS_PolyInfo const&) const = 0;
    virtual void GetExitId(cBgS_PolyInfo const&) = 0;
    virtual void GetPolyColor(cBgS_PolyInfo const&) = 0;
    virtual void GetHorseNoEntry(cBgS_PolyInfo const&) = 0;
    virtual void GetSpecialCode(cBgS_PolyInfo const&) = 0;
    virtual void GetSpecialCode(int) = 0;
    virtual void GetMagnetCode(cBgS_PolyInfo const&) = 0;
    virtual void GetPolyObjThrough(int) = 0;
    virtual void GetPolyCamThrough(int) = 0;
    virtual void GetPolyLinkThrough(int) = 0;
    virtual void GetPolyArrowThrough(int) = 0;
    virtual void GetPolyHSStick(int) = 0;
    virtual void GetPolyBoomerangThrough(int) = 0;
    virtual void GetPolyRopeThrough(int) = 0;
    virtual void GetPolyBombThrough(int) = 0;
    virtual void GetShdwThrough(int) = 0;
    virtual void GetUnderwaterRoofCode(int) = 0;
    virtual void GetMonkeyBarsCode(cBgS_PolyInfo const&) = 0;
    virtual void GetWallCode(cBgS_PolyInfo const&) = 0;
    virtual void GetPolyAtt0(cBgS_PolyInfo const&) = 0;
    virtual void GetPolyAtt1(cBgS_PolyInfo const&) = 0;
    virtual void GetGroundCode(cBgS_PolyInfo const&) = 0;
    virtual void GetIronBallThrough(int) = 0;
    virtual void GetAttackThrough(int) = 0;
    virtual void GetCamMoveBG(cBgS_PolyInfo const&) = 0;
    virtual void GetRoomCamId(cBgS_PolyInfo const&) = 0;
    virtual void GetRoomPathId(cBgS_PolyInfo const&) = 0;
    virtual void GetRoomPathPntNo(cBgS_PolyInfo const&) = 0;
    virtual void GetPolyGrpRoomInfId(cBgS_PolyInfo const&) = 0;
    virtual void GetGrpSoundId(cBgS_PolyInfo const&) = 0;
    virtual void CrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*) = 0;
    virtual void TransPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*) = 0;
    virtual void MatrixCrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*) = 0;
    /* 8007E6D8 */ virtual void CallRideCallBack(fopAc_ac_c*, fopAc_ac_c*);
    /* 8007E6DC */ virtual void CallArrowStickCallBack(fopAc_ac_c*, fopAc_ac_c*, cXyz&);

typedef s32 (*PushPull_CallBack)(cBgS_PolyInfo const&, fopAc_ac_c*, s16, dBgW_Base::PushPullLabel);

private:
    /* 0x08 */ u8 m_priority;
    /* 0x09 */ u8 m_roomId;
    /* 0x0A */ u8 field_0xa;
    /* 0x0B */ u8 field_0xb;
    /* 0x0C */ s16 m_old_ShapeAngleY;
    /* 0x0E */ s16 m_diff_ShapeAngleY;
    /* 0x10 */ PushPull_CallBack m_pushPull_Callback;
    /* 0x14 */ bool m_pushPull_Ok;
};  // Size: 0x18

#endif /* D_BG_D_BG_W_BASE_H */
