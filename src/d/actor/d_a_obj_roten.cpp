/**
 * @file d_a_obj_roten.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_roten.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"

/* 80CC0B58-80CC0B94 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__13daObj_Roten_cFv */
void daObj_Roten_c::initBaseMtx() {
    mModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80CC0B94-80CC0C20 0000B4 008C+00 2/2 0/0 0/0 .text            setBaseMtx__13daObj_Roten_cFv */
void daObj_Roten_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::scaleM(scale.x, scale.y, scale.z);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80CC0C20-80CC0EC4 000140 02A4+00 1/0 0/0 0/0 .text            Create__13daObj_Roten_cFv */
int daObj_Roten_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mModel->getBaseTRMtx());
    cXyz minCull;
    cXyz maxCull;
    J3DJoint* pJoint = mModel->getModelData()->getJointNodePointer(0);
    minCull.x = scale.x * pJoint->getMin()->x;
    minCull.y = scale.y * pJoint->getMin()->y;
    minCull.z = scale.z * pJoint->getMin()->z;
    maxCull.x = scale.x * pJoint->getMax()->x;
    maxCull.y = scale.y * pJoint->getMax()->y;
    maxCull.z = scale.z * pJoint->getMax()->z;
    fopAcM_setCullSizeBox(this, minCull.x, minCull.y, minCull.z, maxCull.x, maxCull.y,
                          maxCull.z);
    fopAcM_setCullSizeFar(this, 10.0f);
    for (int i = 0; i < 2; i++) {
        mEmitters[i] = 0;
    }
    if (dComIfGs_getTime() >= 90.0f && dComIfGs_getTime() < 270.0f) {
        mWithinTime = false;
    } else {
        mWithinTime = true;
    }
    mBossLightRefDist = 0.0f;
    cXyz local_64(-80.0f, 177.0f, 110.0f);
    cXyz local_70;
    f32 dVar8 = cM_ssin(-shape_angle.y);
    f32 dVar9 = cM_scos(-shape_angle.y);
    local_70.x = (local_64.x * dVar9) - (local_64.z * dVar8);
    local_70.y = local_64.y;
    local_70.z = (local_64.x * dVar8) + (local_64.z * dVar9);
    mParticlePos.set(current.pos.x + local_70.x, current.pos.y + (f32)(double)local_64.y,
                    current.pos.z + local_70.z);
    if (mWithinTime) {
        cXyz cStack_7c(cXyz(0.4f, 0.4f, 0.4f));
        cXyz cStack_88(cXyz(0.25f, 0.25f, 0.25f));
        if (mEmitters[0] == NULL) {
            mEmitters[0] = dComIfGp_particle_set(0x3ad, &mParticlePos, &current.angle, &cStack_7c);
        }
        if (mEmitters[1] == NULL) {
            mEmitters[1] = dComIfGp_particle_set(0x3af, &mParticlePos, &current.angle, &cStack_88);
        }
    }
    return 1;
}

/* 80CC144C-80CC1450 -00001 0004+00 1/1 0/0 0/0 .data            l_resFileName */
static char* l_resFileName = "Obj_roten";

/* 80CC1450-80CC1454 000004 0004+00 1/1 0/0 0/0 .data            l_bmdFileIdx */
static u32 l_bmdFileIdx = 4;

/* 80CC0EC4-80CC0F40 0003E4 007C+00 1/0 0/0 0/0 .text            CreateHeap__13daObj_Roten_cFv */
int daObj_Roten_c::CreateHeap() {
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(getResName(), l_bmdFileIdx);
    JUT_ASSERT(156, mdlData_p != 0);
    mModel = mDoExt_J3DModel__create(mdlData_p, 0x80000, 0x11000084);
    return mModel != NULL;
}

/* ############################################################################################## */
/* 80CC1454-80CC1458 000008 0004+00 1/1 0/0 0/0 .data            l_dzbFileIdx */
static u32 l_dzbFileIdx = 7;

/* 80CC0F40-80CC1038 000460 00F8+00 1/1 0/0 0/0 .text            create__13daObj_Roten_cFv */
int daObj_Roten_c::create() {
    fopAcM_SetupActor(this, daObj_Roten_c);
         /* dSv_event_flag_c::M_031 - Goron Mines - Goron Mines clear */
    if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x40])) {
        return cPhs_ERROR_e;
    }
    int rv = dComIfG_resLoad(&mPhase, getResName());
    if (rv == cPhs_COMPLEATE_e) {
        if (MoveBGCreate(getResName(), l_dzbFileIdx, dBgS_MoveBGProc_TypicalRotY, 0x1430, NULL) ==
            cPhs_ERROR_e)
        {
            return cPhs_ERROR_e;
        }
        MoveBGExecute();
    }
    return rv;
}

