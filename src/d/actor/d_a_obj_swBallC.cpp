//
// d_a_obj_swBallC
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_swBallC.h"
#include "d/actor/d_a_obj_swBallB.h"
#include "d/actor/d_a_obj_carry.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "d/d_com_inf_game.h"
#include "d/d_meter2_info.h"
#include "d/d_item.h"
#include "d/actor/d_a_player.h"
#include "f_op/f_op_msg_mng.h"
#include "f_op/f_op_msg.h"

/* 80CF5B98-80CF5BB8 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* param_0) {
    return ((daObjSwBallC_c*)param_0)->CreateHeap();
}

/* 80CF5BB8-80CF5C24 000098 006C+00 2/2 0/0 0/0 .text            s_swb_sub__FPvPv */
static void* s_swb_sub(void* param_1, void* param_2) {
    if (fopAcM_IsActor(param_1) && fopAcM_GetName(param_1) == PROC_Obj_SwBallB &&
        (u32)((daObjSwBallB_c*)param_1)->getID() == ((daObjSwBallC_c*)param_2)->field_0x582)
    {
        return param_1;
    }
    return NULL;
}

/* 80CF5C24-80CF5C7C 000104 0058+00 2/2 0/0 0/0 .text            s_ballA_sub__FPvPv */
static void* s_ballA_sub(void* param_1, void* param_2) {
    if (fopAcM_IsActor(param_1) && fopAcM_GetName(param_1) == PROC_Obj_Carry &&
        ((daObjCarry_c*)param_1)->getType() == daObjCarry_c::TYPE_BALL_S)
    {
        return param_1;
    }
    return NULL;
}

/* 80CF5C7C-80CF5CD4 00015C 0058+00 2/2 0/0 0/0 .text            s_ballB_sub__FPvPv */
static void* s_ballB_sub(void* param_1, void* param_2) {
    if (fopAcM_IsActor(param_1) && fopAcM_GetName(param_1) == PROC_Obj_Carry &&
        ((daObjCarry_c*)param_1)->getType() == daObjCarry_c::TYPE_BALL_S_2)
    {
        return param_1;
    }
    return NULL;
}

/* 80CF5CD4-80CF5CF4 0001B4 0020+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjSwBallC_cFv */
void daObjSwBallC_c::initBaseMtx() {
    setBaseMtx();
}

/* 80CF5CF4-80CF5D58 0001D4 0064+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjSwBallC_cFv */
void daObjSwBallC_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* ############################################################################################## */
/* 80CF6CD4-80CF6CD8 000000 0004+00 3/3 0/0 0/0 .rodata          l_color */
static GXColor const l_color = {0x03, 0x96, 0xFF, 0xFF};

/* 80CF6DB0-80CF6DB4 -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
static char* l_arcName = "P_LBswBC";

/* 80CF6DB4-80CF6DB8 -00001 0004+00 1/1 0/0 0/0 .data            l_evName */
static char* l_evName = "REVIVE_MASTER_SWORD";

static f32 dummyFloat() {
    return -1.0f;
}

/* 80CF5D58-80CF5EF8 000238 01A0+00 1/1 0/0 0/0 .text            Create__14daObjSwBallC_cFv */
int daObjSwBallC_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mModel->getBaseTRMtx());
    J3DJoint* joint = mModel->getModelData()->getJointNodePointer(0);
    fopAcM_setCullSizeBox(this,
        joint->getMin()->x, joint->getMin()->y, joint->getMin()->z,
        joint->getMax()->x, joint->getMax()->y, joint->getMax()->z);
    
    if (fopAcM_isSwitch(this, 0x3d) && fopAcM_isSwitch(this, 0x3e)) {
        field_0x574->setPlaySpeed(1.0f);
        field_0x574->setFrame(field_0x574->getEndFrame());
    }
    GXColor* color = mModel->getModelData()->getMaterialNodePointer(0)->getTevKColor(1);
    color->r = l_color.r;
    color->g = l_color.g;
    color->b = l_color.b;
    field_0x57e = -1;
    eventInfo.setArchiveName(l_arcName);
    field_0x57c = dComIfGp_getEventManager().getEventIdx(this, l_evName, 0xff);
    if (fopAcM_isSwitch(this, 0x3f)) {
        setLightOnSwB();
        setAction(3);
    }
    execute();
    return 1;
}

/* 80CF6DB8-80CF6DBC -00001 0004+00 1/1 0/0 0/0 .data            l_staffName */
static char* l_staffName = "lbsw";

