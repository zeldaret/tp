/**
* @file d_a_obj_hakai_brl.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_hakai_brl.h"
#include "d/d_com_inf_game.h"

/* 80C16738-80C16758 000078 0020+00 1/1 0/0 0/0 .text daObjHBarrel_c_createHeap__FP10fopAc_ac_c */
static int daObjHBarrel_c_createHeap(fopAc_ac_c* i_this) {
    return ((daObjHBarrel_c*)i_this)->createHeap();
}

/* 80C1737C-80C17380 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "HBarrel";

/* 80C16758-80C1682C 000098 00D4+00 2/2 0/0 0/0 .text            __ct__14daObjHBarrel_cFv */
daObjHBarrel_c::daObjHBarrel_c() {}

/* 80C16758-80C1682C 000098 00D4+00 2/2 0/0 0/0 .text            __ct__14daObjHBarrel_cFv */
daObjHBarrel_c::~daObjHBarrel_c() {
    dComIfG_resDelete(this, l_arcName);
}

/* 80C16A98-80C16B08 0003D8 0070+00 1/1 0/0 0/0 .text            createHeap__14daObjHBarrel_cFv */
int daObjHBarrel_c::createHeap() {
    J3DModelData* a_model_data_p = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 3);
    JUT_ASSERT(0x9a, a_model_data_p != 0);

    mpModel = mDoExt_J3DModel__create(a_model_data_p, 0x80000, 0x11000084);
    if (mpModel == 0) {
        return 0;
    }

    return 1;
}

/* 80C16B08-80C16BF8 000448 00F0+00 1/1 0/0 0/0 .text            create__14daObjHBarrel_cFv */
int daObjHBarrel_c::create() {
    fopAcM_SetupActor(this, daObjHBarrel_c);

    s32 loadResult = dComIfG_resLoad(this, l_arcName);
    if (loadResult == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, daObjHBarrel_c_createHeap, 0x1000)) {
            return cPhs_ERROR_e;
        }

        init();
        setModelMtx();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        mSound.init(&current.pos, 1);
    }

    return loadResult;
}

/* 80C16BF8-80C16C44 000538 004C+00 1/1 0/0 0/0 .text            Delete__14daObjHBarrel_cFv */
int daObjHBarrel_c::Delete() {
    mSound.deleteObject();
    this->~daObjHBarrel_c();
    return 1;
}

