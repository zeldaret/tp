/**
 * d_a_obj_mirror_table.cpp
 * Mirror Chamber Pedestal & Mirror
 */

#include "rel/d/a/obj/mirror/d_a_obj_mirror_table/d_a_obj_mirror_table.h"
#include "rel/d/a/d_a_mirror/d_a_mirror.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/com/d_com_inf_game.h"
#include "d/a/d_a_player.h"
#include "d/d_procname.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static void createSolidHeap__FP10fopAc_ac_c();
extern "C" void createHeap__18daObjMirrorTable_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void isSwitch__18daObjMirrorTable_cFv();
extern "C" static void rideCallBack1__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void rideCallBack2__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void daObjMirrorTable_Draw__FP18daObjMirrorTable_c();
extern "C" void draw__18daObjMirrorTable_cFv();
extern "C" static void daObjMirrorTable_Execute__FP18daObjMirrorTable_c();
extern "C" void execute__18daObjMirrorTable_cFv();
extern "C" static bool daObjMirrorTable_IsDelete__FP18daObjMirrorTable_c();
extern "C" static void daObjMirrorTable_Delete__FP18daObjMirrorTable_c();
extern "C" void __dt__4dBgWFv();
extern "C" static void daObjMirrorTable_Create__FP10fopAc_ac_c();
extern "C" void create__18daObjMirrorTable_cFv();
extern "C" void create_init__18daObjMirrorTable_cFv();
extern "C" void initBaseMtx__18daObjMirrorTable_cFv();
extern "C" void func_80C9B220(void* _this, s8*);
extern "C" extern char const* const d_a_obj_mirror_table__stringBase0;

//
// External References:
//

extern "C" void push__14mDoMtx_stack_cFv();
extern "C" void pop__14mDoMtx_stack_cFv();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__12dSv_memBit_cFi();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void __dt__4cBgWFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__5csXyzFsss();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__4dBgW[65];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80C9B2A4-80C9B2A8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char const* l_arcName = "MR-Table";

/* 80C9B244-80C9B250 000000 000C+00 3/3 0/0 0/0 .rodata          l_minPos */
static Vec const l_minPos = {1672.183f, 4613.6299f, -21013.793f};

/* 80C9B250-80C9B25C 00000C 000C+00 1/1 0/0 0/0 .rodata          l_maxPos */
static Vec const l_maxPos = {1926.217f, 4613.6299f, -20866.969f};

/* 80C9B25C-80C9B260 000018 0004+00 2/4 0/0 0/0 .rodata          @3850 */
SECTION_RODATA static f32 const lit_3850 = 1.0f;
COMPILER_STRIP_GATE(0x80C9B25C, &lit_3850);

/* 80C9B260-80C9B264 00001C 0004+00 1/3 0/0 0/0 .rodata          @3851 */
SECTION_RODATA static u8 const lit_3851[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C9B260, &lit_3851);

/* 80C9B264-80C9B26C 000020 0008+00 1/3 0/0 0/0 .rodata          @3853 */
SECTION_RODATA static u8 const lit_3853[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C9B264, &lit_3853);

/* 80C99918-80C99938 000078 0020+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjMirrorTable_c*>(i_this)->createHeap();
}

extern void* __vt__12J3DFrameCtrl[3];

/* 80C99938-80C99F34 000098 05FC+00 1/1 0/0 0/0 .text            createHeap__18daObjMirrorTable_cFv
 */
