/**
 * @file d_a_obj_sw.cpp
 * 
*/

//#define VIRTUAL_3DLINEMAT
#include "m_Do/m_Do_ext.h"
#include "d/d_camera.h"
#include "d/actor/d_a_obj_sw.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"








//
// Forward References:
//

extern "C" static void daObj_Sw_Draw__FP12obj_sw_class();
extern "C" static void s_ks_sub__FPvPv();
extern "C" static void s_ksdel_sub__FPvPv();
extern "C" static void anm_init__FP8obj_sc_sifUcf();
extern "C" static void sc_build__FP12obj_sw_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void sc_move__FP12obj_sw_class();
extern "C" static void demo_camera__FP12obj_sw_class();
extern "C" static void sc_action__FP12obj_sw_class();
extern "C" static void sw_action__FP12obj_sw_class();
extern "C" static void daObj_Sw_Execute__FP12obj_sw_class();
extern "C" static bool daObj_Sw_IsDelete__FP12obj_sw_class();
extern "C" static void daObj_Sw_Delete__FP12obj_sw_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObj_Sw_Create__FP10fopAc_ac_c();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__8obj_sc_sFv();
extern "C" void __ct__8obj_sc_sFv();
extern "C" void getLeftHandPos__9daPy_py_cCFv();
extern "C" extern char const* const d_a_obj_sw__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void push__14mDoMtx_stack_cFv();
extern "C" void pop__14mDoMtx_stack_cFv();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyzfs();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __dv__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __dt__14Z2SoundObjBaseFv();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__16Z2SoundObjSimple[8];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];

/* 80CF0638-80CF0774 000078 013C+00 1/0 0/0 0/0 .text            daObj_Sw_Draw__FP12obj_sw_class */
static int daObj_Sw_Draw(obj_sw_class* i_this) {
    // NONMATCHING
    static _GXColor l_color = {
        0x14,
        0x0F,
        0x00,
        0xFF,
    };

    fopAc_ac_c* a_this = &i_this->actor;
    if (i_this->field_0x570 == 8) {
        g_env_light.settingTevStruct(0, &a_this->current.pos, &a_this->tevStr);
        obj_sc_s* sc_p = &i_this->field_0x5a8;
        for (int i = 0; i < 8; i++) {
            if (sc_p->field_0x0 != 0) {
                g_env_light.setLightTevColorType_MAJI(sc_p->mpModelMorf->getModel(), &a_this->tevStr);
                sc_p->mpModelMorf->entryDL();

                if (i == 2 && i_this->field_0x864.mpModel != NULL) {
                    g_env_light.setLightTevColorType_MAJI(i_this->field_0x864.mpModel, &a_this->tevStr);
                    mDoExt_modelUpdateDL(i_this->field_0x864.mpModel);
                }
            }
            sc_p = (obj_sc_s *)((s8*)sc_p + 100);
        }
    } else {
        g_env_light.settingTevStruct(16, &a_this->current.pos, &a_this->tevStr);
        i_this->field_0xd50.update(63, l_color, &a_this->tevStr);
        dComIfGd_set3DlineMat(&i_this->field_0xd50);
    }

    return 1;
}

/* 80CF3278-80CF327C 000000 0004+00 3/3 0/0 0/0 .bss             saru_ct */
static int saru_ct;

/* 80CF0774-80CF07F8 0001B4 0084+00 1/1 0/0 0/0 .text            s_ks_sub__FPvPv */
static void* s_ks_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_NPC_KS) {
        int swBit = fopAcM_GetParam(i_actor) >> 24;
        if (swBit != 0xFF) {
            if (dComIfGs_isSwitch(swBit, fopAcM_GetRoomNo((fopAc_ac_c*)i_actor))) {
                saru_ct++;
            }
        }
    }
    return NULL;
}

