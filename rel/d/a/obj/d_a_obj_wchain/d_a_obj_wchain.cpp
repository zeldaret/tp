/**
 * @file d_a_obj_wchain.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain.h"
#include "d/com/d_com_inf_game.h"
#include "d/a/d_a_player.h"
#include "d/d_procname.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void createHeap__13daObjWchain_cFv();
extern "C" static void daObjWchain_createHeap__FP10fopAc_ac_c();
extern "C" void create__13daObjWchain_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" static void daObjWchain_Create__FP10fopAc_ac_c();
extern "C" void __dt__13daObjWchain_cFv();
extern "C" static void daObjWchain_Delete__FP13daObjWchain_c();
extern "C" void setMatrix__13daObjWchain_cFv();
extern "C" void getChainAngleZ__13daObjWchain_cFP4cXyzi();
extern "C" void setChainPos__13daObjWchain_cFv();
extern "C" void execute__13daObjWchain_cFv();
extern "C" static void daObjWchain_Execute__FP13daObjWchain_c();
extern "C" void draw__19daObjWchain_shape_cFv();
extern "C" void draw__13daObjWchain_cFv();
extern "C" static void daObjWchain_Draw__FP13daObjWchain_c();
extern "C" void __dt__19daObjWchain_shape_cFv();

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void roofCheck__11fopAcM_rc_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_setLight_again__Fv();
extern "C" void dKy_GxFog_tevstr_set__FP12dKy_tevstr_c();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void atan2sY_XZ__4cXyzCFv();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_rad2s__Ff();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" bool entry__9J3DPacketFP13J3DDrawBuffer();
extern "C" void loadPreDrawSetting__8J3DShapeCFv();
extern "C" void entryImm__13J3DDrawBufferFP9J3DPacketUs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_20();
extern "C" void _savegpr_22();
extern "C" void _restgpr_20();
extern "C" void _restgpr_22();
extern "C" extern void* __vt__9J3DPacket[5];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mRoofY__11fopAcM_rc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" u8 sOldVcdVatCmd__8J3DShape[4];

//
// Declarations:
//

/* 80D31924-80D3192C 000000 0007+01 8/8 0/0 0/0 .rodata          l_arcName */
static char const l_arcName[7] = "Wchain";

/* 80D2FEF8-80D2FF9C 000078 00A4+00 1/1 0/0 0/0 .text            createHeap__13daObjWchain_cFv */
#ifdef NONMATCHING
// matches once daObjWchain_shape_c inheritance is resolved
int daObjWchain_c::createHeap() {
    J3DModelData* handle_model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpHandleModel = mDoExt_J3DModel__create(handle_model_data, 0x80000, 0x11000084);
    if (mpHandleModel == NULL) {
        return 0;
    }
    mpChainModelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 3);
    mShape.setUserArea((u32)this);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWchain_c::createHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain/createHeap__13daObjWchain_cFv.s"
}
#pragma pop
#endif

/* 80D2FF9C-80D2FFBC 00011C 0020+00 1/1 0/0 0/0 .text daObjWchain_createHeap__FP10fopAc_ac_c */
static int daObjWchain_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjWchain_c*>(i_this)->createHeap();
}