#ifdef NONMATCHING
int daObjMirrorTable_c::createHeap() {
    J3DModelData* table_model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 21);
    mpTableModel = mDoExt_J3DModel__create(table_model_data, 0x80000, 0x11000084);
    if (mpTableModel == NULL) {
        return 0;
    }

    int mirror_res_id = dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354]) ? 13 : 14;
    J3DModelData* mirror_model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, mirror_res_id);
    mpMirrorModel = mDoExt_J3DModel__create(mirror_model_data, 0, 0x11000084);
    if (mpMirrorModel == NULL) {
        return 0;
    }

    J3DAnmTransform* table_up_anm = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 10);
    mpTableUpBckAnm = new mDoExt_bckAnm();
    f32 rate = isSwitch() ? 1.0f : 0.0f;
    if (mpTableUpBckAnm == NULL || !mpTableUpBckAnm->init(table_up_anm, 1, 0, rate, 0, -1, false)) {
        return 0;
    }
    if (isSwitch()) {
        mpTableUpBckAnm->setFrame(table_up_anm->getFrameMax());
    }

    cBgD_t* table_dzb = (cBgD_t*)dComIfG_getObjectRes(l_arcName, 34);
    if (mBgW[0].Set(table_dzb, 1, &mMtx[0])) {
        return 0;
    }

    int mirror_dzb_id = dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354]) ? 31 : 32;
    cBgD_t* mirror_dzb = (cBgD_t*)dComIfG_getObjectRes(l_arcName, mirror_dzb_id);
    if (mBgW[1].Set(mirror_dzb, 1, &mMtx[1])) {
        return 0;
    }

    mpStairModel = NULL;
    mpPanelModel = NULL;
    mpLightModel = NULL;
    mpMSquareModel = NULL;
    mpStairBrkAnm = NULL;
    mpMSquareBrkAnm = NULL;
    mpMSquareBckAnm = NULL;
    mpLightBtkAnm = NULL;

    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354])) {
        J3DModelData* stair_model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 20);
        mpStairModel = mDoExt_J3DModel__create(stair_model_data, 0x80000, 0x11000084);

        J3DAnmTevRegKey* stair_anm = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 25);
        mpStairBrkAnm = new mDoExt_brkAnm();
        if (mpStairBrkAnm == NULL ||
            !mpStairBrkAnm->init(stair_model_data, stair_anm, 1, 0, 1.0f, 0, -1))
        {
            return 0;
        }

        cBgD_t* stair_dzb = (cBgD_t*)dComIfG_getObjectRes(l_arcName, 33);
        if (mBgW[2].Set(stair_dzb, 1, &mMtx[2])) {
            return 0;
        }

        J3DModelData* panel_model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 19);
        mpPanelModel = mDoExt_J3DModel__create(panel_model_data, 0x80000, 0x11000084);

        J3DModelData* light_model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 17);
        mpLightModel = mDoExt_J3DModel__create(light_model_data, 0x80000, 0x11000284);

        J3DAnmTextureSRTKey* light_anm = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 28);
        mpLightBtkAnm = new mDoExt_btkAnm();
        if (mpLightBtkAnm == NULL ||
            !mpLightBtkAnm->init(light_model_data, light_anm, 1, 0, 1.0f, 0, -1))
        {
            return 0;
        }

        J3DModelData* msquare_model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 18);
        mpMSquareModel = mDoExt_J3DModel__create(msquare_model_data, 0x80000, 0x11000084);

        J3DAnmTevRegKey* msquare_tev_anm = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 24);
        mpMSquareBrkAnm = new mDoExt_brkAnm();
        if (mpMSquareBrkAnm == NULL ||
            !mpMSquareBrkAnm->init(msquare_model_data, msquare_tev_anm, 1, 0, 1.0f, 0, -1))
        {
            return 0;
        }

        J3DAnmTransform* msquare_anm = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 9);
        mpMSquareBckAnm = new mDoExt_bckAnm();
        if (mpMSquareBckAnm == NULL ||
            !mpMSquareBckAnm->init(msquare_anm, 1, 0, 1.0f, 0, -1, false))
        {
            return 0;
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjMirrorTable_c::createHeap() {
    nofralloc
#include "asm/rel/d/a/obj/mirror/d_a_obj_mirror_table/d_a_obj_mirror_table/createHeap__18daObjMirrorTable_cFv.s"
}
#pragma pop
#endif

/* 80C99F34-80C99F7C 000694 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/obj/mirror/d_a_obj_mirror_table/d_a_obj_mirror_table/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80C99F7C-80C9A040 0006DC 00C4+00 1/1 0/0 0/0 .text            isSwitch__18daObjMirrorTable_cFv */
bool daObjMirrorTable_c::isSwitch() {
    return fopAcM_isSwitch(this, getSwitchNo())
        || dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[361])
        || dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354])
        ? 1 : 0;
}

