#ifndef D_CC_D_CC_S_H
#define D_CC_D_CC_S_H

#include "SSystem/SComponent/c_cc_s.h"
#include "d/d_cc_mass_s.h"

class dCcD_GObjInf;
class dCcD_GStts;

class dCcS : public cCcS {
public:
    dCcS() {}
    /* 80085ED4 */ void Ct();
    /* 80085F08 */ void Dt();
    /* 80085F28 */ bool ChkShieldFrontRange(cCcD_Obj*, cCcD_Obj*, int, cXyz const*);
    /* 800860F8 */ bool ChkShield(cCcD_Obj*, cCcD_Obj*, dCcD_GObjInf*, dCcD_GObjInf*, cXyz const*);
    /* 800861B0 */ void CalcTgPlusDmg(cCcD_Obj*, cCcD_Obj*, cCcD_Stts*, cCcD_Stts*);
    /* 80086360 */ int GetRank(u8);
    /* 8008685C */ void ProcAtTgHitmark(bool, bool, cCcD_Obj*, cCcD_Obj*, dCcD_GObjInf*,
                                        dCcD_GObjInf*, cCcD_Stts*, cCcD_Stts*, dCcD_GStts*,
                                        dCcD_GStts*, cXyz*, bool);
    /* 80086D8C */ bool ChkCamera(cXyz&, cXyz&, f32, fopAc_ac_c*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80086FBC */ bool chkCameraPoint(cXyz const&, cCcD_ShapeAttr::Shape*, fopAc_ac_c*,
                                       fopAc_ac_c*);
    /* 800872AC */ void DrawAfter();
    /* 800872B0 */ void Move();
    /* 800872D0 */ void Draw();
    /* 8008730C */ void MassClear();
    /* 80087330 */ BOOL ChkAtTgMtrlHit(u8, u8);

    /* 8008640C */ virtual void SetPosCorrect(cCcD_Obj*, cXyz*, cCcD_Obj*, cXyz*, f32);
    /* 80086240 */ virtual void SetCoGObjInf(bool, bool, cCcD_GObjInf*, cCcD_GObjInf*, cCcD_Stts*,
                                             cCcD_Stts*, cCcD_GStts*, cCcD_GStts*);
    /* 80086AC0 */ virtual void SetAtTgGObjInf(bool, bool, cCcD_Obj*, cCcD_Obj*, cCcD_GObjInf*,
                                               cCcD_GObjInf*, cCcD_Stts*, cCcD_Stts*, cCcD_GStts*,
                                               cCcD_GStts*, cXyz*);
    /* 8008734C */ virtual bool ChkNoHitGAtTg(cCcD_GObjInf const*, cCcD_GObjInf const*, cCcD_GStts*,
                                              cCcD_GStts*);
    /* 800861B4 */ virtual bool ChkAtTgHitAfterCross(bool, bool, cCcD_GObjInf const*,
                                                     cCcD_GObjInf const*, cCcD_Stts*, cCcD_Stts*,
                                                     cCcD_GStts*, cCcD_GStts*);
    /* 80086404 */ virtual bool ChkNoHitGCo(cCcD_Obj*, cCcD_Obj*);
    /* 8002FF40 */ virtual ~dCcS() {}
    /* 800872A8 */ virtual void MoveAfterCheck();
    /* 80086754 */ virtual void CalcParticleAngle(dCcD_GObjInf*, cCcD_Stts*, cCcD_Stts*, csXyz*);

    void SetMass(cCcD_Obj* i_obj, u8 i_priority) { mMass_Mng.Set(i_obj, i_priority); }
    void SetMassCam(cM3dGCps& i_cps) { mMass_Mng.SetCam(i_cps); }
    u32 GetMassResultCam() { return mMass_Mng.GetResultCam(); }
    void GetMassCamTopPos(Vec* o_pos) { mMass_Mng.GetCamTopPos(o_pos); }
    void PrepareMass() { mMass_Mng.Prepare(); }

    u32 ChkMass(cXyz* param_0, fopAc_ac_c** param_1, dCcMassS_HitInf* param_2) {
        u32 rt = mMass_Mng.Chk(param_0, param_1, param_2);
        return rt;
    }

    void SetMassAttr(f32 radius, f32 height, u8 param_2, u8 param_3) {
        mMass_Mng.SetAttr(radius, height, param_2, param_3);
    }

    static bool m_mtrl_hit_tbl[64];

    // /* 0x0000 */ cCcS mCCcS;
    /* 0x284C */ dCcMassS_Mng mMass_Mng;
#ifdef DEBUG
    /* 0x2AD0 */ u8 field_0x2ad0;
#endif
};  // Size = 0x2AC4

STATIC_ASSERT(sizeof(dCcS) == 0x2AC4);

#endif /* D_CC_D_CC_S_H */
