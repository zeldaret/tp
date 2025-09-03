/**
 * d_a_obj_mirror_table.cpp
 * Mirror Chamber Chains
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_mirror_chain.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void draw__22dScissorBegin_packet_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void draw__20dScissorEnd_packet_cFv();
extern "C" static void createSolidHeap__FP10fopAc_ac_c();
extern "C" void createHeap__18daObjMirrorChain_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void initBaseMtx__18daObjMirrorChain_cFv();
extern "C" void setBaseMtx__18daObjMirrorChain_cFv();
extern "C" static void daObjMirrorChain_Draw__FP18daObjMirrorChain_c();
extern "C" void draw__18daObjMirrorChain_cFv();
extern "C" static void daObjMirrorChain_Execute__FP18daObjMirrorChain_c();
extern "C" void execute__18daObjMirrorChain_cFv();
extern "C" static bool daObjMirrorChain_IsDelete__FP18daObjMirrorChain_c();
extern "C" static void daObjMirrorChain_Delete__FP18daObjMirrorChain_c();
extern "C" void __dt__4dBgWFv();
extern "C" static void daObjMirrorChain_Create__FP10fopAc_ac_c();
extern "C" void __dt__20dScissorEnd_packet_cFv();
extern "C" void __dt__22dScissorBegin_packet_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" extern char const* const d_a_obj_mirror_chain__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
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
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void outprod__4cXyzCFRC3Vec();
extern "C" void isZero__4cXyzCFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" bool entry__9J3DPacketFP13J3DDrawBuffer();
extern "C" void entryImm__13J3DDrawBufferFP9J3DPacketUs();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_22();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__4dBgW[65];
extern "C" extern void* __vt__9J3DPacket[5];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80C98080-80C98084 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char const* l_arcName = "MR-Chain";

/* ############################################################################################## */
/* 80C98028-80C9802C 000000 0004+00 2/2 0/0 0/0 .rodata          @3915 */
SECTION_RODATA static u32 const lit_3915 = 0x3C8EFA35;
COMPILER_STRIP_GATE(0x80C98028, &lit_3915);

/* 80C9802C-80C98030 000004 0004+00 0/1 0/0 0/0 .rodata          @3916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3916 = 0.5f;
COMPILER_STRIP_GATE(0x80C9802C, &lit_3916);
#pragma pop

/* 80C98030-80C98034 000008 0004+00 2/4 0/0 0/0 .rodata          @3917 */
SECTION_RODATA static u8 const lit_3917[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C98030, &lit_3917);

/* 80C98034-80C98038 00000C 0004+00 0/1 0/0 0/0 .rodata          @3918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3918 = 2.0f;
COMPILER_STRIP_GATE(0x80C98034, &lit_3918);
#pragma pop

/* 80C98038-80C9803C 000010 0004+00 0/1 0/0 0/0 .rodata          @3919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3919 = 304.0f;
COMPILER_STRIP_GATE(0x80C98038, &lit_3919);
#pragma pop

/* 80C9803C-80C98040 000014 0004+00 0/1 0/0 0/0 .rodata          @3920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3920 = 608.0f;
COMPILER_STRIP_GATE(0x80C9803C, &lit_3920);
#pragma pop

/* 80C98040-80C98044 000018 0004+00 0/1 0/0 0/0 .rodata          @3921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3921 = 224.0f;
COMPILER_STRIP_GATE(0x80C98040, &lit_3921);
#pragma pop

/* 80C98044-80C98048 00001C 0004+00 0/1 0/0 0/0 .rodata          @3922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3922 = 448.0f;
COMPILER_STRIP_GATE(0x80C98044, &lit_3922);
#pragma pop

/* 80C98048-80C98050 000020 0004+04 1/3 0/0 0/0 .rodata          @3923 */
SECTION_RODATA static f32 const lit_3923[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C98048, &lit_3923);

/* 80C98050-80C98058 000028 0008+00 0/1 0/0 0/0 .rodata          @3925 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3925[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C98050, &lit_3925);
#pragma pop

/* 80C98138-80C98148 000000 0010+00 2/2 0/0 0/0 .bss             l_scissor */
static u32 l_scissor[4];

