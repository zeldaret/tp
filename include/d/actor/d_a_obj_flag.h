#ifndef D_A_OBJ_FLAG_H
#define D_A_OBJ_FLAG_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_set_bgobj.h"

static int createSolidHeap(fopAc_ac_c*);

class FlagJoint_c {
public:
    /* 80BEC3BC */ ~FlagJoint_c();
    /* 80BEC4E0 */ FlagJoint_c();

    csXyz joint1;
    csXyz joint2;
    csXyz joint3;
    short rv;
};

/**
 * @ingroup actors-objects
 * @class daObjFlag_c
 * @brief Flag 1
 *
 * @details
 *
 */
class daObjFlag_c : public fopAc_ac_c {
public:
    /* 80BEB778 */ void create_init();
    /* 80BEB8F0 */ void initBaseMtx();
    /* 80BEB984 */ void getJointAngle(csXyz*, int);
    /* 80BEB9AC */ void calcJointAngle();
    /* 80BEBC58 */ void calcAngleSwingZ(FlagJoint_c*, f32);
    /* 80BEBDAC */ void calcAngleSwingX(FlagJoint_c*, f32);
    /* 80BEBE64 */ void getSwingY(f32);
    inline int create() {
        fopAcM_SetupActor(this, daObjFlag_c);
    
        int phase_state = dComIfG_resLoad(&mPhase, "create");
        if (phase_state == cPhs_COMPLEATE_e) {
            phase_state = dComIfG_resLoad(&mPhase, daSetBgObj_c::getArcName(this));
            
            if(phase_state == cPhs_COMPLEATE_e) {
                if(!fopAcM_entrySolidHeap(this, createSolidHeap, 0x4000)) {
                    return cPhs_ERROR_e;
                }
    
                create_init();
            }
        }
    
        return phase_state;
    }

    int execute() {
        if (mpModel1 == NULL) {
            return 1;
        }

        calcJointAngle();
        return 1;
    }

    int draw() {
        g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
        dComIfGd_setListBG();
        g_env_light.setLightTevColorType_MAJI(mpModel2, &tevStr);
        mDoExt_modelUpdateDL(mpModel2);
        
        if(mpModel1 != NULL) {
            g_env_light.setLightTevColorType_MAJI(mpModel1, &tevStr);
            mDoExt_modelUpdateDL(mpModel1);
        }

        dComIfGd_setList();

        return 1;
    }


    static u8 const M_attr[52];

private:
    /* 0x568 */ J3DModel* mpModel1;
    /* 0x56c */ J3DModel* mpModel2;
    /* 0x578 */ request_of_phase_process_class mPhase;
    /* 0x570 */ u8 field_0x56c[0x580 - 0x578];
    /* 0x580 */ FlagJoint_c mFlagJoints[4];
    /* 0x5d0 */ cXyz mPos;
    /* 0x5dc */ float field_0x5dc;
    /* 0x5e0 */ s16 field_0x5e0;
    /* 0x5e2 */ short field_0x5e2;
    /* 0x5e4 */ short field_0x5e4;
    /* 0x5e6 */ short field_0x5e6;
    /* 0x5e8 */ short field_0x5e8;
    /* 0x5ea */ u8 field_0x568[0x5ec - 0x5ea];
};

STATIC_ASSERT(sizeof(daObjFlag_c) == 0x5ec);


#endif /* D_A_OBJ_FLAG_H */
