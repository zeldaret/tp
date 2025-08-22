//
// d_a_obj_yobikusa.cpp
// Obj - Call grass
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_yobikusa.h"

#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

//
// Declarations:
//

/* 8059DF88-8059DF8C -00001 0004+00 1/1 0/0 0/0 .data            l_arcName1 */
static const char* l_arcName1 = "J_Tobi";

/* 8059DF8C-8059DF90 -00001 0004+00 1/1 0/0 0/0 .data            l_arcName2 */
static const char* l_arcName2 = "J_Umak";

daObjYobikusa_c::actionFuncEntry daObjYobikusa_c::ActionTable[] = {
    {&daObjYobikusa_c::initSwingWind, &daObjYobikusa_c::executeSwingWind},
    {&daObjYobikusa_c::initPushDown, &daObjYobikusa_c::executePushDown},
    {&daObjYobikusa_c::initPickLeaf, &daObjYobikusa_c::executePickLeaf},
};

/* 8059C9F8-8059CA2C 000078 0034+00 5/5 0/0 0/0 .text
 * setAction__15daObjYobikusa_cFQ215daObjYobikusa_c6Mode_e      */
void daObjYobikusa_c::setAction(daObjYobikusa_c::Mode_e i_mode) {
    mActionEntry = &ActionTable[i_mode];
    callInit();
}

/* 8059CA2C-8059CA54 0000AC 0028+00 1/1 0/0 0/0 .text            callInit__15daObjYobikusa_cFv */
void daObjYobikusa_c::callInit() {
    (this->*(mActionEntry->initFn))();
}

/* 8059CA54-8059CA80 0000D4 002C+00 1/1 0/0 0/0 .text            callExecute__15daObjYobikusa_cFv */
void daObjYobikusa_c::callExecute() {
    (this->*(mActionEntry->execFn))();
}

/* 8059CA80-8059CA8C 000100 000C+00 1/0 0/0 0/0 .text            initSwingWind__15daObjYobikusa_cFv
 */
void daObjYobikusa_c::initSwingWind() {
    mMode = MODE_SWING_WIND;
}

daObjYobikusa_c::attributes const daObjYobikusa_c::M_attr = {
    1000.0f, 4000.0f, 0.0f, 1500.0f, 500.0f, 1152.0f, 512.0f, 200.0f, 400.0f,
    0.02f,   0.0f,    0.0f, 5000.0f, 150.0f, 1024,    64,     10000,  6582};

/* 8059CA8C-8059CC54 00010C 01C8+00 1/0 0/0 0/0 .text executeSwingWind__15daObjYobikusa_cFv */
void daObjYobikusa_c::executeSwingWind() {
    f32 wind_pow;
    cXyz wind_dir;

    dKyw_get_AllWind_vec(&current.pos, &wind_dir, &wind_pow);

    f32 fVar1 = cM_ssin(field_0x766) * M_attr.field_0x1c + wind_pow * attr()->field_0x00;
    if (fVar1 < 0.0f) {
        fVar1 = 0.0f;
    }

    f32 fVar2 = fVar1 * cM_ssin(field_0x764);
    mLeafAngles[0].y = fVar2 * wind_dir.z;
    mLeafAngles[0].z = fVar2 * wind_dir.x;

    fVar1 = attr()->field_0x20 * cM_ssin(field_0x766) +
            (attr()->field_0x10 + wind_pow * (attr()->field_0x0c - attr()->field_0x10));
    if (fVar1 < 0.0f) {
        fVar1 = 0.0f;
    }

    fVar2 = fVar1 * cM_ssin(field_0x764);
    mLeafAngles[1].y = fVar2 * wind_dir.z;
    mLeafAngles[1].z = fVar2 * wind_dir.x;

    field_0x764 += (int)(attr()->field_0x18 + wind_pow * (attr()->field_0x14 - attr()->field_0x18));
    field_0x766 += attr()->field_0x3a;

    setNewLeaf();
    if (mCcCyl.ChkCoHit()) {
        setAction(MODE_PUSH_DOWN);
    }
}

/* 8059CC54-8059CC60 0002D4 000C+00 1/0 0/0 0/0 .text            initPushDown__15daObjYobikusa_cFv
 */
void daObjYobikusa_c::initPushDown() {
    mMode = MODE_PUSH_DOWN;
}

