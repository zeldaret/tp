/**
 * @file d_a_obj_laundry.cpp
 *
 */

#include "d/actor/d_a_obj_laundry.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "d/d_kankyo_wether.h"
#include "dol2asm.h"

//
// Declarations:
//

/* ############################################################################################## */
/* 80C52000-80C52034 000000 0034+00 3/3 0/0 0/0 .rodata          M_attr__10daObjLdy_c */
SECTION_RODATA f32 const daObjLdy_c::M_attr[12] = {5.0, 30.0,   130.0, -50.0, 0.15, 0.45,
                                                   0.3, 1000.0, 0.0,   0.0,   0.0,  0.0};
COMPILER_STRIP_GATE(0x80C52000, &daObjLdy_c::M_attr);

SECTION_RODATA u8 const daObjLdy_c::M_attr_u8[4] = {0x00, 0x00, 0x0A, 0x00};
COMPILER_STRIP_GATE(0x80C52030, &daObjLdy_c::M_attr_u8);

/* 80C50F98-80C51088 000078 00F0+00 1/1 0/0 0/0 .text            create_init__10daObjLdy_cFv */
void daObjLdy_c::create_init() {
    fopAcM_setCullSizeBox(this, -60.0f, -200.0f, -60.0f, 60.0f, 50.0f, 60.0f);
    fopAcM_setCullSizeFar(this, 1.5f);

    LaundJoint_c* joint = &mJoints[0];
    int index = 0;
    for (int i = 0; i < 3; i++) {
        joint->mPos1 = current.pos;
        joint->mPos1.y += (index + 1) * M_attr[3];
        joint->mPos2 = joint->mPos1;
        index++;
        joint++;
    }

    gravity = M_attr[0];
    initBaseMtx();
}

/* 80C51088-80C510F8 000168 0070+00 1/1 0/0 0/0 .text            initBaseMtx__10daObjLdy_cFv */
void daObjLdy_c::initBaseMtx() {
    setBaseMtx();

    LaundJoint_c* joint = &mJoints[0];
    for (int i = 0; i < 3; i++) {
        f32 cosAngleY = cM_scos(shape_angle.y);
        f32 sinAngleY = cM_ssin(shape_angle.y);
        joint->mPos4.set(sinAngleY, 0.0f, cosAngleY);
        joint++;
    }
}

/* 80C510F8-80C5116C 0001D8 0074+00 2/2 0/0 0/0 .text            setBaseMtx__10daObjLdy_cFv */
void daObjLdy_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::ZrotM(shape_angle.z);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    PSMTXCopy(mDoMtx_stack_c::get(), mMtx);
}

/* 80C5116C-80C51194 00024C 0028+00 1/1 0/0 0/0 .text getJointAngle__10daObjLdy_cFP5csXyzi */
void daObjLdy_c::getJointAngle(csXyz* i_jointAngle, int i_index) {
    LaundJoint_c* joint = &mJoints[i_index];
    *i_jointAngle = joint->mAngle;
}

/* ############################################################################################## */
/* 80C52054-80C52098 000054 0044+00 0/0 0/0 0/0 .rodata          ccCylSrc$3800 */
const static dCcD_SrcCyl ccCylSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x16048, 0x11}, 0x149}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},                // mGObjTg
        {0x0},                                             // mGObjCo
    },                                                     // mObjInf
    {
        {0.0f, -80.0f, 0.0f},  // mCenter
        25.0f,                 // mRadius
        25.0f                  // mHeight
    }  // mCyl
};

static f32 dummy(cXyz v) {
    return 40.0f + v.abs();
}

/* 80C51194-80C51644 000274 04B0+00 1/1 0/0 0/0 .text            setNormalClothPos__10daObjLdy_cFv
 */