struct path {
    int field_0x0;
    f32 field_0x4;
    f32 field_0x8;
    f32 field_0xc;
};
/* ############################################################################################## */
/* 80CF3100-80CF3210 000004 0110+00 3/3 0/0 0/0 .data            sc_path */
static path sc_path[17] = {
    {1, 8172.0f, 3380.0f, -10887.0f},
    {1, 8305.0f, 3524.0f, -11275.0f},
    {1, 8774.0f, 3677.0f, -10728.0f},
    {1, 8794.0f, 3677.0f, -11424.0f},
    {1, 9267.0f, 3887.0f, -10586.0f},
    {1, 9013.0f, 3902.0f, -11735.0f},
    {1, 9184.0f, 3997.0f, -11230.0f},
    {1, 9238.0f, 4127.0f, -11886.0f},
    {1, 9624.0f, 4602.0f, -11648.0f},
    {0, 9513.0f, 4854.0f, -12209.0f},
    {0, 9049.0f, 5035.0f, -12050.0f},
    {0, 8715.0f, 5083.0f, -11785.0f},
    {0, 8428.0f, 5206.0f, -11388.0f},
    {0, 8223.0f, 5353.0f, -11250.0f},
    {0, 7851.0f, 5460.0f, -11269.0f},
    {0, 7599.0f, 5537.0f, -11186.0f},
    {0, 0.0f, 0.0f, 0.0f},
    // 0x00000001, 0x45FF6000, 0x45534000, 0xC62A1C00,
    // 0x00000001, 0x4601C400, 0x455C4000, 0xC6302C00,
    // 0x00000001, 0x46091800, 0x4565D000, 0xC627A000,
    // 0x00000001, 0x46096800, 0x4565D000, 0xC6328000,
    // 0x00000001, 0x4610CC00, 0x4572F000, 0xC6256800,
    // 0x00000001, 0x460CD400, 0x4573E000, 0xC6375C00,
    // 0x00000001, 0x460F8000, 0x4579D000, 0xC62F7800,
    // 0x00000001, 0x46105800, 0x4580F800, 0xC639B800,
    // 0x00000001, 0x46166000, 0x458FD000, 0xC6360000,
    // 0x00000000, 0x4614A400, 0x4597B000, 0xC63EC400,
    // 0x00000000, 0x460D6400, 0x459D5800, 0xC63C4800,
    // 0x00000000, 0x46082C00, 0x459ED800, 0xC6382400,
    // 0x00000000, 0x4603B000, 0x45A2B000, 0xC631F000,
    // 0x00000000, 0x46007C00, 0x45A74800, 0xC62FC800,
    // 0x00000000, 0x45F55800, 0x45AAA000, 0xC6301400,
    // 0x00000000, 0x45ED7800, 0x45AD0800, 0xC62EC800,
    // 0x00000000, 0x00000000, 0x00000000, 0x00000000,
};

/* 80CF07F8-80CF08F8 000238 0100+00 1/1 0/0 0/0 .text            s_ksdel_sub__FPvPv */
static void* s_ksdel_sub(void* i_actor, void* i_data) {
    // NONMATCHING
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_NPC_KS) {
        fopAcM_delete((fopAc_ac_c*)i_actor);

        saru_ct++;
    }
    return NULL;
}

/* 80CF08F8-80CF09A8 000338 00B0+00 3/3 0/0 0/0 .text            anm_init__FP8obj_sc_sifUcf */
static void anm_init(obj_sc_s* i_this, int param_2, f32 i_morf, u8 i_mode, f32 i_speed) {
    i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("Npc_ksw", param_2), i_mode, i_morf,
                                i_speed, 0.0f, -1.0f, NULL);
    i_this->field_0x3c = param_2;
}

