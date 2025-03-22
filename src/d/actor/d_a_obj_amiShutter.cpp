/**
 * @file d_a_obj_amiShutter.cpp
 * 
*/

#include "d/actor/d_a_obj_amiShutter.h"
#include "d/actor/d_a_player.h"
#include "c/c_damagereaction.h"

#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__18daAmiShutter_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__14daAmiShutter_cFv();
extern "C" void CreateHeap__14daAmiShutter_cFv();
extern "C" void create__14daAmiShutter_cFv();
extern "C" void Execute__14daAmiShutter_cFPPA3_A4_f();
extern "C" void moveShutter__14daAmiShutter_cFv();
extern "C" void playerAreaCheck__14daAmiShutter_cFv();
extern "C" void init_modeWait__14daAmiShutter_cFv();
extern "C" void modeWait__14daAmiShutter_cFv();
extern "C" void init_modeWaitEvent__14daAmiShutter_cFv();
extern "C" void modeWaitEvent__14daAmiShutter_cFv();
extern "C" void eventStart__14daAmiShutter_cFv();
extern "C" void init_modeClose__14daAmiShutter_cFv();
extern "C" void modeClose__14daAmiShutter_cFv();
extern "C" void init_modeCloseEvent__14daAmiShutter_cFv();
extern "C" void modeCloseEvent__14daAmiShutter_cFv();
extern "C" void init_modeCloseEnd__14daAmiShutter_cFv();
extern "C" void modeCloseEnd__14daAmiShutter_cFv();
extern "C" void init_modeOpen__14daAmiShutter_cFv();
extern "C" void modeOpen__14daAmiShutter_cFv();
extern "C" void Draw__14daAmiShutter_cFv();
extern "C" void Delete__14daAmiShutter_cFv();
extern "C"  void daAmiShutter_Draw__FP14daAmiShutter_c();
extern "C"  void daAmiShutter_Execute__FP14daAmiShutter_c();
extern "C"  void daAmiShutter_Delete__FP14daAmiShutter_c();
extern "C"  void daAmiShutter_Create__FP10fopAc_ac_c();
extern "C" void __dt__18daAmiShutter_HIO_cFv();
extern "C" void __sinit_d_a_obj_amiShutter_cpp();
extern "C"  void func_80BA2278();
extern "C"  void func_80BA2280();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__14daAmiShutter_cFv();


//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void orderEvent__17dEvLib_callback_cFiii();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _restgpr_28();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 struct_80450C98[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */

/* 80BA23DC-80BA23E8 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BA23E8-80BA23FC 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop



/* 80BA2444-80BA248C 000068 0048+00 0/1 0/0 0/0 .data            mode_proc$3758 */
// static daAmiShutter_c::modeProc const mode_proc[6] = {
//     &daAmiShutter_c::modeWait,
//     &daAmiShutter_c::modeWaitEvent,
//     &daAmiShutter_c::modeClose,
//     &daAmiShutter_c::modeCloseEvent,
//     &daAmiShutter_c::modeCloseEnd,
//     &daAmiShutter_c::modeOpen,
// };

/* 80BA248C-80BA24AC -00001 0020+00 1/0 0/0 0/0 .data            l_daAmiShutter_Method */
static actor_method_class l_daAmiShutter_Method = {
    (process_method_func)daAmiShutter_Create__FP10fopAc_ac_c,
    (process_method_func)daAmiShutter_Delete__FP14daAmiShutter_c,
    (process_method_func)daAmiShutter_Execute__FP14daAmiShutter_c,
    0,
    (process_method_func)daAmiShutter_Draw__FP14daAmiShutter_c,
};

/* 80BA24AC-80BA24DC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_AmiShutter */
extern actor_process_profile_definition g_profile_Obj_AmiShutter = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_AmiShutter,    // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daAmiShutter_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  521,                    // mPriority
  &l_daAmiShutter_Method, // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BA14CC-80BA1514 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__18daAmiShutter_HIO_cFv */
daAmiShutter_HIO_c::daAmiShutter_HIO_c() {
    mMaxStepOpen = 70.0f;
    mMaxStepClose = 70.0f;
    field_0x11 = 3;
    mRange = 400.f;
    mWaitTime = 0;
}

/* 80BA155C-80BA15E4 00017C 0088+00 2/2 0/0 0/0 .text            setBaseMtx__14daAmiShutter_cFv */
void daAmiShutter_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* ############################################################################################## */

/* 80BA15E4-80BA1650 000204 006C+00 1/0 0/0 0/0 .text            CreateHeap__14daAmiShutter_cFv */
int daAmiShutter_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*) dComIfG_getObjectRes("S_Zami", 4);
    JUT_ASSERT(modelData != 0); 
    
    mpModel = mDoExt_J3DModel__create(modelData, J3DMdlFlag_Unk80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    return 1;
}

/* ############################################################################################## */

/* 80BA256C-80BA2580 000014 0014+00 6/6 0/0 0/0 .bss             l_HIO */
static const daAmiShutter_HIO_c l_HIO;

