#ifndef D_BG_D_BG_W_H
#define D_BG_D_BG_W_H

#include "SSystem/SComponent/c_m3d_g_aab.h"
#include "SSystem/SComponent/c_sxyz.h"
#include "d/d_bg_w_base.h"
#include "dolphin/mtx.h"
#include "dolphin/types.h"

class cBgS_GrpPassChk;
class cBgS_PolyPassChk;
class fopAc_ac_c;
struct cBgD_Vtx_t;
struct dBgS_CaptPoly;

class cBgW_TriElm {
public:
    /* 0x00 */ cM3dGPla m_plane;

    /* 80079754 */ cBgW_TriElm();
    /* 800796F8 */ virtual ~cBgW_TriElm();

    /* 0x14  vtable */
};  // Size: 0x18

class cBgW_RwgElm {
public:
    /* 0x0 */ u16 m_next;

    /* 800791C4 */ cBgW_RwgElm();
    /* 800791D4 */ virtual ~cBgW_RwgElm();
};  // Size: 0x8

class cBgW_NodeTree : public cM3dGAab {
public:
    /* 8007921C */ cBgW_NodeTree();

    /* 80079238 */ virtual ~cBgW_NodeTree();
};

class cBgW_GrpElm {
public:
    /* 8007A1E4 */ cBgW_GrpElm();

    /* 8007A184 */ virtual ~cBgW_GrpElm();

    /* 0x4 */ cM3dGAab m_aab;
};

struct cBgW_BlkElm {
    /* 0x0 */ u16 m_roof_idx;
    /* 0x2 */ u16 m_wall_idx;
    /* 0x4 */ u16 m_gnd_idx;
};  // Size: 0x6

struct cBgD_Tri_t {
    /* 0x0 */ u16 m_vtx_idx0;
    /* 0x2 */ u16 m_vtx_idx1;
    /* 0x4 */ u16 m_vtx_idx2;
    /* 0x6 */ u16 m_id;
    /* 0x8 */ u16 m_grp;
};  // Size: 0xA

struct cBgD_Ti_t {
    /* 0x0 */ u32 m_info0;
    /* 0x4 */ u32 m_info1;
    /* 0x8 */ u32 m_info2;
    /* 0xC */ u32 m_passFlag;
};

struct cBgD_Blk_t {
    /* 0x0 */ u16 field_0x0;
};

struct cBgD_Tree_t {
    /* 0x0 */ u16 m_flag;
    /* 0x2 */ u16 m_parent_id;
    /* 0x4 */ u16 m_id[8];
};  // Size: 0x14

struct cBgD_Grp_t {
    /* 0x00 */ char* m_name;
    /* 0x04 */ cXyz m_scale;
    /* 0x10 */ csXyz m_rotation;
    /* 0x18 */ cXyz m_translation;
    /* 0x24 */ u16 m_parent;
    /* 0x26 */ u16 m_next_sibling;
    /* 0x28 */ u16 m_first_child;
    /* 0x2A */ u16 m_room_id;
    /* 0x2C */ u16 m_first_vtx_idx;
    /* 0x2E */ u16 m_tree_idx;
    /* 0x30 */ u32 m_info;
}; // Size: 0x34

struct cBgD_t {
    /* 0x00 */ int m_v_num;                // vertex num
    /* 0x04 */ cBgD_Vtx_t* m_v_tbl;        // vertex table
    /* 0x08 */ int m_t_num;                // triangle num
    /* 0x0C */ cBgD_Tri_t* m_t_tbl;        // triangle table
    /* 0x10 */ int m_b_num;
    /* 0x14 */ cBgD_Blk_t* m_b_tbl;
    /* 0x18 */ int m_tree_num;
    /* 0x1C */ cBgD_Tree_t* m_tree_tbl;
    /* 0x20 */ int m_g_num;
    /* 0x24 */ cBgD_Grp_t* m_g_tbl;
    /* 0x28 */ int m_ti_num;
    /* 0x2C */ cBgD_Ti_t* m_ti_tbl;
    /* 0x30 */ int mFlags;
};

