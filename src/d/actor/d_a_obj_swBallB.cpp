/**
 * @file d_a_obj_swBallB.cpp
 * 
*/

#include "d/actor/d_a_obj_swBallB.h"
#include "d/actor/d_a_player.h"
#include "d/actor/d_a_obj_carry.h"
#include "d/d_com_inf_game.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "dol2asm.h"
#include "d/d_lib.h"

/* ############################################################################################## */
/* 80CF5B10-80CF5B18 000000 0008+00 2/2 0/0 0/0 .bss             l_target_info */
static daObjCarry_c* l_target_info[2];

/* 80CF5B18-80CF5B1C 000008 0004+00 2/2 0/0 0/0 .bss             l_target_info_count */
static int l_target_info_count;

/* 80CF45B8-80CF464C 000078 0094+00 1/1 0/0 0/0 .text            s_ball_sub__FPvPv */
static void* s_ball_sub(void* param_1, void* param_2) {
    if (fopAcM_IsActor(param_1) && fopAcM_GetName(param_1) == PROC_Obj_Carry &&
        ((daObjCarry_c*)param_1)->prm_chk_type_lightball())
    {
        if (l_target_info_count < 2) {
            l_target_info[l_target_info_count] = (daObjCarry_c*)param_1;
            l_target_info_count++;
        }
    }
    return NULL;
}

/* 80CF464C-80CF466C 00010C 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* param_0) {
    return ((daObjSwBallB_c*)param_0)->CreateHeap();
}

/* ############################################################################################## */
/* 80CF59D0-80CF59D4 000000 0004+00 5/5 0/0 0/0 .rodata          l_color */
static GXColor const l_color = {0x03, 0x96, 0xFF, 0xFF};

/* 80CF59D4-80CF59E0 000004 000C+00 0/1 0/0 0/0 .rodata          l_event_bitA */
static u16 const l_event_bitA[6] = {
    0x4304, 0x4302, 0x4301, 0x4480, 0x4440, 0x4420,
};

/* 80CF59E0-80CF59EC 000010 000C+00 0/1 0/0 0/0 .rodata          l_event_bitB */
static u16 const l_event_bitB[6] = {
    0x4410, 0x4408, 0x4404, 0x4402, 0x4401, 0x4580,
};

/* 80CF466C-80CF47BC 00012C 0150+00 1/1 0/0 0/0 .text
 * checkArea_sub__14daObjSwBallB_cFP10fopAc_ac_c                */
int daObjSwBallB_c::checkArea_sub(fopAc_ac_c* param_1) {
    if (param_1 == NULL) {
        return 0;
    }
    if (getType() == 0) {
        if (param_1->current.pos.y >= current.pos.y - 10.0f &&
            param_1->current.pos.y < current.pos.y + scale.y * 100.0f &&
            fopAcM_searchActorDistanceXZ(this, param_1) < scale.x * 100.0f)
        {
            return 1;
        }
    } else {
        if (getType() == 1) {
            cXyz cStack_1c(scale.x * -100.0f, 0.0f, scale.z * -100.0f);
            cXyz cStack_28(scale.x * 100.0f, scale.y * 100.0f, scale.z * 100.0f);
            cStack_1c.y += current.pos.y - 10.0f;
            cStack_28.y += current.pos.y;
            if (param_1->current.pos.y >= cStack_1c.y && param_1->current.pos.y < cStack_28.y &&
                dLib_checkActorInRectangle(param_1, this, &cStack_1c, &cStack_28))
            {
                return 1;
            }
        }
    }
    return 0;
}

/* 80CF47BC-80CF496C 00027C 01B0+00 1/1 0/0 0/0 .text            search_ball__14daObjSwBallB_cFv */
void daObjSwBallB_c::search_ball() {
    l_target_info_count = 0;
    for (int i = 0; i < 2; i++) {
        l_target_info[i] = NULL;
    }
    fpcM_Search(s_ball_sub, this);
    for (int i = 0; i < l_target_info_count; i++) {
        if (l_target_info[i] != 0) {
            fpc_ProcID id = fopAcM_GetID(l_target_info[i]);
            if (id != -1) {
                int idIndex = -1;
                for (int j = 0; j < 2; j++) {
                    if (id == field_0x58c[j]) {
                        idIndex = j;
                        break;
                    }
                }
                if (idIndex < 0) {
                    for (int j = 0; j < 2; j++) {
                        if (field_0x58c[j] == -1) {
                            field_0x58c[j] = id;
                            break;
                        }
                    }
                }
            }
        }
    }

    for (int j = 0; j < 2; j++) {
        if (fopAcM_SearchByID(field_0x58c[j]) == NULL) {
            field_0x58c[j] = -1;
        }
    }
    if (field_0x59c != -1 && fopAcM_SearchByID(field_0x59c) == NULL) {
        field_0x59c = -1;
    }
}