void daObjMirrorTable_c::checkOnPanel() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz rel_pos;
    mDoMtx_stack_c::copy(mpPanelModel->getBaseTRMtx());
    mDoMtx_stack_c::inverse();
    if (daPy_py_c::i_checkNowWolf()) {
        for (int i = 0; i < 4; i++) {
            cXyz* pos;
            switch (i) {
            case 0:
                pos = player->getLeftHandPosP();
                break;
            case 1:
                pos = player->getRightHandPosP();
                break;
            case 2:
                pos = player->getLeftFootPosP();
                break;
            case 3:
                pos = player->getRightFootPosP();
                break;
            }
            mDoMtx_stack_c::push();
            mDoMtx_stack_c::multVec(pos, &rel_pos);
            mDoMtx_stack_c::pop();
            if (rel_pos.x >= l_minPos.x && rel_pos.x <= l_maxPos.x
                && rel_pos.z >= l_minPos.z && rel_pos.z <= l_maxPos.z)
            {
                field_0x875 = 15;
                break;
            }
        }
    } else {
        for (int i = 0; i < 2; i++) {
            cXyz* pos;
            if (i == 0) {
                pos = player->getLeftFootPosP();
            } else {
                pos = player->getRightFootPosP();
            }
            mDoMtx_stack_c::push();
            mDoMtx_stack_c::multVec(pos, &rel_pos);
            mDoMtx_stack_c::pop();
            if (rel_pos.x >= l_minPos.x && rel_pos.x <= l_maxPos.x
                && rel_pos.z >= l_minPos.z && rel_pos.z <= l_maxPos.z)
            {
                field_0x875 = 15;
                break;
            }
        }
    }
}

/* 80C9A040-80C9A260 0007A0 0220+00 1/1 0/0 0/0 .text
 * rideCallBack1__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c             */
static void rideCallBack1(dBgW* i_bgW, fopAc_ac_c* i_this, fopAc_ac_c* i_actor) {
    if (fopAcM_GetName(i_actor) == PROC_ALINK) {
        static_cast<daObjMirrorTable_c*>(i_this)->checkOnPanel();
    }
}

/* 80C9A260-80C9A278 0009C0 0018+00 1/1 0/0 0/0 .text
 * rideCallBack2__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c             */
static void rideCallBack2(dBgW* i_bgW, fopAc_ac_c* i_this, fopAc_ac_c* i_actor) {
    if (fopAcM_GetName(i_actor) == PROC_ALINK) {
        static_cast<daObjMirrorTable_c*>(i_this)->field_0x875 = 15;
    }
}

/* 80C9A278-80C9A298 0009D8 0020+00 1/0 0/0 0/0 .text
 * daObjMirrorTable_Draw__FP18daObjMirrorTable_c                */
static int daObjMirrorTable_Draw(daObjMirrorTable_c* i_this) {
    return i_this->draw();
}

/* 80C9A298-80C9A4B0 0009F8 0218+00 1/1 0/0 0/0 .text            draw__18daObjMirrorTable_cFv */
int daObjMirrorTable_c::draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpTableModel->mModelData, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpMirrorModel->mModelData, &tevStr);
    if (mpStairModel != NULL) {
        g_env_light.setLightTevColorType_MAJI(mpStairModel->mModelData, &tevStr);
    }
    mpTableUpBckAnm->entry(mpTableModel->getModelData());
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpTableModel);
    mDoExt_modelUpdateDL(mpMirrorModel);
    if (mpStairModel != NULL) {
        mpStairBrkAnm->entry(mpStairModel->getModelData());
        mDoExt_modelUpdateDL(mpStairModel);
        mpStairBrkAnm->remove(mpStairModel->getModelData());
    }
    if (mpPanelModel != NULL) {
        mDoExt_modelUpdateDL(mpPanelModel);
    }
    if (field_0x874) {
        if (mpLightModel != NULL) {
            mpLightBtkAnm->entry(mpLightModel->getModelData());
            mDoExt_modelUpdateDL(mpLightModel);
            mpLightBtkAnm->remove(mpLightModel->getModelData());
        }
        if (mpMSquareModel != NULL) {
            mpMSquareBckAnm->entry(mpMSquareModel->getModelData());
            mpMSquareBrkAnm->entry(mpMSquareModel->getModelData());
            mDoExt_modelUpdateDL(mpMSquareModel);
            mpMSquareBckAnm->remove(mpMSquareModel->getModelData());
            mpMSquareBrkAnm->remove(mpMSquareModel->getModelData());
        }
    }
    dComIfGd_setList();
    mpTableUpBckAnm->remove(mpTableModel->getModelData());
    return 1;
}