/* 80C96698-80C96DAC 000078 0714+00 1/0 0/0 0/0 .text            draw__22dScissorBegin_packet_cFv */
void dScissorBegin_packet_c::draw() {
    // NONMATCHING
}

// Temporary fake function to make the cXyz destructor appear here
// delete once dScissorBegin_packet_c::draw() is matched
static void fake() {
    cXyz vec;
    vec.normalize();
}

/* 80C96DE8-80C96E20 0007C8 0038+00 1/0 0/0 0/0 .text            draw__20dScissorEnd_packet_cFv */
void dScissorEnd_packet_c::draw() {
    GXSetScissor(l_scissor[0], l_scissor[1], l_scissor[2], l_scissor[3]);
}

/* 80C96E20-80C96E40 000800 0020+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjMirrorChain_c*>(i_this)->createHeap();
}

/* ############################################################################################## */
/* 80C98058-80C98060 000030 0008+00 1/1 0/0 0/0 .rodata          @4164 */
SECTION_RODATA static u8 const lit_4164[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C98058, &lit_4164);

extern void* __vt__12J3DFrameCtrl[3];

/* 80C96E40-80C975A4 000820 0764+00 1/1 0/0 0/0 .text            createHeap__18daObjMirrorChain_cFv
 */
int daObjMirrorChain_c::createHeap() {
    J3DModelData* model_data;
        /* dSv_event_flag_c::F_0354 - Cutscene - [cutscene] Mirror complete */
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354])) {
        model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 16);
        mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000284);

        J3DAnmTevRegKey* brk_anm = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 21);
        mpBrkAnm = new mDoExt_brkAnm();
        if (mpBrkAnm == NULL || !mpBrkAnm->init(model_data, brk_anm, 1, 2, 1.0f, 0, -1)) {
            return 0;
        }
    } else {
        model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 15);
        mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
        mpBrkAnm = NULL;
    }
    if (mpModel == NULL) {
        return 0;
    }

        /* dSv_event_flag_c::F_0354 - Cutscene - [cutscene] Mirror complete */
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354])) {
        J3DModelData* portal_model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 12);
        mpPortalModel = mDoExt_J3DModel__create(portal_model_data, 0, 0x11000084);
        if (mpPortalModel == NULL) {
            return 0;
        }

        J3DAnmTransform* bck_anm = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 9);
        mpBckAnm = new mDoExt_bckAnm();
        if (mpBckAnm == NULL
            || !mpBckAnm->init(bck_anm, 1, 2, 1.0f, 0, -1, false))
        {
            return 0;
        }
        mpBckAnm->setEndFrame(300);

        J3DAnmTevRegKey* portal_brk_anm = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 20);
        mpPortalBrkAnm = new mDoExt_brkAnm();
        if (mpPortalBrkAnm == NULL
            || !mpPortalBrkAnm->init(portal_model_data, portal_brk_anm, 1, 2, 1.0f, 0, -1))
        {
            return 0;
        }
        mpPortalBrkAnm->setFrame(portal_brk_anm->getFrameMax());

        cBgD_t* dzb = (cBgD_t*)dComIfG_getObjectRes(l_arcName, 26);
        if (mBgW[1].Set(dzb, 1, &mMtx)) {
            return 0;
        }
        mBgW[0] = mBgW[1];
    } else {
        J3DAnmTransform* bck_anm = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 8);
        mpBckAnm = new mDoExt_bckAnm();
        bool b = fopAcM_isSwitch(this, getSwitchNo())
                /* dSv_event_flag_c::F_0361 - Arbiter's Grounds - Spun the spinning pillars */
             || dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[361]);
        f32 rate = b ? 1.0f : 0.0f;
        if (mpBckAnm == NULL
            || !mpBckAnm->init(bck_anm, 1, 0, rate, 0, -1, false))
        {
            return 0;
        }
        if (fopAcM_isSwitch(this, getSwitchNo())
                /* dSv_event_flag_c::F_0361 - Arbiter's Grounds - Spun the spinning pillars */
             || dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[361]))
        {
            mpBckAnm->setFrame(bck_anm->getFrameMax());
        }

        J3DAnmTevRegKey* brk_anm = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 19);
        mpBrkAnm = new mDoExt_brkAnm();
        if (mpBrkAnm == NULL
            || !mpBrkAnm->init(model_data, brk_anm, 1, 0, 1.0f, 0, -1))
        {
            return 0;
        }
        mpBrkAnm->setPlaySpeed(0.0f);

        cBgD_t* dzb0 = (cBgD_t*)dComIfG_getObjectRes(l_arcName, 24);
        if (mBgW[0].Set(dzb0, 1, &mMtx)) {
            return 0;
        }

        cBgD_t* dzb1 = (cBgD_t*)dComIfG_getObjectRes(l_arcName, 25);
        if (mBgW[1].Set(dzb1, 1, &mMtx)) {
            return 0;
        }

        mpPortalModel = NULL;
    }

    return 1;
}