class cBgW : public dBgW_Base {
public:
    enum Flags_e {
        MOVE_BG_e = 0x1,
        NO_CALC_VTX_e = 0x2,
        NO_VTX_TBL_e = 0x10,
        GLOBAL_e = 0x20,
        CBGW_UNK_FLAG_40 = 0x40,
        LOCK_e = 0x80,
    };

    /* 80079294 */ cBgW();
    /* 800793A4 */ void FreeArea();
    /* 800793C4 */ void GlobalVtx();
    /* 80079484 */ bool SetVtx();
    /* 80079668 */ bool SetTri();
    /* 80079770 */ void BlckConnect(u16*, int*, int);
    /* 8007998C */ void MakeBlckTransMinMax(cXyz*, cXyz*);
    /* 800799E0 */ void MakeBlckMinMax(int, cXyz*, cXyz*);
    /* 80079A68 */ void MakeBlckBnd(int, cXyz*, cXyz*);
    /* 80079BDC */ void MakeNodeTreeRp(int);
    /* 80079CC4 */ void MakeNodeTreeGrpRp(int);
    /* 80079DF0 */ void MakeNodeTree();
    /* 80079F38 */ bool Set(cBgD_t* pdzb, u32 flags, Mtx* pbase_mtx);
    /* 8007A200 */ bool RwgLineCheck(u16, cBgS_LinChk*);
    /* 8007A3A0 */ bool LineCheckRp(cBgS_LinChk*, int);
    /* 8007A52C */ bool LineCheckGrpRp(cBgS_LinChk*, int, int);
    /* 8007A680 */ bool RwgGroundCheckCommon(f32, u16, cBgS_GndChk*);
    /* 8007A774 */ bool RwgGroundCheckGnd(u16, cBgS_GndChk*);
    /* 8007A824 */ bool RwgGroundCheckWall(u16, cBgS_GndChk*);
    /* 8007A8F4 */ bool GroundCrossRp(cBgS_GndChk*, int);
    /* 8007AA50 */ bool GroundCrossGrpRp(cBgS_GndChk*, int, int);
    /* 8007ABC4 */ void CopyOldMtx();
    /* 8007AC10 */ void Move();
    /* 8007ADF0 */ void RwgShdwDraw(int, cBgS_ShdwDraw*);
    /* 8007AEA4 */ void ShdwDrawRp(cBgS_ShdwDraw*, int);
    /* 8007AFC0 */ void ShdwDrawGrpRp(cBgS_ShdwDraw*, int);
    /* 8007B17C */ void GetTrans(cXyz*) const;
    /* 8007B2F4 */ int GetPolyInfId(int) const;
    /* 8007B30C */ u32 GetPolyInf0(int, u32, u32) const;
    /* 8007B360 */ u32 GetMaskPolyInf0_NoShift(int, u32) const;
    /* 8007B654 */ u32 GetPolyInf1(int, u32, u32) const;
    /* 8007B78C */ u32 GetMaskPolyInf1_NoShift(int, u32) const;
    /* 8007B824 */ u32 GetPolyInf2(int, u32, u32) const;
    /* 8007B930 */ int GetTriGrp(int) const;

