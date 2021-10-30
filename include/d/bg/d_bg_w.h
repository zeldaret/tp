#ifndef D_BG_D_BG_W_H
#define D_BG_D_BG_W_H

#include "JSystem/J3DGraphBase/J3DVertex.h"
#include "SSystem/SComponent/c_bg_s_gnd_chk.h"
#include "SSystem/SComponent/c_bg_s_lin_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_m3d_g_tri.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/bg/d_bg_s_grp_pass_chk.h"
#include "d/bg/d_bg_s_poly_pass_chk.h"
#include "d/bg/d_bg_w_base.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

struct dBgS_CaptPoly {};

class cBgW_TriElm : public cM3dGPla {
public:
    /* 80079754 */ cBgW_TriElm();

    /* 800796F8 */ virtual ~cBgW_TriElm();
};

class cBgW_RwgElm {
private:
    /* 0x0 */ u8 field_0x0[4];

public:
    /* 800791C4 */ cBgW_RwgElm();

    /* 800791D4 */ virtual ~cBgW_RwgElm();
};

class cBgW_NodeTree : public cM3dGAab {
public:
    /* 8007921C */ cBgW_NodeTree();

    /* 80079238 */ virtual ~cBgW_NodeTree();
};

class cBgW_GrpElm : public cM3dGAab {
public:
    /* 8007A1E4 */ cBgW_GrpElm();

    /* 8007A184 */ virtual ~cBgW_GrpElm();
};

struct cBgD_t {};

class cBgW : public dBgW_Base {
public:
    /* 80079294 */ cBgW();
    /* 800793A4 */ void FreeArea();
    /* 800793C4 */ void GlobalVtx();
    /* 80079484 */ void SetVtx();
    /* 80079668 */ void SetTri();
    /* 80079770 */ void BlckConnect(u16*, int*, int);
    /* 8007998C */ void MakeBlckTransMinMax(cXyz*, cXyz*);
    /* 800799E0 */ void MakeBlckMinMax(int, cXyz*, cXyz*);
    /* 80079A68 */ void MakeBlckBnd(int, cXyz*, cXyz*);
    /* 80079BDC */ void MakeNodeTreeRp(int);
    /* 80079CC4 */ void MakeNodeTreeGrpRp(int);
    /* 80079DF0 */ void MakeNodeTree();
    /* 80079F38 */ bool Set(cBgD_t*, u32, f32 (*)[3][4]);
    /* 8007A200 */ void RwgLineCheck(u16, cBgS_LinChk*);
    /* 8007A3A0 */ void LineCheckRp(cBgS_LinChk*, int);
    /* 8007A52C */ void LineCheckGrpRp(cBgS_LinChk*, int, int);
    /* 8007A680 */ void RwgGroundCheckCommon(f32, u16, cBgS_GndChk*);
    /* 8007A774 */ void RwgGroundCheckGnd(u16, cBgS_GndChk*);
    /* 8007A824 */ void RwgGroundCheckWall(u16, cBgS_GndChk*);
    /* 8007A8F4 */ void GroundCrossRp(cBgS_GndChk*, int);
    /* 8007AA50 */ void GroundCrossGrpRp(cBgS_GndChk*, int, int);
    /* 8007ABC4 */ void CopyOldMtx();
    /* 8007AC10 */ void Move();
    /* 8007ADF0 */ void RwgShdwDraw(int, cBgS_ShdwDraw*);
    /* 8007AEA4 */ void ShdwDrawRp(cBgS_ShdwDraw*, int);
    /* 8007AFC0 */ void ShdwDrawGrpRp(cBgS_ShdwDraw*, int);
    /* 8007B17C */ void GetTrans(cXyz*) const;
    /* 8007B2F4 */ void GetPolyInfId(int) const;
    /* 8007B30C */ void GetPolyInf0(int, u32, u32) const;
    /* 8007B360 */ void GetMaskPolyInf0_NoShift(int, u32) const;
    /* 8007B654 */ void GetPolyInf1(int, u32, u32) const;
    /* 8007B78C */ void GetMaskPolyInf1_NoShift(int, u32) const;
    /* 8007B824 */ void GetPolyInf2(int, u32, u32) const;
    /* 8007B930 */ void GetTriGrp(int) const;