/* 80C975A4-80C975EC 000F84 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80C975EC-80C97618 000FCC 002C+00 1/1 0/0 0/0 .text            initBaseMtx__18daObjMirrorChain_cFv
 */
void daObjMirrorChain_c::initBaseMtx() {
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    setBaseMtx();
}

/* 80C97618-80C97698 000FF8 0080+00 1/1 0/0 0/0 .text            setBaseMtx__18daObjMirrorChain_cFv
 */
void daObjMirrorChain_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    if (mpPortalModel != NULL) {
        mpPortalModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
    MTXCopy(mDoMtx_stack_c::get(), mMtx);
    mpActiveBgW->Move();
}

/* 80C97698-80C976B8 001078 0020+00 1/0 0/0 0/0 .text
 * daObjMirrorChain_Draw__FP18daObjMirrorChain_c                */
static int daObjMirrorChain_Draw(daObjMirrorChain_c* i_this) {
    return i_this->draw();
}

/* 80C976B8-80C97968 001098 02B0+00 1/1 0/0 0/0 .text            draw__18daObjMirrorChain_cFv */
int daObjMirrorChain_c::draw() {
    static f32 const SCISSOR_CENTER_X = 1799.2f;
    static f32 const SCISSOR_CENTER_Y = 4779.58f;
    static f32 const SCISSOR_CENTER_Z = -23024.53f;
    static f32 const SCISSOR_SIZE = 984.0f;
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
        /* dSv_event_flag_c::F_0354 - Cutscene - [cutscene] Mirror complete */
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354])) {
        g_env_light.setLightTevColorType_MAJI(mpPortalModel, &tevStr);
        if (mpBckAnm != NULL) {
            mpBckAnm->entry(mpPortalModel->getModelData());
        }
        if (mpBrkAnm != NULL) {
            mpBrkAnm->entry(mpModel->getModelData());
        }
        if (mpPortalBrkAnm != NULL) {
            mpPortalBrkAnm->entry(mpPortalModel->getModelData());
        }
        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mpModel);
        static Vec l_offsetScissor[4] = {
            {SCISSOR_CENTER_X - SCISSOR_SIZE / 2, SCISSOR_CENTER_Y + SCISSOR_SIZE, SCISSOR_CENTER_Z},
            {SCISSOR_CENTER_X + SCISSOR_SIZE / 2, SCISSOR_CENTER_Y + SCISSOR_SIZE, SCISSOR_CENTER_Z},
            {SCISSOR_CENTER_X + SCISSOR_SIZE / 2, SCISSOR_CENTER_Y, SCISSOR_CENTER_Z},
            {SCISSOR_CENTER_X - SCISSOR_SIZE / 2, SCISSOR_CENTER_Y, SCISSOR_CENTER_Z},
        };
        cXyz* quad = mScissorBegin.getQuad();
        PSMTXMultVecArray(mpModel->getBaseTRMtx(), l_offsetScissor, quad, 4);
        j3dSys.setDrawBuffer(dComIfGd_getXluListBG(), 0);
        mScissorEnd.entryPacket();
        mDoExt_modelUpdateDL(mpPortalModel);
        mScissorBegin.entryPacket();
        dComIfGd_setList();
        if (mpBckAnm != NULL) {
            mpBckAnm->remove(mpPortalModel->getModelData());
        }
        if (mpBrkAnm != NULL) {
            mpBrkAnm->remove(mpModel->getModelData());
        }
        if (mpPortalBrkAnm != NULL) {
            mpPortalBrkAnm->remove(mpPortalModel->getModelData());
        }
    } else {
        if (mpBckAnm != NULL) {
            mpBckAnm->entry(mpModel->getModelData());
        }
        if (mpBrkAnm != NULL) {
            mpBrkAnm->entry(mpModel->getModelData());
        }
        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mpModel);
        dComIfGd_setList();
        if (mpBckAnm != NULL) {
            mpBckAnm->remove(mpModel->getModelData());
        }
        if (mpBrkAnm != NULL) {
            mpBrkAnm->remove(mpModel->getModelData());
        }
    }
    return 1;
}

