/**
 * @file d_a_e_zs.cpp
 * 
*/

#include "d/actor/d_a_e_zs.h"
#include "dol2asm.h"
#include "d/actor/d_a_b_ds.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"


//
// Declarations:
//

/* 80835384-808353C8 000038 0044+00 1/1 0/0 0/0 .data            cc_zs_src__22@unnamed@d_a_e_zs_cpp@
 */
static dCcD_SrcCyl cc_zs_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x43}, 0x75}},  // mObj
        {dCcD_SE_13, 0x0, 0x0, 0x0, 0x0},                    // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x0206},               // mGObjTg
        {0x0},                                               // mGObjCo
    },                                                       // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        30.0f,               // mRadius
        130.0f               // mHeight
    }  // mCyl
};

/* 808353C8-808353D0 00007C 0006+02 1/1 0/0 0/0 .data            eff_Damage_id$3979 */
SECTION_DATA static u8 eff_Damage_id[6 + 2 /* padding */] = {
    0x8B,
    0xE9,
    0x8B,
    0xEA,
    0x8B,
    0xEB,
    /* padding */
    0x00,
    0x00,
};

/* 808353D0-808353D4 000084 0004+00 1/1 0/0 0/0 .data            eff_Appear_id$4194 */
SECTION_DATA static u8 eff_Appear_id[4] = {
    0x8B,
    0xE7,
    0x8B,
    0xE8,
};

/* 808353D4-808353DC 000088 0008+00 1/1 0/0 0/0 .data            w_eff_id$4324 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x85, 0x4C, 0x85, 0x4D, 0x85, 0x4E, 0x85, 0x4F,
};

/* 808330AC-808330DC 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__12daE_ZS_HIO_cFv */
daE_ZS_HIO_c::daE_ZS_HIO_c() {
    field_0x4 = -1;
    field_0x8 = 1.4;
    field_0xc = 1200.0f;
}