    /* 8007933C */ virtual ~cBgW();
    /* 80079EEC */ virtual bool ChkMemoryError();
    /* 8007B948 */ virtual bool ChkNotReady() const;
    /* 8007B958 */ virtual bool ChkLock() const;
    /* 8007B964 */ virtual bool ChkMoveBg() const;
    virtual u32 ChkMoveFlag() const = 0;
    /* 8007B270 */ virtual cM3dGPla GetTriPla(cBgS_PolyInfo const&) const;
    /* 8007B1B4 */ virtual bool GetTriPnt(cBgS_PolyInfo const&, cXyz*, cXyz*, cXyz*) const;
    /* 8007B164 */ virtual cM3dGAab* GetBnd() const;
    /* 8007B2B0 */ virtual u32 GetGrpInf(cBgS_PolyInfo const&) const;
    virtual void OffMoveFlag() = 0;
    /* 8007B240 */ virtual void GetTopUnder(f32*, f32*) const;
    /* 8007A658 */ virtual bool LineCheck(cBgS_LinChk*);
    /* 8007AB9C */ virtual bool GroundCross(cBgS_GndChk*);
    /* 8007B084 */ virtual void ShdwDraw(cBgS_ShdwDraw*);
    virtual void CaptPoly(dBgS_CaptPoly&) = 0;
    virtual bool WallCorrect(dBgS_Acch*) = 0;
    virtual bool WallCorrectSort(dBgS_Acch*) = 0;
    virtual bool RoofChk(dBgS_RoofChk*) = 0;
    virtual bool SplGrpChk(dBgS_SplGrpChk*) = 0;
    virtual bool SphChk(dBgS_SphChk*, void*) = 0;
    /* 8007B0E4 */ virtual s32 GetGrpRoomIndex(cBgS_PolyInfo const&) const;
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
    virtual int GetGrpSoundId(cBgS_PolyInfo const&) = 0;
    virtual void CrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*) = 0;
    virtual void TransPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*) = 0;
    virtual void MatrixCrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*) = 0;
    /* 80079564 */ virtual void CalcPlane();
    /* 800797BC */ virtual void ClassifyPlane();
    /* 8007B0A8 */ virtual bool ChkPolyThrough(int, cBgS_PolyPassChk*);
    /* 8007B0B0 */ virtual bool ChkShdwDrawThrough(int, cBgS_PolyPassChk*);
    /* 8007B0DC */ virtual bool ChkGrpThrough(int, cBgS_GrpPassChk*, int);

    u32 GetOldInvMtx(Mtx m) { return MTXInverse(m_inv_mtx, m); }
    MtxP GetBaseMtxP() { return pm_base; }
    bool ChkNoCalcVtx() { return mFlags & NO_CALC_VTX_e; }
    bool ChkFlush() { return field_0x91 & 8; }
    void SetLock() { mFlags |= LOCK_e; }
    void OffRoofRegist() { field_0x91 |= 0x4; }
    void OnRoofRegist() { field_0x91 &= ~0x04; }
    bool ChkRoofRegist() { return field_0x91 & 4;}
    cBgD_Vtx_t* GetVtxTbl() const { return pm_vtx_tbl; }
    int GetVtxNum() const { return pm_bgd->m_v_num; }
    void ClrNoCalcVtx() { mFlags &= ~NO_CALC_VTX_e; }
    void SetBaseMtxP(MtxP mtx) { pm_base = mtx; }
    void SetNoCalcVtx() { mFlags |= NO_CALC_VTX_e; }

public:
    /* 0x18 */ MtxP pm_base;  // Model Matrix
    /* 0x1C */ Mtx m_inv_mtx;
    /* 0x4C */ Mtx m_mtx;
    /* 0x7C */ cXyz mTransVel;
    /* 0x88 */ u8 mFlags;
    /* 0x89 */ u8 mNeedsFullTransform;
    /* 0x8C */ u32 field_0x8c;
    /* 0x90 */ u8 mMoveCounter;
    /* 0x91 */ u8 field_0x91;
    /* 0x92 */ u16 m_rootGrpIdx;
    /* 0x94 */ cBgW_TriElm* pm_tri;
    /* 0x98 */ cBgW_RwgElm* pm_rwg;
    /* 0x9C */ cBgD_Vtx_t* pm_vtx_tbl;
    /* 0xA0 */ cBgD_t* pm_bgd;
    /* 0xA4 */ cBgW_BlkElm* pm_blk;
    /* 0xA8 */ cBgW_GrpElm* pm_grp;
    /* 0xAC */ cBgW_NodeTree* pm_node_tree;
};