    /* 8007933C */ virtual ~cBgW();
    /* 80079EEC */ virtual void ChkMemoryError();
    /* 8007B948 */ virtual void ChkNotReady() const;
    /* 8007B958 */ virtual bool ChkLock() const;
    /* 8007B964 */ virtual bool ChkMoveBg() const;
    virtual u32 ChkMoveFlag() const = 0;
    /* 8007B270 */ virtual void GetTriPla(cBgS_PolyInfo const&) const;
    /* 8007B1B4 */ virtual bool GetTriPnt(cBgS_PolyInfo const&, cXyz*, cXyz*, cXyz*) const;
    /* 8007B164 */ virtual void GetBnd() const;
    /* 8007B2B0 */ virtual u32 GetGrpInf(cBgS_PolyInfo const&) const;
    virtual void OffMoveFlag() = 0;
    /* 8007B240 */ virtual void GetTopUnder(f32*, f32*) const;
    /* 8007A658 */ virtual bool LineCheck(cBgS_LinChk*);
    /* 8007AB9C */ virtual void GroundCross(cBgS_GndChk*);
    /* 8007B084 */ virtual void ShdwDraw(cBgS_ShdwDraw*);
    virtual void CaptPoly(dBgS_CaptPoly&) = 0;
    virtual void WallCorrect(dBgS_Acch*) = 0;
    virtual void WallCorrectSort(dBgS_Acch*) = 0;
    virtual void RoofChk(dBgS_RoofChk*) = 0;
    virtual void SplGrpChk(dBgS_SplGrpChk*) = 0;
    virtual void SphChk(dBgS_SphChk*, void*) = 0;
    /* 8007B0E4 */ virtual s32 GetGrpRoomIndex(cBgS_PolyInfo const&) const;
    virtual s32 GetExitId(cBgS_PolyInfo const&) = 0;
    virtual s32 GetPolyColor(cBgS_PolyInfo const&) = 0;
    virtual bool GetHorseNoEntry(cBgS_PolyInfo const&) = 0;
    virtual bool GetSpecialCode(cBgS_PolyInfo const&) = 0;
    virtual void GetSpecialCode(int) = 0;
    virtual bool GetMagnetCode(cBgS_PolyInfo const&) = 0;
    virtual void GetPolyObjThrough(int) = 0;
    virtual void GetPolyCamThrough(int) = 0;
    virtual void GetPolyLinkThrough(int) = 0;
    virtual void GetPolyArrowThrough(int) = 0;
    virtual bool GetPolyHSStick(int) = 0;
    virtual void GetPolyBoomerangThrough(int) = 0;
    virtual void GetPolyRopeThrough(int) = 0;
    virtual void GetPolyBombThrough(int) = 0;
    virtual void GetShdwThrough(int) = 0;
    virtual bool GetUnderwaterRoofCode(int) = 0;
    virtual bool GetMonkeyBarsCode(cBgS_PolyInfo const&) = 0;
    virtual bool GetWallCode(cBgS_PolyInfo const&) = 0;
    virtual bool GetPolyAtt0(cBgS_PolyInfo const&) = 0;
    virtual bool GetPolyAtt1(cBgS_PolyInfo const&) = 0;
    virtual bool GetGroundCode(cBgS_PolyInfo const&) = 0;
    virtual void GetIronBallThrough(int) = 0;
    virtual u32 GetAttackThrough(int) = 0;
    virtual s32 GetCamMoveBG(cBgS_PolyInfo const&) = 0;
    virtual s32 GetRoomCamId(cBgS_PolyInfo const&) = 0;
    virtual s32 GetRoomPathId(cBgS_PolyInfo const&) = 0;
    virtual s32 GetRoomPathPntNo(cBgS_PolyInfo const&) = 0;
    virtual void GetPolyGrpRoomInfId(cBgS_PolyInfo const&) = 0;
    virtual s32 GetGrpSoundId(cBgS_PolyInfo const&) = 0;
    virtual void CrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*) = 0;
    virtual void TransPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*) = 0;
    virtual void MatrixCrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*) = 0;
    /* 80079564 */ virtual void CalcPlane();
    /* 800797BC */ virtual void ClassifyPlane();
    /* 8007B0A8 */ virtual bool ChkPolyThrough(int, cBgS_PolyPassChk*);
    /* 8007B0B0 */ virtual void ChkShdwDrawThrough(int, cBgS_PolyPassChk*);
    /* 8007B0DC */ virtual bool ChkGrpThrough(int, cBgS_GrpPassChk*, int);

    u32 GetOldInvMtx(Mtx m) { return PSMTXInverse(m_inv_mtx, m); }
    MtxP GetBaseMtxP() { return pm_base_mtx; }