/* 808330DC-808331C4 00011C 00E8+00 1/1 0/0 0/0 .text            draw__8daE_ZS_cFv */
int daE_ZS_c::draw() {
    if (field_0x673 == 0) {
        return 1;
    }

    J3DModel * model = mpMorf->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    mpMorf->entryDL();
    cXyz adj_pos;
    adj_pos.set(current.pos.x, current.pos.y + 10.0f, current.pos.z);
    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &adj_pos, 700.0f, 0.0f,
                                    current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0,
                                    1.0f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 808331C4-808331E4 000204 0020+00 1/0 0/0 0/0 .text            daE_ZS_Draw__FP8daE_ZS_c */
static void daE_ZS_Draw(daE_ZS_c* i_this) {
    i_this->draw();
}

/* 808331E4-80833290 000224 00AC+00 4/4 0/0 0/0 .text            setBck__8daE_ZS_cFiUcff */
void daE_ZS_c::setBck(int i_res_index, u8 i_attr, f32 i_morf, f32 i_rate) {
    J3DAnmTransform* anmTransform = (J3DAnmTransform*)dComIfG_getObjectRes("E_ZS", i_res_index);
    mpMorf->setAnm(anmTransform, i_attr, i_morf, i_rate, 0.0f, -1.0f);
    mResIndex = i_res_index;
}

/* 80833290-8083329C 0002D0 000C+00 7/7 0/0 0/0 .text            setActionMode__8daE_ZS_cFii */
void daE_ZS_c::setActionMode(int param_0, int param_1) {
    field_0x660 = param_0;
    field_0x664 = param_1;
}

/* ############################################################################################## */
/* 808354A0-808354A4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 lbl_259_bss_8;

/* 808354B0-808354C0 000018 0010+00 6/6 0/0 0/0 .bss             l_HIO */
static daE_ZS_HIO_c l_HIO;

/* 8083329C-8083364C 0002DC 03B0+00 1/1 0/0 0/0 .text            damage_check__8daE_ZS_cFv */
void daE_ZS_c::damage_check() {
    // NONMATCHING
}

/* 8083364C-80833698 00068C 004C+00 4/4 0/0 0/0 .text            s_BossSearch__FPvPv */
static void s_BossSearch(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80835310-80835314 000040 0004+00 0/1 0/0 0/0 .rodata          @4183 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4183 = 400.0f;
COMPILER_STRIP_GATE(0x80835310, &lit_4183);
#pragma pop

/* 80833698-80833964 0006D8 02CC+00 2/2 0/0 0/0 .text            mBossHandCheck__8daE_ZS_cFv */
void daE_ZS_c::mBossHandCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80835314-80835318 000044 0004+00 0/1 0/0 0/0 .rodata          @4276 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4276 = -240.0f;
COMPILER_STRIP_GATE(0x80835314, &lit_4276);
#pragma pop

/* 80835318-8083531C 000048 0004+00 0/4 0/0 0/0 .rodata          @4277 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4277 = 3.0f;
COMPILER_STRIP_GATE(0x80835318, &lit_4277);
#pragma pop

/* 8083531C-80835320 00004C 0004+00 0/1 0/0 0/0 .rodata          @4278 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4278 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x8083531C, &lit_4278);
#pragma pop

/* 80835320-80835324 000050 0004+00 0/2 0/0 0/0 .rodata          @4279 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4279 = -2.0f;
COMPILER_STRIP_GATE(0x80835320, &lit_4279);
#pragma pop

/* 808354C0-808354C4 -00001 0004+00 3/3 0/0 0/0 .bss             None */
static u8 lbl_259_bss_28;
static u8 lbl_259_bss_29;

/* 80833964-80833D30 0009A4 03CC+00 1/1 0/0 0/0 .text            executeAppear__8daE_ZS_cFv */
void daE_ZS_c::executeAppear() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80835324-80835328 000054 0004+00 0/1 0/0 0/0 .rodata          @4318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4318 = 0.5f;
COMPILER_STRIP_GATE(0x80835324, &lit_4318);
#pragma pop

/* 80835328-8083532C 000058 0004+00 0/2 0/0 0/0 .rodata          @4319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4319 = 5.0f;
COMPILER_STRIP_GATE(0x80835328, &lit_4319);
#pragma pop

/* 80833D30-80833F1C 000D70 01EC+00 1/2 0/0 0/0 .text            executeWait__8daE_ZS_cFv */
void daE_ZS_c::executeWait() {
    // NONMATCHING
}

/* 80833F1C-80834108 000F5C 01EC+00 1/1 0/0 0/0 .text            executeDamage__8daE_ZS_cFv */
void daE_ZS_c::executeDamage() {
    // NONMATCHING
}

/* 80834108-808342C8 001148 01C0+00 1/1 0/0 0/0 .text            executeDrive__8daE_ZS_cFv */
void daE_ZS_c::executeDrive() {
    // NONMATCHING
}

/* 808342C8-80834478 001308 01B0+00 1/1 0/0 0/0 .text            action__8daE_ZS_cFv */
void daE_ZS_c::action() {
    // NONMATCHING
}

/* 80834478-80834518 0014B8 00A0+00 1/1 0/0 0/0 .text            mtx_set__8daE_ZS_cFv */
void daE_ZS_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8083532C-80835330 00005C 0004+00 0/1 0/0 0/0 .rodata          @4498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4498 = 25.0f;
COMPILER_STRIP_GATE(0x8083532C, &lit_4498);
#pragma pop

/* 80835330-80835334 000060 0004+00 0/1 0/0 0/0 .rodata          @4499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4499 = 280.0f;
COMPILER_STRIP_GATE(0x80835330, &lit_4499);
#pragma pop

/* 80835334-80835338 000064 0004+00 0/1 0/0 0/0 .rodata          @4500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4500 = 50.0f;
COMPILER_STRIP_GATE(0x80835334, &lit_4500);
#pragma pop

/* 80834518-80834650 001558 0138+00 1/1 0/0 0/0 .text            cc_set__8daE_ZS_cFv */
void daE_ZS_c::cc_set() {
    // NONMATCHING
}

/* 80834650-808346BC 001690 006C+00 1/1 0/0 0/0 .text            execute__8daE_ZS_cFv */
void daE_ZS_c::execute() {
    // NONMATCHING
}

/* 808346BC-808346DC 0016FC 0020+00 2/1 0/0 0/0 .text            daE_ZS_Execute__FP8daE_ZS_c */
static void daE_ZS_Execute(daE_ZS_c* i_this) {
    i_this->execute();
}

/* 808346DC-808346E4 00171C 0008+00 1/0 0/0 0/0 .text            daE_ZS_IsDelete__FP8daE_ZS_c */
static bool daE_ZS_IsDelete(daE_ZS_c* i_this) {
    return true;
}

/* 808346E4-80834758 001724 0074+00 1/1 0/0 0/0 .text            _delete__8daE_ZS_cFv */
void daE_ZS_c::_delete() {
    // NONMATCHING
}

/* 80834758-80834778 001798 0020+00 1/0 0/0 0/0 .text            daE_ZS_Delete__FP8daE_ZS_c */
static void daE_ZS_Delete(daE_ZS_c* i_this) {
    i_this->_delete();
}

/* 80834778-80834864 0017B8 00EC+00 1/1 0/0 0/0 .text            CreateHeap__8daE_ZS_cFv */
void daE_ZS_c::CreateHeap() {
    // NONMATCHING
}

/* 80834864-80834884 0018A4 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    static_cast<daE_ZS_c*>(i_this)->CreateHeap();
}

/* 80834884-80834BA8 0018C4 0324+00 1/1 0/0 0/0 .text            create__8daE_ZS_cFv */
int daE_ZS_c::create() {
    fopAcM_SetupActor(this, daE_ZS_c);
    int phase = dComIfG_resLoad(&mPhase, "E_ZS");
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("E_ZS PARAM %x\n", fopAcM_GetParam(this));
        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0xfc0)) {
            return cPhs_ERROR_e;
        }

        if (lbl_259_bss_8 == 0) {
            lbl_259_bss_8 = 1;
            field_0xa28 = 1;
            l_HIO.field_0x4 = -1;
        }

        field_0x672 = fopAcM_GetParam(this);
        if (field_0x672 == 0xff) {
            field_0x672 = 0;
        }

        OS_REPORT("arg0 %d\n", field_0x672);
        attention_info.flags = 4;
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(this, 200.0f, 200.0f, 200.0f);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), NULL, NULL);
        mAcchCir.SetWall(10.0f, 60.0f);
        mStts.Init(0xff, 0, this);
        health = 0x14;
        field_0x560 = 0x14;
        field_0x671 = 5;
        mCyl.Set(cc_zs_src);
        mCyl.SetStts(&mStts);
        mSound.init(&current.pos, &eyePos, 3, 1);
        mpSound = &mSound;
        field_0xa22 = 10;
        gravity = -1.0f;
        mpMorf->setStartFrame(0.0f);
        onWolfNoLock();
        if (field_0x672 == 0) {
            setActionMode(0, 0);
        } else {
            field_0x673 = 0;
            setActionMode(0, 10);
        }

        shape_angle.z = 0;
        shape_angle.x = 0;
        attention_info.distances[2] = 0;
        daE_ZS_Execute(this);
        mCyl.OffTgSetBit();
        mCyl.OffCoSetBit();
    }

    return phase;
}

/* 80834D74-80834D94 001DB4 0020+00 1/0 0/0 0/0 .text            daE_ZS_Create__FP8daE_ZS_c */
static void daE_ZS_Create(daE_ZS_c* i_this) {
    i_this->create();
}

/* 808353DC-808353FC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_ZS_Method */
static actor_method_class l_daE_ZS_Method = {
    (process_method_func)daE_ZS_Create,
    (process_method_func)daE_ZS_Delete,
    (process_method_func)daE_ZS_Execute,
    (process_method_func)daE_ZS_IsDelete,
    (process_method_func)daE_ZS_Draw,
};

/* 808353FC-8083542C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_ZS */
extern actor_process_profile_definition g_profile_E_ZS = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_ZS,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_ZS_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  170,                    // mPriority
  &l_daE_ZS_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80835344-80835344 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
