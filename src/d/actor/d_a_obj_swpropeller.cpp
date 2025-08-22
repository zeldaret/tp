/**
 * @file d_a_obj_swpropeller.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_swpropeller.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

#define MODEL_K_PURO 0
#define MODEL_LV9_PURO 1

#define TYPE_BOOMERANG 0  // only turns when hit with boomerang
#define TYPE_WIND 1       // automatically turns

/* 8059A518-8059A5C8 000078 00B0+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        int jnt_no = i_joint->getJntNo();
        J3DModel* model_p = j3dSys.getModel();
        daObjSwPr_c* swpr_p = (daObjSwPr_c*)model_p->getUserArea();

        if (jnt_no == swpr_p->mKaitenJntID) {
            cMtx_copy(model_p->getAnmMtx(jnt_no), mDoMtx_stack_c::get());
            mDoMtx_stack_c::YrotM(swpr_p->field_0x82c);
            model_p->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
            mDoMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
        }
    }

    return 1;
}

/* 8059A5C8-8059A5E8 000128 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjSwPr_c*>(i_this)->CreateHeap();
}

/* 8059A5E8-8059A624 000148 003C+00 1/1 0/0 0/0 .text            initBaseMtx__11daObjSwPr_cFv */
void daObjSwPr_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 8059A624-8059A670 000184 004C+00 3/3 0/0 0/0 .text            setBaseMtx__11daObjSwPr_cFv */
void daObjSwPr_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 8059B2C8-8059B2D0 000000 0008+00 3/3 0/0 0/0 .rodata          l_bmdName */
static int const l_bmdName[] = {3, 3};

/* 8059B2D0-8059B2D8 000008 0008+00 1/1 0/0 0/0 .rodata          l_heap_size */
static u32 const l_heap_size[] = {0xF20, 0x36C0};

/* 8059B2D8-8059B31C 000010 0044+00 0/1 0/0 0/0 .rodata          l_cyl_src */
static const dCcD_SrcCyl l_cyl_src = {
    {
        {0, {{0, 0, 0}, {0x10040, 0x11}, 0x58}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {dCcD_SE_NONE, 2, 0, 0, {2}},
        {0},
    },
    {
        {0.0f, 0.0f, 0.0f},
        100.0f,
        100.0f,
    },
};

/* 8059B31C-8059B334 000054 0018+00 0/1 0/0 0/0 .rodata          l_cull_size */
static f32 const l_cull_size[] = {-150.0f, 0.0f, -150.0f, 150.0f, 150.0f, 150.0f};

/* 8059B334-8059B33C 00006C 0006+02 0/0 0/0 0/0 .rodata          l_r00_rot_time */
// This was used for this object's HIO, which was removed in retail
static s16 const l_r00_rot_time[] = {190, 148, 100};

/* 8059B380-8059B388 -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[] = {"K_prop00", "Lv9_puro"};

/* 8059B388-8059B38C -00001 0004+00 1/1 0/0 0/0 .data            l_joint_name */
static char* l_joint_name = "kaiten";

/* 8059A670-8059A808 0001D0 0198+00 1/1 0/0 0/0 .text            Create__11daObjSwPr_cFv */
int daObjSwPr_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

    mCcStts.Init(0xFF, 0xFF, this);
    mCyl1.Set(l_cyl_src);
    mCyl1.SetStts(&mCcStts);

    if (mNameArg == 1) {
        mCyl2.Set(l_cyl_src);
        mCyl2.SetStts(&mCcStts);
        mCyl2.SetTgType(0x200);
        mCyl2.SetTgMtrl(3);
    }

    fopAcM_setCullSizeBox(this, l_cull_size[0], l_cull_size[1], l_cull_size[2], l_cull_size[3],
                          l_cull_size[4], l_cull_size[5]);

    JUTNameTab* jnt_nt_p = mpModel->getModelData()->getJointTree().getJointName();
    mKaitenJntID = 0xFFFF;

    for (u16 i = 0; i < mpModel->getModelData()->getJointNum(); i++) {
        if (strcmp(jnt_nt_p->getName(i), l_joint_name) == 0) {
            mKaitenJntID = i;
        }
    }

    J3DJoint* jnt = mpModel->getModelData()->getJointNodePointer(mKaitenJntID);
    jnt->setCallBack(nodeCallBack);
    mpModel->setUserArea((u32)this);

    eyePos.y += 100.0f;

    // Set CullSizeFar for Outside Bridge room in Forest Temple
    if (strcmp(dComIfGp_getStartStageName(), "D_MN05") == 0 && fopAcM_GetRoomNo(this) == 4) {
        fopAcM_setCullSizeFar(this, 100.0f);
    }

    return 1;
}