public:
    /* 0x18 */ MtxP pm_base_mtx;
    /* 0x1C */ Mtx m_inv_mtx;
    /* 0x4C */ Mtx field_0x4c;
    /* 0x7C */ cXyz field_0x7c;
    /* 0x88 */ u8 field_0x88;
    /* 0x89 */ u8 field_0x89;
    /* 0x8A */ u8 field_0x8a[6];
    /* 0x90 */ u8 field_0x90;
    /* 0x91 */ u8 field_0x91;
    /* 0x92 */ u16 field_0x92;
    /* 0x94 */ cBgW_TriElm* pm_tri;
    /* 0x98 */ cBgW_RwgElm* pm_rwg;
    /* 0x9C */ VertexPosition* pm_vtx_tbl;  // type not confirmed
    /* 0xA0 */ void* pm_bgd;
    /* 0xA4 */ void* field_0xa4;
    /* 0xA8 */ cBgW_GrpElm* pm_grp;
    /* 0xAC */ cBgW_NodeTree* pm_node_tree;
};

class dBgW;
typedef void (*dBgW_RideCallback)(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
typedef void (*dBgW_ArrowStickCallback)(fopAc_ac_c*, fopAc_ac_c*, cXyz&);
typedef void (*dBgW_CrrFunc)(dBgW*, void*, cBgS_PolyInfo const&, bool, cXyz*, csXyz*, csXyz*);

class dBgW : public cBgW {
public:
    /* 8007B970 */ dBgW();
    /* 8007B9C0 */ void Move();
    /* 8007B9EC */ void positionWallCorrect(dBgS_Acch*, f32, cM3dGPla&, cXyz*, f32);
    /* 8007BA40 */ void RwgWallCorrect(dBgS_Acch*, u16);
    /* 8007C234 */ void WallCorrectRp(dBgS_Acch*, int);
    /* 8007C360 */ void WallCorrectGrpRp(dBgS_Acch*, int, int);
    /* 8007C4AC */ void RwgWallCorrectSort(dBgS_Acch*, u16);
    /* 8007C714 */ void WallCorrectRpSort(dBgS_Acch*, int);
    /* 8007C808 */ void WallCorrectGrpRpSort(dBgS_Acch*, int, int);
    /* 8007D0DC */ void RwgRoofChk(u16, dBgS_RoofChk*);
    /* 8007D208 */ void RoofChkRp(dBgS_RoofChk*, int);
    /* 8007D330 */ void RoofChkGrpRp(dBgS_RoofChk*, int, int);
    /* 8007D498 */ void RwgSplGrpChk(u16, dBgS_SplGrpChk*);
    /* 8007D5C4 */ void SplGrpChkRp(dBgS_SplGrpChk*, int);
    /* 8007D6F0 */ void SplGrpChkGrpRp(dBgS_SplGrpChk*, int, int);
    /* 8007D858 */ void RwgCaptPoly(int, dBgS_CaptPoly&);
    /* 8007D8E8 */ void CaptPolyRp(dBgS_CaptPoly&, int);
    /* 8007DA04 */ void CaptPolyGrpRp(dBgS_CaptPoly&, int, int);
    /* 8007DB20 */ void RwgSphChk(u16, dBgS_SphChk*, void*);
    /* 8007DC70 */ void SphChkRp(dBgS_SphChk*, void*, int);
    /* 8007DDE0 */ void SphChkGrpRp(dBgS_SphChk*, void*, int, int);

    /* 8007E548 */ virtual ~dBgW();
    /* 8007E4B4 */ virtual u32 ChkMoveFlag() const;
    /* 8007E4A4 */ virtual void OffMoveFlag();
    /* 8007DAF8 */ virtual void CaptPoly(dBgS_CaptPoly&);
    /* 8007C484 */ virtual void WallCorrect(dBgS_Acch*);
    /* 8007C910 */ virtual void WallCorrectSort(dBgS_Acch*);
    /* 8007D470 */ virtual void RoofChk(dBgS_RoofChk*);
    /* 8007D830 */ virtual void SplGrpChk(dBgS_SplGrpChk*);
    /* 8007DF00 */ virtual void SphChk(dBgS_SphChk*, virtual void*);
    /* 8007B3AC */ virtual s32 GetExitId(cBgS_PolyInfo const&);
    /* 8007B3D8 */ virtual s32 GetPolyColor(cBgS_PolyInfo const&);
    /* 8007B404 */ virtual bool GetHorseNoEntry(cBgS_PolyInfo const&);
    /* 8007B430 */ virtual bool GetSpecialCode(cBgS_PolyInfo const&);
    /* 8007B460 */ virtual void GetSpecialCode(int);
    /* 8007B488 */ virtual bool GetMagnetCode(cBgS_PolyInfo const&);
    /* 8007B4E0 */ virtual void GetPolyObjThrough(int);
    /* 8007B504 */ virtual void GetPolyCamThrough(int);
    /* 8007B52C */ virtual void GetPolyLinkThrough(int);
    /* 8007B550 */ virtual void GetPolyArrowThrough(int);
    /* 8007B574 */ virtual bool GetPolyHSStick(int);
    /* 8007B598 */ virtual void GetPolyBoomerangThrough(int);
    /* 8007B5BC */ virtual void GetPolyRopeThrough(int);
    /* 8007B5E0 */ virtual void GetPolyBombThrough(int);
    /* 8007B604 */ virtual void GetShdwThrough(int);
    /* 8007B630 */ virtual bool GetUnderwaterRoofCode(int);
    /* 8007B4B4 */ virtual bool GetMonkeyBarsCode(cBgS_PolyInfo const&);
    /* 8007B6AC */ virtual void GetLinkNo(cBgS_PolyInfo const&);
    /* 8007B6D8 */ virtual bool GetWallCode(cBgS_PolyInfo const&);
    /* 8007B704 */ virtual bool GetPolyAtt0(cBgS_PolyInfo const&);
    /* 8007B734 */ virtual bool GetPolyAtt1(cBgS_PolyInfo const&);
    /* 8007B760 */ virtual bool GetGroundCode(cBgS_PolyInfo const&);
    /* 8007B7DC */ virtual void GetIronBallThrough(int);
    /* 8007B800 */ virtual u32 GetAttackThrough(int);
    /* 8007B87C */ virtual s32 GetCamMoveBG(cBgS_PolyInfo const&);
    /* 8007B8A8 */ virtual s32 GetRoomCamId(cBgS_PolyInfo const&);
    /* 8007B8D8 */ virtual s32 GetRoomPathId(cBgS_PolyInfo const&);
    /* 8007B904 */ virtual s32 GetRoomPathPntNo(cBgS_PolyInfo const&);
    /* 8007DF28 */ virtual void GetPolyGrpRoomInfId(cBgS_PolyInfo const&);
    /* 8007DF58 */ virtual s32 GetGrpSoundId(cBgS_PolyInfo const&);
    /* 8007DF88 */ virtual void CrrPos(cBgS_PolyInfo const&, virtual void*, bool, cXyz*, csXyz*,
                                       csXyz*);
    /* 8007DFC4 */ virtual void TransPos(cBgS_PolyInfo const&, virtual void*, bool, cXyz*, csXyz*,
                                         csXyz*);
    /* 8007E000 */ virtual void MatrixCrrPos(cBgS_PolyInfo const&, virtual void*, bool, cXyz*,
                                             csXyz*, csXyz*);
    /* 8007E444 */ virtual void CallRideCallBack(fopAc_ac_c*, fopAc_ac_c*);
    /* 8007E474 */ virtual void CallArrowStickCallBack(fopAc_ac_c*, fopAc_ac_c*, cXyz&);
    /* 8007E02C */ virtual void ChkPolyThrough(int, cBgS_PolyPassChk*);
    /* 8007E360 */ virtual void ChkShdwDrawThrough(int, cBgS_PolyPassChk*);
    /* 8007E3D8 */ virtual void ChkGrpThrough(int, cBgS_GrpPassChk*, int);

    void SetCrrFunc(dBgW_CrrFunc func) { m_crr_func = func; }

private:
    /* 0xB0 */ dBgW_CrrFunc m_crr_func;
    /* 0xB4 */ dBgW_RideCallback m_ride_callback;
    /* 0xB8 */ dBgW_ArrowStickCallback m_arrow_stick_callback;
    /* 0xBC */ u8 m_flags;
};

#endif /* D_BG_D_BG_W_H */