/* 80C97968-80C97988 001348 0020+00 1/0 0/0 0/0 .text
 * daObjMirrorChain_Execute__FP18daObjMirrorChain_c             */
static int daObjMirrorChain_Execute(daObjMirrorChain_c* i_this) {
    return i_this->execute();
}

// this should come automatically from the static data in draw() but it does not

/* ############################################################################################## */
/* 80C98060-80C98064 000038 0004+00 0/0 0/0 0/0 .rodata
 * SCISSOR_CENTER_X$localstatic3$draw__18daObjMirrorChain_cFv   */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const data_80C98060[4] = {
    0x44,
    0xE0,
    0xE6,
    0x66,
};
COMPILER_STRIP_GATE(0x80C98060, &data_80C98060);
#pragma pop

/* 80C98064-80C98068 00003C 0004+00 0/0 0/0 0/0 .rodata
 * SCISSOR_CENTER_Y$localstatic4$draw__18daObjMirrorChain_cFv   */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const data_80C98064[4] = {
    0x45,
    0x95,
    0x5C,
    0xA4,
};
COMPILER_STRIP_GATE(0x80C98064, &data_80C98064);
#pragma pop

/* 80C98068-80C9806C 000040 0004+00 0/0 0/0 0/0 .rodata
 * SCISSOR_CENTER_Z$localstatic5$draw__18daObjMirrorChain_cFv   */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const data_80C98068[4] = {
    0xC6,
    0xB3,
    0xE1,
    0x0F,
};
COMPILER_STRIP_GATE(0x80C98068, &data_80C98068);
#pragma pop

/* 80C9806C-80C98070 000044 0004+00 0/0 0/0 0/0 .rodata
 * SCISSOR_SIZE$localstatic6$draw__18daObjMirrorChain_cFv       */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const data_80C9806C[4] = {
    0x44,
    0x76,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C9806C, &data_80C9806C);
#pragma pop

/* 80C98070-80C98074 000048 0004+00 0/1 0/0 0/0 .rodata          @4494 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4494 = -1.0f;
COMPILER_STRIP_GATE(0x80C98070, &lit_4494);
#pragma pop

/* 80C97988-80C97BA4 001368 021C+00 1/1 0/0 0/0 .text            execute__18daObjMirrorChain_cFv */
int daObjMirrorChain_c::execute() {
    if (mpBckAnm != NULL) {
        mpBckAnm->play();
    }
    if (mpBrkAnm != NULL) {
        mpBrkAnm->play();
    }
    if (mpPortalBrkAnm != NULL) {
        mpPortalBrkAnm->play();
    }

         /* dSv_event_flag_c::F_0354 - Cutscene - [cutscene] Mirror complete */
    if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354])
                                && mpBckAnm != NULL && mpBckAnm->getPlaySpeed() > 0.0f) {
        if (mpActiveBgW == &mBgW[0]) {
            dComIfG_Bgsp().Release(&mBgW[0]);
            dComIfG_Bgsp().Regist(&mBgW[1], this);
            mpActiveBgW = &mBgW[1];
            mpActiveBgW->Move();
        }

        if (mpEmitter == NULL) {
            mpEmitter = dComIfGp_particle_set(0x8acc, &current.pos, &shape_angle, NULL);
            cXyz pos;
            mDoMtx_stack_c::copy(mpModel->getAnmMtx(1));
            mDoMtx_stack_c::multVecZero(&pos);
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_MR_CHIN, &pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        } else {
            cXyz pos;
            mDoMtx_stack_c::copy(mpModel->getAnmMtx(26));
            mDoMtx_stack_c::multVecZero(&pos);
            mpEmitter->setGlobalTranslation(pos.x, pos.y, pos.z);
        }
    }

    return 1;
}


