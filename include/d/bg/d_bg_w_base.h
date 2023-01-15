#ifndef D_BG_D_BG_W_BASE_H
#define D_BG_D_BG_W_BASE_H

#include "SSystem/SComponent/c_bg_s_gnd_chk.h"
#include "SSystem/SComponent/c_bg_s_lin_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_bg_s_shdw_draw.h"
#include "SSystem/SComponent/c_bg_w.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/bg/d_bg_s_sph_chk.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

struct dBgS_CaptPoly;

class dBgW_Base : public cBgW_BgId {
public:
    enum PushPullLabel {};

    enum PRIORITY {
        PRIORITY_0,
    };

    typedef s32 (*PushPull_CallBack)(cBgS_PolyInfo const&, fopAc_ac_c*, s16,
                                     dBgW_Base::PushPullLabel);

    /* 8007E5A8 */ dBgW_Base();
    /* 8007E69C */ void ClrDBgWBase();
    /* 8007E6E0 */ void CalcDiffShapeAngleY(s16);

    /* 8007E640 */ virtual ~dBgW_Base();
    /* 8007E6D0 */ virtual bool ChkMemoryError();
    virtual bool ChkNotReady() const = 0;
    virtual bool ChkLock() const = 0;
    virtual bool ChkMoveBg() const = 0;
    virtual u32 ChkMoveFlag() const = 0;
    virtual cM3dGPla GetTriPla(cBgS_PolyInfo const&) const = 0;
    virtual bool GetTriPnt(cBgS_PolyInfo const&, cXyz*, cXyz*, cXyz*) const = 0;
    virtual cM3dGAab* GetBnd() const = 0;
    virtual u32 GetGrpInf(cBgS_PolyInfo const&) const = 0;
    virtual void OffMoveFlag() = 0;
    virtual void GetTopUnder(f32*, f32*) const = 0;
    /* 80074AB4 */ virtual void SetOldShapeAngleY(s16);
    virtual bool LineCheck(cBgS_LinChk*) = 0;
    virtual bool GroundCross(cBgS_GndChk*) = 0;
    virtual void ShdwDraw(cBgS_ShdwDraw*) = 0;
    virtual void CaptPoly(dBgS_CaptPoly&) = 0;
    virtual bool WallCorrect(dBgS_Acch*) = 0;
    virtual void WallCorrectSort(dBgS_Acch*) = 0;
    virtual bool RoofChk(dBgS_RoofChk*) = 0;
    virtual bool SplGrpChk(dBgS_SplGrpChk*) = 0;
    virtual bool SphChk(dBgS_SphChk*, void*) = 0;
    virtual s32 GetGrpRoomIndex(cBgS_PolyInfo const&) const = 0;
    virtual s32 GetExitId(cBgS_PolyInfo const&) = 0;
    virtual s32 GetPolyColor(cBgS_PolyInfo const&) = 0;
    virtual BOOL GetHorseNoEntry(cBgS_PolyInfo const&) = 0;
    virtual int GetSpecialCode(cBgS_PolyInfo const&) = 0;
    virtual int GetSpecialCode(int) = 0;
    virtual int GetMagnetCode(cBgS_PolyInfo const&) = 0;
    virtual u32 GetPolyObjThrough(int) = 0;
    virtual u32 GetPolyCamThrough(int) = 0;
    virtual u32 GetPolyLinkThrough(int) = 0;
    virtual u32 GetPolyArrowThrough(int) = 0;
    virtual u32 GetPolyHSStick(int) = 0;
    virtual u32 GetPolyBoomerangThrough(int) = 0;
    virtual u32 GetPolyRopeThrough(int) = 0;
    virtual u32 GetPolyBombThrough(int) = 0;
    virtual bool GetShdwThrough(int) = 0;
    virtual u32 GetUnderwaterRoofCode(int) = 0;
    virtual int GetMonkeyBarsCode(cBgS_PolyInfo const&) = 0;
    virtual int GetLinkNo(cBgS_PolyInfo const&) = 0;
    virtual s32 GetWallCode(cBgS_PolyInfo const&) = 0;
    virtual int GetPolyAtt0(cBgS_PolyInfo const&) = 0;
    virtual int GetPolyAtt1(cBgS_PolyInfo const&) = 0;
    virtual int GetGroundCode(cBgS_PolyInfo const&) = 0;
    virtual u32 GetIronBallThrough(int) = 0;
    virtual u32 GetAttackThrough(int) = 0;
    virtual s32 GetCamMoveBG(cBgS_PolyInfo const&) = 0;
    virtual s32 GetRoomCamId(cBgS_PolyInfo const&) = 0;
    virtual s32 GetRoomPathId(cBgS_PolyInfo const&) = 0;
    virtual s32 GetRoomPathPntNo(cBgS_PolyInfo const&) = 0;
    virtual u8 GetPolyGrpRoomInfId(cBgS_PolyInfo const&) = 0;
    virtual u8 GetGrpSoundId(cBgS_PolyInfo const&) = 0;
    virtual void CrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*) = 0;
    virtual void TransPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*) = 0;
    virtual void MatrixCrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*) = 0;
    /* 8007E6D8 */ virtual void CallRideCallBack(fopAc_ac_c*, fopAc_ac_c*);
    /* 8007E6DC */ virtual void CallArrowStickCallBack(fopAc_ac_c*, fopAc_ac_c*, cXyz&);

    PushPull_CallBack GetPushPullCallback() const { return m_pushPull_Callback; }
    s16 GetDiffShapeAngleY() { return m_diff_ShapeAngleY; }
    int GetRoomId() { return m_roomId; }
    bool chkStickWall() { return field_0xb & 1; }
    bool chkStickRoof() { return field_0xb & 2; }
    bool ChkPushPullOk() const { return m_pushPull_Ok; }
    void SetRoomId(int id) { m_roomId = id; }
    bool ChkPriority(int prio) { return m_priority == prio; }
    void SetPriority(PRIORITY priority) { m_priority = priority; }

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