/* 80CF496C-80CF498C 00042C 0020+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjSwBallB_cFv */
void daObjSwBallB_c::initBaseMtx() {
    setBaseMtx();
}

/* 80CF498C-80CF49F0 00044C 0064+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjSwBallB_cFv */
void daObjSwBallB_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CF49F0-80CF4B74 0004B0 0184+00 1/1 0/0 0/0 .text            Create__14daObjSwBallB_cFv */
int daObjSwBallB_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mModel->getBaseTRMtx());
    J3DJoint* joint = mModel->getModelData()->getJointNodePointer(0);
    fopAcM_setCullSizeBox(this,
        joint->getMin()->x, joint->getMin()->y, joint->getMin()->z,
        joint->getMax()->x, joint->getMax()->y, joint->getMax()->z);
    for (int i = 0; i < 2; i++) {
        field_0x58c[i] = -1;
    }
    field_0x59c = -1;

    if (fopAcM_GetRoomNo(this) == 0 && fopAcM_isSwitch(this, 0x3f)) {
        field_0x588->setFrame(field_0x588->getEndFrame());
        if (getArg1() == 1) {
            fopAcM_onSwitch(this, getSwbit2());
        }
        fopAcM_onSwitch(this, getSwbit());
        field_0x596 = 5;
    }
    GXColor* color = mModel->getModelData()->getMaterialNodePointer(0)->getTevKColor(1);
    color->r = l_color.r;
    color->g = l_color.g;
    color->b = l_color.b;
    execute();
    return 1;
}

UNK_REL_DATA

/* 80CF5A40-80CF5A44 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "P_LBswBC";

/* 80CF4B74-80CF4CA0 000634 012C+00 1/1 0/0 0/0 .text            CreateHeap__14daObjSwBallB_cFv */
int daObjSwBallB_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 5);
    JUT_ASSERT(427, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (mModel == 0) {
        return 0;
    }
    J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 9);
    JUT_ASSERT(441, pbtk != 0);
    field_0x588 = new mDoExt_btkAnm();
    if (field_0x588 == NULL || field_0x588->init(modelData, pbtk, 1, 0, 1.0f, 0, -1) == 0) {
        return 0;
    }
    field_0x588->setPlaySpeed(0.0f);
    return 1;
}

/* 80CF4CE8-80CF4E08 0007A8 0120+00 1/1 0/0 0/0 .text            create__14daObjSwBallB_cFv */
int daObjSwBallB_c::create() {
    fopAcM_SetupActor(this, daObjSwBallB_c);
    if (field_0x5a0 == 0) {
        field_0x5a0 = 1;
        field_0x5a2 = home.angle.x;
        field_0x5a4 = home.angle.z;
        shape_angle.x = 0;
        current.angle.x = 0;
        home.angle.x = 0;
        shape_angle.z = 0;
        current.angle.z = 0;
        home.angle.z = 0;
    }
    int res = dComIfG_resLoad(&field_0x57c, l_arcName);
    if (res == cPhs_COMPLEATE_e) {
        if (fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x940) == 0) {
            return cPhs_ERROR_e;
        } else if (Create() == 0) {
            return cPhs_ERROR_e;
        }
    }
    return res;
}

/* 80CF4E08-80CF4EB8 0008C8 00B0+00 2/2 0/0 0/0 .text            execute__14daObjSwBallB_cFv */
int daObjSwBallB_c::execute() {
    typedef void (daObjSwBallB_c::*ballfunc)();
    static ballfunc l_func[2] = {&daObjSwBallB_c::actionRun, &daObjSwBallB_c::actionStop};
    (this->*l_func[field_0x595])();
    eventUpdate();
    field_0x588->play();
    return 1;
}

