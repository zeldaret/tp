/**
 * @file d_a_obj_ladder.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_ladder.h"
#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "d/d_bg_s.h"
#include "d/d_bg_w.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_mng.h"

//
// Forward References:
//

extern "C" void CreateHeap__Q211daObjLadder5Act_cFv();
extern "C" void Create__Q211daObjLadder5Act_cFv();
extern "C" void Mthd_Create__Q211daObjLadder5Act_cFv();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" bool Delete__Q211daObjLadder5Act_cFv();
extern "C" void Mthd_Delete__Q211daObjLadder5Act_cFv();
extern "C" void demo_end_reset__Q211daObjLadder5Act_cFv();
extern "C" void mode_wait_init__Q211daObjLadder5Act_cFv();
extern "C" void mode_wait__Q211daObjLadder5Act_cFv();
extern "C" void mode_demoreq_init__Q211daObjLadder5Act_cFv();
extern "C" void mode_demoreq__Q211daObjLadder5Act_cFv();
extern "C" void mode_vib_init__Q211daObjLadder5Act_cFv();
extern "C" void mode_vib__Q211daObjLadder5Act_cFv();
extern "C" void mode_drop_init__Q211daObjLadder5Act_cFv();
extern "C" void mode_drop__Q211daObjLadder5Act_cFv();
extern "C" void mode_fell_init__Q211daObjLadder5Act_cFv();
extern "C" void mode_fell__Q211daObjLadder5Act_cFv();
extern "C" void set_mtx__Q211daObjLadder5Act_cFv();
extern "C" void init_mtx__Q211daObjLadder5Act_cFv();
extern "C" void Execute__Q211daObjLadder5Act_cFPPA3_A4_f();
extern "C" void Draw__Q211daObjLadder5Act_cFv();
extern "C" static void func_8058DC5C();
extern "C" static void func_8058DC7C();
extern "C" static void func_8058DC9C();
extern "C" static void func_8058DCBC();
extern "C" static void func_8058DCE8();
extern "C" void func_8058DD14(void* _this, fopAc_ac_c const*, daObjLadder::Act_c::Prm_e,
                              daObjLadder::Act_c::Prm_e);
extern "C" static void func_8058DD30();
extern "C" static void func_8058DD38();
extern "C" static void func_8058DD40();
extern "C" u8 const M_arcname__Q211daObjLadder5Act_c[5 + 3 /* padding */];
extern "C" u8 M_tmp_mtx__Q211daObjLadder5Act_c[48];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void push__14mDoMtx_stack_cFv();
extern "C" void pop__14mDoMtx_stack_cFv();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void posMoveF_stream__5daObjFP10fopAc_ac_cPC4cXyzPC4cXyzff();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getEventData__16dEvent_manager_cFs();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_pol_sound_get__FPC13cBgS_PolyInfo();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

struct Attr {
    /* 0x00 */ f32 field_0x00;
    /* 0x04 */ f32 field_0x04;
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ u8 field_0x10;
    /* 0x11 */ u8 field_0x11;
    /* 0x12 */ u8 field_0x12;
    /* 0x13 */ u8 field_0x13;
    /* 0x14 */ u8 field_0x14;
    /* 0x16 */ s16 field_0x16;
    /* 0x18 */ s16 field_0x18;
    /* 0x1A */ s16 vibrationTimer;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
};

/* ############################################################################################## */
/* 8058DD50-8058DD74 000000 0024+00 5/5 0/0 0/0 .rodata
 * L_attr__Q211daObjLadder28@unnamed@d_a_obj_ladder_cpp@        */
 SECTION_RODATA static Attr const L_attr = {
    -3.0f, 0.005f, 0.0005f,
    0.5f, 0x03, 0x4B, 0x32, 0x2D, 0x28, 0x4E20,
    0x3CC3, 0x0F, 2.0f, 1.0f,
};

inline static const Attr& attr() {
    return L_attr;
}

/* 8058DD74-8058DD7C 000024 0005+03 3/3 0/0 0/0 .rodata          M_arcname__Q211daObjLadder5Act_c */
SECTION_RODATA char const daObjLadder::Act_c::M_arcname[5] = "Mhsg";

struct AttrType {
    /* 0x0 */ s16 field_0x0;
    /* 0x2 */ s16 field_0x2;
    /* 0x4 */ f32 field_0x4;
};

