#ifndef D_BG_D_BG_S_H
#define D_BG_D_BG_S_H

#include "SSystem/SComponent/c_bg_s_gnd_chk.h"
#include "SSystem/SComponent/c_bg_s_lin_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "d/bg/d_bg_w.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

struct cBgW_BgId {
    /* 802681C8 */ void Release();
    /* 802681D4 */ void ChkUsed() const;
};

#pragma pack(push, 1)
class cBgS_ChkElm {
    cBgS_ChkElm(void);
    ~cBgS_ChkElm();
    void Init();
    void Regist2(dBgW_Base*, unsigned int, void*);
    void Release();

    /* 0x00 */ dBgW_Base* bgw_base_pointer;
    /* 0x04 */ u8 used;
    /* 0x05 */ u8 padding[3];
    /* 0x08 */ u32 field_0x8;
    /* 0x0C */ void* actor_pointer;
    /* 0x10 */ u32 field_0x10;
};
#pragma pack(pop)

#pragma pack(push, 1)
class cBgS {
    ~cBgS();
    void Regist(dBgW_Base*, unsigned int, void*);
    void Release(dBgW_Base*);
    void Ct();
    void Dt();
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

    /* 0x0000 */ cBgS_ChkElm cbgs_elements[256];
};
#pragma pack(pop)

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
#pragma pack(push, 1)
class dBgS {
public:
    ~dBgS();
    void Ct();
    void Dt();
    void ClrMoveFlag();
    void Move();
    void Regist(dBgW_Base*, fopAc_ac_c*);
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
    /* 0x0000 */ cBgS cbgs;
    /* 0x1400 */ void* vtable;
};
#pragma pack(pop)

#endif /* D_BG_D_BG_S_H */