/* 80CF4EB8-80CF5384 000978 04CC+00 1/0 0/0 0/0 .text            actionRun__14daObjSwBallB_cFv */
void daObjSwBallB_c::actionRun() {
    u32 iVar4 = field_0x59c;
    search_ball();
    PutCrrPos();
    switch (field_0x596) {
    case 0:
        if (iVar4 == -1 && field_0x59c != -1) {
            fopAcM_seStart(this, Z2SE_OBJ_L8_L_BALL_SW_ON, 0);
            field_0x588->setPlaySpeed(1.0f);
            field_0x596 = 1;
        } else if (field_0x5ac != 0) {
            fopAcM_seStart(this, Z2SE_OBJ_L8_L_BALL_SW_ON, 0);
            field_0x588->setPlaySpeed(1.0f);
            field_0x596 = 3;
        }
        break;
    case 1:
        if (field_0x59c == -1) {
            field_0x588->setPlaySpeed(-1.0f);
            if (dComIfGp_roomControl_getStayNo() != 0) {
                fopAcM_offSwitch(this, getSwbit());
            }
            fopAcM_seStart(this, Z2SE_OBJ_L8_L_BALL_SW_OFF, 0);
            field_0x5a8 = -1;
            field_0x596 = 0;
        } else {
            if (field_0x588->play() != 0) {
                if (dComIfGp_roomControl_getStayNo() == 0) {
                    daObjCarry_c* carryObj = (daObjCarry_c*)fopAcM_SearchByID(field_0x59c);
                    if (carryObj != NULL) {
                        if (getArg1() == 1) {
                            fopAcM_onSwitch(this, getSwbit2());
                        }
                        if (carryObj->getType() == 8) {
                            fopAcM_onSwitch(this, getSwbit());
                            dComIfGs_onEventBit(l_event_bitA[getID()]);
                            field_0x5a8 = 0;
                        } else {
                            dComIfGs_onEventBit(l_event_bitB[getID()]);
                            field_0x5a8 = 1;
                        }
                    }
                } else {
                    fopAcM_onSwitch(this, getSwbit());
                }
                if (getEvent() != 0xff) {
                    orderEvent(getEvent(), 0xff, 1);
                }
            }
            if (field_0x5ad != 0) {
                fopAcM_seStart(this, Z2SE_OBJ_L8_L_BALL_SW_OFF, 0);
                field_0x588->setPlaySpeed(-1.0f);
                field_0x596 = 4;
            }
            fopAcM_seStartLevel(this, Z2SE_OBJ_L8_L_BALL_SW, 0);
        }
        break;
    case 2:
        break;
    case 3:
        field_0x588->play();
        fopAcM_seStartLevel(this, Z2SE_OBJ_L8_L_BALL_SW, 0);
        break;
    case 4:
        if (field_0x588->play() != 0 && field_0x5ac != 0) {
            fopAcM_seStart(this, Z2SE_OBJ_L8_L_BALL_SW_ON, 0);
            field_0x588->setPlaySpeed(1.0f);
            field_0x596 = 3;
        }
        break;
    case 5:
        break;
    }
}

/* 80CF5384-80CF5388 000E44 0004+00 1/0 0/0 0/0 .text            actionStop__14daObjSwBallB_cFv */
void daObjSwBallB_c::actionStop() {
    /* empty function */
}

/* 80CF5388-80CF56A4 000E48 031C+00 1/1 0/0 0/0 .text            PutCrrPos__14daObjSwBallB_cFv */
void daObjSwBallB_c::PutCrrPos() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 sVar5 = cLib_targetAngleY(&player->current.pos, &current.pos) - player->shape_angle.y;
    if (fopAcM_searchPlayerDistanceXZ(this) < 150.0f && sVar5 < 0x4000 && sVar5 > -0x4000) {
        daObjCarry_c* carryObj = (daObjCarry_c*)fopAcM_SearchByID(player->getGrabActorID());
        if (carryObj != NULL && fopAcM_IsActor(carryObj) &&
            fopAcM_GetName(carryObj) == PROC_Obj_Carry && carryObj->prm_chk_type_lightball())
        {
            player->setForcePutPos(current.pos);
            if (!dComIfGp_event_runCheck()) {
                dComIfGp_setDoStatus(0x14, 2);
            }
        }
    }
    daObjCarry_c* carryObj;
    for (u8 i = 0; i < 2; i++) {
        bool isArea = false;
        u8 carryNow = 0;
        u8 hookCarryNow = 0;
        if (field_0x58c[i] != -1) {
            carryObj = (daObjCarry_c*)fopAcM_SearchByID(field_0x58c[i]);
            isArea = checkArea_sub(carryObj);
            carryNow = fopAcM_checkCarryNow(carryObj) >> 13;
            hookCarryNow = fopAcM_checkHookCarryNow(carryObj) >> 20;
            if (field_0x59c == -1 || field_0x59c == field_0x58c[i]) {
                switch(field_0x599[i]) {
                case 0:
                    if ((isArea && ((carryNow == 0 && checkFlag(i, 1)) ||
                                        (hookCarryNow == 0 && checkFlag(i, 4)))) ||
                        (isArea && !checkFlag(i, 2) && carryNow == 0 && hookCarryNow == 0))
                    {
                        carryObj->startCtrl();
                        field_0x59c = field_0x58c[i];
                        field_0x599[i] = 1;
                    } else {
                        if (!isArea) {
                            field_0x59c = 0xffffffff;
                        }
                    }
                    break;
                case 1:
                    if (isArea != 0) {
                        cLib_chaseF(&carryObj->current.pos.x, current.pos.x,
                                                 10.0f);
                        cLib_chaseF(&carryObj->current.pos.z, current.pos.z,
                                                 10.0f);
                        if (fopAcM_searchActorDistanceXZ(this, carryObj) == 0.0f) {
                            carryObj->endCtrl();
                            field_0x599[i] = 0;
                        }
                    } else {
                        carryObj->endCtrl();
                        field_0x599[i] = 0;
                        field_0x59c = 0xffffffff;
                    }
                    break;
                }
            }
        }
        clrFlag(i);
        if (isArea) {
            onFlag(i, 2);
        }
        if (carryNow) {
            onFlag(i, 1);
        }
        if (hookCarryNow) {
            onFlag(i, 4);
        }
    }
}