/* 80CF5EF8-80CF6024 0003D8 012C+00 1/1 0/0 0/0 .text            CreateHeap__14daObjSwBallC_cFv */
int daObjSwBallC_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 6);
    JUT_ASSERT(427, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (mModel == 0) {
        return 0;
    }
    J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 10);
    JUT_ASSERT(441, pbtk != 0);
    field_0x574 = new mDoExt_btkAnm();
    if (field_0x574 == NULL || field_0x574->init(modelData, pbtk, 1, 0, 1.0f, 0, -1) == 0) {
        return 0;
    }
    field_0x574->setPlaySpeed(0.0f);
    return 1;
}

/* 80CF606C-80CF6120 00054C 00B4+00 1/1 0/0 0/0 .text            create__14daObjSwBallC_cFv */
int daObjSwBallC_c::create() {
    fopAcM_SetupActor(this, daObjSwBallC_c);
    int res = dComIfG_resLoad(&field_0x568, l_arcName);
    if (res == cPhs_COMPLEATE_e) {
        if (fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x960) == 0) {
            return cPhs_ERROR_e;
        } else if (Create() == 0) {
            return cPhs_ERROR_e;
        }
    }
    return res;
}

/* 80CF6120-80CF6144 000600 0024+00 2/2 0/0 0/0 .text            execute__14daObjSwBallC_cFv */
int daObjSwBallC_c::execute() {
    event_proc_call();
    return 1;    
}

/* 80CF6144-80CF6200 000624 00BC+00 1/2 0/0 0/0 .text            event_proc_call__14daObjSwBallC_cFv
 */
void daObjSwBallC_c::event_proc_call() {
    typedef void (daObjSwBallC_c::*ballfunc)();
    static ballfunc l_func[4] = {&daObjSwBallC_c::actionWait, &daObjSwBallC_c::actionOrderEvent, &daObjSwBallC_c::actionEvent, &daObjSwBallC_c::actionDead};
    (this->*l_func[field_0x57f])(); 
}

/* 80CF6E1C-80CF6E50 -00001 0034+00 1/1 0/0 0/0 .data            action_table$3966 */
static char* action_table[13] = {
    "WAIT",    "ON",   "OFF",     "ON_ALL_B", "OFF_ALL_B", "DEL_BALL",  "SOUND",
    "SCALING", "INIT", "MESSAGE", "ST_CUT2",  "LINK_INIT", "EQUIP_SWD",
};

/* 80CF6200-80CF629C 0006E0 009C+00 1/0 0/0 0/0 .text            actionWait__14daObjSwBallC_cFv */
void daObjSwBallC_c::actionWait() {
    if (fopAcM_isSwitch(this, 0x3d) && fopAcM_isSwitch(this, 0x3e)) {
        setAction(1);
        fopAcM_orderOtherEventId(this, field_0x57c, field_0x57e, 0xffff, 0, 1);
        eventInfo.onCondition(2);
    }
}

/* 80CF629C-80CF6344 00077C 00A8+00 1/0 0/0 0/0 .text actionOrderEvent__14daObjSwBallC_cFv */
void daObjSwBallC_c::actionOrderEvent() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(2);
        demoProc();
        fopAcM_onSwitch(this, 0x3f);
        dComIfGs_onTbox(10);
        dComIfGs_onTbox(11);
    } else {
        fopAcM_orderOtherEventId(this, field_0x57c, field_0x57e, 0xffff, 0, 1);
        eventInfo.onCondition(2);
    }
}

/* 80CF6344-80CF63F0 000824 00AC+00 1/0 0/0 0/0 .text            actionEvent__14daObjSwBallC_cFv */
void daObjSwBallC_c::actionEvent() {
    if (dComIfGp_evmng_endCheck(field_0x57c)) {
        setAction(3);
        dComIfGp_event_reset();
        fopAcM_onSwitch(this, 0x58);
        for (int i = 0; i < 8; i++) {
            fopAcM_onSwitch(this, i + 0x50);
        }
    } else {
        demoProc();
    }
}

/* 80CF63F0-80CF63F4 0008D0 0004+00 1/0 0/0 0/0 .text            actionDead__14daObjSwBallC_cFv */
void daObjSwBallC_c::actionDead() {
    /* empty function */
}

