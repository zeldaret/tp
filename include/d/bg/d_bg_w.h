#ifndef D_BG_D_BG_W_H
#define D_BG_D_BG_W_H

#include "SSystem/SComponent/c_bg_s_gnd_chk.h"
#include "SSystem/SComponent/c_bg_s_lin_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_m3d_g_tri.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/bg/d_bg_s_grp_pass_chk.h"
#include "d/bg/d_bg_s_poly_pass_chk.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

struct dBgS_CaptPoly {};

struct dBgS_SphChk {};

struct cBgW_TriElm {
    /* 800796F8 */ ~cBgW_TriElm();
    /* 80079754 */ cBgW_TriElm();
};

struct cBgW_RwgElm {
    /* 800791C4 */ cBgW_RwgElm();
    /* 800791D4 */ ~cBgW_RwgElm();
};

struct cBgW_NodeTree {
    /* 8007921C */ cBgW_NodeTree();
    /* 80079238 */ ~cBgW_NodeTree();
};

struct cBgW_GrpElm {
    /* 8007A184 */ ~cBgW_GrpElm();
    /* 8007A1E4 */ cBgW_GrpElm();
};

struct cBgS_ShdwDraw {};

struct cBgD_t {};

struct cBgW {
    /* 80079294 */ cBgW();
    /* 8007933C */ ~cBgW();
    /* 800793A4 */ void FreeArea();
    /* 800793C4 */ void GlobalVtx();
    /* 80079484 */ void SetVtx();
    /* 80079564 */ void CalcPlane();
    /* 80079668 */ void SetTri();
    /* 80079770 */ void BlckConnect(u16*, int*, int);
    /* 800797BC */ void ClassifyPlane();
    /* 8007998C */ void MakeBlckTransMinMax(cXyz*, cXyz*);
    /* 800799E0 */ void MakeBlckMinMax(int, cXyz*, cXyz*);
    /* 80079A68 */ void MakeBlckBnd(int, cXyz*, cXyz*);
    /* 80079BDC */ void MakeNodeTreeRp(int);
    /* 80079CC4 */ void MakeNodeTreeGrpRp(int);
    /* 80079DF0 */ void MakeNodeTree();
    /* 80079EEC */ void ChkMemoryError();
    /* 80079F38 */ void Set(cBgD_t*, u32, f32 (*)[3][4]);
    /* 8007A200 */ void RwgLineCheck(u16, cBgS_LinChk*);
    /* 8007A3A0 */ void LineCheckRp(cBgS_LinChk*, int);
    /* 8007A52C */ void LineCheckGrpRp(cBgS_LinChk*, int, int);
    /* 8007A658 */ void LineCheck(cBgS_LinChk*);
    /* 8007A680 */ void RwgGroundCheckCommon(f32, u16, cBgS_GndChk*);
    /* 8007A774 */ void RwgGroundCheckGnd(u16, cBgS_GndChk*);
    /* 8007A824 */ void RwgGroundCheckWall(u16, cBgS_GndChk*);
    /* 8007A8F4 */ void GroundCrossRp(cBgS_GndChk*, int);
    /* 8007AA50 */ void GroundCrossGrpRp(cBgS_GndChk*, int, int);
    /* 8007AB9C */ void GroundCross(cBgS_GndChk*);
    /* 8007ABC4 */ void CopyOldMtx();
    /* 8007AC10 */ void Move();
    /* 8007ADF0 */ void RwgShdwDraw(int, cBgS_ShdwDraw*);
    /* 8007AEA4 */ void ShdwDrawRp(cBgS_ShdwDraw*, int);
    /* 8007AFC0 */ void ShdwDrawGrpRp(cBgS_ShdwDraw*, int);
    /* 8007B084 */ void ShdwDraw(cBgS_ShdwDraw*);
    /* 8007B0A8 */ bool ChkPolyThrough(int, cBgS_PolyPassChk*);
    /* 8007B0B0 */ void ChkShdwDrawThrough(int, cBgS_PolyPassChk*);
    /* 8007B0DC */ bool ChkGrpThrough(int, cBgS_GrpPassChk*, int);
    /* 8007B0E4 */ void GetGrpRoomIndex(cBgS_PolyInfo const&) const;
    /* 8007B164 */ void GetBnd() const;
    /* 8007B17C */ void GetTrans(cXyz*) const;
    /* 8007B1B4 */ void GetTriPnt(cBgS_PolyInfo const&, cXyz*, cXyz*, cXyz*) const;
    /* 8007B240 */ void GetTopUnder(f32*, f32*) const;
    /* 8007B270 */ void GetTriPla(cBgS_PolyInfo const&) const;
    /* 8007B2B0 */ void GetGrpInf(cBgS_PolyInfo const&) const;
    /* 8007B2F4 */ void GetPolyInfId(int) const;
    /* 8007B30C */ void GetPolyInf0(int, u32, u32) const;
    /* 8007B360 */ void GetMaskPolyInf0_NoShift(int, u32) const;
    /* 8007B654 */ void GetPolyInf1(int, u32, u32) const;
    /* 8007B78C */ void GetMaskPolyInf1_NoShift(int, u32) const;
    /* 8007B824 */ void GetPolyInf2(int, u32, u32) const;
    /* 8007B930 */ void GetTriGrp(int) const;
    /* 8007B948 */ void ChkNotReady() const;
    /* 8007B958 */ void ChkLock() const;
    /* 8007B964 */ void ChkMoveBg() const;
};

