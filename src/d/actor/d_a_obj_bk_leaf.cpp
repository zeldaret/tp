/**
 * d_a_obj_bk_leaf.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_bk_leaf.h"
#include "d/actor/d_a_obj_carry.h"
#include "d/d_com_inf_game.h"

/* 80BB60D8-80BB60F8 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daBkLeaf_c*>(i_this)->CreateHeap();
}

/* 80BB60F8-80BB618C 000098 0094+00 2/2 0/0 0/0 .text            setBokkuri__10daBkLeaf_cFv */
void daBkLeaf_c::setBokkuri() {
    u32 sp10 = 0;
    csXyz currentAngle(current.angle);
    daObjCarry_c::make_prm(&sp10, &currentAngle, 6, getItem(), getItemBit(), 1, 2);
    field_0x578 = fopAcM_createChild(PROC_Obj_Carry, fopAcM_GetID(this), 0, &current.pos,
                                     fopAcM_GetRoomNo(this), &currentAngle, &scale, -1, 0);
}

/* 80BB618C-80BB61C8 00012C 003C+00 1/1 0/0 0/0 .text            initBaseMtx__10daBkLeaf_cFv */
void daBkLeaf_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80BB61C8-80BB621C 000168 0054+00 2/2 0/0 0/0 .text            setBaseMtx__10daBkLeaf_cFv */
void daBkLeaf_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80BB621C-80BB629C 0001BC 0080+00 1/1 0/0 0/0 .text            Create__10daBkLeaf_cFv */
int daBkLeaf_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    field_0x578 = -1;
    field_0x57D = 0;
    if (checkSetDeku()) {
        field_0x57C = 0;
        setBokkuri();
    } else {
        field_0x57C = 2;
    }
    return 1;
}

/* 80BB6758-80BB675C -00001 0004+00 2/3 0/0 0/0 .data            l_arcName */
static const char* l_arcName = "Obj_bkl";

/* 80BB675C-80BB6760 -00001 0004+00 0/1 0/0 0/0 .data            l_bmdName */
static const char* l_bmdName = "hl.bmd";

/* 80BB6760-80BB6764 -00001 0004+00 0/1 0/0 0/0 .data            l_bckName */
static const char* l_bckName = "hl_shake1.bck";

/* 80BB629C-80BB63AC 00023C 0110+00 1/1 0/0 0/0 .text            CreateHeap__10daBkLeaf_cFv */
int daBkLeaf_c::CreateHeap() {
    int retVal;
    mpModel = mDoExt_J3DModel__create(
        static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcName, l_bmdName)), 0x80000,
        0x11000084);
    if (mpModel == NULL) {
        retVal = 0;
    } else {
        J3DAnmTransform* transform =
            static_cast<J3DAnmTransform*>(dComIfG_getObjectRes(l_arcName, l_bckName));
        mpBckAnm = new mDoExt_bckAnm;
        if (mpBckAnm == NULL || mpBckAnm->init(transform, 1, 0, 1.0f, 0, -1, false) == 0) {
            retVal = 0;
        } else {
            retVal = 1;
        }
    }
    return retVal;
}

/* 80BB63F4-80BB64A8 000394 00B4+00 1/1 0/0 0/0 .text            create__10daBkLeaf_cFv */
int daBkLeaf_c::create() {
    fopAcM_SetupActor(this, daBkLeaf_c);
    int retVal = dComIfG_resLoad(&mPhase, l_arcName);
    if (retVal == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x980)) {
            return cPhs_ERROR_e;
        } else {
            if (Create() == 0) {
                return cPhs_ERROR_e;
            }
        }
    }
    return retVal;
}

/* 80BB64A8-80BB65C4 000448 011C+00 1/1 0/0 0/0 .text            execute__10daBkLeaf_cFv */
int daBkLeaf_c::execute() {
    switch (field_0x57C) {
    case 0:
        if (field_0x57D != 0 && fopAcM_SearchByID(field_0x578) == NULL) {
            field_0x57E = 0x3C;
            mpBckAnm->setFrame(0.0f);
            mpBckAnm->setPlaySpeed(1.0f);
            field_0x57C = 1;
        }
        break;
    case 1:
        if (field_0x57E > 0) {
            field_0x57E--;
        }
        if (field_0x57E == 0) {
            setBokkuri();
            if (field_0x57D == 0xFF) {
                field_0x57C = 0;
            } else {
                field_0x57D--;
                if (field_0x57D == 0) {
                    field_0x57C = 2;
                } else {
                    field_0x57C = 0;
                }
            }
        }
        break;
    case 2:
        break;
    }
    setBaseMtx();
    return 1;
}

/* 80BB65C4-80BB6654 000564 0090+00 1/1 0/0 0/0 .text            draw__10daBkLeaf_cFv */
int daBkLeaf_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mpBckAnm->entry(mpModel->getModelData());
    mDoExt_modelUpdateDL(mpModel);
    mpBckAnm->remove(mpModel->getModelData());
    return 1;
}

/* 80BB6654-80BB6688 0005F4 0034+00 1/1 0/0 0/0 .text            _delete__10daBkLeaf_cFv */
int daBkLeaf_c::_delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80BB6688-80BB66A8 000628 0020+00 1/0 0/0 0/0 .text            daBkLeaf_Draw__FP10daBkLeaf_c */
static int daBkLeaf_Draw(daBkLeaf_c* i_this) {
    return i_this->draw();
}

/* 80BB66A8-80BB66C8 000648 0020+00 1/0 0/0 0/0 .text            daBkLeaf_Execute__FP10daBkLeaf_c */
static int daBkLeaf_Execute(daBkLeaf_c* i_this) {
    return i_this->execute();
}

/* 80BB66C8-80BB66E8 000668 0020+00 1/0 0/0 0/0 .text            daBkLeaf_Delete__FP10daBkLeaf_c */
static int daBkLeaf_Delete(daBkLeaf_c* i_this) {
    return i_this->_delete();
}

/* 80BB66E8-80BB6708 000688 0020+00 1/0 0/0 0/0 .text            daBkLeaf_Create__FP10fopAc_ac_c */
static int daBkLeaf_Create(fopAc_ac_c* i_this) {
    return static_cast<daBkLeaf_c*>(i_this)->create();
}

/* 80BB6764-80BB6784 -00001 0020+00 1/0 0/0 0/0 .data            l_daBkLeaf_Method */
static actor_method_class l_daBkLeaf_Method = {
    (process_method_func)daBkLeaf_Create,  (process_method_func)daBkLeaf_Delete,
    (process_method_func)daBkLeaf_Execute, NULL,
    (process_method_func)daBkLeaf_Draw,
};

/* 80BB6784-80BB67B4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_BkLeaf */
extern actor_process_profile_definition g_profile_Obj_BkLeaf = {fpcLy_CURRENT_e,
                                                                7,
                                                                fpcLy_CURRENT_e,
                                                                PROC_Obj_BkLeaf,
                                                                &g_fpcLf_Method.base,
                                                                sizeof(daBkLeaf_c),
                                                                0,
                                                                0,
                                                                &g_fopAc_Method.base,
                                                                0xFC,
                                                                &l_daBkLeaf_Method,
                                                                0x40100,
                                                                0,
                                                                fopAc_CULLBOX_CUSTOM_e};