/* 80CF63F4-80CF6818 0008D4 0424+00 4/2 0/0 0/0 .text            demoProc__14daObjSwBallC_cFv */
int daObjSwBallC_c::demoProc() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz acStack_38;
    int uVar1 = dComIfGp_evmng_getMyActIdx(field_0x578, action_table, 13, 0, 0);
    field_0x578 = dComIfGp_evmng_getMyStaffId(l_staffName, NULL, 0);
    player->onShieldBackBone();
    if (dComIfGp_evmng_getIsAddvance(field_0x578)) {
        switch (uVar1) {
        case 0:
            int* puVar4 = dComIfGp_evmng_getMyIntegerP(field_0x578, "Timer");
            if (puVar4 == NULL) {
                field_0x580 = 1;
            } else {
                field_0x580 = *puVar4;
            }
            break;
        case 1:
            field_0x574->setPlaySpeed(1.0f);
            break;
        case 2:
            field_0x574->setPlaySpeed(-1.0f);
            break;
        case 3:
            setLightOnSwB();
            break;
        case 4:
            setLightOffSwB();
            break;
        case 5:
            deleteLightBall();
            break;
        case 6:
            fopAcM_seStart(this, Z2SE_OBJ_L_SWD_DEMO, 0);
            break;
        case 8:
            Z2GetAudioMgr()->bgmStreamPrepare(0x200005e);
            field_0x585 = 0x37;
            setLightOnSwB();
            dMeter2Info_setSword(0x29, 0);
            break;
        case 11:
            player->changeOriginalDemo();
            field_0x580 = 2;
            acStack_38.set(262.5f, -188.0f, 10712.5f);
            player->setPlayerPosAndAngle(&acStack_38, 0, 0);
            player->changeDemoMode(4, 1, 0, 0);
            break;
        case 12:
            player->changeOriginalDemo();
            field_0x580 = 2;
            player->changeDemoMode(4, 1, 0, 0);
            break;
        case 9:
            field_0x588 = -1;
            break;
        case 10:
            field_0x584 = 1;
            execItemGet(fpcNm_ITEM_LIGHT_SWORD);
            break;
        }
    }
    if (field_0x584 != 0) {
        player->onLightSwordGetEffect();
    }
    switch (uVar1) {
    case 0:
        if (cLib_calcTimer(&field_0x580) == 0) {
            dComIfGp_evmng_cutEnd(field_0x578);
        }
        break;
    case 1:
    case 2:
        if (field_0x574->play() != 0) {
            dComIfGp_evmng_cutEnd(field_0x578);
        }
        break;
    case 3:
    case 4:
        dComIfGp_evmng_cutEnd(field_0x578);
        break;
    case 7:
        if (calcLightBallScale() != 0) {
            deleteLightBall();
            dComIfGp_evmng_cutEnd(field_0x578);
        }
        break;
    case 9:
        if (field_0x588 == -1) {
            field_0x588 = fopMsgM_messageSet(0xae, 1000);
        } else {
            msg_class* msg = fopMsgM_SearchByID(field_0x588);
            if (msg != NULL) {
                if (msg->mode == 0xe) {
                    msg->mode = 0x10;
                } else if (msg->mode == 0x12) {
                    msg->mode = 0x13;
                    dComIfGp_evmng_cutEnd(field_0x578);
                }
            }
        }
        break;
    case 11:
    case 12:
        if (cLib_calcTimer(&field_0x580) == 0) {
            player->cancelOriginalDemo();
            dComIfGp_evmng_cutEnd(field_0x578);
        }
        break;
    default:
        dComIfGp_evmng_cutEnd(field_0x578);
        break;
    }
    if (field_0x585 >= 0) {
        field_0x585--;
        if (field_0x585 == 0) {
            Z2GetAudioMgr()->bgmStreamPlay();
        }
    }
    return 0;
}

/* 80CF6818-80CF6888 000CF8 0070+00 2/2 0/0 0/0 .text            setLightOnSwB__14daObjSwBallC_cFv
 */
void daObjSwBallC_c::setLightOnSwB() {
    for (u8 i = 0; i < 6; i++) {
        field_0x582 = i;
        daObjSwBallB_c* ball = (daObjSwBallB_c*)fpcM_Search(s_swb_sub, this);
        if (ball != NULL) {
            ball->setLightOn();
        }
    }
}

/* 80CF6888-80CF68F8 000D68 0070+00 1/1 0/0 0/0 .text            setLightOffSwB__14daObjSwBallC_cFv
 */
void daObjSwBallC_c::setLightOffSwB() {
    for (u8 i = 0; i < 6; i++) {
        field_0x582 = i;
        daObjSwBallB_c* ball = (daObjSwBallB_c*)fpcM_Search(s_swb_sub, this);
        if (ball != NULL) {
            ball->setLightOff();
        }
    }
}

/* 80CF68F8-80CF692C 000DD8 0034+00 1/1 0/0 0/0 .text            deleteLightBall__14daObjSwBallC_cFv
 */