/* 8059CC60-8059CD44 0002E0 00E4+00 1/0 0/0 0/0 .text executePushDown__15daObjYobikusa_cFv */
void daObjYobikusa_c::executePushDown() {
    if (!mCcCyl.ChkCoHit()) {
        setAction(MODE_SWING_WIND);
    } else {
        fopAc_ac_c* actor = mCcCyl.GetCoHitAc();
        s16 angle = fopAcM_searchActorAngleY(this, actor);
        f32 distance = fopAcM_searchActorDistanceXZ(this, actor);
        distance = (distance * -(attr()->field_0x04 / 65.0f));
        f32 val = distance + attr()->field_0x04;

        mLeafAngles[0].y = val * cM_scos(angle);
        mLeafAngles[0].z = val * cM_ssin(angle);

        setNewLeaf();
    }
}

/* 8059CD44-8059CD80 0003C4 003C+00 1/0 0/0 0/0 .text            initPickLeaf__15daObjYobikusa_cFv
 */
void daObjYobikusa_c::initPickLeaf() {
    mMode = MODE_PICK_LEAF;
    fopAcM_cancelCarryNow(this);
    toPickLeaf();
}

/* 8059CD80-8059CE7C 000400 00FC+00 1/0 0/0 0/0 .text executePickLeaf__15daObjYobikusa_cFv */
void daObjYobikusa_c::executePickLeaf() {
    f32 amplitude = mPickLeafAmplitude * cM_ssin(mPickLeafTick);
    mLeafAngles[1].y = amplitude * cM_scos(mPlayerDeltaAngle);
    mLeafAngles[1].z = amplitude * cM_ssin(mPlayerDeltaAngle);

    cLib_chaseF(&mPickLeafAmplitude, 0.0f, attr()->mPickLeafAmplitudeDecay);

    mPickLeafTick += attr()->mPickLeafTickSpeed;

    if (mPickLeafAmplitude == 0.0f) {
        if (mCcCyl.ChkCoHit()) {
            setAction(MODE_PUSH_DOWN);
        } else {
            setAction(MODE_SWING_WIND);
        }
    }
}

/* 8059CE7C-8059D040 0004FC 01C4+00 1/1 0/0 0/0 .text            create_init__15daObjYobikusa_cFv */
void daObjYobikusa_c::create_init() {
    initBaseMtx();
    fopAcM_setCullSizeBox(this, -50.0f, -30.0f, -50.0f, 50.0f, 120.0f, 50.0f);

    dBgS_AcchCir acch_cir;
    dBgS_ObjAcch obj_acch;

    acch_cir.SetWall(0.0f, 30.0f);
    obj_acch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &acch_cir,
                 fopAcM_GetSpeed_p(this), NULL, NULL);
    obj_acch.CrrPos(dComIfG_Bgsp());
    mGroundH = obj_acch.GetGroundH();

    mPolyInfo = obj_acch.m_gnd;

    fopAcM_OnCarryType(this, fopAcM_CARRY_LIGHT);

    attention_info.flags |= 0x10;
    attention_info.distances[fopAc_attn_CARRY_e] = 42;

    initCcCylinder();
    setAction(MODE_SWING_WIND);

    mJointScale = 1.0f;

    field_0x764 = cM_rnd() * 65535.0f;
    field_0x766 = cM_rnd() * 65535.0f;
}

/* 8059D120-8059D198 0007A0 0078+00 1/1 0/0 0/0 .text            initBaseMtx__15daObjYobikusa_cFv */
void daObjYobikusa_c::initBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModelTypeA->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModelTypeB->setBaseTRMtx(mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), mMtx);
}

/* 8059D198-8059D1BC 000818 0024+00 1/1 0/0 0/0 .text getJointAngle__15daObjYobikusa_cFP5csXyzi */
void daObjYobikusa_c::getJointAngle(csXyz* i_angle, int i_index) {
    *i_angle = mLeafAngles[i_index];
}

/* 8059D1BC-8059D1C4 00083C 0008+00 1/1 0/0 0/0 .text            getJointScale__15daObjYobikusa_cFi
 */
f32 daObjYobikusa_c::getJointScale(int _unused) {
    return mJointScale;
}

/* 8059D1C4-8059D2E4 000844 0120+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_jnt, int i_param) {
    if (i_param != 0) {
        return 1;
    }

    int jnt_no = i_jnt->getJntNo();

    J3DModel* model = j3dSys.getModel();
    daObjYobikusa_c* i_this = (daObjYobikusa_c*)model->getUserArea();

    cMtx_copy(model->getAnmMtx(jnt_no), mDoMtx_stack_c::get());

    csXyz angle;
    i_this->getJointAngle(&angle, jnt_no);

    if (angle.x != 0) {
        mDoMtx_stack_c::XrotM(angle.x);
    }
    if (angle.z != 0) {
        mDoMtx_stack_c::ZrotM(angle.z);
    }
    if (angle.y != 0) {
        mDoMtx_stack_c::YrotM(angle.y);
    }

    if (jnt_no == 2) {
        cXyz scale;
        scale.setall(i_this->getJointScale(jnt_no));
        mDoMtx_stack_c::scaleM(scale);
    }

    model->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
    mDoMtx_copy(mDoMtx_stack_c::get(), j3dSys.mCurrentMtx);

    return 1;
}

/* ############################################################################################## */
/* 8059DEE0-8059DF24 000064 0044+00 1/1 0/0 0/0 .rodata          ccCylSrc$3880 */
const static dCcD_SrcCyl ccCylSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8480422, 0x11}, 0x139}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                   // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},                   // mGObjTg
        {0x2},                                                // mGObjCo
    },                                                        // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        30.0f,               // mRadius
        80.0f                // mHeight
    }                        // mCyl
};