/* ############################################################################################## */
/* 80D3192C-80D31930 000008 0004+00 0/1 0/0 0/0 .rodata          @3744 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3744 = -200.0f;
COMPILER_STRIP_GATE(0x80D3192C, &lit_3744);
#pragma pop

/* 80D31930-80D31934 00000C 0004+00 0/1 0/0 0/0 .rodata          @3745 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3745 = -45.0f;
COMPILER_STRIP_GATE(0x80D31930, &lit_3745);
#pragma pop

/* 80D31934-80D31938 000010 0004+00 0/1 0/0 0/0 .rodata          @3746 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3746 = 200.0f;
COMPILER_STRIP_GATE(0x80D31934, &lit_3746);
#pragma pop

/* 80D31938-80D3193C 000014 0004+00 0/1 0/0 0/0 .rodata          @3747 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3747 = 800.0f;
COMPILER_STRIP_GATE(0x80D31938, &lit_3747);
#pragma pop

/* 80D3193C-80D31940 000018 0004+00 0/2 0/0 0/0 .rodata          @3748 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3748 = 53.75f;
COMPILER_STRIP_GATE(0x80D3193C, &lit_3748);
#pragma pop

/* 80D31940-80D31944 00001C 0004+00 0/1 0/0 0/0 .rodata          @3749 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3749 = 280.0f;
COMPILER_STRIP_GATE(0x80D31940, &lit_3749);
#pragma pop

/* 80D31944-80D31948 000020 0004+00 0/2 0/0 0/0 .rodata          @3750 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3750 = 100.0f;
COMPILER_STRIP_GATE(0x80D31944, &lit_3750);
#pragma pop

/* 80D31948-80D3194C 000024 0004+00 0/2 0/0 0/0 .rodata          @3751 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3751 = 250.0f;
COMPILER_STRIP_GATE(0x80D31948, &lit_3751);
#pragma pop

/* 80D3194C-80D31950 000028 0004+00 0/2 0/0 0/0 .rodata          @3752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3752 = 600.0f;
COMPILER_STRIP_GATE(0x80D3194C, &lit_3752);
#pragma pop

/* 80D31950-80D31954 00002C 0004+00 0/5 0/0 0/0 .rodata          @3753 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3753[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D31950, &lit_3753);
#pragma pop

/* 80D31954-80D31958 000030 0004+00 0/1 0/0 0/0 .rodata          @3754 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3754 = -7.0f;
COMPILER_STRIP_GATE(0x80D31954, &lit_3754);
#pragma pop

/* 80D31958-80D3195C 000034 0004+00 0/1 0/0 0/0 .rodata          @3755 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3755 = 16384.0f;
COMPILER_STRIP_GATE(0x80D31958, &lit_3755);
#pragma pop

/* 80D3195C-80D31960 000038 0004+00 0/1 0/0 0/0 .rodata          @3756 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3756 = 2048.0f;
COMPILER_STRIP_GATE(0x80D3195C, &lit_3756);
#pragma pop

/* 80D31960-80D31964 00003C 0004+00 0/3 0/0 0/0 .rodata          @3757 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3757 = 17.5f;
COMPILER_STRIP_GATE(0x80D31960, &lit_3757);
#pragma pop

/* 80D31964-80D3196C 000040 0008+00 0/2 0/0 0/0 .rodata          @3759 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3759[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D31964, &lit_3759);
#pragma pop

/* 80D319E4-80D31A04 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjWchain_Method */
static actor_method_class l_daObjWchain_Method = {
    (process_method_func)daObjWchain_Create__FP10fopAc_ac_c,
    (process_method_func)daObjWchain_Delete__FP13daObjWchain_c,
    (process_method_func)daObjWchain_Execute__FP13daObjWchain_c,
    0,
    (process_method_func)daObjWchain_Draw__FP13daObjWchain_c,
};

/* 80D31A04-80D31A34 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Wchain */
extern actor_process_profile_definition g_profile_Obj_Wchain = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Wchain,        // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  0x000007BC,             // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  247,                    // mPriority
  &l_daObjWchain_Method,  // sub_method
  0x00060100,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D31A34-80D31A48 000050 0014+00 3/3 0/0 0/0 .data            __vt__19daObjWchain_shape_c */
SECTION_DATA extern void* __vt__19daObjWchain_shape_c[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)entry__9J3DPacketFP13J3DDrawBuffer,
    (void*)draw__19daObjWchain_shape_cFv,
    (void*)__dt__19daObjWchain_shape_cFv,
};