class dBgW;
typedef void (*dBgW_RideCallback)(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
typedef void (*dBgW_ArrowStickCallback)(dBgW*, fopAc_ac_c*, fopAc_ac_c*, cXyz&);
typedef void (*dBgW_CrrFunc)(dBgW*, void*, cBgS_PolyInfo const&, bool, cXyz*, csXyz*, csXyz*);

class dBgW : public cBgW {
public:
    /* 8007B970 */ dBgW();
    /* 8007B9C0 */ void Move();
    /* 8007B9EC */ void positionWallCorrect(dBgS_Acch*, f32, cM3dGPla&, cXyz* pupper_pos, f32);
    /* 8007BA40 */ bool RwgWallCorrect(dBgS_Acch*, u16);
    /* 8007C234 */ bool WallCorrectRp(dBgS_Acch*, int);
    /* 8007C360 */ bool WallCorrectGrpRp(dBgS_Acch*, int, int);
    /* 8007C4AC */ void RwgWallCorrectSort(dBgS_Acch*, u16);
    /* 8007C714 */ void WallCorrectRpSort(dBgS_Acch*, int);
    /* 8007C808 */ bool WallCorrectGrpRpSort(dBgS_Acch*, int, int);
    /* 8007D0DC */ bool RwgRoofChk(u16, dBgS_RoofChk*);
    /* 8007D208 */ bool RoofChkRp(dBgS_RoofChk*, int);
    /* 8007D330 */ bool RoofChkGrpRp(dBgS_RoofChk*, int, int);
    /* 8007D498 */ bool RwgSplGrpChk(u16, dBgS_SplGrpChk*);
    /* 8007D5C4 */ bool SplGrpChkRp(dBgS_SplGrpChk*, int);
    /* 8007D6F0 */ bool SplGrpChkGrpRp(dBgS_SplGrpChk*, int, int);
    /* 8007D858 */ void RwgCaptPoly(int, dBgS_CaptPoly&);
    /* 8007D8E8 */ void CaptPolyRp(dBgS_CaptPoly&, int);
    /* 8007DA04 */ void CaptPolyGrpRp(dBgS_CaptPoly&, int, int);
    /* 8007DB20 */ bool RwgSphChk(u16, dBgS_SphChk*, void*);
    /* 8007DC70 */ bool SphChkRp(dBgS_SphChk*, void*, int);
    /* 8007DDE0 */ bool SphChkGrpRp(dBgS_SphChk*, void*, int, int);

    /* 8007E548 */ virtual ~dBgW() {}
    /* 8007E4B4 */ virtual u32 ChkMoveFlag() const;
    /* 8007E4A4 */ virtual void OffMoveFlag();
    /* 8007DAF8 */ virtual void CaptPoly(dBgS_CaptPoly&);
    /* 8007C484 */ virtual bool WallCorrect(dBgS_Acch*);
    /* 8007C910 */ virtual bool WallCorrectSort(dBgS_Acch*);
    /* 8007D470 */ virtual bool RoofChk(dBgS_RoofChk*);
    /* 8007D830 */ virtual bool SplGrpChk(dBgS_SplGrpChk*);
    /* 8007DF00 */ virtual bool SphChk(dBgS_SphChk*, void*);
    /* 8007B3AC */ virtual s32 GetExitId(cBgS_PolyInfo const&);
    /* 8007B3D8 */ virtual s32 GetPolyColor(cBgS_PolyInfo const&);
    /* 8007B404 */ virtual BOOL GetHorseNoEntry(cBgS_PolyInfo const&);
    /* 8007B430 */ virtual int GetSpecialCode(cBgS_PolyInfo const&);
    /* 8007B460 */ virtual int GetSpecialCode(int);
    /* 8007B488 */ virtual int GetMagnetCode(cBgS_PolyInfo const&);
    /* 8007B4E0 */ virtual u32 GetPolyObjThrough(int);
    /* 8007B504 */ virtual u32 GetPolyCamThrough(int);
    /* 8007B52C */ virtual u32 GetPolyLinkThrough(int);
    /* 8007B550 */ virtual u32 GetPolyArrowThrough(int);
    /* 8007B574 */ virtual u32 GetPolyHSStick(int);
    /* 8007B598 */ virtual u32 GetPolyBoomerangThrough(int);
    /* 8007B5BC */ virtual u32 GetPolyRopeThrough(int);
    /* 8007B5E0 */ virtual u32 GetPolyBombThrough(int);
    /* 8007B604 */ virtual bool GetShdwThrough(int);
    /* 8007B630 */ virtual u32 GetUnderwaterRoofCode(int);
    /* 8007B4B4 */ virtual int GetMonkeyBarsCode(cBgS_PolyInfo const&);
    /* 8007B6AC */ virtual int GetLinkNo(cBgS_PolyInfo const&);
    /* 8007B6D8 */ virtual s32 GetWallCode(cBgS_PolyInfo const&);
    /* 8007B704 */ virtual int GetPolyAtt0(cBgS_PolyInfo const&);
    /* 8007B734 */ virtual int GetPolyAtt1(cBgS_PolyInfo const&);
    /* 8007B760 */ virtual int GetGroundCode(cBgS_PolyInfo const&);
    /* 8007B7DC */ virtual u32 GetIronBallThrough(int);
    /* 8007B800 */ virtual u32 GetAttackThrough(int);
    /* 8007B87C */ virtual s32 GetCamMoveBG(cBgS_PolyInfo const&);
    /* 8007B8A8 */ virtual s32 GetRoomCamId(cBgS_PolyInfo const&);
    /* 8007B8D8 */ virtual s32 GetRoomPathId(cBgS_PolyInfo const&);
    /* 8007B904 */ virtual s32 GetRoomPathPntNo(cBgS_PolyInfo const&);
    /* 8007DF28 */ virtual u8 GetPolyGrpRoomInfId(cBgS_PolyInfo const&);
    /* 8007DF58 */ virtual int GetGrpSoundId(cBgS_PolyInfo const&);
    /* 8007DF88 */ virtual void CrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*,
                                       csXyz*);
    /* 8007DFC4 */ virtual void TransPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*,
                                         csXyz*);
    /* 8007E000 */ virtual void MatrixCrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*,
                                             csXyz*, csXyz*);
    /* 8007E444 */ virtual void CallRideCallBack(fopAc_ac_c*, fopAc_ac_c*);
    /* 8007E474 */ virtual void CallArrowStickCallBack(fopAc_ac_c*, fopAc_ac_c*, cXyz&);
    /* 8007E02C */ virtual bool ChkPolyThrough(int, cBgS_PolyPassChk*);
    /* 8007E360 */ virtual bool ChkShdwDrawThrough(int, cBgS_PolyPassChk*);
    /* 8007E3D8 */ virtual bool ChkGrpThrough(int, cBgS_GrpPassChk*, int);

    void SetCrrFunc(dBgW_CrrFunc func) { m_crr_func = func; }
    void SetRideCallback(dBgW_RideCallback func) { m_ride_callback = func; }
    void SetArrowStickCallback(dBgW_ArrowStickCallback func) { m_arrow_stick_callback = func; }
    void OnMoveFlag() { m_flags |= 1; }

private:
    /* 0xB0 */ dBgW_CrrFunc m_crr_func;
    /* 0xB4 */ dBgW_RideCallback m_ride_callback;
    /* 0xB8 */ dBgW_ArrowStickCallback m_arrow_stick_callback;
    /* 0xBC */ u8 m_flags;
};

#endif /* D_BG_D_BG_W_H */
