/**
 * @file d_a_scene_exit.cpp
 * 
*/

#include "d/actor/d_a_scene_exit.h"
#include "dol2asm.h"
#include "d/d_com_inf_game.h"
#include "m_Do/m_Do_mtx.h"

//
// Forward References:
//

extern "C" void checkWork__8daScex_cFv();
extern "C" static void daScex_Create__FP10fopAc_ac_c();
extern "C" static void daScex_Execute__FP8daScex_c();
extern "C" void execute__8daScex_cFv();

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80485838-80485974 000078 013C+00 1/1 0/0 0/0 .text            checkWork__8daScex_cFv */
int daScex_c::checkWork() {
    if (getArg1() == 0xFF || getArg1() == 0 || getArg1() == 3) {
        if (fopAcM_isSwitch(this, getSwNo())) {
            return 0;
        }
    } else if ((getArg1() == 1 || getArg1() == 2 || getArg1() == 4) && getSwNo() != 0xFF) {
        if (!fopAcM_isSwitch(this, getSwNo())) {
            return 0;
        }
    }

    u16 offBit = getOffEventBit();
    if (offBit != 0x0FFF && dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[offBit])) {
        return 0;
    }

    u16 onBit = getOnEventBit();
    if (onBit != 0x0FFF && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[onBit])) {
        return 0;
    }

    return 1;
}

/* ############################################################################################## */
/* 80485C98-80485C9C 000000 0004+00 2/2 0/0 0/0 .rodata          @3758 */
SECTION_RODATA static f32 const lit_3758 = 75.0f;
COMPILER_STRIP_GATE(0x80485C98, &lit_3758);

/* 80485C9C-80485CA0 000004 0004+00 1/1 0/0 0/0 .rodata          @3759 */
SECTION_RODATA static f32 const lit_3759 = 150.0f;
COMPILER_STRIP_GATE(0x80485C9C, &lit_3759);

/* 80485974-80485A30 0001B4 00BC+00 1/0 0/0 0/0 .text            daScex_Create__FP10fopAc_ac_c */
static int daScex_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, daScex_c);
    daScex_c* scex = static_cast<daScex_c*>(i_this);

    mDoMtx_stack_c::transS(scex->current.pos.x, scex->current.pos.y, scex->current.pos.z);
    mDoMtx_stack_c::YrotM(scex->shape_angle.y);
    MTXInverse(mDoMtx_stack_c::get(), scex->mMatrix);
    scex->scale.x *= 75.0f;
    scex->scale.z *= 75.0f;
    scex->scale.y *= 150.0f;

    return cPhs_COMPLEATE_e;
}


/* 80485A30-80485A50 000270 0020+00 1/0 0/0 0/0 .text            daScex_Execute__FP8daScex_c */
static void daScex_Execute(daScex_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80485CA0-80485CA4 000008 0004+00 0/1 0/0 0/0 .rodata          @3840 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3840[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80485CA0, &lit_3840);
#pragma pop

/* 80485CA4-80485CA8 00000C 0004+00 0/1 0/0 0/0 .rodata          @3841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3841 = 1.0f;
COMPILER_STRIP_GATE(0x80485CA4, &lit_3841);
#pragma pop

/* 80485CA8-80485CAC 000010 0004+00 0/1 0/0 0/0 .rodata          @3842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3842 = -1.0f;
COMPILER_STRIP_GATE(0x80485CA8, &lit_3842);
#pragma pop

/* 80485A50-80485C90 000290 0240+00 1/1 0/0 0/0 .text            execute__8daScex_cFv */
// regalloc
// this matches debug but not retail :/
#ifdef NONMATCHING
int daScex_c::execute() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz spC;

    if (checkWork()) {
        mDoMtx_multVec(mMatrix, &player->current.pos, &spC);

        if (spC.y >= 0.0f && spC.y <= scale.y && fabsf(spC.x) <= scale.x && fabsf(spC.z) <= scale.z) {
            switch (getArg1()) {
            case 0xFF:
            case 1:
                player->onSceneChangeArea(getArg0(), getPathID(), this);
                break;
            case 2:
            case 0:
                player->onSceneChangeAreaJump(getArg0(), getPathID(), this);
                break;
            case 3:
            case 4:
                player->onSceneChangeAreaJump(getArg0(), getPathID(), this);
                break;
            }
        }
    }

    if (mSceneChangeOK && player->checkSceneChangeAreaStart()) {
        if ((getArg1() == 3 || getArg1() == 4) && field_0x598 == 0) {
            mDoAud_seStart(Z2SE_FORCE_BACK, NULL, 0, 0);
            player->voiceStart(Z2SE_WL_V_FALL_TO_RESTART);
            field_0x598 = 1;
        }

        if (getArg1() == 0xFF || getArg1() == 0 || getArg1() == 3) {
            if (getSwNo() != 0xFF) {
                fopAcM_onSwitch(this, getSwNo());
            }
        }
    }

    return 1;
}
#else
int daScex_c::execute() {
    // NONMATCHING
}
#endif

/* ############################################################################################## */
/* 80485CAC-80485CCC -00001 0020+00 1/0 0/0 0/0 .data            l_daScex_Method */
static actor_method_class l_daScex_Method = {
    (process_method_func)daScex_Create__FP10fopAc_ac_c,
    0,
    (process_method_func)daScex_Execute__FP8daScex_c,
};

/* 80485CCC-80485D00 -00001 0034+00 0/0 0/0 1/0 .data            g_profile_SCENE_EXIT */
extern actor_process_profile_definition2 g_profile_SCENE_EXIT = {
  fpcLy_CURRENT_e,       // mLayerID
  10,                    // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_SCENE_EXIT,       // mProcName
  &g_fpcLf_Method.base, // sub_method
  0x0000059C,            // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  761,                   // mPriority
  &l_daScex_Method,      // sub_method
  0x00060000,            // mStatus
  fopAc_UNK_GROUP_5_e,   // mActorType
  fopAc_CULLBOX_0_e,     // cullType
  0                      // field_0x30
};