class dBgW_Base {
public:
    enum PushPullLabel {};

    /* 8007E5A8 */ dBgW_Base();
    /* 8007E640 */ ~dBgW_Base();
    /* 8007E6D8 */ void CallRideCallBack(fopAc_ac_c*, fopAc_ac_c*);
    /* 8007E6DC */ void CallArrowStickCallBack(fopAc_ac_c*, fopAc_ac_c*, cXyz&);
    /* 80074AB4 */ void SetOldShapeAngleY(s16);
    /* 8007E6E0 */ void CalcDiffShapeAngleY(s16);

private:
    u16 field_0x0;
    u8 field_0x2[2];
    void* field_0x4;
    u8 field_0x8;
    u8 field_0x9;
    u8 field_0xa;
    u8 field_0xb;
    s16 field_0xc;
    s16 field_0xe;
};

class dBgW {
public:
    /* 8007B3AC */ void GetExitId(cBgS_PolyInfo const&);
    /* 8007B3D8 */ void GetPolyColor(cBgS_PolyInfo const&);
    /* 8007B404 */ void GetHorseNoEntry(cBgS_PolyInfo const&);
    /* 8007B430 */ void GetSpecialCode(cBgS_PolyInfo const&);
    /* 8007B460 */ void GetSpecialCode(int);
    /* 8007B488 */ void GetMagnetCode(cBgS_PolyInfo const&);
    /* 8007B4B4 */ void GetMonkeyBarsCode(cBgS_PolyInfo const&);
    /* 8007B4E0 */ void GetPolyObjThrough(int);
    /* 8007B504 */ void GetPolyCamThrough(int);
    /* 8007B52C */ void GetPolyLinkThrough(int);
    /* 8007B550 */ void GetPolyArrowThrough(int);
    /* 8007B574 */ void GetPolyHSStick(int);
    /* 8007B598 */ void GetPolyBoomerangThrough(int);
    /* 8007B5BC */ void GetPolyRopeThrough(int);
    /* 8007B5E0 */ void GetPolyBombThrough(int);
    /* 8007B604 */ void GetShdwThrough(int);
    /* 8007B630 */ void GetUnderwaterRoofCode(int);
    /* 8007B6AC */ void GetLinkNo(cBgS_PolyInfo const&);
    /* 8007B6D8 */ void GetWallCode(cBgS_PolyInfo const&);
    /* 8007B704 */ void GetPolyAtt0(cBgS_PolyInfo const&);
    /* 8007B734 */ void GetPolyAtt1(cBgS_PolyInfo const&);
    /* 8007B760 */ void GetGroundCode(cBgS_PolyInfo const&);
    /* 8007B7DC */ void GetIronBallThrough(int);
    /* 8007B800 */ void GetAttackThrough(int);
    /* 8007B87C */ void GetCamMoveBG(cBgS_PolyInfo const&);
    /* 8007B8A8 */ void GetRoomCamId(cBgS_PolyInfo const&);
    /* 8007B8D8 */ void GetRoomPathId(cBgS_PolyInfo const&);
    /* 8007B904 */ void GetRoomPathPntNo(cBgS_PolyInfo const&);
    /* 8007B970 */ dBgW();
    /* 8007B9C0 */ void Move();
    /* 8007B9EC */ void positionWallCorrect(dBgS_Acch*, f32, cM3dGPla&, cXyz*, f32);
    /* 8007BA40 */ void RwgWallCorrect(dBgS_Acch*, u16);
    /* 8007C234 */ void WallCorrectRp(dBgS_Acch*, int);
    /* 8007C360 */ void WallCorrectGrpRp(dBgS_Acch*, int, int);
    /* 8007C484 */ void WallCorrect(dBgS_Acch*);
    /* 8007C4AC */ void RwgWallCorrectSort(dBgS_Acch*, u16);
    /* 8007C714 */ void WallCorrectRpSort(dBgS_Acch*, int);
    /* 8007C808 */ void WallCorrectGrpRpSort(dBgS_Acch*, int, int);
    /* 8007C910 */ void WallCorrectSort(dBgS_Acch*);
    /* 8007D0DC */ void RwgRoofChk(u16, dBgS_RoofChk*);
    /* 8007D208 */ void RoofChkRp(dBgS_RoofChk*, int);
    /* 8007D330 */ void RoofChkGrpRp(dBgS_RoofChk*, int, int);
    /* 8007D470 */ void RoofChk(dBgS_RoofChk*);
    /* 8007D498 */ void RwgSplGrpChk(u16, dBgS_SplGrpChk*);
    /* 8007D5C4 */ void SplGrpChkRp(dBgS_SplGrpChk*, int);
    /* 8007D6F0 */ void SplGrpChkGrpRp(dBgS_SplGrpChk*, int, int);
    /* 8007D830 */ void SplGrpChk(dBgS_SplGrpChk*);
    /* 8007D858 */ void RwgCaptPoly(int, dBgS_CaptPoly&);
    /* 8007D8E8 */ void CaptPolyRp(dBgS_CaptPoly&, int);
    /* 8007DA04 */ void CaptPolyGrpRp(dBgS_CaptPoly&, int, int);
    /* 8007DAF8 */ void CaptPoly(dBgS_CaptPoly&);
    /* 8007DB20 */ void RwgSphChk(u16, dBgS_SphChk*, void*);
    /* 8007DC70 */ void SphChkRp(dBgS_SphChk*, void*, int);
    /* 8007DDE0 */ void SphChkGrpRp(dBgS_SphChk*, void*, int, int);
    /* 8007DF00 */ void SphChk(dBgS_SphChk*, void*);
    /* 8007DF28 */ void GetPolyGrpRoomInfId(cBgS_PolyInfo const&);
    /* 8007DF58 */ void GetGrpSoundId(cBgS_PolyInfo const&);
    /* 8007DF88 */ void CrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*);
    /* 8007DFC4 */ void TransPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*);
    /* 8007E000 */ void MatrixCrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*);
    /* 8007E02C */ void ChkPolyThrough(int, cBgS_PolyPassChk*);
    /* 8007E360 */ void ChkShdwDrawThrough(int, cBgS_PolyPassChk*);
    /* 8007E3D8 */ void ChkGrpThrough(int, cBgS_GrpPassChk*, int);
    /* 8007E444 */ void CallRideCallBack(fopAc_ac_c*, fopAc_ac_c*);
    /* 8007E474 */ void CallArrowStickCallBack(fopAc_ac_c*, fopAc_ac_c*, cXyz&);
    /* 8007E4A4 */ void OffMoveFlag();
    /* 8007E4B4 */ void ChkMoveFlag() const;
    /* 8007E548 */ ~dBgW();
};

#endif /* D_BG_D_BG_W_H */
