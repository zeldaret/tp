#ifndef C_CC_S_H
#define C_CC_S_H

#include "dolphin/types.h"
#include "SSystem/SComponent/c_cc_d.h"

class cCcS {
public:
    /* 80030BDC */ ~cCcS();
    /* 80264A6C */ cCcS();
    /* 80264A94 */ void Ct();
    /* 80264B60 */ void Dt();
    /* 80264B80 */ void GetWt(u8) const;
    /* 80264BA8 */ void Set(cCcD_Obj*);
    /* 80264C5C */ void ClrCoHitInf();
    /* 80264CF0 */ void ClrTgHitInf();
    /* 80264D90 */ void ClrAtHitInf();
    /* 80264E2C */ void ChkNoHitAtTg(cCcD_Obj*, cCcD_Obj*);
    /* 80264F40 */ void ChkAtTg();
    /* 8026515C */ void ChkNoHitCo(cCcD_Obj*, cCcD_Obj*);
    /* 80265230 */ void ChkCo();
    /* 802653A0 */ void CalcTgPlusDmg(cCcD_Obj*, cCcD_Obj*, cCcD_Stts*, cCcD_Stts*);
    /* 802653C8 */ void SetAtTgCommonHitInf(cCcD_Obj*, cCcD_Obj*, cXyz*);
    /* 802655E4 */ void SetCoCommonHitInf(cCcD_Obj*, cXyz*, cCcD_Obj*, cXyz*, f32);
    /* 80265750 */ void SetPosCorrect(cCcD_Obj*, cXyz*, cCcD_Obj*, cXyz*, f32);
    /* 80265BB4 */ void CalcArea();
    /* 80265CCC */ void Move();
    /* 80265D30 */ void DrawClear();
    /* 80265DF4 */ void SetCoGCorrectProc(cCcD_Obj*, cCcD_Obj*);
    /* 80265DF8 */ void SetCoGObjInf(bool, bool, cCcD_GObjInf*, cCcD_GObjInf*, cCcD_Stts*,
                                     cCcD_Stts*, cCcD_GStts*, cCcD_GStts*);
    /* 80265DFC */ void SetAtTgGObjInf(bool, bool, cCcD_Obj*, cCcD_Obj*, cCcD_GObjInf*,
                                       cCcD_GObjInf*, cCcD_Stts*, cCcD_Stts*, cCcD_GStts*,
                                       cCcD_GStts*, cXyz*);
    /* 80265E00 */ bool ChkNoHitGAtTg(cCcD_GObjInf const*, cCcD_GObjInf const*, cCcD_GStts*,
                                      cCcD_GStts*);
    /* 80265E08 */ bool ChkAtTgHitAfterCross(bool, bool, cCcD_GObjInf const*, cCcD_GObjInf const*,
                                             cCcD_Stts*, cCcD_Stts*, cCcD_GStts*, cCcD_GStts*);
    /* 80265E10 */ bool ChkNoHitGCo(cCcD_Obj*, cCcD_Obj*);
    /* 80265E18 */ void MoveAfterCheck();

private:
    u8 field_0x0[10260];
    cCcD_DivideArea mDivideArea;
};

#endif /* C_CC_S_H */