/* 80CF09A8-80CF1008 0003E8 0660+00 1/1 0/0 0/0 .text            sc_build__FP12obj_sw_class */
static void sc_build(obj_sw_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* a_this = &i_this->actor;
    obj_sc_s* sc_p = &i_this->field_0x5a8;
    cXyz sp24, sp30;

    for (int i = 0; i < 8; i++) {
        if (sc_p->field_0x34 != 0) {
            sc_p->field_0x34--;
        }

        s16 sVar1;
        switch (sc_p->field_0x0) {
            case 0:
                anm_init(sc_p, 14, 5.0f, 2, 1.0f);
                sc_p->field_0x0 = 1;
                sc_p->field_0x10 = sc_p->field_0x4;
                sc_p->field_0x1c.x = sc_path[sc_p->field_0x38].field_0x4;
                sc_p->field_0x1c.y = sc_path[sc_p->field_0x38].field_0x8;
                sc_p->field_0x1c.z = sc_path[sc_p->field_0x38].field_0xc;
                break;

            case 1:
                sp24 = sc_p->field_0x1c - sc_p->field_0x4;
                cLib_addCalcAngleS2(&sc_p->field_0x2a, cM_atan2s(sp24.x, sp24.z), 1, 0x2000);
                if (sc_p->field_0x34 == 0) {
                    sc_p->field_0x0 = 2;
                    anm_init(sc_p, 11, 2.0f, 0, 1.0f);
                }
                break;

            case 2:
                if (sc_path[sc_p->field_0x38].field_0x0 == 1) {
                    if (sc_p->field_0x3c == 11) {
                        if (sc_p->mpModelMorf->isStop()) {
                            anm_init(sc_p, 12, 1.0f, 0, 1.0f);
                            sc_p->mSound.startSound(Z2SE_KOSARU_V_JUMP, 0, -1);
                            sc_p->mSound.startSound(Z2SE_KOSARU_JUMP_START, 0, -1);
                            sc_p->mSound.startSound(Z2SE_KOSARU_JUMP_WIND, 0, -1);
                            sc_p->field_0x30 = 40.0f;
                        }
                    }
                } else {
                    sc_p->field_0x30 = 25.0f;
                }

                sp24 = sc_p->field_0x1c - sc_p->field_0x4;
                sVar1 = cM_atan2s(sp24.x, sp24.z);
                cLib_addCalcAngleS2(&sc_p->field_0x2a, sVar1, 1, 0x2000);
                cMtx_YrotS(*calc_mtx, sVar1);
                cMtx_XrotM(*calc_mtx, -cM_atan2s(sp24.y, JMAFastSqrt(sp24.x * sp24.x + sp24.z * sp24.z)));
                sp24.x = 0.0f;
                sp24.y = 0.0f;
                sp24.z = sc_p->field_0x30;
                MtxPosition(&sp24, &sp30);
                sc_p->field_0x4 += sp30;
                sp24 = sc_p->field_0x1c - sc_p->field_0x4;

                if ((sp24.x * sp24.x + sp24.z * sp24.z) <= 1700.0f) {
                    sc_p->field_0x4 = sc_p->field_0x1c;
                    if (sc_p->field_0x38 == 16) {
                        sc_p->field_0x0 = 3;
                        anm_init(sc_p, 4, 2.0f, 2, 2.0f);
                        sc_p->field_0x30 = 0.0f;
                        sc_p->mSound.startSound(Z2SE_KOSARU_V_WAIT, 0, -1);
                    } else {
                        sc_p->field_0x38++;
                        sc_p->field_0x10 = sc_p->field_0x4;
                        sc_p->field_0x1c.x = sc_path[sc_p->field_0x38].field_0x4;
                        sc_p->field_0x1c.y = sc_path[sc_p->field_0x38].field_0x8;
                        sc_p->field_0x1c.z = sc_path[sc_p->field_0x38].field_0xc;

                        if (sc_path[sc_p->field_0x38].field_0x0 == 1) {
                            anm_init(sc_p, 11, 2.0f, 0, 1.0f);
                            sc_p->field_0x30 = 0.0f;
                        } else if (sc_p->field_0x3c != 10) {
                            anm_init(sc_p, 10, 2.0f, 2, 1.0f);
                        }
                    }
                }
                break;

            case 3:
                cLib_addCalcAngleS2(&sc_p->field_0x2a, a_this->current.angle.y + 0x8000, 2, 0x1000);
                cMtx_YrotS(*calc_mtx, sc_p->field_0x2a);
                sp24.x = 0.0f;
                sp24.y = 0.0f;
                sp24.z = -35.0f;
                MtxPosition(&sp24, &sp30);
                cLib_addCalc2(&sc_p->field_0x4.x, a_this->eyePos.x + sp30.x, 1.0f, 30.0f);
                cLib_addCalc2(&sc_p->field_0x4.y, a_this->eyePos.y, 1.0f, 30.0f);
                cLib_addCalc2(&sc_p->field_0x4.z, a_this->eyePos.z + sp30.z, 1.0f, 30.0f);

                if (sc_p->field_0x4.y <= a_this->eyePos.y + 1.0f) {
                    sp24 = sc_p->field_0x4 - a_this->eyePos;
                    anm_init(sc_p, 13, 5.0f, 0, 1.0f);
                    sc_p->field_0x0 = 10;
                    sc_p->mSound.startSound(Z2SE_KOSARU_V_WAIT, 0, -1);
                    
                    if (i == 7) {
                        i_this->field_0x576 = 2;
                        i_this->field_0x57c = 120;
                        int swBit = fopAcM_GetParam(a_this) >> 24;
                        if (swBit != 0xFF) {
                            dComIfGs_onSwitch(swBit, fopAcM_GetRoomNo(a_this));
                        }
                    }
                }
        }

        if (sc_p->field_0x30 >= 30.0f) {
            sc_p->field_0x35 = 1;
        }

        sc_p = (obj_sc_s *)((s8*)sc_p + 100);
    }
}

