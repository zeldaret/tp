/**
 * @file d_a_e_kg.cpp
 * 
*/

#include "d/actor/d_a_e_kg.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"


//
// Declarations:
//

/* 806F7EEC-806F7F24 0000EC 0038+00 1/1 0/0 0/0 .text            __ct__12daE_KG_HIO_cFv */
daE_KG_HIO_c::daE_KG_HIO_c() {
    field_0x4 = -1;
    field_0x8 = 1.3f;
    field_0xc = 10.0f;
    field_0x10 = 600.0f;
}

/* ############################################################################################## */
/* 806FA3DC-806FA3E0 000038 0004+00 1/1 0/0 0/0 .rodata          @3825 */
SECTION_RODATA static f32 const lit_3825 = -1.0f;
COMPILER_STRIP_GATE(0x806FA3DC, &lit_3825);

/* 806FA46C-806FA46C 0000C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806FA46C = "E_kg";
#pragma pop

/* 806F7F24-806F7FD0 000124 00AC+00 6/6 0/0 0/0 .text            anm_init__FP10e_kg_classifUcf */
static void anm_init(e_kg_class* i_this, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA3E0-806FA3E4 00003C 0004+00 2/7 0/0 0/0 .rodata          @3853 */
SECTION_RODATA static f32 const lit_3853 = 50.0f;
COMPILER_STRIP_GATE(0x806FA3E0, &lit_3853);

/* 806FA3E4-806FA3E8 000040 0004+00 0/1 0/0 0/0 .rodata          @3854 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3854 = 700.0f;
COMPILER_STRIP_GATE(0x806FA3E4, &lit_3854);
#pragma pop

/* 806F7FD0-806F80D0 0001D0 0100+00 1/0 0/0 0/0 .text            daE_KG_Draw__FP10e_kg_class */
static void daE_KG_Draw(e_kg_class* i_this) {
    // NONMATCHING
}

/* 806F80D0-806F81A8 0002D0 00D8+00 1/1 0/0 0/0 .text other_bg_check__FP10e_kg_classP10fopAc_ac_c
 */
static void other_bg_check(e_kg_class* i_this, fopAc_ac_c* param_1) {
    // NONMATCHING
}

/* 806F81A8-806F8224 0003A8 007C+00 2/2 0/0 0/0 .text            pl_check__FP10e_kg_classfs */
static void pl_check(e_kg_class* i_this, f32 param_1, s16 param_2) {
    // NONMATCHING
}

/* 806F8224-806F8328 000424 0104+00 1/1 0/0 0/0 .text            damage_check__FP10e_kg_class */
static void damage_check(e_kg_class* i_this) {
    // NONMATCHING
}

/* 806F8328-806F8434 000528 010C+00 1/1 0/0 0/0 .text            way_bg_check__FP10e_kg_classf */
static void way_bg_check(e_kg_class* i_this, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA3E8-806FA3EC 000044 0004+00 0/4 0/0 0/0 .rodata          @4001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4001 = 0.5f;
COMPILER_STRIP_GATE(0x806FA3E8, &lit_4001);
#pragma pop

/* 806FA3EC-806FA3F0 000048 0004+00 0/1 0/0 0/0 .rodata          @4002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4002 = 200.0f;
COMPILER_STRIP_GATE(0x806FA3EC, &lit_4002);
#pragma pop

/* 806FA3F0-806FA3F4 00004C 0004+00 0/1 0/0 0/0 .rodata          @4003 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4003 = 32768.0f;
COMPILER_STRIP_GATE(0x806FA3F0, &lit_4003);
#pragma pop

/* 806FA3F4-806FA3F8 000050 0004+00 0/2 0/0 0/0 .rodata          @4004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4004 = 10000.0f;
COMPILER_STRIP_GATE(0x806FA3F4, &lit_4004);
#pragma pop

/* 806FA3F8-806FA3FC 000054 0004+00 0/1 0/0 0/0 .rodata          @4005 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4005 = 400.0f;
COMPILER_STRIP_GATE(0x806FA3F8, &lit_4005);
#pragma pop

/* 806FA3FC-806FA400 000058 0004+00 0/7 0/0 0/0 .rodata          @4006 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4006 = 5.0f;
COMPILER_STRIP_GATE(0x806FA3FC, &lit_4006);
#pragma pop

/* 806FA5E8-806FA5EC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 lbl_204_bss_8;

/* 806FA5F8-806FA60C 000018 0014+00 5/5 0/0 0/0 .bss             l_HIO */
static daE_KG_HIO_c l_HIO;

/* 806F8434-806F8714 000634 02E0+00 1/1 0/0 0/0 .text            e_kg_move__FP10e_kg_class */
static void e_kg_move(e_kg_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA400-806FA404 00005C 0004+00 0/1 0/0 0/0 .rodata          @4075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4075 = 2.0f;
COMPILER_STRIP_GATE(0x806FA400, &lit_4075);
#pragma pop

/* 806FA404-806FA408 000060 0004+00 0/1 0/0 0/0 .rodata          @4076 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4076 = 300.0f;
COMPILER_STRIP_GATE(0x806FA404, &lit_4076);
#pragma pop

/* 806FA408-806FA40C 000064 0004+00 0/2 0/0 0/0 .rodata          @4077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4077 = 20.0f;
COMPILER_STRIP_GATE(0x806FA408, &lit_4077);
#pragma pop

/* 806FA40C-806FA410 000068 0004+00 0/1 0/0 0/0 .rodata          @4078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4078 = 40.0f;
COMPILER_STRIP_GATE(0x806FA40C, &lit_4078);
#pragma pop

/* 806FA410-806FA414 00006C 0004+00 0/1 0/0 0/0 .rodata          @4079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4079 = -10.0f;
COMPILER_STRIP_GATE(0x806FA410, &lit_4079);
#pragma pop

/* 806FA414-806FA418 000070 0004+00 0/2 0/0 0/0 .rodata          @4080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4080 = 15.0f;
COMPILER_STRIP_GATE(0x806FA414, &lit_4080);
#pragma pop

/* 806FA418-806FA41C 000074 0004+00 0/2 0/0 0/0 .rodata          @4081 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4081 = 30.0f;
COMPILER_STRIP_GATE(0x806FA418, &lit_4081);
#pragma pop

/* 806F8714-806F8A40 000914 032C+00 1/1 0/0 0/0 .text            e_kg_attack__FP10e_kg_class */
static void e_kg_attack(e_kg_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA41C-806FA420 000078 0004+00 0/4 0/0 0/0 .rodata          @4101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4101 = 3.0f;
COMPILER_STRIP_GATE(0x806FA41C, &lit_4101);
#pragma pop

/* 806FA420-806FA424 00007C 0004+00 0/1 0/0 0/0 .rodata          @4102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4102 = -50.0f;
COMPILER_STRIP_GATE(0x806FA420, &lit_4102);
#pragma pop

/* 806FA424-806FA428 000080 0004+00 0/1 0/0 0/0 .rodata          @4103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4103 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x806FA424, &lit_4103);
#pragma pop

/* 806FA428-806FA42C 000084 0004+00 0/2 0/0 0/0 .rodata          @4104 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4104 = 4.0f;
COMPILER_STRIP_GATE(0x806FA428, &lit_4104);
#pragma pop

/* 806FA42C-806FA430 000088 0004+00 0/2 0/0 0/0 .rodata          @4105 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4105 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806FA42C, &lit_4105);
#pragma pop

/* 806F8A40-806F8B50 000C40 0110+00 1/1 0/0 0/0 .text            e_kg_back__FP10e_kg_class */
static void e_kg_back(e_kg_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA430-806FA434 00008C 0004+00 0/1 0/0 0/0 .rodata          @4126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4126 = -40.0f;
COMPILER_STRIP_GATE(0x806FA430, &lit_4126);
#pragma pop

/* 806F8B50-806F8C90 000D50 0140+00 1/1 0/0 0/0 .text            e_kg_s_damage__FP10e_kg_class */
static void e_kg_s_damage(e_kg_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA434-806FA438 000090 0004+00 0/1 0/0 0/0 .rodata          @4163 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4163 = 45.0f;
COMPILER_STRIP_GATE(0x806FA434, &lit_4163);
#pragma pop

/* 806FA438-806FA43C 000094 0004+00 0/1 0/0 0/0 .rodata          @4164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4164 = -35.0f;
COMPILER_STRIP_GATE(0x806FA438, &lit_4164);
#pragma pop

/* 806FA43C-806FA440 000098 0004+00 0/1 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = 1700.0f;
COMPILER_STRIP_GATE(0x806FA43C, &lit_4165);
#pragma pop

/* 806FA440-806FA444 00009C 0004+00 0/1 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166 = 0.75f;
COMPILER_STRIP_GATE(0x806FA440, &lit_4166);
#pragma pop

/* 806FA444-806FA448 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4167 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4167 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x806FA444, &lit_4167);
#pragma pop

/* 806FA448-806FA44C 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4168 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4168 = 0x3C75C28F;
COMPILER_STRIP_GATE(0x806FA448, &lit_4168);
#pragma pop

/* 806FA44C-806FA450 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4169 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4169 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x806FA44C, &lit_4169);
#pragma pop

/* 806F8C90-806F8F04 000E90 0274+00 1/1 0/0 0/0 .text            e_kg_damage__FP10e_kg_class */
static void e_kg_damage(e_kg_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA450-806FA454 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4198 = 25.0f;
COMPILER_STRIP_GATE(0x806FA450, &lit_4198);
#pragma pop

/* 806F8F04-806F90F8 001104 01F4+00 1/1 0/0 0/0 .text            e_kg_roof__FP10e_kg_class */
static void e_kg_roof(e_kg_class* i_this) {
    // NONMATCHING
}

extern "C" static void action__FP10e_kg_class();
/* 806FA4AC-806FA4D8 -00001 002C+00 1/1 0/0 0/0 .data            @4276 */
SECTION_DATA static void* lit_4276[11] = {
    (void*)(((char*)action__FP10e_kg_class) + 0x98),
    (void*)(((char*)action__FP10e_kg_class) + 0xA8),
    (void*)(((char*)action__FP10e_kg_class) + 0x108),
    (void*)(((char*)action__FP10e_kg_class) + 0xDC),
    (void*)(((char*)action__FP10e_kg_class) + 0x108),
    (void*)(((char*)action__FP10e_kg_class) + 0xCC),
    (void*)(((char*)action__FP10e_kg_class) + 0x108),
    (void*)(((char*)action__FP10e_kg_class) + 0x108),
    (void*)(((char*)action__FP10e_kg_class) + 0x108),
    (void*)(((char*)action__FP10e_kg_class) + 0xEC),
    (void*)(((char*)action__FP10e_kg_class) + 0xFC),
};

/* 806F90F8-806F9400 0012F8 0308+00 2/1 0/0 0/0 .text            action__FP10e_kg_class */
static void action(e_kg_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806FA454-806FA45C 0000B0 0008+00 0/0 0/0 0/0 .rodata          @4278 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4278[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806FA454, &lit_4278);
#pragma pop

/* 806FA45C-806FA460 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4296 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4296 = 9.0f;
COMPILER_STRIP_GATE(0x806FA45C, &lit_4296);
#pragma pop

/* 806FA460-806FA464 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4297 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4297 = 16.0f;
COMPILER_STRIP_GATE(0x806FA460, &lit_4297);
#pragma pop

/* 806FA464-806FA468 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4298 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4298 = 23.0f;
COMPILER_STRIP_GATE(0x806FA464, &lit_4298);
#pragma pop

/* 806F9400-806F94D0 001600 00D0+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_kg_class */
static void anm_se_set(e_kg_class* i_this) {
    // NONMATCHING
}

/* 806F94D0-806F97A8 0016D0 02D8+00 2/1 0/0 0/0 .text            daE_KG_Execute__FP10e_kg_class */
static void daE_KG_Execute(e_kg_class* i_this) {
    // NONMATCHING
}

/* 806F97A8-806F97B0 0019A8 0008+00 1/0 0/0 0/0 .text            daE_KG_IsDelete__FP10e_kg_class */
static bool daE_KG_IsDelete(e_kg_class* i_this) {
    return true;
}

/* 806F97B0-806F9818 0019B0 0068+00 1/0 0/0 0/0 .text            daE_KG_Delete__FP10e_kg_class */
static void daE_KG_Delete(e_kg_class* i_this) {
    // NONMATCHING
}

/* 806F9818-806F99B8 001A18 01A0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* i_this) {
    // NONMATCHING
}

/* 806F9A00-806F9CD4 001C00 02D4+00 1/0 0/0 0/0 .text            daE_KG_Create__FP10fopAc_ac_c */
static int daE_KG_Create(fopAc_ac_c* i_this) {
    // NONMATCHING - float literals
    /* 806FA4D8-806FA518 000064 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4468 */
    static dCcD_SrcSph cc_sph_src = {
        {
            {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xd}, {0xdafbfdff, 0x3}, 0x75}}, // mObj
            {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
        } // mSphAttr
    };

    fopAcM_SetupActor(i_this, e_kg_class);
    e_kg_class* a_this = (e_kg_class*) i_this;
    int phase = dComIfG_resLoad(&a_this->mPhase, "E_kg");
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("E_kg PARAM %x\n", fopAcM_GetParam(i_this));
        a_this->field_0x5b4 = fopAcM_GetParam(i_this);
        a_this->field_0x5b5 = (fopAcM_GetParam(i_this) >> 8) & 0xf;
        int param_val = fopAcM_GetParam(i_this) >> 0x18;
        if (param_val != 0xff) {
            if (dComIfGs_isSwitch(param_val, fopAcM_GetRoomNo(i_this))) {
                return cPhs_ERROR_e;
            }
        }

        OS_REPORT("E_kg//////////////E_KG SET 1 !!\n");
        if (!fopAcM_entrySolidHeap(i_this, (heapCallbackFunc)useHeapInit, 0x1fe0)) {
            OS_REPORT("//////////////E_KG SET NON !!\n");
            return cPhs_ERROR_e;
        }

        if (lbl_204_bss_8 == 0) {
            a_this->field_0xa70 = 1;
            lbl_204_bss_8 = 1;
            l_HIO.field_0x4 = -1;
        }

        i_this->attention_info.flags = 4;
        fopAcM_SetMtx(i_this, a_this->mpMorf->getModel()->getBaseTRMtx());
        i_this->health = 0x50;
        i_this->field_0x560 = 0x50;
        a_this->mStts.Init(100, 0, i_this);
        a_this->mSph.Set(cc_sph_src);
        a_this->mSph.SetStts(&a_this->mStts);
        a_this->mAcch.Set(fopAcM_GetPosition_p(i_this), fopAcM_GetOldPosition_p(i_this), i_this,
                          1, &a_this->mAcchCir, fopAcM_GetSpeed_p(i_this), NULL, NULL);
        a_this->mAcchCir.SetWall(50.0f, 50.0f);
        a_this->mSound.init(&a_this->current.pos, &a_this->eyePos, 3, 1);
        a_this->field_0xa4e = 1;
        a_this->mpSound = &a_this->mSound;
        a_this->mSound.setEnemyName("E_kg");
        if (a_this->field_0x5b4 == 1) {
            a_this->field_0x676 = 5;
        }

        a_this->field_0x674 = cM_rndF(65535.0f);
        daE_KG_Execute(a_this);
    }
    return phase;
}

/* 806FA518-806FA538 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_KG_Method */
static actor_method_class l_daE_KG_Method = {
    (process_method_func)daE_KG_Create,
    (process_method_func)daE_KG_Delete,
    (process_method_func)daE_KG_Execute,
    (process_method_func)daE_KG_IsDelete,
    (process_method_func)daE_KG_Draw,
};

/* 806FA538-806FA568 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_KG */
extern actor_process_profile_definition g_profile_E_KG = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_E_KG,             // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(e_kg_class),    // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  185,                   // mPriority
  &l_daE_KG_Method,      // sub_method
  0x100C0120,            // mStatus
  fopAc_ENEMY_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 806FA46C-806FA46C 0000C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
