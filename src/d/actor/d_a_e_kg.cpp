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

/* 806F7F24-806F7FD0 000124 00AC+00 6/6 0/0 0/0 .text            anm_init__FP10e_kg_classifUcf */
static void anm_init(e_kg_class* i_this, int i_index, f32 i_morf, u8 i_attr, f32 i_rate) {
    J3DAnmTransform* anm = (J3DAnmTransform*) dComIfG_getObjectRes("E_kg", i_index);
    i_this->mpMorf->setAnm(anm, i_attr, i_morf, i_rate, 0.0f, -1.0f);
    i_this->mResIndex = i_index;
}

/* 806F7FD0-806F80D0 0001D0 0100+00 1/0 0/0 0/0 .text            daE_KG_Draw__FP10e_kg_class */
static int daE_KG_Draw(e_kg_class* i_this) {
    J3DModel* model = i_this->mpMorf->getModel();
    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &i_this->tevStr);
    J3DModelData* model_data = model->getModelData();
    i_this->mpBtp->entry(model_data);
    i_this->mpMorf->entryDL();
    if (i_this->mShadowKey != 0x564FF) {
        cXyz my_vec_0;
        my_vec_0.set(i_this->current.pos.x, i_this->current.pos.y + 50.0f, i_this->current.pos.z);
        i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, &my_vec_0, 700.0f,
                                                0.0f, i_this->current.pos.y, i_this->mAcch.GetGroundH(),
                                                i_this->mAcch.m_gnd, &i_this->tevStr, 0, 1.0f,
                                                dDlst_shadowControl_c::getSimpleTex());
    }

    return 1;
}

/* 806F80D0-806F81A8 0002D0 00D8+00 1/1 0/0 0/0 .text other_bg_check__FP10e_kg_classP10fopAc_ac_c
 */
static int other_bg_check(e_kg_class* i_this, fopAc_ac_c* i_player) {
    fopAc_ac_c* _this = (fopAc_ac_c*)i_this;
    dBgS_LinChk lin_chk;
    cXyz my_vec_0;
    cXyz kg_pos;
    cXyz o_pos;
    o_pos = i_player->current.pos;
    o_pos.y += 100.0f;
    kg_pos = _this->current.pos;
    kg_pos.y = _this->eyePos.y;
    lin_chk.Set(&kg_pos, &o_pos, _this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return 1;
    } else {
        return 0;
    }
}

/* 806F81A8-806F8224 0003A8 007C+00 2/2 0/0 0/0 .text            pl_check__FP10e_kg_classfs */
static int pl_check(e_kg_class* i_this, f32 i_f32, s16 i_s16) {
    fopAc_ac_c* i_player = dComIfGp_getPlayer(0);
    if (i_this->field_0x690 < i_f32) {
        s16 diff = i_this->shape_angle.y - i_this->field_0x68c;
        if (diff < i_s16 && diff > (s16)(-i_s16)) {
            if (other_bg_check(i_this, i_player) == 0) {
                return 1;
            }
        }
    }

    return 0;
}

/* 806F8224-806F8328 000424 0104+00 1/1 0/0 0/0 .text            damage_check__FP10e_kg_class */
static void damage_check(e_kg_class* i_this) {
    dComIfGp_getPlayer(0);
    if (i_this->field_0x69c == 0) {
        i_this->mStts.Move();
        if (i_this->mSph.ChkTgHit()) {
            i_this->mAtInfo.mpCollider = i_this->mSph.GetTgHitObj();
            cc_at_check(i_this, &i_this->mAtInfo);
            if (i_this->mAtInfo.mpCollider->ChkAtType(0xd8000000)) {
                i_this->field_0x69c = 20;
            } else {
                i_this->field_0x69c = 10;
            }

            if (i_this->mAtInfo.mpCollider->ChkAtType(0x2000000)) {
                i_this->health = 0;
            }

            if (i_this->mAtInfo.mHitType == 0x10) {
                i_this->field_0x676 = 3;
            } else {
                if (i_this->health <= 0) {
                    i_this->field_0x676 = 10;
                } else {
                    i_this->field_0x676 = 9;
                }

                i_this->field_0xa54 = 15;
            }

            i_this->current.angle.y = i_this->mAtInfo.mHitDirection;
            i_this->field_0x678 = 0;
        }

        if (i_this->health <= 1) {
            i_this->mSph.SetTgHitMark(CcG_Tg_UNK_MARK_3);
        }
    }
}

/* 806F8328-806F8434 000528 010C+00 1/1 0/0 0/0 .text            way_bg_check__FP10e_kg_classf */
static int way_bg_check(e_kg_class* i_this, f32 i_f32) {
    fopAc_ac_c* _this = (fopAc_ac_c*)i_this;
    dBgS_LinChk lin_chk;
    cXyz my_vec_0;
    cXyz this_pos;
    cXyz my_vec_2;
    this_pos = _this->current.pos;
    this_pos.y += 50.0f;
    cMtx_YrotS(*calc_mtx, _this->shape_angle.y);
    my_vec_0.x = 0.0f;
    my_vec_0.y = 50.0f;
    my_vec_0.z = i_f32;
    MtxPosition(&my_vec_0, &my_vec_2);
    my_vec_2 += _this->current.pos;
    lin_chk.Set(&this_pos, &my_vec_2, _this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return 1;
    } else {
        return 0;
    }
}

/* 806FA5E8-806FA5EC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 lbl_204_bss_8;

/* 806FA5F8-806FA60C 000018 0014+00 5/5 0/0 0/0 .bss             l_HIO */
static daE_KG_HIO_c l_HIO;