/* 80CC1038-80CC1138 000558 0100+00 1/0 0/0 0/0 .text            Execute__13daObj_Roten_cFPPA3_A4_f
 */
int daObj_Roten_c::Execute(Mtx** ppMtx) {
    if (mWithinTime) {
        if (dComIfGp_roomControl_getStayNo() != 0) {
            mDoAud_seStartLevel(Z2SE_OBJ_MYNA_LIGHT_BURNING, &mParticlePos, 0, dComIfGp_getReverb(dComIfGp_roomControl_getStayNo()));
        } else {
            mDoAud_seStartLevel(Z2SE_OBJ_MYNA_LIGHT_BURNING, &mParticlePos, 0, 0);
        }
    }
    *ppMtx = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80CC1138-80CC1254 000658 011C+00 1/0 0/0 0/0 .text            Draw__13daObj_Roten_cFv */
int daObj_Roten_c::Draw() {
    if (mWithinTime) {
        cLib_addCalc(&mBossLightRefDist, 1.0f, 0.5f, 0.1f, 0.0001f);
    } else {
        cLib_addCalc(&mBossLightRefDist, 0, 0.5f, 0.1f, 0.0001f);
    }
    if (mBossLightRefDist >= 1e-6f) {
        GXColor bossLightColor = {0xbc, 0x66, 0x42, 0xff};
        dKy_BossLight_set(&mParticlePos, &bossLightColor, mBossLightRefDist, 0);
    }
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    return 1;
}

/* 80CC1254-80CC12E4 000774 0090+00 1/0 0/0 0/0 .text            Delete__13daObj_Roten_cFv */
int daObj_Roten_c::Delete() {
    for (int i = 0; i < 2; i = i + 1) {
        if (mEmitters[i] != NULL) {
            mEmitters[i]->quitImmortalEmitter();
            mEmitters[i]->becomeInvalidEmitter();
            mEmitters[i] = NULL;
        }
    }
    dComIfG_resDelete(&mPhase, getResName());
    return 1;
}

/* 80CC12E4-80CC12F4 000804 0010+00 3/3 0/0 0/0 .text            getResName__13daObj_Roten_cFv */
char* daObj_Roten_c::getResName() {
    return l_resFileName;
}

/* 80CC12F4-80CC1314 000814 0020+00 1/0 0/0 0/0 .text            daObj_Roten_Create__FPv */
static int daObj_Roten_Create(void* i_this) {
    return static_cast<daObj_Roten_c*>(i_this)->create();
}

/* 80CC1314-80CC1334 000834 0020+00 1/0 0/0 0/0 .text            daObj_Roten_Delete__FPv */
static int daObj_Roten_Delete(void* i_this) {
    return static_cast<daObj_Roten_c*>(i_this)->MoveBGDelete();
}

/* 80CC1334-80CC1354 000854 0020+00 1/0 0/0 0/0 .text            daObj_Roten_Execute__FPv */
static int daObj_Roten_Execute(void* i_this) {
    return static_cast<daObj_Roten_c*>(i_this)->MoveBGExecute();
}

/* 80CC1354-80CC1380 000874 002C+00 1/0 0/0 0/0 .text            daObj_Roten_Draw__FPv */
static int daObj_Roten_Draw(void* i_this) {
    return static_cast<daObj_Roten_c*>(i_this)->Draw();
}

/* 80CC1380-80CC1388 0008A0 0008+00 1/0 0/0 0/0 .text            daObj_Roten_IsDelete__FPv */
static int daObj_Roten_IsDelete(void* i_this) {
    return 1;
}

/* 80CC1388-80CC13F8 0008A8 0070+00 1/0 0/0 0/0 .text            __dt__13daObj_Roten_cFv */
daObj_Roten_c::~daObj_Roten_c() {
}

/* 80CC1458-80CC1478 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Roten_MethodTable */
static actor_method_class daObj_Roten_MethodTable = {
    (process_method_func)daObj_Roten_Create,
    (process_method_func)daObj_Roten_Delete,
    (process_method_func)daObj_Roten_Execute,
    (process_method_func)daObj_Roten_IsDelete,
    (process_method_func)daObj_Roten_Draw,
};

/* 80CC1478-80CC14A8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_ROTEN */
extern actor_process_profile_definition g_profile_OBJ_ROTEN = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_OBJ_ROTEN,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObj_Roten_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  67,                       // mPriority
  &daObj_Roten_MethodTable, // sub_method
  0x00040000,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80CC1440-80CC1440 000040 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