/* 8058DDCC-8058DDFC 000020 0030+00 3/3 0/0 0/0 .data
 * L_attr_type__Q211daObjLadder28@unnamed@d_a_obj_ladder_cpp@   */
SECTION_DATA static AttrType L_attr_type[6] = {
    { 0x08, 0x10, 600.0f},
    { 0x09, 0x11, 900.0f},
    { 0x04, 0x0C, 1200.0f},
    { 0x05, 0x0D, 1500.0f},
    { 0x07, 0x0F, 450.0f},
    { 0x06, 0x0E, 300.0f},
};

static inline const AttrType& attr_type(daObjLadder::Act_c::Type_e type) {
    return L_attr_type[type];
}

/* 8058D158-8058D1D8 000078 0080+00 1/0 0/0 0/0 .text            CreateHeap__Q211daObjLadder5Act_cFv
 */
int daObjLadder::Act_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(M_arcname, attr_type(mType).field_0x0);
    JUT_ASSERT(382, model_data != 0);
    mModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    return mModel != NULL;
}

/* 8058D1D8-8058D378 0000F8 01A0+00 1/0 0/0 0/0 .text            Create__Q211daObjLadder5Act_cFv */
int daObjLadder::Act_c::Create() {
    // NONMATCHING
    fopAcM_SetMtx(this, mModel->getBaseTRMtx());
    init_mtx();
    fopAcM_setCullSizeBox(this, -55.0f, -1.0f, -10.0f, 55.0f, attr_type(mType).field_0x4 + 41.0f,
                          10.0f);
    cXyz gndVec;
    mDoMtx_stack_c::push();
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::transM(0.0f, 10.0f, 5.0f);
    mDoMtx_stack_c::multVecZero(&gndVec);
    mDoMtx_stack_c::pop();
    mGndChk.SetPos(&gndVec);
    mGndChk.SetActorPid(base.id);
    mHeight = dComIfG_Bgsp().GroundCross(&mGndChk);
    mInDemo = false;
    mEventIdx = dComIfGp_getEventManager().getEventIdx(this, prm_get_evId());
    if (prm_get_swSave() != 0xff && fopAcM_isSwitch(this, prm_get_swSave())) {
        current.pos.y = mHeight;
        set_mtx();
        mode_fell_init();
    } else {
        mode_wait_init();
    }
    
    return 1;
}

/* 8058D378-8058D478 000298 0100+00 1/1 0/0 0/0 .text Mthd_Create__Q211daObjLadder5Act_cFv */
int daObjLadder::Act_c::Mthd_Create() {
    fopAcM_SetupActor(this, Act_c);
    int phase_state = dComIfG_resLoad(&mPhase, M_arcname);
    if (phase_state == cPhs_COMPLEATE_e) {
        mType = prm_get_type();
        phase_state = MoveBGCreate(M_arcname, attr_type(mType).field_0x2,
            dBgS_MoveBGProc_Trans, 0xcb0, NULL);
        JUT_ASSERT(486, (phase_state == cPhs_COMPLEATE_e) || (phase_state == cPhs_ERROR_e));
    }
    return phase_state;
}

/* 8058D4F0-8058D4F8 000410 0008+00 1/0 0/0 0/0 .text            Delete__Q211daObjLadder5Act_cFv */
int daObjLadder::Act_c::Delete() {
    return 1;
}

/* 8058D4F8-8058D544 000418 004C+00 1/1 0/0 0/0 .text Mthd_Delete__Q211daObjLadder5Act_cFv */
int daObjLadder::Act_c::Mthd_Delete() {
    int rv = MoveBGDelete();
    dComIfG_resDelete(&mPhase, M_arcname);
    return rv;
}

/* 8058D544-8058D5AC 000464 0068+00 1/1 0/0 0/0 .text demo_end_reset__Q211daObjLadder5Act_cFv */
void daObjLadder::Act_c::demo_end_reset() {
    if (mInDemo && dComIfGp_evmng_endCheck(mEventIdx)) {
        dComIfGp_event_reset();
        mInDemo = false;
    }
}

/* 8058D5AC-8058D5B8 0004CC 000C+00 1/1 0/0 0/0 .text mode_wait_init__Q211daObjLadder5Act_cFv */
void daObjLadder::Act_c::mode_wait_init() {
    mMode = MODE_WAIT;
}

/* 8058D5B8-8058D614 0004D8 005C+00 1/0 0/0 0/0 .text            mode_wait__Q211daObjLadder5Act_cFv
 */