/* 8059A808-8059A888 000368 0080+00 1/1 0/0 0/0 .text            CreateHeap__11daObjSwPr_cFv */
int daObjSwPr_c::CreateHeap() {
    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(l_arcName[mModelType], l_bmdName[mModelType]);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);

    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 8059A888-8059AA74 0003E8 01EC+00 1/1 0/0 0/0 .text            create__11daObjSwPr_cFv */
int daObjSwPr_c::create() {
    fopAcM_SetupActor(this, daObjSwPr_c);

    mNameArg = getNameArg();

    if (getMdlType() == 15 || getMdlType() == 0) {
        mModelType = MODEL_K_PURO;
    } else if (getMdlType() == 1) {
        mModelType = MODEL_LV9_PURO;
    }

    int phase = dComIfG_resLoad(&mPhase, l_arcName[mModelType]);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, l_heap_size[mModelType])) {
            return cPhs_ERROR_e;
        }

        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }

    return phase;
}

/* 8059AB04-8059AB14 000664 0010+00 1/1 0/0 0/0 .text            setRotateTime__11daObjSwPr_cFv */
int daObjSwPr_c::setRotateTime() {
    field_0x83a = 0;
    return 100;
}

/* 8059AB14-8059AB9C 000674 0088+00 1/1 0/0 0/0 .text            switchCtrl__11daObjSwPr_cFv */
void daObjSwPr_c::switchCtrl() {
    int sw = getSwbit();

    if (mRotateSpeed == 0) {
        fopAcM_offSwitch(this, sw);
    } else if (cLib_calcTimer(&mSwDelayTimer) == 0) {
        fopAcM_onSwitch(this, sw);
    }
}

/* 8059AB9C-8059ADCC 0006FC 0230+00 1/1 0/0 0/0 .text execute_type_boomerang__11daObjSwPr_cFv */
void daObjSwPr_c::execute_type_boomerang() {
    bool tg_hit = mCyl1.ChkTgHit();

    field_0x82c += mRotateSpeed;
    cLib_chaseAngleS(&mRotateSpeed, 0, mRotateInitSpeed / mRotateTime);

    BOOL start_rotate = false;
    if (mCyl1.ChkTgHit() && field_0x838 == 0) {
        cCcD_Obj* tg_obj = mCyl1.GetTgHitObj();

        if (tg_obj != NULL && ((tg_obj->ChkAtType(AT_TYPE_40) && mCyl1.GetTgHitGObj() != NULL &&
                                mCyl1.GetTgHitGObj()->GetAtMtrl() == dCcD_MTRL_WIND) ||
                               tg_obj->ChkAtType(AT_TYPE_BOOMERANG)))
        {
            start_rotate = true;
        }

        mCyl1.ClrTgHit();
    }

    if (start_rotate) {
        field_0x839++;
        mRotateInitSpeed = 0x2000;
        mRotateSpeed = 0x2000;
        mRotateTime = setRotateTime();
        fopAcM_seStart(this, Z2SE_OBJ_BOOMSHTR_HIT_SW, 0);

        // Set delay to 0 if in Forest Temple Central Room
        if (strcmp(dComIfGp_getStartStageName(), "D_MN05") == 0 && fopAcM_GetRoomNo(this) == 0) {
            mSwDelayTimer = 0;
        } else {
            mSwDelayTimer = 8;
        }
    }

    if (cLib_calcTimer(&field_0x83a) != 0) {
        mRotateSpeed = 0x2000;
    }

    switchCtrl();
    setBaseMtx();

    cXyz pos_offset(cXyz::Zero);
    mCyl1.SetC(current.pos + pos_offset);
    dComIfG_Ccsp()->Set(&mCyl1);

    field_0x838 = tg_hit;
}

/* 8059ADCC-8059B014 00092C 0248+00 1/1 0/0 0/0 .text            execute_type_wind__11daObjSwPr_cFv
 */