/* 80D2FFBC-80D30394 00013C 03D8+00 1/1 0/0 0/0 .text            create__13daObjWchain_cFv */
#ifdef NONMATCHING
// matches once daObjWchain_shape_c inheritance is resolved
cPhs__Step daObjWchain_c::create() {
    fopAcM_SetupActor(this, daObjWchain_c);
    mSw = fopAcM_GetParam(this) & 0xff;
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (step == cPhs_COMPLEATE_e) {
        mRepeatable = (fopAcM_GetParam(this) >> 8) & 0xf;
        if (mRepeatable == 0xf) {
            mRepeatable = 0;
        }
        if (!fopAcM_entrySolidHeap(this, daObjWchain_createHeap, 0x820)) {
            return cPhs_ERROR_e;
        }
        tevStr.mRoomNo = dStage_roomControl_c::mStayNo;
        attention_info.position = current.pos;
        eyePos = attention_info.position;
        attention_info.distances[fopAc_attn_LOCK_e] = 0x1c;
        fopAcM_SetMtx(this, mpHandleModel->getBaseTRMtx());
        fopAcM_SetMin(this, -200.0f, -45.0f, -200.0f);
        fopAcM_SetMax(this, 200.0f, 800.0f, 200.0f);
        mTopPos = current.pos;
        current.pos.y += 53.75f;
        mRoofPos.set(current.pos.x, current.pos.y + 280.0f - 100.0f, current.pos.z);
        mRealRoofY = mRoofPos.y + 250.0f;
        mInitOutLength = mRoofPos.y - home.pos.y;
        if (!mRepeatable && fopAcM_isSwitch(this, mSw)) {
            current.pos.y -= 100.0f;
            mEnd = true;
            mPullLength = 100.0f;
            field_0x7a8 = 600.0f;
        } else {
            mPullLength = 0.0f;
        }
        shape_angle.x = 0x4000;
        gravity = -7.0f;
        cXyz* chain_pos = &mChainPos[0xf];
        cXyz* chain_speed = &mChainSpeed[0xf];
        csXyz* chain_angle = &mChainAngle[0xf];
        s16 ang_z = cM_rndFX(2048.0f) + 16384.0f;
        f32 pos_y = current.pos.y;
        for (int i = 0xf; i >= 0; chain_pos--, chain_speed--, chain_angle--, i--) {
            chain_pos->set(current.pos.x, pos_y, current.pos.z);
            *chain_speed = cXyz::Zero;
            chain_angle->set(0x4000, shape_angle.y, ang_z);
            ang_z += cM_rndFX(2048.0f) + 16384.0f;
            pos_y += 17.5f;
        }
        speed = cXyz::Zero;
        setMatrix();
    }
    return step;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cPhs__Step daObjWchain_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain/create__13daObjWchain_cFv.s"
}
#pragma pop
#endif

/* 80D30394-80D303D0 000514 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain/__dt__5csXyzFv.s"
}
#pragma pop

/* 80D303D0-80D303D4 000550 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80D303D4-80D303D8 000554 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80D303D8-80D30414 000558 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain/__dt__4cXyzFv.s"
}
#pragma pop

/* 80D30414-80D30434 000594 0020+00 1/0 0/0 0/0 .text            daObjWchain_Create__FP10fopAc_ac_c
 */
static cPhs__Step daObjWchain_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjWchain_c*>(i_this)->create();
}

/* 80D30434-80D3050C 0005B4 00D8+00 1/1 0/0 0/0 .text            __dt__13daObjWchain_cFv */
#ifdef NONMATCHING
// matches once daObjWchain_shape_c inheritance is resolved
daObjWchain_c::~daObjWchain_c() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObjWchain_c::~daObjWchain_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain/__dt__13daObjWchain_cFv.s"
}
#pragma pop
#endif

/* 80D3050C-80D30534 00068C 0028+00 1/0 0/0 0/0 .text daObjWchain_Delete__FP13daObjWchain_c */
static int daObjWchain_Delete(daObjWchain_c* i_this) {
    i_this->~daObjWchain_c();
    return 1;
}

/* ############################################################################################## */
/* 80D3196C-80D31978 000048 000C+00 0/1 0/0 0/0 .rodata          eyeOffset$3803 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const eyeOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x57, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D3196C, &eyeOffset);
#pragma pop

/* 80D31978-80D3197C 000054 0004+00 0/2 0/0 0/0 .rodata          @3819 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3819 = 8.75f;
COMPILER_STRIP_GATE(0x80D31978, &lit_3819);
#pragma pop

/* 80D30534-80D305E4 0006B4 00B0+00 2/2 0/0 0/0 .text            setMatrix__13daObjWchain_cFv */
#ifdef NONMATCHING
// matches with literals
void daObjWchain_c::setMatrix() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZrotM(mHandleRotation);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(0.0f, 0.0f, 8.75f);
    mpHandleModel->setBaseTRMtx(mDoMtx_stack_c::get());
    static Vec const eyeOffset = {0.0f, 0.0f, 53.75f};
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWchain_c::setMatrix() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain/setMatrix__13daObjWchain_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80D3197C-80D31984 000058 0008+00 0/2 0/0 0/0 .rodata          @3863 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3863[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D3197C, &lit_3863);
#pragma pop

