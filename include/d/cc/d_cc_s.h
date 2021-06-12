#ifndef D_CC_D_CC_S_H
#define D_CC_D_CC_S_H

#include "SSystem/SComponent/c_cc_s.h"
#include "d/cc/d_cc_d.h"
#include "d/cc/d_cc_mass_s.h"
#include "dolphin/types.h"

class dCcS {
public:
    /* 8002FF40 */ ~dCcS();
    /* 80085ED4 */ void Ct();
    /* 80085F08 */ void Dt();
    /* 80085F28 */ void ChkShieldFrontRange(cCcD_Obj*, cCcD_Obj*, int, cXyz const*);
    /* 800860F8 */ void ChkShield(cCcD_Obj*, cCcD_Obj*, dCcD_GObjInf*, dCcD_GObjInf*, cXyz const*);
    /* 800861B0 */ void CalcTgPlusDmg(cCcD_Obj*, cCcD_Obj*, cCcD_Stts*, cCcD_Stts*);
    /* 800861B4 */ void ChkAtTgHitAfterCross(bool, bool, cCcD_GObjInf const*, cCcD_GObjInf const*,
                                             cCcD_Stts*, cCcD_Stts*, cCcD_GStts*, cCcD_GStts*);
    /* 80086240 */ void SetCoGObjInf(bool, bool, cCcD_GObjInf*, cCcD_GObjInf*, cCcD_Stts*,
                                     cCcD_Stts*, cCcD_GStts*, cCcD_GStts*);
    /* 80086360 */ void GetRank(u8);
    /* 80086404 */ bool ChkNoHitGCo(cCcD_Obj*, cCcD_Obj*);
    /* 8008640C */ void SetPosCorrect(cCcD_Obj*, cXyz*, cCcD_Obj*, cXyz*, f32);
    /* 80086754 */ void CalcParticleAngle(dCcD_GObjInf*, cCcD_Stts*, cCcD_Stts*, csXyz*);
    /* 8008685C */ void ProcAtTgHitmark(bool, bool, cCcD_Obj*, cCcD_Obj*, dCcD_GObjInf*,
                                        dCcD_GObjInf*, cCcD_Stts*, cCcD_Stts*, dCcD_GStts*,
                                        dCcD_GStts*, cXyz*, bool);
    /* 80086AC0 */ void SetAtTgGObjInf(bool, bool, cCcD_Obj*, cCcD_Obj*, cCcD_GObjInf*,
                                       cCcD_GObjInf*, cCcD_Stts*, cCcD_Stts*, cCcD_GStts*,
                                       cCcD_GStts*, cXyz*);
    /* 80086D8C */ void ChkCamera(cXyz&, cXyz&, f32, fopAc_ac_c*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80086FBC */ void chkCameraPoint(cXyz const&, cCcD_ShapeAttr::Shape*, fopAc_ac_c*,
                                       fopAc_ac_c*);
    /* 800872A8 */ void MoveAfterCheck();
    /* 800872AC */ void DrawAfter();
    /* 800872B0 */ void Move();
    /* 800872D0 */ void Draw();
    /* 8008730C */ void MassClear();
    /* 80087330 */ void ChkAtTgMtrlHit(u8, u8);
    /* 8008734C */ void ChkNoHitGAtTg(cCcD_GObjInf const*, cCcD_GObjInf const*, cCcD_GStts*,
                                      cCcD_GStts*);

    static u8 m_mtrl_hit_tbl[64];

private:
    /* 0x0000 */ cCcS mCCcS;
    /* 0x284C */ dCcMassS_Mng mMass_Mng;
};  // Size = 0x2AC4

STATIC_ASSERT(sizeof(dCcS) == 0x2AC4);

#endif /* D_CC_D_CC_S_H */
