#ifndef D_BG_D_BG_W_KCOL_H
#define D_BG_D_BG_W_KCOL_H

#include "SSystem/SComponent/c_m3d_g_aab.h"
#include "d/bg/d_bg_plc.h"
#include "d/bg/d_bg_w_base.h"

class cBgS_GrpPassChk;
class cBgS_PolyPassChk;
struct dBgPc;
struct dBgS_CaptPoly;

struct KC_PrismData {
    /* 0x0 */ f32 field_0x0;
    /* 0x4 */ u16 field_0x4;
    /* 0x6 */ u16 field_0x6;
    /* 0x8 */ u16 field_0x8;
    /* 0xA */ u16 field_0xa;
    /* 0xC */ u16 field_0xc;
    /* 0xE */ u16 field_0xe;
};  // Size: 0x10

struct pkcdata {
    /* 0x00 */ Vec* field_0x0;
    /* 0x04 */ Vec* field_0x4;
    /* 0x08 */ KC_PrismData* m_prism_data;
    /* 0x0C */ KC_PrismData* m_block_data;
    /* 0x10 */ u8 field_0x10[4];
    /* 0x14 */ Vec m_area_min_pos;
    /* 0x20 */ u32 field_0x20;
    /* 0x24 */ u32 field_0x24;
    /* 0x28 */ u32 field_0x28;
    /* 0x2C */ u32 field_0x2c;
    /* 0x30 */ u32 field_0x30;
    /* 0x34 */ u32 field_0x34;
};

struct KCol_Header {
    /* 0x0 */ u32 pos_data_offset;
    /* 0x4 */ u32 nrm_data_offset;
    /* 0x8 */ u32 prism_data_offset;
    /* 0xC */ u32 block_data_offset;
};

class dBgWKCol : public dBgW_Base {
public:
    /* 8007E6F4 */ dBgWKCol();
    /* 8007E7D0 */ static void initKCollision(void*);
    /* 8007E804 */ void create(void* pprism, void* plc);
    /* 8007E850 */ void getTriNrm(KC_PrismData*, Vec**) const;
    /* 8007E8C0 */ cM3dGPla GetTriPla(int) const;
    /* 8007E9A4 */ bool GetTriPnt(int, Vec*, Vec*, Vec*) const;
    /* 8007E9D4 */ bool GetTriPnt(KC_PrismData const*, Vec*, Vec*, Vec*) const;
    /* 8007EB70 */ void getPolyCode(int, dBgPc*) const;
    /* 8007EBC4 */ bool chkPolyThrough(dBgPc*, cBgS_PolyPassChk*, cBgS_GrpPassChk*, cXyz&) const;
    /* 8007FF00 */ bool ChkShdwDrawThrough(dBgPc*);