/* 80BA1650-80BA182C 000270 01DC+00 1/1 0/0 0/0 .text            create__14daAmiShutter_cFv */
cPhs__Step daAmiShutter_c::create() {
    fopAcM_SetupActor(this, daAmiShutter_c);
    cPhs__Step phaseStep = (cPhs__Step) dComIfG_resLoad(&mPhaseReq, "S_Zami");

    if (phaseStep == cPhs_COMPLEATE_e) {
        cPhs__Step res = (cPhs__Step) MoveBGCreate("S_Zami", 7, 
            dBgS_MoveBGProc_Typical, 6656, NULL);

        if (res == cPhs_ERROR_e) {
            phaseStep = cPhs_ERROR_e;
            return phaseStep;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        mType = getType();
        mPosZ = current.pos.z;
        
        if (mType == 0 || mType == 1) {
            if (mType == 0 && cDmr_SkipInfo != 0 
                && daPy_getPlayerActorClass()->current.pos.y > -800.0f){
                mMode = 4;
            } else {
                mPos = current.pos;
                current.pos.z -= 600.0f;
                mOpen = true;
                init_modeWaitEvent();
            }
        } else {
            mSwBit = getSwBit();
            mSwitch = fopAcM_isSwitch(this, mSwBit);
            mOpen = false;
            init_modeWait();
        }
        setBaseMtx();
        #ifdef DEBUG
        l_HIO.entryHIO("アミシャッター")
        #endif
    }
    return phaseStep;
}

/* 80BA182C-80BA1888 00044C 005C+00 1/0 0/0 0/0 .text            Execute__14daAmiShutter_cFPPA3_A4_f
 */
int daAmiShutter_c::Execute(Mtx** i_mtx) {
    int res = eventUpdate();
    moveShutter();
    *i_mtx = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* ############################################################################################## */



// static u8 lbl_397_bss_28;

/* 80BA1888-80BA1974 0004A8 00EC+00 1/1 0/0 0/0 .text            moveShutter__14daAmiShutter_cFv */
void daAmiShutter_c::moveShutter() {
    static daAmiShutter_c::modeProc const mode_proc[6] = {
        &daAmiShutter_c::modeWait,
        &daAmiShutter_c::modeWaitEvent,
        &daAmiShutter_c::modeClose,
        &daAmiShutter_c::modeCloseEvent,
        &daAmiShutter_c::modeCloseEnd,
        &daAmiShutter_c::modeOpen,
    };

    (this->*mode_proc[mMode])();

}

/* ############################################################################################## */

/* 80BA1974-80BA1B4C 000594 01D8+00 1/1 0/0 0/0 .text            playerAreaCheck__14daAmiShutter_cFv
 */
bool daAmiShutter_c::playerAreaCheck() {
    bool inArea = false;
    if (mType == 0) {
        fopAc_ac_c* player = dComIfGp_getPlayer(0);
        cXyz resVec = mPos - player->current.pos;
        float distance = resVec.absXZ();
        if (distance >= l_HIO.mRange
            && player->current.pos.y > current.pos.y
            && player->current.pos.y < current.pos.y + 50.f){
            inArea = true;
        }
    } else if (dComIfGp_getLinkPlayer()->getFootOnGround()) {
        inArea = true;
    }
    return inArea;
}

/* 80BA1B4C-80BA1B58 00076C 000C+00 3/3 0/0 0/0 .text            init_modeWait__14daAmiShutter_cFv
 */
void daAmiShutter_c::init_modeWait() {
    mMode = MODE_WAIT;
}

/* 80BA1B58-80BA1BCC 000778 0074+00 1/0 0/0 0/0 .text            modeWait__14daAmiShutter_cFv */
void daAmiShutter_c::modeWait() {
    u8 isSwitch = fopAcM_isSwitch(this, mSwBit);
    if (mSwitch != isSwitch) {
        mSwitch = isSwitch;
        mSwitch == 0 ? init_modeClose() : init_modeOpen();
    }
}

/* 80BA1BCC-80BA1BD8 0007EC 000C+00 1/1 0/0 0/0 .text init_modeWaitEvent__14daAmiShutter_cFv */
void daAmiShutter_c::init_modeWaitEvent() {
    mMode = MODE_WAIT_EVENT;
}

/* 80BA1BD8-80BA1C90 0007F8 00B8+00 1/0 0/0 0/0 .text            modeWaitEvent__14daAmiShutter_cFv
 */
void daAmiShutter_c::modeWaitEvent() {
    // NONMATCHING
}

/* 80BA1C90-80BA1CB4 0008B0 0024+00 2/1 0/0 0/0 .text            eventStart__14daAmiShutter_cFv */
BOOL daAmiShutter_c::eventStart() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BA23C4-80BA23C8 000034 0004+00 3/6 0/0 0/0 .rodata          @3890 */
SECTION_RODATA static f32 const lit_3890 = 1.0f;
COMPILER_STRIP_GATE(0x80BA23C4, &lit_3890);

/* 80BA23C8-80BA23CC 000038 0004+00 3/3 0/0 0/0 .rodata          @3891 */
SECTION_RODATA static f32 const lit_3891 = -1.0f;
COMPILER_STRIP_GATE(0x80BA23C8, &lit_3891);

/* 80BA1CB4-80BA1D48 0008D4 0094+00 1/1 0/0 0/0 .text            init_modeClose__14daAmiShutter_cFv
 */
void daAmiShutter_c::init_modeClose() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BA23CC-80BA23D0 00003C 0004+00 0/1 0/0 0/0 .rodata          @3900 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3900 = 0.5f;
COMPILER_STRIP_GATE(0x80BA23CC, &lit_3900);
#pragma pop

/* 80BA1D48-80BA1DCC 000968 0084+00 1/0 0/0 0/0 .text            modeClose__14daAmiShutter_cFv */
void daAmiShutter_c::modeClose() {
    // NONMATCHING
}

/* 80BA1DCC-80BA1E60 0009EC 0094+00 1/1 0/0 0/0 .text init_modeCloseEvent__14daAmiShutter_cFv */
void daAmiShutter_c::init_modeCloseEvent() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BA23D0-80BA23D4 000040 0004+00 0/2 0/0 0/0 .rodata          @3919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3919 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BA23D0, &lit_3919);
#pragma pop

/* 80BA1E60-80BA1EEC 000A80 008C+00 1/0 0/0 0/0 .text            modeCloseEvent__14daAmiShutter_cFv
 */
void daAmiShutter_c::modeCloseEvent() {
    // NONMATCHING
}

/* 80BA1EEC-80BA1F7C 000B0C 0090+00 1/1 0/0 0/0 .text init_modeCloseEnd__14daAmiShutter_cFv */
void daAmiShutter_c::init_modeCloseEnd() {
    // NONMATCHING
}

/* 80BA1F7C-80BA1F80 000B9C 0004+00 1/0 0/0 0/0 .text            modeCloseEnd__14daAmiShutter_cFv */
void daAmiShutter_c::modeCloseEnd() {
    /* empty function */
}

/* 80BA1F80-80BA2004 000BA0 0084+00 1/1 0/0 0/0 .text            init_modeOpen__14daAmiShutter_cFv
 */
void daAmiShutter_c::init_modeOpen() {
    // NONMATCHING
}

/* 80BA2004-80BA2080 000C24 007C+00 1/0 0/0 0/0 .text            modeOpen__14daAmiShutter_cFv */
void daAmiShutter_c::modeOpen() {
    // NONMATCHING
}

/* 80BA2080-80BA2124 000CA0 00A4+00 1/0 0/0 0/0 .text            Draw__14daAmiShutter_cFv */
int daAmiShutter_c::Draw() {
    // NONMATCHING
}

/* 80BA2124-80BA2154 000D44 0030+00 1/0 0/0 0/0 .text            Delete__14daAmiShutter_cFv */
int daAmiShutter_c::Delete() {
    // NONMATCHING
}

/* 80BA2154-80BA2180 000D74 002C+00 1/0 0/0 0/0 .text daAmiShutter_Draw__FP14daAmiShutter_c */
static void daAmiShutter_Draw(daAmiShutter_c* param_0) {
    // NONMATCHING
}

/* 80BA2180-80BA21A0 000DA0 0020+00 1/0 0/0 0/0 .text daAmiShutter_Execute__FP14daAmiShutter_c */
static void daAmiShutter_Execute(daAmiShutter_c* param_0) {
    // NONMATCHING
}

/* 80BA21A0-80BA21C0 000DC0 0020+00 1/0 0/0 0/0 .text daAmiShutter_Delete__FP14daAmiShutter_c */
static void daAmiShutter_Delete(daAmiShutter_c* param_0) {
    // NONMATCHING
}

/* 80BA21C0-80BA21E0 000DE0 0020+00 1/0 0/0 0/0 .text            daAmiShutter_Create__FP10fopAc_ac_c
 */
static void daAmiShutter_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BA21E0-80BA223C 000E00 005C+00 2/1 0/0 0/0 .text            __dt__18daAmiShutter_HIO_cFv */
daAmiShutter_HIO_c::~daAmiShutter_HIO_c() {
    // NONMATCHING
}

/* 80BA223C-80BA2278 000E5C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_amiShutter_cpp */
void __sinit_d_a_obj_amiShutter_cpp() {
    // NONMATCHING
}


/* 80BA2278-80BA2280 000E98 0008+00 1/0 0/0 0/0 .text @1448@eventStart__14daAmiShutter_cFv */
// static void func_80BA2278() {
//     // NONMATCHING
// }

/* 80BA2280-80BA2288 000EA0 0008+00 1/0 0/0 0/0 .text            @1448@__dt__14daAmiShutter_cFv */
// static void func_80BA2280() {
//     // NONMATCHING
// }

/* 80BA2288-80BA22D0 000EA8 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80BA22D0-80BA22D8 000EF0 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart()() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80BA22D8-80BA22E0 000EF8 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80BA22E0-80BA22E8 000F00 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80BA22E8-80BA237C 000F08 0094+00 2/1 0/0 0/0 .text            __dt__14daAmiShutter_cFv */
daAmiShutter_c::~daAmiShutter_c() {
    // NONMATCHING
}

/* 80BA23D4-80BA23D4 000044 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