/* ############################################################################################## */
/* 80CF3028-80CF302C 000028 0004+00 0/1 0/0 0/0 .rodata          @4056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4056 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CF3028, &lit_4056);
#pragma pop

/* 80CF302C-80CF3030 00002C 0004+00 0/1 0/0 0/0 .rodata          @4057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4057 = 33.0f / 100.0f;
COMPILER_STRIP_GATE(0x80CF302C, &lit_4057);
#pragma pop

/* 80CF3030-80CF3034 000030 0004+00 0/2 0/0 0/0 .rodata          @4058 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4058 = 0.5f;
COMPILER_STRIP_GATE(0x80CF3030, &lit_4058);
#pragma pop

/* 80CF3034-80CF3038 000034 0004+00 0/1 0/0 0/0 .rodata          @4059 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4059 = 60.0f;
COMPILER_STRIP_GATE(0x80CF3034, &lit_4059);
#pragma pop

/* 80CF3038-80CF303C 000038 0004+00 0/1 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4060 = 500.0f;
COMPILER_STRIP_GATE(0x80CF3038, &lit_4060);
#pragma pop

/* 80CF303C-80CF3040 00003C 0004+00 0/2 0/0 0/0 .rodata          @4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4061 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CF303C, &lit_4061);
#pragma pop

/* 80CF3040-80CF3048 000040 0008+00 0/3 0/0 0/0 .rodata          @4062 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4062[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CF3040, &lit_4062);
#pragma pop

/* 80CF3048-80CF3050 000048 0008+00 0/3 0/0 0/0 .rodata          @4063 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4063[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CF3048, &lit_4063);
#pragma pop

/* 80CF3050-80CF3058 000050 0008+00 0/3 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4064[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CF3050, &lit_4064);
#pragma pop

/* 80CF3058-80CF305C 000058 0004+00 0/1 0/0 0/0 .rodata          @4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4065 = 250.0f;
COMPILER_STRIP_GATE(0x80CF3058, &lit_4065);
#pragma pop

/* 80CF305C-80CF3060 00005C 0004+00 0/2 0/0 0/0 .rodata          @4066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4066 = 1400.0f;
COMPILER_STRIP_GATE(0x80CF305C, &lit_4066);
#pragma pop

/* 80CF3060-80CF3064 000060 0004+00 0/2 0/0 0/0 .rodata          @4067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4067 = 4.0f;
COMPILER_STRIP_GATE(0x80CF3060, &lit_4067);
#pragma pop

/* 80CF1044-80CF1384 000A84 0340+00 1/1 0/0 0/0 .text            sc_move__FP12obj_sw_class */
static void sc_move(obj_sw_class* i_this) {
    // NONMATCHING
    cXyz sp24, sp30;

    if (i_this->field_0x864.field_0x68 == 0) {
        if (i_this->field_0x57a == 0) {
            if (cM_rndF(1.0f) >= 0.2f) {
                if (cM_rndF(1.0f) >= 0.33f) {
                    if (cM_rndF(1.0f) >= 0.5f) {

                    }
                }
            }
        }
    }
}