void daObjLadder::Act_c::mode_wait() {
    if (fopAcM_isSwitch(this, prm_get_swSave())) {
        mode_demoreq_init();
    }
}

/* 8058D614-8058D628 000534 0014+00 1/1 0/0 0/0 .text mode_demoreq_init__Q211daObjLadder5Act_cFv
 */
void daObjLadder::Act_c::mode_demoreq_init() {
    mMode = MODE_DEMOREQ;
    mInDemo = false;
}

static inline bool dComIfGp_evmng_existence(s16 eventIdx) {
    return g_dComIfG_gameInfo.play.getEvtManager().getEventData(eventIdx) != NULL;
}

/* 8058D628-8058D6E8 000548 00C0+00 1/0 0/0 0/0 .text mode_demoreq__Q211daObjLadder5Act_cFv */
void daObjLadder::Act_c::mode_demoreq() {
    bool isDemo = false;
    if (dComIfGp_evmng_existence(mEventIdx)) {
        if (eventInfo.checkCommandDemoAccrpt()) {
            isDemo = true;
            mInDemo = true;
        } else {
            fopAcM_orderOtherEventId(this, mEventIdx, prm_get_evId(), 0xffff, 0, 1);
            eventInfo.onCondition(2);
        }
    } else {
        isDemo = true;
    }
    if (isDemo) {
        mode_vib_init();
    }
}

/* 8058D6E8-8058D710 000608 0028+00 1/1 0/0 0/0 .text mode_vib_init__Q211daObjLadder5Act_cFv */
void daObjLadder::Act_c::mode_vib_init() {
    mVibrationTimer = attr().vibrationTimer;
    field_0x610 = 0;
    field_0x612 = 0;
    mMode = MODE_VIB;
}

/* 8058D710-8058D7A8 000630 0098+00 1/0 0/0 0/0 .text            mode_vib__Q211daObjLadder5Act_cFv
 */
void daObjLadder::Act_c::mode_vib() {
    field_0x610 += attr().field_0x16;
    field_0x612 += attr().field_0x18;
    field_0x614 = cM_scos(field_0x610) * attr().field_0x1c;
    field_0x618 = cM_scos(field_0x612) * attr().field_0x20;
    if (--mVibrationTimer <= 0) {
        mode_drop_init();
    }
}

/* 8058D7A8-8058D7EC 0006C8 0044+00 1/1 0/0 0/0 .text mode_drop_init__Q211daObjLadder5Act_cFv */
void daObjLadder::Act_c::mode_drop_init() {
    gravity = -5.0f;
    speed.set(cXyz::Zero);
    field_0x5b6 = attr().field_0x10;
    mMode = MODE_DROP;
}

/* 8058D7EC-8058D9C0 00070C 01D4+00 1/0 0/0 0/0 .text            mode_drop__Q211daObjLadder5Act_cFv
 */
void daObjLadder::Act_c::mode_drop() {
    daObj::posMoveF_stream(this, NULL, &cXyz::Zero, attr().field_0x04, attr().field_0x08);
    if (current.pos.y < mHeight) {
        if (field_0x5b6 == attr().field_0x10) {
            fopAcM_seStart(this, Z2SE_SY_DUMMY, dComIfG_Bgsp().GetMtrlSndId(mGndChk));
            dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        } else {
            int uVar7;
            int iVar5 = attr().field_0x10 - field_0x5b6;
            if (iVar5 == 1) {
                uVar7 = attr().field_0x11;
            } else if (iVar5 == 2) {
                uVar7 = attr().field_0x12;
            } else if (iVar5 == 3) {
                uVar7 = attr().field_0x13;
            } else {
                uVar7 = attr().field_0x14;
            }
            fopAcM_seStart(this, Z2SE_SY_DUMMY, uVar7);
        }
        if (field_0x5b6 >= 0) {
            field_0x5b6--;
            current.pos.y =
                mHeight - (current.pos.y - mHeight) * 0.5f;
            speed.y *= -0.5f;
        } else {
            current.pos.y = mHeight;
            mode_fell_init();
        }
    }
}

/* 8058D9C0-8058D9CC 0008E0 000C+00 2/2 0/0 0/0 .text mode_fell_init__Q211daObjLadder5Act_cFv */
void daObjLadder::Act_c::mode_fell_init() {
    mMode = MODE_FELL;
}

/* 8058D9CC-8058D9D0 0008EC 0004+00 1/0 0/0 0/0 .text            mode_fell__Q211daObjLadder5Act_cFv
 */
