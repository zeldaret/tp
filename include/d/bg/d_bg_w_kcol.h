#ifndef D_BG_D_BG_W_KCOL_H
#define D_BG_D_BG_W_KCOL_H

#include "d/bg/d_bg_plc.h"
#include "d/bg/d_bg_w_base.h"
#include "dolphin/types.h"

struct dBgS_CaptPoly;

struct KC_PrismData {};

class dBgWKCol : public dBgW_Base {
public:
    /* 8007E6F4 */ dBgWKCol();
    /* 8007E7D0 */ void initKCollision(void*);
    /* 8007E804 */ void create(void*, void*);
    /* 8007E850 */ void getTriNrm(KC_PrismData*, Vec**) const;
    /* 8007E8C0 */ void GetTriPla(int) const;
    /* 8007E9A4 */ void GetTriPnt(int, Vec*, Vec*, Vec*) const;
    /* 8007E9D4 */ void GetTriPnt(KC_PrismData const*, Vec*, Vec*, Vec*) const;
    /* 8007EB70 */ void getPolyCode(int, dBgPc*) const;
    /* 8007EBC4 */ void chkPolyThrough(dBgPc*, cBgS_PolyPassChk*, cBgS_GrpPassChk*, cXyz&) const;
    /* 8007FF00 */ void ChkShdwDrawThrough(dBgPc*);

    /* 8007E74C */ virtual ~dBgWKCol();
    /* 8007E86C */ virtual void ChkNotReady() const;
    /* 8007E87C */ virtual bool ChkLock() const;
    /* 8007E884 */ virtual bool ChkMoveBg() const;
    /* 8007E88C */ virtual bool ChkMoveFlag() const;
    /* 8007E894 */ virtual void GetTriPla(cBgS_PolyInfo const&) const;
    /* 8007E980 */ virtual void GetTriPnt(cBgS_PolyInfo const&, cXyz*, cXyz*, cXyz*) const;
    /* 8007EB28 */ virtual void GetBnd() const;
    /* 8007EB30 */ virtual void GetGrpInf(cBgS_PolyInfo const&) const;
    /* 8007EB6C */ virtual void OffMoveFlag();
    /* 800829AC */ virtual void GetTopUnder(f32*, f32*) const;
    /* 8007EE34 */ virtual void LineCheck(cBgS_LinChk*);
    /* 8007F628 */ virtual void GroundCross(cBgS_GndChk*);
    /* 8007F9A4 */ virtual void ShdwDraw(cBgS_ShdwDraw*);
    /* 8007FF1C */ virtual void CaptPoly(dBgS_CaptPoly&);
    /* 800811A0 */ virtual void WallCorrect(dBgS_Acch*);
    /* 80080330 */ virtual void WallCorrectSort(dBgS_Acch*);
    /* 80081E18 */ virtual void RoofChk(dBgS_RoofChk*);
    /* 80082184 */ virtual void SplGrpChk(dBgS_SplGrpChk*);
    /* 800824EC */ virtual void SphChk(dBgS_SphChk*, virtual void*);
    /* 800829F0 */ virtual void GetGrpRoomIndex(cBgS_PolyInfo const&) const;
    /* 80082A20 */ virtual void GetExitId(cBgS_PolyInfo const&);
    /* 80082A50 */ virtual void GetPolyColor(cBgS_PolyInfo const&);
    /* 80082A80 */ virtual void GetHorseNoEntry(cBgS_PolyInfo const&);
    /* 80082AB0 */ virtual void GetSpecialCode(cBgS_PolyInfo const&);
    /* 80082AE0 */ virtual void GetSpecialCode(int);
    /* 80082B0C */ virtual void GetMagnetCode(cBgS_PolyInfo const&);
    /* 80082B6C */ virtual void GetPolyObjThrough(int);
    /* 80082B98 */ virtual void GetPolyCamThrough(int);
    /* 80082BC4 */ virtual void GetPolyLinkThrough(int);
    /* 80082BF0 */ virtual void GetPolyArrowThrough(int);
    /* 80082C1C */ virtual u32 GetPolyHSStick(int);
    /* 80082C48 */ virtual void GetPolyBoomerangThrough(int);
    /* 80082C74 */ virtual void GetPolyRopeThrough(int);
    /* 80082CA0 */ virtual void GetPolyBombThrough(int);
    /* 80082CF8 */ virtual void GetShdwThrough(int);
    /* 80082CCC */ virtual void GetUnderwaterRoofCode(int);
    /* 80082B3C */ virtual void GetMonkeyBarsCode(cBgS_PolyInfo const&);
    /* 80082D24 */ virtual void GetLinkNo(cBgS_PolyInfo const&);
    /* 80082D54 */ virtual s32 GetWallCode(cBgS_PolyInfo const&);
    /* 80082D84 */ virtual void GetPolyAtt0(cBgS_PolyInfo const&);
    /* 80082DB4 */ virtual void GetPolyAtt1(cBgS_PolyInfo const&);
    /* 80082DE4 */ virtual void GetGroundCode(cBgS_PolyInfo const&);
    /* 80082E14 */ virtual void GetIronBallThrough(int);
    /* 80082E40 */ virtual void GetAttackThrough(int);
    /* 80082E6C */ virtual void GetCamMoveBG(cBgS_PolyInfo const&);
    /* 80082E9C */ virtual void GetRoomCamId(cBgS_PolyInfo const&);
    /* 80082ECC */ virtual void GetRoomPathId(cBgS_PolyInfo const&);
    /* 80082EFC */ virtual void GetRoomPathPntNo(cBgS_PolyInfo const&);
    /* 80082F2C */ virtual void GetPolyGrpRoomInfId(cBgS_PolyInfo const&);
    /* 80082F5C */ virtual void GetGrpSoundId(cBgS_PolyInfo const&);
    /* 80082F8C */ virtual void CrrPos(cBgS_PolyInfo const&, virtual void*, bool, cXyz*, csXyz*,
                                       csXyz*);
    /* 80082F90 */ virtual void TransPos(cBgS_PolyInfo const&, virtual void*, bool, cXyz*, csXyz*,
                                         csXyz*);
    /* 80082F94 */ virtual void MatrixCrrPos(cBgS_PolyInfo const&, virtual void*, bool, cXyz*,
                                             csXyz*, csXyz*);

private:
    /* 0x18 */ void* m_pkc_head;
    /* 0x1C */ dBgPlc m_code;
    /* 0x20 */ cM3dGAab m_bnd;
};

#endif /* D_BG_D_BG_W_KCOL_H */