/* 8059D320-8059D380 0009A0 0060+00 1/1 0/0 0/0 .text            initCcCylinder__15daObjYobikusa_cFv
 */
void daObjYobikusa_c::initCcCylinder() {
    mStts.Init(0xff, 0xff, this);
    mCcCyl.Set(ccCylSrc);
    mCcCyl.SetStts(&mStts);
    mCcCyl.SetC(current.pos);
}

/* 8059D380-8059D3B4 000A00 0034+00 1/1 0/0 0/0 .text            setCcCylinder__15daObjYobikusa_cFv
 */
void daObjYobikusa_c::setCcCylinder() {
    dComIfG_Ccsp()->Set(&mCcCyl);
}

/* 8059D3B4-8059D454 000A34 00A0+00 1/1 0/0 0/0 .text            toPickLeaf__15daObjYobikusa_cFv */
bool daObjYobikusa_c::toPickLeaf() {
    if (mJointScale == 1.0f) {
        mJointScale = 0.0f;
        mNewLeafAmplitude = attr()->mNewLeafInitialAmplitude;
        mNewLeafTick = 0;
        mPickLeafAmplitude = attr()->mPickLeafInitialAmplitude;
        mPickLeafTick = 0;
        mPlayerDeltaAngle = fopAcM_searchActorAngleY(this, dComIfGp_getPlayer(0));
        mPlayerDeltaAngle -= 0x2000;

        cLib_offBit<u32>(attention_info.flags, 0x10);
        return true;
    }
    return false;
}

/* 8059D454-8059D520 000AD4 00CC+00 2/2 0/0 0/0 .text            setNewLeaf__15daObjYobikusa_cFv */
bool daObjYobikusa_c::setNewLeaf() {
    cLib_chaseF(&mJointScale, 1.0f, attr()->mJointScaleStep);

    mNewLeafAmplitude = attr()->mNewLeafInitialAmplitude;

    mLeafAngles[2].x = (int)(mNewLeafAmplitude * cM_ssin(mNewLeafTick));
    mNewLeafTick += attr()->mNewLeafTickSpeed;

    if (mJointScale == 1.0f && mNewLeafAmplitude == 0.0f) {
        cLib_onBit<u32>(attention_info.flags, 0x10);
        return true;
    }
    return false;
}

int daObjYobikusa_c::createHeap() {
    char* res_name1;
    char* res_name2;
    J3DModelData* model_data1;
    J3DModelData* model_data2;

    switch (getType()) {
    case CALL_TYPE_FLY:
        res_name1 = "J_Tobi.bmd";
        res_name2 = "J_Tobi_c.bmd";
        break;

    case CALL_TYPE_HORSE:
        res_name1 = "J_Umakusa.bmd";
        res_name2 = "J_Umakusa_c.bmd";
        break;

    default:
        break;
    }

    model_data1 = (J3DModelData*)dComIfG_getObjectRes(mResName, res_name1);
    model_data2 = (J3DModelData*)dComIfG_getObjectRes(mResName, res_name2);

    mpModelTypeA = mDoExt_J3DModel__create(model_data1, 0x80000, 0x11000084);
    mpModelTypeB = mDoExt_J3DModel__create(model_data2, 0x80000, 0x11000084);

    if (mpModelTypeA == NULL || mpModelTypeB == NULL) {
        return FALSE;
    } else {
        for (u16 i = 0; i < 3; i++) {
            J3DJoint* joint = mpModelTypeA->getModelData()->getJointNodePointer(i);
            if (joint != NULL) {
                joint->setCallBack(nodeCallBack);
                mpModelTypeA->setUserArea((u32)this);
            }
        }

        mpActiveModel = mpModelTypeA;
    }

    return TRUE;
}