void daObjLadder::Act_c::mode_fell() {
}

/* ############################################################################################## */
/* 8058DF20-8058DF50 000000 0030+00 2/2 0/0 0/0 .bss             M_tmp_mtx__Q211daObjLadder5Act_c */
Mtx daObjLadder::Act_c::M_tmp_mtx;

/* 8058D9D0-8058DA64 0008F0 0094+00 3/3 0/0 0/0 .text            set_mtx__Q211daObjLadder5Act_cFv */
void daObjLadder::Act_c::set_mtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    cMtx_copy(mDoMtx_stack_c::get(), M_tmp_mtx);
    mDoMtx_stack_c::transM(field_0x614, field_0x618, 0.0f);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 8058DA64-8058DAA0 000984 003C+00 1/1 0/0 0/0 .text            init_mtx__Q211daObjLadder5Act_cFv
 */
void daObjLadder::Act_c::init_mtx() {
    mModel->setBaseScale(scale);
    set_mtx();
}

/* 8058DAA0-8058DBB8 0009C0 0118+00 1/0 0/0 0/0 .text Execute__Q211daObjLadder5Act_cFPPA3_A4_f */
int daObjLadder::Act_c::Execute(f32 (**param_1)[3][4]) {
    static const daObjLadder::Act_c::modeProc mode_proc[5] = {
        &daObjLadder::Act_c::mode_wait, &daObjLadder::Act_c::mode_demoreq,
        &daObjLadder::Act_c::mode_vib,  &daObjLadder::Act_c::mode_drop,
        &daObjLadder::Act_c::mode_fell,
    };

    demo_end_reset();
    (this->*(mode_proc[mMode]))();
    eyePos.y = current.pos.y;
    set_mtx();
    *param_1 = &M_tmp_mtx;
    return 1;
}

/* 8058DBB8-8058DC5C 000AD8 00A4+00 1/0 0/0 0/0 .text            Draw__Q211daObjLadder5Act_cFv */
int daObjLadder::Act_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    dComIfG_Bgsp().DebugDrawPoly(mpBgW);
    return 1;
}

/* 8058DC5C-8058DC7C 000B7C 0020+00 1/0 0/0 0/0 .text
 * Mthd_Create__Q211daObjLadder28@unnamed@d_a_obj_ladder_cpp@FPv */
static int Mthd_Create(daObjLadder::Act_c* i_this) {
    return i_this->Mthd_Create();
}

/* 8058DC7C-8058DC9C 000B9C 0020+00 1/0 0/0 0/0 .text
 * Mthd_Delete__Q211daObjLadder28@unnamed@d_a_obj_ladder_cpp@FPv */
static int Mthd_Delete(daObjLadder::Act_c* i_this) {
    return i_this->Mthd_Delete();
}

/* 8058DC9C-8058DCBC 000BBC 0020+00 1/0 0/0 0/0 .text
 * Mthd_Execute__Q211daObjLadder28@unnamed@d_a_obj_ladder_cpp@FPv */
static int Mthd_Execute(daObjLadder::Act_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 8058DCBC-8058DCE8 000BDC 002C+00 1/0 0/0 0/0 .text
 * Mthd_Draw__Q211daObjLadder28@unnamed@d_a_obj_ladder_cpp@FPv  */
static int Mthd_Draw(daObjLadder::Act_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 8058DCE8-8058DD14 000C08 002C+00 1/0 0/0 0/0 .text
 * Mthd_IsDelete__Q211daObjLadder28@unnamed@d_a_obj_ladder_cpp@FPv */
static int Mthd_IsDelete(daObjLadder::Act_c* i_this) {
    return i_this->MoveBGIsDelete();
}

/* 8058DE74-8058DE94 -00001 0020+00 1/0 0/0 0/0 .data
 * Mthd_Table__Q211daObjLadder28@unnamed@d_a_obj_ladder_cpp@    */
static actor_method_class Mthd_Table = {
    (process_method_func)Mthd_Create, 
    (process_method_func)Mthd_Delete, 
    (process_method_func)Mthd_Execute, 
    (process_method_func)Mthd_IsDelete,
    (process_method_func)Mthd_Draw,
};

/* 8058DE94-8058DEC4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Ladder */
extern actor_process_profile_definition g_profile_Obj_Ladder = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Ladder,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLadder::Act_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  23,                     // mPriority
  &Mthd_Table,         // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