/* 80CF56A4-80CF582C 001164 0188+00 1/1 0/0 0/0 .text            draw__14daObjSwBallB_cFv */
// NONMATCHING
int daObjSwBallB_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListDarkBG();
    J3DMaterial* material = mModel->getModelData()->getMaterialNodePointer(0);
    if (material->getTexGenBlock()->getTexMtx(1) != NULL) {
        J3DTexMtxInfo* texMtxInfo = &material->getTexGenBlock()->getTexMtx(1)->getTexMtxInfo();
        if (texMtxInfo != NULL) {
            Mtx auStack_48;
            C_MTXLightOrtho(auStack_48, 100.0f, -100.0f, -100.0f, 100.0f, 1.0f, 1.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::XrotS(0x4000);
            mDoMtx_stack_c::transM(-current.pos.x, -current.pos.y, -current.pos.z);
            cMtx_concat(auStack_48, mDoMtx_stack_c::get(), texMtxInfo->mEffectMtx);
        }
    }
    field_0x588->entry(mModel->getModelData());
    mDoExt_modelUpdateDL(mModel);
    mDoExt_btkAnmRemove(mModel->getModelData());
    dComIfGd_setList();
    return 1;
}

/* 80CF582C-80CF5860 0012EC 0034+00 1/1 0/0 0/0 .text            _delete__14daObjSwBallB_cFv */
int daObjSwBallB_c::_delete() {
    dComIfG_resDelete(&field_0x57c, l_arcName);
    return 1;
}

/* 80CF5860-80CF5880 001320 0020+00 1/0 0/0 0/0 .text daObjSwBallB_Draw__FP14daObjSwBallB_c */
static int daObjSwBallB_Draw(daObjSwBallB_c* param_0) {
    return param_0->draw();
}

/* 80CF5880-80CF58A0 001340 0020+00 1/0 0/0 0/0 .text daObjSwBallB_Execute__FP14daObjSwBallB_c */
static int daObjSwBallB_Execute(daObjSwBallB_c* param_0) {
    return param_0->execute();
}

/* 80CF58A0-80CF58C0 001360 0020+00 1/0 0/0 0/0 .text daObjSwBallB_Delete__FP14daObjSwBallB_c */
static int daObjSwBallB_Delete(daObjSwBallB_c* param_0) {
    return param_0->_delete();
}

/* 80CF58C0-80CF58E0 001380 0020+00 1/0 0/0 0/0 .text            daObjSwBallB_Create__FP10fopAc_ac_c
 */
static int daObjSwBallB_Create(fopAc_ac_c* param_0) {
    return ((daObjSwBallB_c*)param_0)->create();
}

/* 80CF5A74-80CF5A94 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSwBallB_Method */
static actor_method_class l_daObjSwBallB_Method = {
    (process_method_func)daObjSwBallB_Create,
    (process_method_func)daObjSwBallB_Delete,
    (process_method_func)daObjSwBallB_Execute,
    NULL,
    (process_method_func)daObjSwBallB_Draw,
};

/* 80CF5A94-80CF5AC4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SwBallB */
extern actor_process_profile_definition g_profile_Obj_SwBallB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SwBallB,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjSwBallB_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  572,                    // mPriority
  &l_daObjSwBallB_Method, // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CF5A14-80CF5A14 000044 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