/* ############################################################################################## */
/* 80CF3064-80CF3068 000064 0004+00 0/1 0/0 0/0 .rodata          @4194 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4194 = 400.0f;
COMPILER_STRIP_GATE(0x80CF3064, &lit_4194);
#pragma pop

/* 80CF3068-80CF306C 000068 0004+00 0/1 0/0 0/0 .rodata          @4195 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4195 = 55.0f;
COMPILER_STRIP_GATE(0x80CF3068, &lit_4195);
#pragma pop

/* 80CF306C-80CF3070 00006C 0004+00 0/1 0/0 0/0 .rodata          @4196 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4196 = -800.0f;
COMPILER_STRIP_GATE(0x80CF306C, &lit_4196);
#pragma pop

/* 80CF3070-80CF3074 000070 0004+00 0/1 0/0 0/0 .rodata          @4197 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4197 = 300.0f;
COMPILER_STRIP_GATE(0x80CF3070, &lit_4197);
#pragma pop

/* 80CF3074-80CF3078 000074 0004+00 0/2 0/0 0/0 .rodata          @4198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4198 = -200.0f;
COMPILER_STRIP_GATE(0x80CF3074, &lit_4198);
#pragma pop

/* 80CF3078-80CF307C 000078 0004+00 0/2 0/0 0/0 .rodata          @4199 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4199 = 200.0f;
COMPILER_STRIP_GATE(0x80CF3078, &lit_4199);
#pragma pop

/* 80CF307C-80CF3080 00007C 0004+00 0/1 0/0 0/0 .rodata          @4200 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4200 = 100.0f;
COMPILER_STRIP_GATE(0x80CF307C, &lit_4200);
#pragma pop

/* 80CF3080-80CF3084 000080 0004+00 0/3 0/0 0/0 .rodata          @4201 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4201 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CF3080, &lit_4201);
#pragma pop

/* 80CF3084-80CF3088 000084 0004+00 0/1 0/0 0/0 .rodata          @4202 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4202 = -400.0f;
COMPILER_STRIP_GATE(0x80CF3084, &lit_4202);
#pragma pop

/* 80CF3088-80CF308C 000088 0004+00 0/2 0/0 0/0 .rodata          @4203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4203 = 50.0f;
COMPILER_STRIP_GATE(0x80CF3088, &lit_4203);
#pragma pop

/* 80CF1384-80CF1970 000DC4 05EC+00 1/1 0/0 0/0 .text            demo_camera__FP12obj_sw_class */
static void demo_camera(obj_sw_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CF308C-80CF3090 00008C 0004+00 0/2 0/0 0/0 .rodata          @4442 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4442 = 10.0f;
COMPILER_STRIP_GATE(0x80CF308C, &lit_4442);
#pragma pop

/* 80CF3090-80CF3094 000090 0004+00 0/1 0/0 0/0 .rodata          @4443 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4443 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CF3090, &lit_4443);
#pragma pop

/* 80CF3094-80CF3098 000094 0004+00 0/1 0/0 0/0 .rodata          @4444 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4444 = -230.0f;
COMPILER_STRIP_GATE(0x80CF3094, &lit_4444);
#pragma pop

/* 80CF3098-80CF309C 000098 0004+00 0/1 0/0 0/0 .rodata          @4445 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4445 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CF3098, &lit_4445);
#pragma pop

/* 80CF309C-80CF30A0 00009C 0004+00 0/2 0/0 0/0 .rodata          @4446 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4446 = 1000.0f;
COMPILER_STRIP_GATE(0x80CF309C, &lit_4446);
#pragma pop

/* 80CF30A0-80CF30A4 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4447 = 32768.0f;
COMPILER_STRIP_GATE(0x80CF30A0, &lit_4447);
#pragma pop

/* 80CF1970-80CF2160 0013B0 07F0+00 1/1 0/0 0/0 .text            sc_action__FP12obj_sw_class */
static void sc_action(obj_sw_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CF30A4-80CF30A8 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4549 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4549 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x80CF30A4, &lit_4549);
#pragma pop

/* 80CF30A8-80CF30AC 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4550 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4550 = 70.0f;
COMPILER_STRIP_GATE(0x80CF30A8, &lit_4550);
#pragma pop

/* 80CF30AC-80CF30B0 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4551 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4551 = 8.0f;
COMPILER_STRIP_GATE(0x80CF30AC, &lit_4551);
#pragma pop

/* 80CF30B0-80CF30B8 0000B0 0004+04 0/1 0/0 0/0 .rodata          @4552 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4552[1 + 1 /* padding */] = {
    3.0f / 40.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80CF30B0, &lit_4552);
#pragma pop

/* 80CF30B8-80CF30C0 0000B8 0008+00 0/1 0/0 0/0 .rodata          @4554 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4554[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CF30B8, &lit_4554);
#pragma pop

/* 80CF2160-80CF2604 001BA0 04A4+00 1/1 0/0 0/0 .text            sw_action__FP12obj_sw_class */
static void sw_action(obj_sw_class* param_0) {
    // NONMATCHING
}

/* 80CF2604-80CF26F0 002044 00EC+00 2/1 0/0 0/0 .text            daObj_Sw_Execute__FP12obj_sw_class
 */
static void daObj_Sw_Execute(obj_sw_class* param_0) {
    // NONMATCHING
}

/* 80CF26F0-80CF26F8 002130 0008+00 1/0 0/0 0/0 .text            daObj_Sw_IsDelete__FP12obj_sw_class
 */