void daObjSwBallC_c::deleteLightBall() {
    deleteLightBallA();
    deleteLightBallB();
}

/* 80CF692C-80CF6964 000E0C 0038+00 1/1 0/0 0/0 .text deleteLightBallA__14daObjSwBallC_cFv */
void daObjSwBallC_c::deleteLightBallA() {
    fopAc_ac_c* ball = (fopAc_ac_c*)fpcM_Search(s_ballA_sub, this);
    if (ball != NULL) {
        fopAcM_delete(ball);
    }
}

/* 80CF6964-80CF699C 000E44 0038+00 1/1 0/0 0/0 .text deleteLightBallB__14daObjSwBallC_cFv */
void daObjSwBallC_c::deleteLightBallB() {
    fopAc_ac_c* ball = (fopAc_ac_c*)fpcM_Search(s_ballB_sub, this);
    if (ball != NULL) {
        fopAcM_delete(ball);
    }
}

/* 80CF699C-80CF6A74 000E7C 00D8+00 1/1 0/0 0/0 .text calcLightBallScale__14daObjSwBallC_cFv */
int daObjSwBallC_c::calcLightBallScale() {
    int uVar3 = 0;
    fopAc_ac_c* ball = (fopAc_ac_c*)fpcM_Search(s_ballA_sub, this);
    if (ball != NULL) {
        fopAcM_OnStatus(ball, 0x800);
        uVar3 = cLib_chaseF(&ball->scale.x, 0.0f, 0.05f);
        ball->scale.y = ball->scale.x;
        ball->scale.z = ball->scale.x;
    }
    ball = (fopAc_ac_c*)fpcM_Search(s_ballB_sub, this);
    if (ball != NULL) {
        fopAcM_OnStatus(ball, 0x800);
        uVar3 &= cLib_chaseF(&ball->scale.x, 0.0f, 0.05f);
        ball->scale.y = ball->scale.x;
        ball->scale.z = ball->scale.x;
    }
    return uVar3;
}

/* 80CF6A74-80CF6BFC 000F54 0188+00 1/1 0/0 0/0 .text            draw__14daObjSwBallC_cFv */
int daObjSwBallC_c::draw() {
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
    field_0x574->entry(mModel->getModelData());
    mDoExt_modelUpdateDL(mModel);
    mDoExt_btkAnmRemove(mModel->getModelData());
    dComIfGd_setList();
    return 1;
}

/* 80CF6BFC-80CF6C30 0010DC 0034+00 1/1 0/0 0/0 .text            _delete__14daObjSwBallC_cFv */
int daObjSwBallC_c::_delete() {
    dComIfG_resDelete(&field_0x568, l_arcName);
    return 1;
}

/* 80CF6C30-80CF6C50 001110 0020+00 1/0 0/0 0/0 .text daObjSwBallC_Draw__FP14daObjSwBallC_c */
static int daObjSwBallC_Draw(daObjSwBallC_c* param_0) {
    return param_0->draw();
}

/* 80CF6C50-80CF6C70 001130 0020+00 1/0 0/0 0/0 .text daObjSwBallC_Execute__FP14daObjSwBallC_c */
static int daObjSwBallC_Execute(daObjSwBallC_c* param_0) {
    return param_0->execute();
}

/* 80CF6C70-80CF6C90 001150 0020+00 1/0 0/0 0/0 .text daObjSwBallC_Delete__FP14daObjSwBallC_c */
static int daObjSwBallC_Delete(daObjSwBallC_c* param_0) {
    return param_0->_delete();
}

/* 80CF6C90-80CF6CB0 001170 0020+00 1/0 0/0 0/0 .text daObjSwBallC_Create__FP14daObjSwBallC_c */
static int daObjSwBallC_Create(daObjSwBallC_c* param_0) {
    return param_0->create();
}

/* 80CF6EB8-80CF6ED8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSwBallC_Method */
static actor_method_class l_daObjSwBallC_Method = {
    (process_method_func)daObjSwBallC_Create,
    (process_method_func)daObjSwBallC_Delete,
    (process_method_func)daObjSwBallC_Execute,
    (process_method_func)NULL,
    (process_method_func)daObjSwBallC_Draw,
};

/* 80CF6ED8-80CF6F08 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SwBallC */
extern actor_process_profile_definition g_profile_Obj_SwBallC = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Obj_SwBallC,
    &g_fpcLf_Method.base,
    sizeof(daObjSwBallC_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x246,
    &l_daObjSwBallC_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
