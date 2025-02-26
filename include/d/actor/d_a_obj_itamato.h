#ifndef D_A_OBJ_ITAMATO_H
#define D_A_OBJ_ITAMATO_H

#include "f_op/f_op_actor_mng.h"
#include "d/actor/d_a_arrow.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObj_ItaMato_c
 * @brief Plank Target
 *
 * @details
 *
 */
class daObj_ItaMato_c : public fopAc_ac_c {
public:
    /* 80C294EC */ ~daObj_ItaMato_c();
    /* 80C2971C */ void create();
    /* 80C29CD8 */ void CreateHeap();
    /* 80C29DAC */ void Delete();
    /* 80C29DE0 */ void Execute();
    /* 80C2A44C */ void Draw();
    /* 80C2A5D0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80C2A5F0 */ void tgHitCallBack(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*);
    /* 80C2A620 */ void getResName();
    /* 80C2A630 */ void setSwayParam(fopAc_ac_c*);
    /* 80C2A7C4 */ void setPrtcls();
    /* 80C2A890 */ void setEnvTevColor();
    /* 80C2A8EC */ void setRoomNo();
    /* 80C2A930 */ void setMtx();

    int checkCrs(fopAc_ac_c* param_0, cXyz param_1, cXyz param_2, f32 param_3) {
        daArrow_c* arrow_p = (daArrow_c*)param_0;
        cM3dGSph sp38;
        cXyz sp2C;
        cXyz sp20;

        JUT_ASSERT(170, 0 != arrow_p);

        if (field_0xa16 != 0 || health == 0) {
            return 0;
        }

        sp38.Set(field_0x80c.GetShapeP()->GetC(), field_0x80c.GetShapeP()->GetR() + (arrow_p->getArrowAtR() * 2.0f));
        if ((param_1 - current.pos).abs() < param_3) {
            field_0x944.SetStartEnd(param_1, param_2);
            if (cM3d_Cross_LinSph(&field_0x944, &sp38)) {
                return 3;
            }
        }

        return 0;
    }

    int getNo() {
        u8 var_r31 = fopAcM_GetParam(this) & 0xFF;

        int no;
        if (var_r31 == 0xFF) {
            no = -1;
        } else {
            no = var_r31;
        }

        return no;
    }

    BOOL checkBrk() {
        if (field_0xa15 != 0) {
            return 4;
        }

        return 0;
    }

    void onFake() { mFake = true; }

private:
    /* 0x568 */ u8 field_0x568[0x57C - 0x568];
    /* 0x57C */ dBgS_ObjAcch field_0x57c;
    /* 0x754 */ dCcD_Stts field_0x754;
    /* 0x790 */ dBgS_AcchCir field_0x790;
    /* 0x7D0 */ cBgS_GndChk field_0x7d0;
    /* 0x80C */ dCcD_Sph field_0x80c;
    /* 0x944 */ cM3dGLin field_0x944;
    /* 0x960 */ dBgS_LinChk field_0x960;
    /* 0x9D0 */ csXyz field_0x9d0[3];
    /* 0x9e2 */ u8 field_0x9e2[0xA15 - 0x9E2];
    /* 0xA15 */ u8 field_0xa15;
    /* 0xA15 */ u8 field_0xa16;
    /* 0xA17 */ u8 field_0xa17[0xA19 - 0xA17];
    /* 0xA19 */ u8 mFake;
    /* 0xA1A */ u8 field_0xa1a[0xA20 - 0xA1A];
};

STATIC_ASSERT(sizeof(daObj_ItaMato_c) == 0xa20);

class daObj_ItaMato_Param_c {
public:
    /* 80C2AB04 */ ~daObj_ItaMato_Param_c();

    static u8 const m[20];
};


#endif /* D_A_OBJ_ITAMATO_H */