void daObjLdy_c::setNormalClothPos() {
    cXyz adjustedPosition;
    cXyz windVector = dKyw_get_AllWind_vecpow(&current.pos);
    windVector *= M_attr[3] * M_attr[4];
    f32 windPower = windVector.abs();
    LaundJoint_c* joint = &mJoints[0];

    if (mCyl.ChkTgHit() != 0) {
        cCcD_Obj* tgHitObj = mCyl.GetTgHitObj();
        if (tgHitObj->ChkAtType(AT_TYPE_40) != 0 || tgHitObj->ChkAtType(AT_TYPE_ARROW) != 0) {
            cXyz position = fopAcM_GetPosition(dComIfGp_getPlayer(0)) - mJoints[1].mPos1;
            position.normalizeZP();
            position *= 100.0f;
            for (int i = 2; i >= 0; i--) {
                mJoints[i].mPos3 = position;
                position *= M_attr[6];
            }
            divorceParent();
        } else {
            if (tgHitObj->ChkAtType(AT_TYPE_BOOMERANG) != 0) {
                divorceParent();
            }
        }
    } else {
        if (mCyl.ChkCoHit() != 0) {
            if (fopAcM_GetName(mCyl.GetCoHitAc()) == PROC_NPC_TK) {
                cXyz position = fopAcM_GetPosition(dComIfGp_getPlayer(0)) - mJoints[1].mPos1;
                position.normalizeZP();
                position *= 100.0f;
                for (int i = 2; i >= 0; i--) {
                    mJoints[i].mPos3 = position;
                    position *= M_attr[6];
                }
                divorceParent();
            }
        } else {
            if (!windVector.isZero()) {
                for (int i = 0; i < 3; i++) {
                    if (cM_rnd() < 0.6f && cM_rnd() < 0.1f) {
                        joint->mPos3 += joint->mPos4 * windPower;
                    }
                    joint++;
                }
            }
        }
    }

    int i;
    LaundJoint_c* mJoint = &mJoints[0];
    cXyz* currentPosition = &fopAcM_GetPosition(this);
    for (i = 0; i < 3; i++) {
        adjustedPosition = *currentPosition - mJoint->mPos1;
        adjustedPosition.y += gravity;
        adjustedPosition += mJoint->mPos3;
        adjustedPosition.normalizeZP();
        mJoint->mPos1 = *currentPosition + (adjustedPosition * M_attr[3]);
        mJoint->mPos3 = (mJoint->mPos3 + (mJoint->mPos2 - mJoint->mPos1)) * M_attr[5];
        mJoint->mPos2 = mJoint->mPos1;
        currentPosition = &mJoint->mPos1;
        mJoint++;
    }
}

/* 80C51644-80C5183C 000724 01F8+00 1/1 0/0 0/0 .text            calcJointAngle__10daObjLdy_cFv */
void daObjLdy_c::calcJointAngle() {
    cXyz position;
    LaundJoint_c* joint = &mJoints[0];
    mDoMtx_stack_c::copy(mMtx);
    for (int i = 0; i < 3; i++) {
        mDoMtx_stack_c::push();
        mDoMtx_stack_c::inverse();
        mDoMtx_stack_c::multVec(&joint->mPos1, &position);
        mDoMtx_stack_c::pop();
        position *= -1.0f;
        joint->mAngle.x = cM_atan2s(position.z, position.y);
        joint->mAngle.z = cM_atan2s(-position.y, position.absXZ());
        mDoMtx_stack_c::XrotM(joint->mAngle.x);
        mDoMtx_stack_c::transM(0.0f, M_attr[3], 0.0f);
        joint++;
    }
}

/* 80C5183C-80C51844 00091C 0008+00 1/1 0/0 0/0 .text            divorceParent__10daObjLdy_cFv */
bool daObjLdy_c::divorceParent() {
    return true;
}