void daObjMirrorTable_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mpTableModel->setBaseTRMtx(mDoMtx_stack_c::get());
    if (mpStairModel != NULL) {
        mpStairModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
    if (mpPanelModel != NULL) {
        mpPanelModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
    if (mpLightModel != NULL) {
        mpLightModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
    if (mpMSquareModel != NULL) {
        mpMSquareModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
    if (mBgW[0].ChkUsed()) {
        MTXCopy(mDoMtx_stack_c::get(), mMtx[0]);
        mBgW[0].Move();
    }
    if (mBgW[2].ChkUsed()) {
        MTXCopy(mDoMtx_stack_c::get(), mMtx[2]);
        mBgW[2].Move();
    }
    mDoMtx_stack_c::copy(mpTableModel->getAnmMtx(1));
    mpMirrorModel->setBaseTRMtx(mDoMtx_stack_c::get());
    if (mBgW[0].ChkUsed()) {
        MTXCopy(mDoMtx_stack_c::get(), mMtx[1]);
        mBgW[1].Move();
    }
    if (mpEmitter1 != NULL) {
        cXyz pos;
        mDoMtx_stack_c::multVecZero(&pos);
        mpEmitter1->setGlobalTranslation(pos.x, pos.y, pos.z);
        if (field_0x874) {
            Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_MIRROR_LIGHT, &pos,
                                          0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        } else {
            Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_MIRROR_LIGHT_S, &pos,
                                          0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
    }
}

/* 80C9A4B0-80C9A4D0 000C10 0020+00 1/0 0/0 0/0 .text
 * daObjMirrorTable_Execute__FP18daObjMirrorTable_c             */
static int daObjMirrorTable_Execute(daObjMirrorTable_c* i_this) {
    return i_this->execute();
}

/* ############################################################################################## */
/* 80C9B26C-80C9B270 000028 0004+00 1/2 0/0 0/0 .rodata          @4350 */
SECTION_RODATA static f32 const lit_4350 = -1.0f;
COMPILER_STRIP_GATE(0x80C9B26C, &lit_4350);

/* 80C9B270-80C9B274 00002C 0004+00 0/1 0/0 0/0 .rodata          @4351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4351 = 1800.0f;
COMPILER_STRIP_GATE(0x80C9B270, &lit_4351);
#pragma pop

/* 80C9B274-80C9B278 000030 0004+00 0/1 0/0 0/0 .rodata          @4352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4352 = 4700.0f;
COMPILER_STRIP_GATE(0x80C9B274, &lit_4352);
#pragma pop

/* 80C9B278-80C9B27C 000034 0004+00 0/1 0/0 0/0 .rodata          @4353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4353 = -21320.0f;
COMPILER_STRIP_GATE(0x80C9B278, &lit_4353);
#pragma pop

/* 80C9B27C-80C9B280 000038 0004+00 0/1 0/0 0/0 .rodata          @4354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4354 = 255.0f;
COMPILER_STRIP_GATE(0x80C9B27C, &lit_4354);
#pragma pop

/* 80C9A4D0-80C9A9D4 000C30 0504+00 1/1 0/0 0/0 .text            execute__18daObjMirrorTable_cFv */
#ifdef NONMATCHING
// isStop regalloc
int daObjMirrorTable_c::execute() {
    mpTableUpBckAnm->play();
    if (!mpTableUpBckAnm->isStop()) {
        cXyz pos;
        mDoMtx_stack_c::copy(mpTableModel->getAnmMtx(0));
        mDoMtx_stack_c::multVecZero(&pos);
        Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_MR_TBLE, &pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    }

    if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354])) {
        if (!mBgW[0].ChkUsed() && mpTableUpBckAnm->getPlaySpeed() > 0.0f) {
            dComIfG_Bgsp().Regist(&mBgW[0], this);
            dComIfG_Bgsp().Regist(&mBgW[1], this);
        }
    } else {
        dComIfGs_onSaveSwitch(0x79);

        cXyz pos(1800.0f, 4700.0f, -21320.0f);
        if (field_0x875 > 0) {
            mpStairBrkAnm->setPlaySpeed(1.0f);
            if (!mBgW[2].ChkUsed()) {
                dComIfG_Bgsp().Regist(&mBgW[2], this);
                Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_MIRROR_STAIR_ON, &pos,
                                              0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            }
        } else {
            mpStairBrkAnm->setPlaySpeed(-1.0f);
            if (mBgW[2].ChkUsed()) {
                dComIfG_Bgsp().Release(&mBgW[2]);
                Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_MIRROR_STAIR_OFF, &pos,
                                              0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            }
        }

        u8 alpha = (mpStairBrkAnm->getFrame() * 255.0f) / mpStairBrkAnm->getEndFrame();
        mpEmitter2->setGlobalAlpha(alpha);

        mpStairBrkAnm->play();
        if (field_0x874) {
            mpMSquareBrkAnm->play();
            mpMSquareBckAnm->play();
            mpLightBtkAnm->play();
        }

        cLib_calcTimer(&field_0x875);
    }

    setBaseMtx();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjMirrorTable_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/mirror/d_a_obj_mirror_table/d_a_obj_mirror_table/execute__18daObjMirrorTable_cFv.s"
}
#pragma pop
#endif

/* 80C9A9D4-80C9A9DC 001134 0008+00 1/0 0/0 0/0 .text
 * daObjMirrorTable_IsDelete__FP18daObjMirrorTable_c            */
static int daObjMirrorTable_IsDelete(daObjMirrorTable_c* i_this) {
    return 1;
}

daObjMirrorTable_c::~daObjMirrorTable_c() {
    if (mBgW[0].ChkUsed()) {
        dComIfG_Bgsp().Release(&mBgW[0]);
    }
    if (mBgW[1].ChkUsed()) {
        dComIfG_Bgsp().Release(&mBgW[1]);
    }
    if (mBgW[2].ChkUsed()) {
        dComIfG_Bgsp().Release(&mBgW[2]);
    }
    dComIfG_resDelete(&mPhaseReq, l_arcName);
}

/* 80C9A9DC-80C9AAB0 00113C 00D4+00 1/0 0/0 0/0 .text
 * daObjMirrorTable_Delete__FP18daObjMirrorTable_c              */
static int daObjMirrorTable_Delete(daObjMirrorTable_c* i_this) {
    i_this->~daObjMirrorTable_c();
    return 1;
}

/* 80C9AB10-80C9AB30 001270 0020+00 1/0 0/0 0/0 .text daObjMirrorTable_Create__FP10fopAc_ac_c */
static cPhs__Step daObjMirrorTable_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjMirrorTable_c*>(i_this)->create();
}

