#ifndef C_CC_S_H
#define C_CC_S_H

#include "SSystem/SComponent/c_cc_d.h"
#include "dolphin/types.h"

enum WeightType {
    WeightType_0 = 0,
    WeightType_1 = 1,
    WeightType_2 = 2,
};

class cCcS {
public:
    /* 0x0000 */ cCcD_Obj* mpObjAt[0x100];
    /* 0x0400 */ cCcD_Obj* mpObjTg[0x300];
    /* 0x1000 */ cCcD_Obj* mpObjCo[0x100];
    /* 0x1400 */ cCcD_Obj* mpObj[0x500];
    /* 0x2800 */ u16 mObjAtCount;
    /* 0x2802 */ u16 mObjTgCount;
    /* 0x2804 */ u16 mObjCoCount;
    /* 0x2806 */ u16 mObjCount;
    /* 0x2808 */ cCcD_DivideArea mDivideArea;
    /* 0x2848 vtable */

    /* 80264A6C */ cCcS();
    /* 80264A94 */ void Ct();
    /* 80264B60 */ void Dt();
    /* 80264B80 */ WeightType GetWt(u8) const;
    /* 80264BA8 */ void Set(cCcD_Obj*);
    /* 80264C5C */ void ClrCoHitInf();
    /* 80264CF0 */ void ClrTgHitInf();
    /* 80264D90 */ void ClrAtHitInf();
    /* 80264E2C */ bool ChkNoHitAtTg(cCcD_Obj*, cCcD_Obj*);
    /* 80264F40 */ void ChkAtTg();
    /* 8026515C */ bool ChkNoHitCo(cCcD_Obj*, cCcD_Obj*);
    /* 80265230 */ void ChkCo();
    /* 802653A0 vt[2] */ virtual void CalcTgPlusDmg(cCcD_Obj*, cCcD_Obj*, cCcD_Stts*, cCcD_Stts*);
    /* 802653C8 */ void SetAtTgCommonHitInf(cCcD_Obj*, cCcD_Obj*, cXyz*);
    /* 802655E4 */ void SetCoCommonHitInf(cCcD_Obj*, cXyz*, cCcD_Obj*, cXyz*, f32);
    /* 80265750 vt[3]*/ virtual void SetPosCorrect(cCcD_Obj*, cXyz*, cCcD_Obj*, cXyz*, f32);
    /* 80265BB4 */ void CalcArea();
    /* 80265CCC */ void Move();
    /* 80265D30 */ void DrawClear();
    /* 80265DF8 vt[4] */ virtual void SetCoGObjInf(bool, bool, cCcD_GObjInf*, cCcD_GObjInf*,
                                                   cCcD_Stts*, cCcD_Stts*, cCcD_GStts*,
                                                   cCcD_GStts*);
    /* 80265DFC vt[5] */ virtual void SetAtTgGObjInf(bool, bool, cCcD_Obj*, cCcD_Obj*,
                                                     cCcD_GObjInf*, cCcD_GObjInf*, cCcD_Stts*,
                                                     cCcD_Stts*, cCcD_GStts*, cCcD_GStts*, cXyz*);
    /* 80265E00 vt[6] */ virtual bool ChkNoHitGAtTg(cCcD_GObjInf const*, cCcD_GObjInf const*,
                                                    cCcD_GStts*, cCcD_GStts*);
    /* 80265E08 vt[7] */ virtual bool ChkAtTgHitAfterCross(bool, bool, cCcD_GObjInf const*,
                                                           cCcD_GObjInf const*, cCcD_Stts*,
                                                           cCcD_Stts*, cCcD_GStts*, cCcD_GStts*);
    /* 80265E10 vt[8] */ virtual bool ChkNoHitGCo(cCcD_Obj*, cCcD_Obj*);
    /* 80030BDC vt[9] */ virtual ~cCcS() {}
    /* 80265E18 vt[10] */ virtual void MoveAfterCheck();
    /* 80265DF4 vt[11] */ virtual void SetCoGCorrectProc(cCcD_Obj*, cCcD_Obj*);
};  // Size = 0x284C

STATIC_ASSERT(sizeof(cCcS) == 0x284C);

#endif /* C_CC_S_H */