    /* 8007E74C */ virtual ~dBgWKCol();
    /* 8007E86C */ virtual bool ChkNotReady() const;
    /* 8007E87C */ virtual bool ChkLock() const;
    /* 8007E884 */ virtual bool ChkMoveBg() const;
    /* 8007E88C */ virtual u32 ChkMoveFlag() const;
    /* 8007E894 */ virtual cM3dGPla GetTriPla(cBgS_PolyInfo const&) const;
    /* 8007E980 */ virtual bool GetTriPnt(cBgS_PolyInfo const&, cXyz*, cXyz*, cXyz*) const;
    /* 8007EB28 */ virtual cM3dGAab* GetBnd() const;
    /* 8007EB30 */ virtual u32 GetGrpInf(cBgS_PolyInfo const&) const;
    /* 8007EB6C */ virtual void OffMoveFlag();
    /* 800829AC */ virtual void GetTopUnder(f32*, f32*) const;
    /* 8007EE34 */ virtual bool LineCheck(cBgS_LinChk*);
    /* 8007F628 */ virtual bool GroundCross(cBgS_GndChk*);
    /* 8007F9A4 */ virtual void ShdwDraw(cBgS_ShdwDraw*);
    /* 8007FF1C */ virtual void CaptPoly(dBgS_CaptPoly&);
    /* 800811A0 */ virtual bool WallCorrect(dBgS_Acch*);
    /* 80080330 */ virtual void WallCorrectSort(dBgS_Acch*);
    /* 80081E18 */ virtual bool RoofChk(dBgS_RoofChk*);
    /* 80082184 */ virtual bool SplGrpChk(dBgS_SplGrpChk*);
    /* 800824EC */ virtual bool SphChk(dBgS_SphChk*, void*);
    /* 800829F0 */ virtual s32 GetGrpRoomIndex(cBgS_PolyInfo const&) const;
    /* 80082A20 */ virtual s32 GetExitId(cBgS_PolyInfo const&);
    /* 80082A50 */ virtual s32 GetPolyColor(cBgS_PolyInfo const&);
    /* 80082A80 */ virtual BOOL GetHorseNoEntry(cBgS_PolyInfo const&);
    /* 80082AB0 */ virtual int GetSpecialCode(cBgS_PolyInfo const&);
    /* 80082AE0 */ virtual int GetSpecialCode(int);
    /* 80082B0C */ virtual int GetMagnetCode(cBgS_PolyInfo const&);
    /* 80082B6C */ virtual u32 GetPolyObjThrough(int);
    /* 80082B98 */ virtual u32 GetPolyCamThrough(int);
    /* 80082BC4 */ virtual u32 GetPolyLinkThrough(int);
    /* 80082BF0 */ virtual u32 GetPolyArrowThrough(int);
    /* 80082C1C */ virtual u32 GetPolyHSStick(int);
    /* 80082C48 */ virtual u32 GetPolyBoomerangThrough(int);
    /* 80082C74 */ virtual u32 GetPolyRopeThrough(int);
    /* 80082CA0 */ virtual u32 GetPolyBombThrough(int);
    /* 80082CF8 */ virtual bool GetShdwThrough(int);
    /* 80082CCC */ virtual u32 GetUnderwaterRoofCode(int);
    /* 80082B3C */ virtual int GetMonkeyBarsCode(cBgS_PolyInfo const&);
    /* 80082D24 */ virtual int GetLinkNo(cBgS_PolyInfo const&);
    /* 80082D54 */ virtual s32 GetWallCode(cBgS_PolyInfo const&);
    /* 80082D84 */ virtual int GetPolyAtt0(cBgS_PolyInfo const&);
    /* 80082DB4 */ virtual int GetPolyAtt1(cBgS_PolyInfo const&);
    /* 80082DE4 */ virtual int GetGroundCode(cBgS_PolyInfo const&);
    /* 80082E14 */ virtual u32 GetIronBallThrough(int);
    /* 80082E40 */ virtual u32 GetAttackThrough(int);
    /* 80082E6C */ virtual s32 GetCamMoveBG(cBgS_PolyInfo const&);
    /* 80082E9C */ virtual s32 GetRoomCamId(cBgS_PolyInfo const&);
    /* 80082ECC */ virtual s32 GetRoomPathId(cBgS_PolyInfo const&);
    /* 80082EFC */ virtual s32 GetRoomPathPntNo(cBgS_PolyInfo const&);
    /* 80082F2C */ virtual u8 GetPolyGrpRoomInfId(cBgS_PolyInfo const&);
    /* 80082F5C */ virtual u8 GetGrpSoundId(cBgS_PolyInfo const&);
    /* 80082F8C */ virtual void CrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*,
                                       csXyz*);
    /* 80082F90 */ virtual void TransPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*,
                                         csXyz*);
    /* 80082F94 */ virtual void MatrixCrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*,
                                             csXyz*, csXyz*);

    KC_PrismData* getPrismData(int poly_index) const { return &m_pkc_head->m_prism_data[poly_index]; }
    void getTri1Pos(KC_PrismData* pd, Vec** nrm) const { *nrm = &m_pkc_head->field_0x0[pd->field_0x4]; }

private:
    /* 0x18 */ pkcdata* m_pkc_head;
    /* 0x1C */ dBgPlc m_code;
    /* 0x20 */ cM3dGAab m_bnd;
};

#endif /* D_BG_D_BG_W_KCOL_H */