static bool daObj_Sw_IsDelete(obj_sw_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80CF30EC-80CF30EC 0000EC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CF30F4 = "Obj_sw";
#pragma pop

/* 80CF26F8-80CF2790 002138 0098+00 1/0 0/0 0/0 .text            daObj_Sw_Delete__FP12obj_sw_class
 */
static void daObj_Sw_Delete(obj_sw_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CF30C0-80CF30C4 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4659 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4659 = 6.0f;
COMPILER_STRIP_GATE(0x80CF30C0, &lit_4659);
#pragma pop

/* 80CF2790-80CF29D4 0021D0 0244+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CF30C4-80CF30C8 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4856 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4856 = -70.0f;
COMPILER_STRIP_GATE(0x80CF30C4, &lit_4856);
#pragma pop

/* 80CF30C8-80CF30CC 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4857 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4857 = -14000.0f;
COMPILER_STRIP_GATE(0x80CF30C8, &lit_4857);
#pragma pop

/* 80CF30CC-80CF30D0 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4858 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4858 = 3450.0f;
COMPILER_STRIP_GATE(0x80CF30CC, &lit_4858);
#pragma pop

/* 80CF30D0-80CF30D4 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4859 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4859 = 12670.0f;
COMPILER_STRIP_GATE(0x80CF30D0, &lit_4859);
#pragma pop

/* 80CF30D4-80CF30D8 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4860 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4860 = -1000.0f;
COMPILER_STRIP_GATE(0x80CF30D4, &lit_4860);
#pragma pop

/* 80CF30D8-80CF30DC 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4861 = -100.0f;
COMPILER_STRIP_GATE(0x80CF30D8, &lit_4861);
#pragma pop

/* 80CF30DC-80CF30E0 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4862 = 3380.0f;
COMPILER_STRIP_GATE(0x80CF30DC, &lit_4862);
#pragma pop

/* 80CF30E0-80CF30E4 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4863 = 6280.0f;
COMPILER_STRIP_GATE(0x80CF30E0, &lit_4863);
#pragma pop

/* 80CF30E4-80CF30E8 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4864 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4864 = 3780.0f;
COMPILER_STRIP_GATE(0x80CF30E4, &lit_4864);
#pragma pop

/* 80CF30E8-80CF30EC 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4865 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4865 = 5600.0f;
COMPILER_STRIP_GATE(0x80CF30E8, &lit_4865);
#pragma pop

/* 80CF3210-80CF3230 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Sw_Method */
static actor_method_class l_daObj_Sw_Method = {
    (process_method_func)daObj_Sw_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Sw_Delete__FP12obj_sw_class,
    (process_method_func)daObj_Sw_Execute__FP12obj_sw_class,
    (process_method_func)daObj_Sw_IsDelete__FP12obj_sw_class,
    (process_method_func)daObj_Sw_Draw__FP12obj_sw_class,
};

/* 80CF3230-80CF3260 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_SW */
extern actor_process_profile_definition g_profile_OBJ_SW = {
  fpcLy_CURRENT_e,       // mLayerID
  4,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_OBJ_SW,           // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(obj_sw_class),  // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  60,                    // mPriority
  &l_daObj_Sw_Method,    // sub_method
  0x00044000,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 80CF3260-80CF3274 000164 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 80CF29D4-80CF2F38 002414 0564+00 1/0 0/0 0/0 .text            daObj_Sw_Create__FP10fopAc_ac_c */
static void daObj_Sw_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CF2F38-80CF2F3C 002978 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
//cXyz::cXyz() {
void __ct__4cXyzFv() {
    /* empty function */
}

/* 80CF2F3C-80CF2FA8 00297C 006C+00 1/1 0/0 0/0 .text            __dt__8obj_sc_sFv */
obj_sc_s::~obj_sc_s() {
    // NONMATCHING
}

/* 80CF2FA8-80CF2FDC 0029E8 0034+00 1/1 0/0 0/0 .text            __ct__8obj_sc_sFv */
obj_sc_s::obj_sc_s() {
    // NONMATCHING
}

/* 80CF2FDC-80CF2FF8 002A1C 001C+00 1/1 0/0 0/0 .text            getLeftHandPos__9daPy_py_cCFv */
// void daPy_py_c::getLeftHandPos() const {
extern "C" void getLeftHandPos__9daPy_py_cCFv() {
    // NONMATCHING
}

/* 80CF30EC-80CF30EC 0000EC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