/* 8059D520-8059D674 000BA0 0154+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjYobikusa_c*>(i_this)->createHeap();
}

int daObjYobikusa_c::draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpActiveModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpActiveModel);
    dComIfGd_setList();

    return TRUE;
}

/* 8059D674-8059D718 000CF4 00A4+00 1/0 0/0 0/0 .text daObjYobikusa_Draw__FP15daObjYobikusa_c */
static int daObjYobikusa_Draw(daObjYobikusa_c* i_this) {
    return i_this->draw();
}

/* 8059D718-8059D738 000D98 0020+00 1/0 0/0 0/0 .text daObjYobikusa_Execute__FP15daObjYobikusa_c
 */
static int daObjYobikusa_Execute(daObjYobikusa_c* i_this) {
    return i_this->execute();
}

/* 8059D738-8059D9A0 000DB8 0268+00 1/1 0/0 0/0 .text            execute__15daObjYobikusa_cFv */
int daObjYobikusa_c::execute() {
    if (mpActiveModel == mpModelTypeB) {
        if (!(!fopAcM_CheckCondition(this, 4) &&
              (!dComIfGp_event_runCheck() || eventInfo.checkCommandTalk())))
        {
            mpActiveModel = mpModelTypeA;
            fopAcM_OnStatus(this, 0x80);
        } else {
            return TRUE;
        }
    }

    if (mCcCyl.ChkTgHit()) {
        mpActiveModel = mpModelTypeB;

        fopAcM_OffStatus(this, 0x80);
        cLib_offBit<u32>(attention_info.flags, 0x10);

        if (getType() == CALL_TYPE_FLY) {
            dComIfGp_particle_set(0x8347, &current.pos, NULL, NULL);
            dComIfGp_particle_set(0x8348, &current.pos, NULL, NULL);
        } else if (getType() == CALL_TYPE_HORSE) {
            dComIfGp_particle_set(0x8349, &current.pos, NULL, NULL);
            dComIfGp_particle_set(0x834a, &current.pos, NULL, NULL);
        }
    } else {
        if (fopAcM_checkCarryNow(this)) {
            setAction(MODE_PICK_LEAF);
        }

        attention_info.distances[fopAc_attn_CARRY_e] = daPy_py_c::checkNowWolf() ? 73 : 42;
        callExecute();
    }

    setCcCylinder();
    return TRUE;
}

/* 8059D9A0-8059D9A8 001020 0008+00 1/0 0/0 0/0 .text daObjYobikusa_IsDelete__FP15daObjYobikusa_c
 */
static bool daObjYobikusa_IsDelete(daObjYobikusa_c* i_this) {
    return true;
}

daObjYobikusa_c::~daObjYobikusa_c() {
    dComIfG_resDelete(&mPhase, mResName);
}

/* 8059D9A8-8059DAF4 001028 014C+00 1/0 0/0 0/0 .text daObjYobikusa_Delete__FP15daObjYobikusa_c */
static int daObjYobikusa_Delete(daObjYobikusa_c* i_this) {
    i_this->~daObjYobikusa_c();
    return TRUE;
}

cPhs__Step daObjYobikusa_c::create() {
    fopAcM_SetupActor(this, daObjYobikusa_c);

    switch (getType()) {
    case CALL_TYPE_FLY:
        mResName = (char*)l_arcName1;
        break;

    case CALL_TYPE_HORSE:
        mResName = (char*)l_arcName2;
        break;

    default:
        break;
    }

    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhase, mResName);
    if (step == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0x1080)) {
            step = cPhs_ERROR_e;
        } else {
            create_init();
            fopAcM_SetMtx(this, mMtx);
        }
    }
    return step;
}

/* 8059DAF4-8059DC88 001174 0194+00 1/0 0/0 0/0 .text daObjYobikusa_Create__FP10fopAc_ac_c */
static int daObjYobikusa_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjYobikusa_c*>(i_this)->create();
}

/* 8059E020-8059E040 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjYobikusa_Method */
static actor_method_class l_daObjYobikusa_Method = {
    (process_method_func)daObjYobikusa_Create,  (process_method_func)daObjYobikusa_Delete,
    (process_method_func)daObjYobikusa_Execute, (process_method_func)daObjYobikusa_IsDelete,
    (process_method_func)daObjYobikusa_Draw,
};

/* 8059E040-8059E070 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Yobikusa */
extern actor_process_profile_definition g_profile_Obj_Yobikusa = {
    fpcLy_CURRENT_e,          // mLayerID
    7,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_Obj_Yobikusa,        // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjYobikusa_c),  // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    29,                       // mPriority
    &l_daObjYobikusa_Method,  // sub_method
    0x40180,                  // mStatus
    fopAc_ACTOR_e,            // mActorType
    fopAc_CULLBOX_CUSTOM_e,   // cullType
};