/* 80D31984-80D3198C 000060 0008+00 0/2 0/0 0/0 .rodata          @3864 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3864[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D31984, &lit_3864);
#pragma pop

/* 80D3198C-80D31994 000068 0008+00 0/2 0/0 0/0 .rodata          @3865 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3865[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D3198C, &lit_3865);
#pragma pop

/* 80D31994-80D31998 000070 0004+00 0/1 0/0 0/0 .rodata          @3866 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3866 = 512.0f;
COMPILER_STRIP_GATE(0x80D31994, &lit_3866);
#pragma pop

/* 80D31998-80D3199C 000074 0004+00 0/2 0/0 0/0 .rodata          @3867 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3867 = 0.5f;
COMPILER_STRIP_GATE(0x80D31998, &lit_3867);
#pragma pop

/* 80D305E4-80D3080C 000764 0228+00 1/1 0/0 0/0 .text getChainAngleZ__13daObjWchain_cFP4cXyzi */
#ifdef NONMATCHING
// matches with literals
s16 daObjWchain_c::getChainAngleZ(cXyz* param_0, int param_1) {
    cXyz vec(param_0->x, 0.0f, param_0->z);
    f32 len = vec.abs();
    if (param_1 > 0x5000) {
        return -len * (cM_rndF(0.5f) + 0.5f) * 512.0f;
    } else if (param_1 < 0x3000) {
        return len * (cM_rndF(0.5f) + 0.5f) * 512.0f;
    } else if (cM_rnd() < 0.5f) {
        return -len * (cM_rndF(0.5f) + 0.5f) * 512.0f;
    } else {
        return len * (cM_rndF(0.5f) + 0.5f) * 512.0f;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s16 daObjWchain_c::getChainAngleZ(cXyz* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain/getChainAngleZ__13daObjWchain_cFP4cXyzi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80D3199C-80D319A8 000078 000C+00 0/1 0/0 0/0 .rodata          currentOffset$3872 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const currentOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x57, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D3199C, &currentOffset);
#pragma pop

/* 80D319A8-80D319B4 000084 000C+00 0/1 0/0 0/0 .rodata          chainOffset$3873 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const chainOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x8C, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D319A8, &chainOffset);
#pragma pop

/* 80D319B4-80D319B8 000090 0004+00 0/1 0/0 0/0 .rodata          @4154 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4154 = 0.75f;
COMPILER_STRIP_GATE(0x80D319B4, &lit_4154);
#pragma pop

/* 80D319B8-80D319BC 000094 0004+00 0/2 0/0 0/0 .rodata          @4155 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4155 = 1.0f;
COMPILER_STRIP_GATE(0x80D319B8, &lit_4155);
#pragma pop

/* 80D319BC-80D319C0 000098 0004+00 0/1 0/0 0/0 .rodata          @4156 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4156 = 5.0f;
COMPILER_STRIP_GATE(0x80D319BC, &lit_4156);
#pragma pop

/* 80D319C0-80D319C4 00009C 0004+00 0/1 0/0 0/0 .rodata          @4157 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4157 = 30.0f;
COMPILER_STRIP_GATE(0x80D319C0, &lit_4157);
#pragma pop

/* 80D319C4-80D319C8 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4158 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4158 = 2.0f / 35.0f;
COMPILER_STRIP_GATE(0x80D319C4, &lit_4158);
#pragma pop

/* 80D319C8-80D319CC 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4159 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4159 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D319C8, &lit_4159);
#pragma pop

/* 80D319CC-80D319D0 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4160 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4160 = 0x40C90FDB;
COMPILER_STRIP_GATE(0x80D319CC, &lit_4160);
#pragma pop

/* 80D319D0-80D319D4 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4161 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4161 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x80D319D0, &lit_4161);
#pragma pop

/* 80D3080C-80D310AC 00098C 08A0+00 1/1 0/0 0/0 .text            setChainPos__13daObjWchain_cFv */
#ifdef NONMATCHING
// regalloc, instruction ordering
void daObjWchain_c::setChainPos() {
    cXyz prev_pos, vec1;
    if (mRide) {
        shape_angle.y = daPy_getLinkPlayerActorClass()->shape_angle.y;
        shape_angle.z = 0;
        prev_pos = mTopPos;
        mTopPos = daPy_getLinkPlayerActorClass()->current.pos;
        speed = (mTopPos - prev_pos) * 0.75f;
        vec1 = mTopPos - mRoofPos;
        mDoMtx_stack_c::YrotS(-shape_angle.y);
        mDoMtx_stack_c::multVec(&vec1, &vec1);
        shape_angle.x = cM_atan2s(-vec1.z, -vec1.y) + 0x4000;
        mHandleRotation = cM_atan2s(vec1.x, JMAFastSqrt(vec1.y * vec1.y + vec1.z * vec1.z));
        mDoMtx_stack_c::transS(mTopPos.x, mTopPos.y, mTopPos.z);
        mDoMtx_stack_c::ZrotM(mHandleRotation);
        mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
        static Vec const currentOffset = {0.0f, 0.0f, -53.75f};
        mDoMtx_stack_c::multVec(&currentOffset, &current.pos);
        cXyz* chain_pos = &mChainPos[0xf];
        csXyz* chain_angle = &mChainAngle[0xf];
        cXyz* chain_speed = &mChainSpeed[0xf];
        s16* chain_rotation = &mChainRotation[0xf];
        prev_pos = current.pos;
        int svar7 = shape_angle.z;
        for (int i = 0xf; i >= 0; i--, chain_pos--, chain_angle--, chain_speed--, chain_rotation--) {
            chain_angle->z += getChainAngleZ(chain_speed, abs((s16)(chain_angle->z - svar7)));
            *chain_speed = (prev_pos - *chain_pos) * 0.75;
            *chain_pos = prev_pos;
            chain_angle->x = shape_angle.x;
            *chain_rotation = mHandleRotation;
            mDoMtx_stack_c::transS(prev_pos.x, prev_pos.y, prev_pos.z);
            mDoMtx_stack_c::ZrotM(*chain_rotation);
            mDoMtx_stack_c::ZXYrotM(chain_angle->x, shape_angle.y, chain_angle->z);
            static Vec const chainOffset = {0.0f, 0.0f, -17.5f};
            mDoMtx_stack_c::multVec(&chainOffset, &prev_pos);
            svar7 = chain_angle->z;
        }
    } else {
        if (mReset) {
            if (cLib_chaseF(&mPullLength, 0.0f, 1.0f)) {
                mReset = false;
                mEnd = false;
            }
        } else if (mRepeatable || !fopAcM_isSwitch(this, mSw)) {
            cLib_chaseF(&mPullLength, 0.0f, 5.0f);
        } else {
            mPullLength = 100.0f;
            mEnd = true;
            if (!mRepeatable) {
                cLib_chaseF(&field_0x7a8, 600.0f, 30.0f);
            }
        }
        f32 fvar2 = mInitOutLength + mPullLength - 53.75f;
        int local_68 = fvar2 * (1.0f / 17.5f);
        int ivar5 = local_68 <= 0xf ? local_68 + 1 : 0x10;
        int chain_no = 0x10 - ivar5;
        cXyz* chain_pos = &mChainPos[chain_no];
        csXyz* chain_angle = &mChainAngle[chain_no];
        s16* chain_rotation = &mChainRotation[chain_no];
        chain_pos->set(
            mRoofPos.x,
            field_0x7a8 + (mRoofPos.y - (17.5f - (ivar5 * 17.5f - fvar2))),
            mRoofPos.z
        );
        chain_angle->x = 0x4000;
        *chain_rotation = 0;
        chain_pos = mChainPos + 1 + chain_no;
        chain_angle++;
        cXyz* chain_speed = mChainSpeed + 1 + chain_no;
        chain_rotation++;
        mDoMtx_stack_c::YrotS(-shape_angle.y);
        f32 prob = 0.2f;
        cXyz local_90;
        if (!mEnd && cM_rnd() < prob) {
            f32 ang = cM_rnd() * 6.283185f;
            local_90.set(cM_fsin(ang), 0.0f, cM_fcos(ang));
        } else {
            local_90 = cXyz::Zero;
        }
        for (int i = chain_no + 1; i < 0x10; i++, chain_pos++, chain_angle++, chain_speed++, chain_rotation++) {
            prev_pos = *chain_pos;
            vec1 = *chain_pos - chain_pos[-1];
            if (chain_speed->abs2XZ() < 0.04f && cM_rnd() < prob) {
                vec1 += local_90;
                prob *= 0.5f;
            }
            vec1.y += gravity;
            vec1 += *chain_speed;
            chain_angle->z += getChainAngleZ(chain_speed, abs((s16)(chain_angle->z - chain_angle[-1].z)));
            vec1.normalizeZP();
            *chain_pos = chain_pos[-1] + vec1 * 17.5f;
            *chain_speed = (*chain_pos - prev_pos) * 0.75f;
            mDoMtx_stack_c::multVec(&vec1, &vec1);
            chain_angle->x = cM_atan2s(-vec1.z, -vec1.y) + 0x4000;
            *chain_rotation = cM_atan2s(vec1.x, JMAFastSqrt(vec1.y * vec1.y + vec1.z * vec1.z));
        }
        current.pos = mChainPos[0xf];
        shape_angle.z += getChainAngleZ(&speed, abs((s16)(shape_angle.z - mChainAngle[0xf].z)));
        prev_pos = mTopPos;
        vec1 = mTopPos - current.pos;
        vec1.y += gravity;
        vec1 += speed;
        vec1.normalizeZP();
        mTopPos = current.pos + vec1 * 53.75f;
        speed = (mTopPos - prev_pos) * 0.75f;
        mDoMtx_stack_c::multVec(&vec1, &vec1);
        shape_angle.x = cM_atan2s(-vec1.z, -vec1.y) + 0x4000;
        mHandleRotation = cM_atan2s(vec1.x, JMAFastSqrt(vec1.y * vec1.y + vec1.z * vec1.z));
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWchain_c::setChainPos() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain/setChainPos__13daObjWchain_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80D319D4-80D319D8 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4252 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4252 = -1.0f;
COMPILER_STRIP_GATE(0x80D319D4, &lit_4252);
#pragma pop

/* 80D319D8-80D319DC 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4253 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4253 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D319D8, &lit_4253);
#pragma pop

/* 80D319DC-80D319E0 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4254 = 15.0f;
COMPILER_STRIP_GATE(0x80D319DC, &lit_4254);
#pragma pop

/* 80D310AC-80D313F8 00122C 034C+00 1/1 0/0 0/0 .text            execute__13daObjWchain_cFv */
#ifdef NONMATCHING
// matches with literals
int daObjWchain_c::execute() {
    if (!mRidePrev && mRide) {
        fopAcM_seStartCurrent(this, Z2SE_OBJ_GNAW_CHAIN_SW, 0);
    } else if (mRidePrev && !mRide) {
        fopAcM_seStartCurrent(this, Z2SE_OBJ_GNAW_CHAIN_SW, 0);
    }

    if (!mRide) {
        mDown = false;
    }

    if (fopAcM_rc_c::roofCheck(&home.pos)) {
        mRealRoofY = fopAcM_rc_c::getRoofY();
        if (mRoofPos.y > mRealRoofY) {
            mRoofPos.y = mRealRoofY;
            mInitOutLength = mRoofPos.y - home.pos.y;
        }
        mRealRoofY += 250.0f;
    }

    setChainPos();
    
    if (daPy_py_c::i_checkNowWolf() && !mRide && mPullLength < 0.1f) {
        attention_info.flags |= 1;
    } else {
        attention_info.flags &= ~1;
    }
    attention_info.position = current.pos;
    attention_info.position.y += 150.0f;
    
    setMatrix();
    
    if (mNowSwitch) {
        fopAcM_seStartCurrent(this, Z2SE_OBJ_STOP_CHAIN_SW, 0);
        mNowSwitch = false;
        if (mRepeatable) {
            mReset = true;
            if (fopAcM_isSwitch(this, mSw)) {
                fopAcM_offSwitch(this, mSw);
            } else {
                fopAcM_onSwitch(this, mSw);
            }
        } else {
            fopAcM_onSwitch(this, mSw);
        }
        field_0x77e = 20;
    } else if (mRide && !mDown) {
        fopAcM_seStartCurrentLevel(this, Z2SE_OBJ_PULLDOWN_CHAIN_SW, 0);
    }

    mRidePrev = mRide;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWchain_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain/execute__13daObjWchain_cFv.s"
}
#pragma pop
#endif

/* 80D313F8-80D31418 001578 0020+00 1/0 0/0 0/0 .text daObjWchain_Execute__FP13daObjWchain_c */
static int daObjWchain_Execute(daObjWchain_c* i_this) {
    return i_this->execute();
}

/* ############################################################################################## */
/* 80D319E0-80D319E4 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4364 = -8.75f;
COMPILER_STRIP_GATE(0x80D319E0, &lit_4364);
#pragma pop

/* 80D31418-80D31810 001598 03F8+00 1/0 0/0 0/0 .text            draw__19daObjWchain_shape_cFv */
#ifdef NONMATCHING
// matches with literals
void daObjWchain_shape_c::draw() {
    daObjWchain_c* chain = (daObjWchain_c*)getUserArea();
    cXyz* pos = chain->getChainPos();
    csXyz* angle = chain->getChainAngle();
    s16* rotation = chain->getChainAngleZ();
    J3DModelData* model_data = chain->getChainModelData();
    J3DMaterial* material = model_data->getMaterialNodePointer(0);
    dKy_tevstr_c& tevstr = chain->tevStr;
    j3dSys.setVtxPos(model_data->getVtxPosArray());
    j3dSys.setVtxNrm(model_data->getVtxNrmArray());
    j3dSys.setVtxCol(model_data->getVtxColorArray(0));
    J3DShape::resetVcdVatCache();
    material->loadSharedDL();
    material->getShape()->loadPreDrawSetting();
    GXColor amb_color;
    amb_color.r = tevstr.mColorC0.r;
    amb_color.g = tevstr.mColorC0.g;
    amb_color.b = tevstr.mColorC0.b;
    amb_color.a = tevstr.mColorC0.a;
    GXSetChanAmbColor(GX_COLOR0A0, amb_color);
    GXSetChanMatColor(GX_COLOR0A0, g_whiteColor);
    dKy_setLight_again();
    dKy_GxFog_tevstr_set(&tevstr);
    GXLoadLightObjImm(&tevstr.mLightObj.mLightObj, GX_LIGHT0);
    for (int i = 0; i < 0x10; pos++, angle++, rotation++, i++) {
        mDoMtx_stack_c::copy(j3dSys.getViewMtx());
        mDoMtx_stack_c::transM(*pos);
        mDoMtx_stack_c::ZrotM(*rotation);
        mDoMtx_stack_c::ZXYrotM(angle->x, chain->shape_angle.y, angle->z);
        mDoMtx_stack_c::transM(0.0f, 0.0f, -8.75f);
        GXLoadPosMtxImm(mDoMtx_stack_c::get(), 0);
        GXLoadNrmMtxImm(mDoMtx_stack_c::get(), 0);
        material->getShape()->simpleDrawCache();
    }
    cXyz roof_pos(chain->getRoofPos().x, chain->getRealRoofY(), chain->getRoofPos().z);
    cXyz delta = roof_pos - *chain->getChainPos();
    f32 len = delta.abs();
    if (len > 17.5f) {
        cXyz pos = *chain->getChainPos();
        csXyz angle(
            delta.atan2sY_XZ(),
            chain->getChainAngle()->y,
            chain->getChainAngle()->z + 0x3000
        );
        delta *= (17.5f / len);
        for (; len > 17.5f; len -= 17.5f, pos += delta, angle.z += 0x3000) {
            mDoMtx_stack_c::copy(j3dSys.getViewMtx());
            mDoMtx_stack_c::transM(pos);
            mDoMtx_stack_c::ZXYrotM(angle);
            mDoMtx_stack_c::transM(0.0f, 0.0f, 8.75f);
            GXLoadPosMtxImm(mDoMtx_stack_c::get(), 0);
            GXLoadNrmMtxImm(mDoMtx_stack_c::get(), 0);
            material->getShape()->simpleDrawCache();
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWchain_shape_c::draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain/draw__19daObjWchain_shape_cFv.s"
}
#pragma pop
#endif

/* 80D31810-80D318A0 001990 0090+00 1/1 0/0 0/0 .text            draw__13daObjWchain_cFv */
#ifdef NONMATCHING
// matches once daObjWchain_shape_c inheritance is resolved
int daObjWchain_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpHandleModel, &tevStr);
    mDoExt_modelUpdateDL(mpHandleModel);
    g_env_light.setLightTevColorType_MAJI(mpChainModelData, &tevStr);
    dComIfGd_getOpaList()->entryImm(&mShape, 0);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWchain_c::draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain/draw__13daObjWchain_cFv.s"
}
#pragma pop
#endif

/* 80D318A0-80D318C0 001A20 0020+00 1/0 0/0 0/0 .text            daObjWchain_Draw__FP13daObjWchain_c
 */
static int daObjWchain_Draw(daObjWchain_c* i_this) {
    return i_this->draw();
}

/* 80D318C0-80D3191C 001A40 005C+00 1/0 0/0 0/0 .text            __dt__19daObjWchain_shape_cFv */
#ifndef NONMATCHING
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObjWchain_shape_c::~daObjWchain_shape_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain/__dt__19daObjWchain_shape_cFv.s"
}
#pragma pop
#endif