/* 80C16C44-80C16CA8 000584 0064+00 1/1 0/0 0/0 .text            draw__14daObjHBarrel_cFv */
int daObjHBarrel_c::draw() {
    g_env_light.settingTevStruct(8, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdate(mpModel);
    return 1;
}

/* 80C16CA8-80C16D50 0005E8 00A8+00 1/1 0/0 0/0 .text            execute__14daObjHBarrel_cFv */
int daObjHBarrel_c::execute() {
    if (dComIfGp_checkPlayerStatus0(0, 0x1000) != 0) {
        mCyl.OffTgShield();
    } else {
        mCyl.OnTgShield();
    }

    hitAction();

    setModelMtx();

    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    dComIfG_Ccsp()->Set(&mCyl);

    return 1;
}

/* ############################################################################################## */
/* 80C172FC-80C17340 000000 0044+00 2/2 0/0 0/0 .rodata          s_CcDCyl__14daObjHBarrel_c */
dCcD_SrcCyl const daObjHBarrel_c::s_CcDCyl = {
    {
        {0x0, {{0x0, 0x0, 0xd}, {(s32)0xd8fafdff, 0x11}, 0x79}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                  // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x5},                  // mGObjTg
        {0x0},                                               // mGObjCo
    },                                                       // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        0.0f,                // mRadius
        0.0f                 // mHeight
    }  // mCyl
};

/* 80C16D50-80C16DEC 000690 009C+00 1/1 0/0 0/0 .text            init__14daObjHBarrel_cFv */
void daObjHBarrel_c::init() {
    mStts.Init(0xff, 0, this);
    mCyl.Set(s_CcDCyl);
    mCyl.SetStts(&mStts);
    cXyz cStack_18(current.pos.x, current.pos.y, current.pos.z);
    mCyl.SetC(cStack_18);
    mCyl.SetH(170.0f);
    return mCyl.SetR(90.0f);
}

/* 80C16DEC-80C16E50 00072C 0064+00 2/2 0/0 0/0 .text            setModelMtx__14daObjHBarrel_cFv */
void daObjHBarrel_c::setModelMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C16E50-80C17090 000790 0240+00 1/1 0/0 0/0 .text            hitAction__14daObjHBarrel_cFv */
void daObjHBarrel_c::hitAction() {
    if (mCyl.ChkTgHit()) {
        cCcD_ObjHitInf* hitObj = mCyl.GetTgHitObj();
        if (hitObj != NULL) {
            u32 temp = mCyl.GetTgHitObjHitSeID(1);
            mSound.startCollisionSE(temp, 0x10, NULL);
            if (hitObj->ChkAtType(AT_TYPE_BOMB) || hitObj->ChkAtType(AT_TYPE_IRON_BALL)) {
                dComIfGp_setHitMark(1, this, mCyl.GetTgHitPosP(), NULL, NULL, 0);
                callEmt();
                fopAcM_seStartCurrent(this, Z2SE_OBJ_BREAK_WOOD_FURNITURE, 0);
                fopAcM_createItemFromTable(&current.pos, getItemNo(), getItemBit(),
                                           fopAcM_GetHomeRoomNo(this), NULL, 0, NULL, NULL, NULL,
                                           false);
                fopAcM_delete(this);
            } else {
                if (hitObj->ChkAtType(AT_TYPE_NORMAL_SWORD) != 0 ||
                    hitObj->ChkAtType(AT_TYPE_ARROW) != 0)
                {
                    cXyz scale(1.0f, 1.0f, 1.0f);
                    csXyz part_shape_angle(shape_angle);
                    fopAc_ac_c* player = dComIfGp_getPlayer(0);
                    if (player != NULL) {
                        part_shape_angle.set(player->shape_angle.x, player->shape_angle.y,
                                      player->shape_angle.z);
                    }
                    dComIfGp_particle_set(0x752, mCyl.GetTgHitPosP(), &part_shape_angle, &scale);
                } else {
                    dComIfGp_setHitMark(9, this, mCyl.GetTgHitPosP(), NULL, NULL, 0);
                }
            }
        }
        mCyl.ClrTgHit();
    }
}

/* 80C17090-80C171F8 0009D0 0168+00 1/1 0/0 0/0 .text            callEmt__14daObjHBarrel_cFv */
void daObjHBarrel_c::callEmt() {
    static u16 const PARTICLE_NAME[3] = {
        0x82AB,
        0x82AC,
        0x82AD,
    };

    cXyz acStack_34(current.pos);
    cXyz cStack_40(1.125f, 1.125f, 1.125f);

    J3DModelData* a_bmd_p = (J3DModelData*)dComIfG_getObjectRes("Always", "BreakWoodBox.bmd");
    JUT_ASSERT(0x1f3, a_bmd_p != 0);

    JPABaseEmitter* emitter = dComIfGp_particle_set(0x82af, &acStack_34, NULL, NULL, 0xff,
                                                    &dPa_modelEcallBack::getEcallback(),
                                                    fopAcM_GetRoomNo(this), NULL, NULL, &cStack_40);
    dPa_modelEcallBack::setModel(emitter, a_bmd_p, tevStr, 3, NULL, 0, 0);
    for (s32 i = 0; i < 3; i++) {
        dComIfGp_particle_set(PARTICLE_NAME[i], &acStack_34, NULL, &cStack_40, 0xff, NULL, -1, NULL,
                              NULL, NULL);
    }
}

/* 80C171F8-80C1724C 000B38 0054+00 1/0 0/0 0/0 .text daObjHBarrel_create__FP14daObjHBarrel_c */
static int daObjHBarrel_create(daObjHBarrel_c* param_0) {
    fopAcM_SetupActor(param_0, daObjHBarrel_c);
    return param_0->create();
}

/* 80C1724C-80C1726C 000B8C 0020+00 1/0 0/0 0/0 .text daObjHBarrel_Delete__FP14daObjHBarrel_c */
static int daObjHBarrel_Delete(daObjHBarrel_c* param_0) {
    return param_0->Delete();
}

/* 80C1726C-80C1728C 000BAC 0020+00 1/0 0/0 0/0 .text daObjHBarrel_execute__FP14daObjHBarrel_c */
static int daObjHBarrel_execute(daObjHBarrel_c* param_0) {
    return param_0->execute();
}

/* 80C1728C-80C172AC 000BCC 0020+00 1/0 0/0 0/0 .text daObjHBarrel_draw__FP14daObjHBarrel_c */
static int daObjHBarrel_draw(daObjHBarrel_c* param_0) {
    return param_0->draw();
}

/* 80C17380-80C173A0 -00001 0020+00 1/0 0/0 0/0 .data            daObjHBarrel_METHODS */
static actor_method_class daObjHBarrel_METHODS = {
    (process_method_func)daObjHBarrel_create,
    (process_method_func)daObjHBarrel_Delete,
    (process_method_func)daObjHBarrel_execute,
    NULL,
    (process_method_func)daObjHBarrel_draw,
};

extern actor_process_profile_definition g_profile_Obj_HBarrel = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_HBarrel,        // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjHBarrel_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    745,                     // mPriority
    &daObjHBarrel_METHODS,   // sub_method
    0x00040180,              // mStatus
    fopAc_ENV_e,             // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