/* 806F8434-806F8714 000634 02E0+00 1/1 0/0 0/0 .text            e_kg_move__FP10e_kg_class */
static void e_kg_move(e_kg_class* i_this) {
    int frame = i_this->mpMorf->getFrame();
    f32 tgt_val = 0.0f;
    cXyz my_vec_0;
    cXyz my_vec_1;
    if ((i_this->field_0x674 & 0xF) == 0 && cM_rndF(1.0f) < 0.5f) {
        i_this->mSound.startCreatureVoice(Z2SE_EN_KG_V_WAIT, -1);
    }

    switch (i_this->field_0x678) {
        case 0: {
            s16 my_s_val;
            if (i_this->field_0x694 == 0) {
                if (way_bg_check(i_this, 200.0f)) {
                    my_s_val = cM_rndFX(10000.0f) + 32768.0f;
                    i_this->field_0x696 = 40;
                } else {
                    my_vec_1.x = cM_rndFX(400.0f) + i_this->home.pos.x;
                    my_vec_1.y = i_this->home.pos.y;
                    my_vec_1.z = cM_rndFX(400.0f) + i_this->home.pos.z;
                    my_vec_0 = my_vec_1 - i_this->current.pos;
                    my_s_val = cM_atan2s(my_vec_0.x, my_vec_0.z) - i_this->current.angle.y;
                    if (my_s_val > 0x3000) {
                        my_s_val = 0x3000;
                    } else if (my_s_val < -0x3000) {
                        my_s_val = -0x3000;
                    }
                }

                i_this->field_0x688 = i_this->current.angle.y + my_s_val;
                anm_init(i_this, 0xF, 5.0f, 2, 1.0f);
                i_this->field_0x694 = cM_rndF(100.0f) + 50.0f;
                i_this->field_0x678 = 1;
            }

            break;
        }

        case 1: {
            if (frame <= 3 || ((frame >= 11 && frame <= 18) || (frame >= 26))) {
                tgt_val = l_HIO.field_0xc;
            }

            cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->field_0x688, 8, 0x400);

            if (i_this->field_0x694 == 0 || (i_this->field_0x696 == 0 && way_bg_check(i_this, 200.0f))) {
                i_this->field_0x678 = 0;
                i_this->field_0x694 = cM_rndF(100.0f) + 50.0f;
                anm_init(i_this, 0xE, 5.0f, 2, 1.0f);
            }

            break;
        }
    }

    cLib_addCalc2(&i_this->speedF, tgt_val, 1.0f, l_HIO.field_0xc * 0.5f);
    if (pl_check(i_this, l_HIO.field_0x10, 0x6000)) {
        i_this->field_0x676 = 1;
        i_this->field_0x678 = 0;
    }
}

/* 806F8714-806F8A40 000914 032C+00 1/1 0/0 0/0 .text            e_kg_attack__FP10e_kg_class */
static int e_kg_attack(e_kg_class* i_this) {
    int frame = i_this->mpMorf->getFrame();
    f32 next_speed = 0.0f;
    s16 angle_add = 0;
    cXyz my_vec_0;
    cXyz my_vec_1;
    int ret_val = 0;
    switch (i_this->field_0x678) {
        case 0: {
            anm_init(i_this, 0xF, 5.0f, 2, 2.0f);
            i_this->field_0x678 = 1;
            i_this->mSound.startCreatureVoice(Z2SE_EN_KG_V_FIND, -1);
            break;
        }

        case 1: {
            angle_add = 0x700;
            if (frame <= 3 || ((frame >= 11 && frame <= 18) || (frame >= 26))) {
                next_speed = l_HIO.field_0xc * 2.0f;
            }

            i_this->speedF = next_speed;
            if (pl_check(i_this, l_HIO.field_0x10 + 100.0f, 0x7000) == 0) {
                i_this->field_0x676 = 0;
                i_this->field_0x678 = 0;
                i_this->field_0x694 = 0;
            } else if (i_this->field_0x690 < 300.0f) {
                anm_init(i_this, 0x5, 5.0f, 0, 1.0f);
                i_this->field_0x678 = 2;
                i_this->field_0x66c = cM_rndF(50.0f) + 100.0f;
            }

            break;
        }

        case 2: {
            i_this->speedF = 0.0f;
            if (frame == 50) {
                i_this->mSound.startCreatureVoice(Z2SE_EN_KG_V_ATTACK, -1);
            }

            if (frame < 58) {
                angle_add = 0x400;
            }

            if (frame >= 63) {
                i_this->mpMorf->setPlaySpeed(0.0f);
                i_this->field_0x678 = 3;
                i_this->speed.y = 20.0f;
                i_this->speedF = 40.0f;
                i_this->mSound.startCreatureSound(Z2SE_EN_KG_ATTACK, 0, -1);
            }

            break;
        }

        case 3: {
            ret_val = 1;
            if (i_this->mAcch.ChkGroundHit()) {
                i_this->mpMorf->setPlaySpeed(1.0f);
                i_this->field_0x678 = 4;
            }

            if (i_this->mSph.ChkAtShieldHit()) {
                i_this->speedF = -10.0f;
            }

            break;
        }

        case 4: {
            cLib_addCalc0(&i_this->speedF, 1.0f, 15.0f);
            if (i_this->mpMorf->isStop()) {
                i_this->field_0x694 = cM_rndF(30.0f) + 30.0f;
                anm_init(i_this, 0xE, 5.0f, 2, 1.0f);
                i_this->field_0x678 = 5;
            }

            break;
        }

        case 5: {
            if (i_this->field_0x694 == 0) {
                i_this->field_0x676 = 0;
                i_this->field_0x678 = 0;
            }

            break;
        }
    }

    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->field_0x68c, 8, angle_add);
    return ret_val;
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
        a_this->mAtInfo.mPowerType = 1;
        a_this->mAtInfo.mpSound = &a_this->mSound;
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