/* 80C9AB30-80C9ABFC 001290 00CC+00 1/1 0/0 0/0 .text            create__18daObjMirrorTable_cFv */
cPhs__Step daObjMirrorTable_c::create() {
    fopAcM_SetupActor(this, daObjMirrorTable_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (step == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0xdb50)) {
            return cPhs_ERROR_e;
        }
        create_init();
    }
    return step;
}

/* ############################################################################################## */
/* 80C9B280-80C9B284 00003C 0004+00 0/1 0/0 0/0 .rodata          @4509 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4509 = 1760.0f;
COMPILER_STRIP_GATE(0x80C9B280, &lit_4509);
#pragma pop

/* 80C9B284-80C9B288 000040 0004+00 0/1 0/0 0/0 .rodata          @4510 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4510 = 0x45935266;
COMPILER_STRIP_GATE(0x80C9B284, &lit_4510);
#pragma pop

/* 80C9B288-80C9B28C 000044 0004+00 0/1 0/0 0/0 .rodata          @4511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4511 = -20624.0f;
COMPILER_STRIP_GATE(0x80C9B288, &lit_4511);
#pragma pop

/* 80C9B28C-80C9B290 000048 0004+00 0/1 0/0 0/0 .rodata          @4512 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4512 = 27.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C9B28C, &lit_4512);
#pragma pop

/* 80C9B290-80C9B290 00004C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C9B299 = "F_SP125";
#pragma pop

/* 80C9ABFC-80C9AFD0 00135C 03D4+00 1/1 0/0 0/0 .text            create_init__18daObjMirrorTable_cFv
 */
