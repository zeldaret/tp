#ifndef D_A_OBJ_KAGO_H
#define D_A_OBJ_KAGO_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObj_Kago_c
 * @brief Basket
 *
 * @details
 *
 */
class daObj_Kago_c : public fopAc_ac_c {
public:
    /* 80C31AEC */ ~daObj_Kago_c();
    /* 80C31D5C */ cPhs__Step create();
    /* 80C323D0 */ void CreateHeap();
    /* 80C324B0 */ void Delete();
    /* 80C324E4 */ void Execute();
    /* 80C332D0 */ void Draw();
    /* 80C333F0 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80C33410 */ BOOL isDelete();
    /* 80C334B4 */ void setEnvTevColor();
    /* 80C33510 */ void setRoomNo();
    /* 80C33554 */ void reset();
    /* 80C3359C */ void setMtx();
    /* 80C33620 */ void getWallAngle(s16, s16*);
    /* 80C337B0 */ void setGoalPosAndAngle();
    /* 80C338D0 */ void setSmokePrtcl();
    /* 80C33958 */ void setWaterPrtcl();
    /* 80C33A58 */ void setHamonPrtcl();

    u8 getType() {
        int iVar1 = fopAcM_GetParam(this) & 0xFF;

        switch ((subtype & 127)) {
            case 0:
                if (iVar1 == 0) {
                    break;
                }

                return 0;

            case 1:
                switch (iVar1) {
                    case 0:
                        return 1;

                    case 1:
                        return 2;

                    case 2:
                        return 3;
                }
                
        }

        return 4;
    }

    void setMtx(Mtx param_1) {
        cXyz sp18;
        field_0xba2 = 1;
        mDoMtx_stack_c::copy(param_1);
        mDoMtx_stack_c::multVecZero(&sp18);
        current.pos = sp18;
        old.pos = current.pos;
        field_0x574->setBaseTRMtx(param_1);
    }
    
private:
    /* 0x568 */ u8 field_0x568[0x56c - 0x568];
    /* 0x56C */ request_of_phase_process_class mPhase;
    /* 0x574 */ J3DModel* field_0x574;
    /* 0x578 */ dBgS_ObjAcch mObjAcch;
    /* 0x750 */ dCcD_Stts mStts;
    /* 0x78C */ dBgS_AcchCir mAcchCir;
    /* 0x7CC */ cBgS_GndChk field_0x7cc;
    /* 0x808 */ dCcD_Cyl field_0x808[2];
    /* 0xA80 */ u8 field_0xa80[0xb10 - 0xa80];
    /* 0xB10 */ u8 mType;
    /* 0xB11 */ u8 field_0xb11[0xb54 - 0xb11];
    /* 0xB54 */ f32 mGroundH;
    /* 0xB58 */ u8 field_0xb58[0xb74 - 0xb58];
    /* 0xB74 */ s16 field_0xb74;
    /* 0xB76 */ u8 field_0xb76[0xba2 - 0xb76];
    /* 0xBA2 */ s8 field_0xba2;
    /* 0xBA3 */ u8 field_0xba3[0xba8 - 0xba3];
};

STATIC_ASSERT(sizeof(daObj_Kago_c) == 0xba8);

class daObj_Kago_Param_c {
public:
    /* 80C33C14 */ ~daObj_Kago_Param_c();

    struct Data {
        /* 0x00 */ f32 field_0x00;
        /* 0x04 */ f32 field_0x04;
        /* 0x08 */ f32 field_0x08;
        /* 0x0C */ f32 field_0x0c;
        /* 0x10 */ f32 mWeight;
        /* 0x14 */ f32 field_0x14;
        /* 0x18 */ f32 mWallH;
        /* 0x1C */ f32 mWallR;
        /* 0x20 */ f32 field_0x20;
        /* 0x24 */ f32 field_0x24;
        /* 0x28 */ f32 field_0x28;
    };
    static const Data m;
};


#endif /* D_A_OBJ_KAGO_H */