/* 80C97BA4-80C97BAC 001584 0008+00 1/0 0/0 0/0 .text
 * daObjMirrorChain_IsDelete__FP18daObjMirrorChain_c            */
static int daObjMirrorChain_IsDelete(daObjMirrorChain_c* i_this) {
    return 1;
}

daObjMirrorChain_c::~daObjMirrorChain_c() {
    if (mBgW[0].ChkUsed()) {
        dComIfG_Bgsp().Release(&mBgW[0]);
    }
    if (mBgW[1].ChkUsed()) {
        dComIfG_Bgsp().Release(&mBgW[1]);
    }
    dComIfG_resDelete(&mPhaseReq, l_arcName);
}

/* 80C97BAC-80C97CC4 00158C 0118+00 1/0 0/0 0/0 .text
 * daObjMirrorChain_Delete__FP18daObjMirrorChain_c              */
static int daObjMirrorChain_Delete(daObjMirrorChain_c* i_this) {
    fopAcM_GetID(i_this);
    i_this->~daObjMirrorChain_c();
    return 1;
}

void daObjMirrorChain_c::create_init() {
    if (mpBckAnm != NULL
            /* dSv_event_flag_c::F_0354 - Cutscene - [cutscene] Mirror complete */
        && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354])) {
        mpBckAnm->setPlaySpeed(FLOAT_LABEL(lit_3917));
    }
    mpEmitter = NULL;
    mBgW[0].SetCrrFunc(NULL);
    mBgW[0].SetRoomId(fopAcM_GetRoomNo(this));
    mBgW[1].SetCrrFunc(NULL);
    mBgW[1].SetRoomId(fopAcM_GetRoomNo(this));
    bool b = fopAcM_isSwitch(this, getSwitchNo())
                /* dSv_event_flag_c::F_0361 - Arbiter's Grounds - Spun the spinning pillars */
             || dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[361]);
    mpActiveBgW = b ? &mBgW[1] : &mBgW[0];
    dComIfG_Bgsp().Regist(mpActiveBgW, this);
    initBaseMtx();
}

cPhs__Step daObjMirrorChain_c::create() {
    fopAcM_SetupActor(this, daObjMirrorChain_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (step == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0x71b0)) {
            return cPhs_ERROR_e;
        }
        create_init();
    }
    return step;
}

/* 80C97D24-80C97F3C 001704 0218+00 1/0 0/0 0/0 .text daObjMirrorChain_Create__FP10fopAc_ac_c */
static cPhs__Step daObjMirrorChain_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daObjMirrorChain_c*>(i_this)->create();
}

/* 80C980B4-80C980D4 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjMirrorChain_Method */
static actor_method_class l_daObjMirrorChain_Method = {
    (process_method_func)daObjMirrorChain_Create,
    (process_method_func)daObjMirrorChain_Delete,
    (process_method_func)daObjMirrorChain_Execute,
    (process_method_func)daObjMirrorChain_IsDelete,
    (process_method_func)daObjMirrorChain_Draw,
};

/* 80C980D4-80C98104 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MirrorChain */
extern actor_process_profile_definition g_profile_Obj_MirrorChain = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_MirrorChain,
    &g_fpcLf_Method.base,
    sizeof(daObjMirrorChain_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x2A9,
    &l_daObjMirrorChain_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

/* 80C98104-80C98110 000084 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};