void daObjSwPr_c::execute_type_wind() {
    s16 target_speed = 0;
    int sw = getSwbit();
    BOOL var_r29 = 0;

    if (mCyl2.ChkTgHit()) {
        if (mCyl2.GetTgHitGObj() != NULL) {
            if (mCyl2.GetTgHitGObj()->GetAtMtrl() == dCcD_MTRL_WIND && mCyl2.GetTgHitObj() != NULL) {
                target_speed = 7000;
                mRotateInitSpeed = 7000;
                var_r29 = 1;

                field_0x834++;
                if (field_0x834 == 20) {
                    fopAcM_onSwitch(this, sw);
                } else if (field_0x834 == 25) {
                    fopAcM_offSwitch(this, sw);
                }
            }
        }
    } else {
        field_0x834 = 0;
    }

    if (mCyl1.ChkTgHit()) {
        if (mCyl1.GetTgHitGObj() != NULL && mCyl1.GetTgHitGObj()->GetAtMtrl() == dCcD_MTRL_WIND) {
            cCcD_Obj* tg_obj = mCyl1.GetTgHitObj();

            if (tg_obj != NULL &&
                (tg_obj->ChkAtType(AT_TYPE_40) || tg_obj->ChkAtType(AT_TYPE_BOOMERANG)))
            {
                mRotateSpeed = 7000;
                mRotateInitSpeed = mRotateSpeed;
                fopAcM_onSwitch(this, sw);
                mSwOffDelayTimer = 10;

                if (getSwbit2() != 0xFF) {
                    fopAcM_onSwitch(this, getSwbit2());
                }
            }
        }
    } else if (mSwOffDelayTimer != 0 && cLib_calcTimer(&mSwOffDelayTimer) == 0) {
        fopAcM_offSwitch(this, sw);
    }

    cLib_addCalcAngleS(&mRotateSpeed, target_speed, 30, 100, 50);
    field_0x82c += mRotateSpeed;

    setBaseMtx();

    mCyl1.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCyl1);
    mCyl2.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCyl2);

    field_0x83d = var_r29;
}

/* 8059B014-8059B148 000B74 0134+00 1/1 0/0 0/0 .text            execute__11daObjSwPr_cFv */
int daObjSwPr_c::execute() {
    switch (mNameArg) {
    case TYPE_BOOMERANG:
        execute_type_boomerang();
        break;
    case TYPE_WIND:
        execute_type_wind();
        break;
    }

    if (mRotateSpeed != 0 && mRotateInitSpeed != 0) {
        fopAcM_seStartLevel(this, Z2SE_OBJ_BOOMSHTR_SWITCH,
                            ((f32)mRotateSpeed / (f32)mRotateInitSpeed) * 127.0f);
    }

    dComIfGp_att_LookRequest(this, 1200.0f, 600.0f, 0.0f, 27000, 2);
    return 1;
}

/* 8059B148-8059B1AC 000CA8 0064+00 1/1 0/0 0/0 .text            draw__11daObjSwPr_cFv */
int daObjSwPr_c::draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 8059B1AC-8059B1EC 000D0C 0040+00 1/1 0/0 0/0 .text            _delete__11daObjSwPr_cFv */
int daObjSwPr_c::_delete() {
    dComIfG_resDelete(&mPhase, l_arcName[mModelType]);
    return 1;
}

/* 8059B1EC-8059B20C 000D4C 0020+00 1/0 0/0 0/0 .text            daObjSwPr_Draw__FP11daObjSwPr_c */
static int daObjSwPr_Draw(daObjSwPr_c* i_this) {
    return i_this->draw();
}

/* 8059B20C-8059B22C 000D6C 0020+00 1/0 0/0 0/0 .text            daObjSwPr_Execute__FP11daObjSwPr_c
 */
static int daObjSwPr_Execute(daObjSwPr_c* i_this) {
    return i_this->execute();
}

/* 8059B22C-8059B24C 000D8C 0020+00 1/0 0/0 0/0 .text            daObjSwPr_Delete__FP11daObjSwPr_c
 */
static int daObjSwPr_Delete(daObjSwPr_c* i_this) {
    return i_this->_delete();
}

/* 8059B24C-8059B26C 000DAC 0020+00 1/0 0/0 0/0 .text            daObjSwPr_Create__FP10fopAc_ac_c */
static int daObjSwPr_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjSwPr_c*>(i_this)->create();
}

/* 8059B38C-8059B3AC -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSwPr_Method */
static actor_method_class l_daObjSwPr_Method = {
    (process_method_func)daObjSwPr_Create,  (process_method_func)daObjSwPr_Delete,
    (process_method_func)daObjSwPr_Execute, (process_method_func)NULL,
    (process_method_func)daObjSwPr_Draw,
};

/* 8059B3AC-8059B3DC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Swpropeller */
extern actor_process_profile_definition g_profile_Obj_Swpropeller = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Swpropeller,
    &g_fpcLf_Method.base,
    sizeof(daObjSwPr_c),
    0,
    0,
    &g_fopAc_Method.base,
    448,
    &l_daObjSwPr_Method,
    0x44100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