#ifdef NONMATCHING
// matches with literals once isSwitch is properly inlined
void daObjMirrorTable_c::create_init() {
    bool mirror_complete_flag = dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354]);
    mpTableUpBckAnm->setPlaySpeed(0.0f);

    mBgW[0].SetCrrFunc(NULL);
    mBgW[0].SetRoomId(fopAcM_GetRoomNo(this));
    if (isSwitch()) {
        dComIfG_Bgsp().Regist(&mBgW[0], this);
    }
    mBgW[1].SetCrrFunc(NULL);
    mBgW[1].SetRoomId(fopAcM_GetRoomNo(this));
    if (isSwitch()) {
        dComIfG_Bgsp().Regist(&mBgW[1], this);
    }

    if (mirror_complete_flag) {
        mBgW[2].SetCrrFunc(NULL);
        mBgW[2].SetRoomId(fopAcM_GetRoomNo(this));
        mBgW[2].SetRideCallback(rideCallBack2);
        mBgW[0].SetRideCallback(rideCallBack1);
        if (!strcmp(dComIfGp_getStartStageName(), "F_SP125")
                        && dComIfGp_getStartStagePoint() == 4) {
            field_0x875 = 100;
            mpStairBrkAnm->setFrame(mpStairBrkAnm->getEndFrame());
            dComIfG_Bgsp().Regist(&mBgW[2], this);
        } else {
            field_0x875 = 0;
        }
    }

    initBaseMtx();

    if (mirror_complete_flag) {
        cXyz pos(0.0f, 0.0f, 0.0f);
        csXyz angle(0, 0, 0);
        mpEmitter1 = dComIfGp_particle_set(0x8aa1, &pos, &angle, NULL);
        mpEmitter2 = dComIfGp_particle_set(0x8aa2, &current.pos, &shape_angle, NULL);
    }

    field_0x874 = false;

    if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354])
        && dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[361]))
    {
        cXyz pos(1760.0f, 4714.3f, -20624.0f);
        csXyz angle(0, 0x8000, 0);
        cXyz scale(1.35f, 1.35f, 1.0f);
        fopAcM_create(PROC_MIRROR, daMirror_c::getMirrorRoomPrm(),
                      &pos, current.roomNo, &angle, &scale, 0xff);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMirrorTable_c::create_init() {
    nofralloc
#include "asm/rel/d/a/obj/mirror/d_a_obj_mirror_table/d_a_obj_mirror_table/create_init__18daObjMirrorTable_cFv.s"
}
#pragma pop
#endif

/* 80C9AFD0-80C9B220 001730 0250+00 1/1 0/0 0/0 .text            initBaseMtx__18daObjMirrorTable_cFv
 */
#ifdef NONMATCHING
// matches with literals
void daObjMirrorTable_c::initBaseMtx() {
    fopAcM_SetMtx(this, mpTableModel->getBaseTRMtx());
    mpTableUpBckAnm->play();
    setBaseMtx();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMirrorTable_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/mirror/d_a_obj_mirror_table/d_a_obj_mirror_table/initBaseMtx__18daObjMirrorTable_cFv.s"
}
#pragma pop
#endif

/* 80C9B220-80C9B23C 001980 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Sc>__FPSc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80C9B220(void* _this, s8* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/mirror/d_a_obj_mirror_table/d_a_obj_mirror_table/func_80C9B220.s"
}
#pragma pop

/* 80C9B2A8-80C9B2C8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjMirrorTable_Method */
static actor_method_class l_daObjMirrorTable_Method = {
    (process_method_func)daObjMirrorTable_Create,
    (process_method_func)daObjMirrorTable_Delete,
    (process_method_func)daObjMirrorTable_Execute,
    (process_method_func)daObjMirrorTable_IsDelete,
    (process_method_func)daObjMirrorTable_Draw,
};

/* 80C9B2C8-80C9B2F8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MirrorTable */
extern actor_process_profile_definition g_profile_Obj_MirrorTable = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_MirrorTable,
    &g_fpcLf_Method.mBase,
    sizeof(daObjMirrorTable_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x2A8,
    &l_daObjMirrorTable_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

/* 80C9B2F8-80C9B304 000054 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};