/* 80C51844-80C518FC 000924 00B8+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int i_callbackCondition) {
    J3DModel* jointModel;
    u16 jointNo;
    csXyz jointAngle[2];

    if (i_callbackCondition != 0) {
        return 1;
    }

    jointNo = i_joint->getJntNo();
    jointModel = j3dSys.getModel();
    ((daObjLdy_c*)jointModel->getUserArea())->getJointAngle(jointAngle, jointNo);
    cMtx_copy(jointModel->getAnmMtx(jointNo), mDoMtx_stack_c::get());
    mDoMtx_stack_c::XrotM(jointAngle->x);
    jointModel->setAnmMtx(jointNo, mDoMtx_stack_c::get());
    mDoMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    return 1;
}

/* 80C520F0-80C520F4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "J_Sentaku";

int daObjLdy_c::getObjType() {
    return fopAcM_GetParam(this) & 0xff;
}

int daObjLdy_c::createHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "J_Sentaku.bmd");
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    J3DAnmTextureSRTKey* key =
        (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, "J_Sentaku.btk");

    mpBtkAnm = new mDoExt_btkAnm();
    int initResult = mpBtkAnm->init(modelData, key, 1, 2, 1.0f, 0, -1);
    if (initResult == 0) {
        return 0;
    }

    mpBtkAnm->setFrame(getObjType());
    for (u16 i = 0; i < 3; i++) {
        J3DJoint* joint = mpModel->getModelData()->getJointNodePointer(i);
        if (joint != NULL) {
            joint->setCallBack(nodeCallBack);
            mpModel->setUserArea((u32)this);
        }
    }

    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C518FC-80C51A98 0009DC 019C+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjLdy_c*>(i_this)->createHeap();
}

int daObjLdy_c::daObjLdy_Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mpBtkAnm->entry(mpModel->getModelData());
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C51AE0-80C51B9C 000BC0 00BC+00 1/0 0/0 0/0 .text            daObjLdy_Draw__FP10daObjLdy_c */
static int daObjLdy_Draw(daObjLdy_c* i_this) {
    return i_this->daObjLdy_Draw();
}

int daObjLdy_c::daObjLdy_Execute() {
    setNormalClothPos();
    setBaseMtx();
    calcJointAngle();
    return 1;
}

/* 80C51B9C-80C51BDC 000C7C 0040+00 1/0 0/0 0/0 .text            daObjLdy_Execute__FP10daObjLdy_c */
static int daObjLdy_Execute(daObjLdy_c* i_this) {
    return i_this->daObjLdy_Execute();
}

/* 80C51BDC-80C51BE4 000CBC 0008+00 1/0 0/0 0/0 .text            daObjLdy_IsDelete__FP10daObjLdy_c
 */
static int daObjLdy_IsDelete(daObjLdy_c* i_this) {
    return 1;
}

daObjLdy_c::~daObjLdy_c() {
    dComIfG_resDelete(&mPhase, l_arcName);
}

/* 80C51BE4-80C51D2C 000CC4 0148+00 1/0 0/0 0/0 .text            daObjLdy_Delete__FP10daObjLdy_c */
static int daObjLdy_Delete(daObjLdy_c* i_this) {
    i_this->~daObjLdy_c();
    return 1;
}

/* 80C51D2C-80C51D68 000E0C 003C+00 2/2 0/0 0/0 .text            __dt__12LaundJoint_cFv */
LaundJoint_c::~LaundJoint_c() {}

int daObjLdy_c::create() {
    fopAcM_SetupActor(this, daObjLdy_c);
    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0x9a0)) {
            phase = cPhs_ERROR_e;
        } else {
            create_init();
            fopAcM_SetMtx(this, mMtx);
        }
    }

    return phase;
}

/* 80C51D68-80C51EC0 000E48 0158+00 1/0 0/0 0/0 .text            daObjLdy_Create__FP10fopAc_ac_c */
static int daObjLdy_Create(fopAc_ac_c* i_this) {
    return ((daObjLdy_c*)i_this)->create();
}

/* 80C51EC0-80C51EC4 000FA0 0004+00 1/1 0/0 0/0 .text            __ct__12LaundJoint_cFv */
LaundJoint_c::LaundJoint_c() {
    /* empty function */
}

/* 80C520F4-80C52114 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjLdy_Method */
static actor_method_class l_daObjLdy_Method = {
    (process_method_func)daObjLdy_Create,  (process_method_func)daObjLdy_Delete,
    (process_method_func)daObjLdy_Execute, (process_method_func)daObjLdy_IsDelete,
    (process_method_func)daObjLdy_Draw,
};

/* 80C52114-80C52144 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Laundry */
extern actor_process_profile_definition g_profile_Obj_Laundry = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Laundry,        // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjLdy_c),      // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    37,                      // mPriority
    &l_daObjLdy_Method,      // sub_method
    0x00040180,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
