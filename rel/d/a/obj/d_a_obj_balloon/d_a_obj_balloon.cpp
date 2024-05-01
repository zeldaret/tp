//
// Balloon
//

#include "rel/d/a/obj/d_a_obj_balloon/d_a_obj_balloon.h"
#include "rel/d/a/d_a_balloon_2D/d_a_balloon_2D.h"
#include "d/cc/d_cc_d.h"
#include "d/cc/d_cc_uty.h"
#include "d/d_drawlist.h"
#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"
#include "SSystem/SComponent/c_math.h"
#include "JSystem/JAudio2/JASAudioThread.h"
#include "JSystem/JAudio2/JAUSoundTable.h"
#include "Z2AudioLib/Z2WolfHowlMgr.h"

/* 80BA8E5C-80BA8E68 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BA8E68-80BA8E7C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80BA8FB0-80BA8FB4 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80BA8FB4-80BA8FB8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80BA8FB8-80BA8FBC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80BA8FBC-80BA8FC0 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80BA8FC0-80BA8FC4 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80BA8FC4-80BA8FC8 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80BA8FC8-80BA8FCC 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80BA8FCC-80BA8FD0 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80BA8FD0-80BA8FD4 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80BA8FD4-80BA8FD8 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80BA8FD8-80BA8FDC 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80BA8FDC-80BA8FE0 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80BA8FE0-80BA8FE4 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80BA8FE4-80BA8FE8 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80BA8FE8-80BA8FEC 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80BA8FEC-80BA8FF0 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80BA8E7C-80BA8E80 000020 0004+00 0/1 0/0 0/0 .data
 * m_combo_type__29@unnamed@d_a_obj_balloon_cpp@                */
static int m_combo_type = 0xFFFFFFFF;

/* 80BA8E80-80BA8E8C 000024 000C+00 1/1 0/0 0/0 .data            balloon_radius$3706 */
static f32 balloon_radius[3] = {
    1070.0f, 390.0f, 110.0f,
};

/* 80BA8E8C-80BA8E90 000030 0004+00 0/1 0/0 0/0 .data            kago_wall_hit_id$3736 */
static u16 kago_wall_hit_id[2] = {
    0x8A12,
    0x8A13,
};

/* 80BA8E90-80BA8E9C 000034 000C+00 0/1 0/0 0/0 .data            kago_effect_scale$3737 */
static f32 kago_effect_scale[3] = {
    4.0f, 1.5f, 0.8f,
};

/* 80BA8E9C-80BA8EA8 000040 000C+00 0/1 0/0 0/0 .data            break_sound_id$3749 */
static u32 break_sound_id[3] = {
    Z2SE_OBJ_BLN_BREAK_L, Z2SE_OBJ_BLN_BREAK_M, Z2SE_OBJ_BLN_BREAK_S,
};

/* 80BA8EA8-80BA8EE8 00004C 0040+00 1/1 0/0 0/0 .data            cc_sph_src$3893 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x8, 0x11}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80BA7FAC-80BA7FF4 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__19daObj_Balloon_HIO_cFv */
daObj_Balloon_HIO_c::daObj_Balloon_HIO_c() {
    field_0x04 = -1;
    field_0x08[0] = 1.0f;
    field_0x08[1] = 1.0f;
    field_0x08[2] = 1.5f;
    field_0x14[0] = 1.0f;
    field_0x14[1] = 3.0f;
    field_0x14[2] = 10.0f;
}

/* 80BA7FF4-80BA80D4 000134 00E0+00 1/1 0/0 0/0 .text            draw__15daObj_Balloon_cFv */
int daObj_Balloon_c::draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    fopAcM_setEffectMtx(this, mModel->getModelData());
    mDoExt_modelUpdateDL(mModel);
    cXyz acStack_28;
    acStack_28.set(current.pos.x, current.pos.y + 100.0f, current.pos.z);
    field_0x574 = dComIfGd_setShadow(field_0x574, 1, mModel, &acStack_28, 400.0f, 0.0f,
                                     current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0,
                                     1.0f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 80BA80D4-80BA80F4 000214 0020+00 1/0 0/0 0/0 .text daObj_Balloon_Draw__FP15daObj_Balloon_c */
static int daObj_Balloon_Draw(daObj_Balloon_c* i_this) {
    return i_this->draw();
}

/* 80BA8FF0-80BA8FF4 000048 0004+00 0/1 0/0 0/0 .bss
 * m_combo_count__29@unnamed@d_a_obj_balloon_cpp@               */
static int m_combo_count;

/* 80BA8FF4-80BA8FF8 00004C 0004+00 0/1 0/0 0/0 .bss
 * m_combo_next_score__29@unnamed@d_a_obj_balloon_cpp@          */
static int m_combo_next_score;

/* 80BA8FF8-80BA8FFC 000050 0004+00 1/2 0/0 0/0 .bss
 * m_balloon_score__29@unnamed@d_a_obj_balloon_cpp@             */
static u32 m_balloon_score;

/* 80BA80F4-80BA810C 000234 0018+00 0/0 0/0 1/1 .text            saveBestScore__15daObj_Balloon_cFv
 */
void daObj_Balloon_c::saveBestScore() {
    dComIfGp_setMessageCountNumber(m_balloon_score);
}

/* ############################################################################################## */
/* 80BA8FFC-80BA9000 000054 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80BA8FFC;

/* 80BA9000-80BA900C 000058 000C+00 1/1 0/0 0/0 .bss             @3651 */
//static u8 lit_3651[12];

/* 80BA900C-80BA902C 000064 0020+00 4/5 0/0 0/0 .bss             l_HIO */
static daObj_Balloon_HIO_c l_HIO;

/* 80BA810C-80BA81B8 00024C 00AC+00 1/1 0/0 0/0 .text            cc_set__15daObj_Balloon_cFv */
void daObj_Balloon_c::cc_set() {
    cXyz cStack_18;
    mDoMtx_stack_c::copy(mModel->getBaseTRMtx());
    mDoMtx_stack_c::multVecZero(&cStack_18);
    mSph.SetC(cStack_18);
    mSph.SetR(balloon_radius[field_0x578] * l_HIO.field_0x08[field_0x578]);
    dComIfG_Ccsp()->Set(&mSph);
}

/* 80BA81B8-80BA865C 0002F8 04A4+00 1/1 0/0 0/0 .text            action__15daObj_Balloon_cFv */
void daObj_Balloon_c::action() {
    switch (field_0x579) {
    case 0:
        gravity = 0.0f;
        speedF = 0.0f;
        speed.y = 0.0f;
        field_0x579 = 1;
        break;
    case 1:
        cLib_addCalcAngleS2(&field_0x580, field_0x584, 16, 8);
        cLib_addCalcAngleS2(&field_0x582, field_0x586, 16, 8);
        cLib_chaseF(&speed.y, -3.0f, 0.1f);
        if (current.pos.y < home.pos.y) {
            field_0x579 = 2;
            field_0x57c = (s16)(30.0f + cM_rndF(60.0f));
            field_0x584 = 512.0f + cM_rndF(512.0f);
            field_0x586 = 512.0f + cM_rndF(512.0f);
        }
        break;
    case 2:
        cLib_addCalcAngleS2(&field_0x580, field_0x584, 16, 32);
        cLib_addCalcAngleS2(&field_0x582, field_0x586, 16, 32);
        cLib_chaseF(&speed.y, 5.0f, 0.1f);
        if (field_0x57c == 0) {
            field_0x579 = 1;
            field_0x584 = cM_rndF(128.0f);
            field_0x586 = cM_rndF(128.0f);
        }
        break;
    }
    shape_angle.z += field_0x580;
    shape_angle.y += field_0x582;
    if (field_0x57c != 0) {
        field_0x57c--;
    }
    mStts.Move();
    if (mSph.ChkTgHit()) {
        cCcD_Obj* tgHit = mSph.GetTgHitObj();
        if (fopAcM_GetName(dCc_GetAc(tgHit->GetAc())) == 0xf4) {
            cXyz cStack_48(kago_effect_scale[field_0x578], kago_effect_scale[field_0x578],
                           kago_effect_scale[field_0x578]);
            for (int i = 0; i < 2; i++) {
                dComIfGp_particle_set(kago_wall_hit_id[i], &current.pos, &tevStr, &shape_angle,
                                      &cStack_48);
            }
            u32 local_74;
            u32 local_28;
            if (m_combo_type == field_0x578) {
                m_combo_count++;
                local_74 = m_combo_next_score;
                if (m_combo_count >= 10) {
                    m_combo_next_score = l_HIO.field_0x14[field_0x578] * 512.0f;
                    local_28 = m_combo_next_score;
                } else {
                    m_combo_next_score <<= 1;
                }
            } else {
                m_combo_type = field_0x578;
                m_combo_count = 1;
                m_combo_next_score =
                    l_HIO.field_0x14[field_0x578] * 2.0f;
                local_28 = m_combo_next_score;
                local_74 = l_HIO.field_0x14[field_0x578];
            }
            Z2GetAudioMgr()->seStart(break_sound_id[field_0x578], &current.pos, m_combo_count, 0, 1.0f, 1.0f,
                             -1.0f, -1.0f, 0);
            m_balloon_score += local_74;
            daBalloon2D_c* balloon2d = (daBalloon2D_c*)fopAcM_SearchByName(PROC_BALLOON2D);
            if (balloon2d != NULL) {
                u8 unaff_r25;
                if (field_0x578 == 2) {
                    unaff_r25 = 0;
                } else if (field_0x578 == 1) {
                    unaff_r25 = 1;
                } else if (field_0x578 == 0) {
                    unaff_r25 = 2;
                }
                cXyz cStack_54(dCc_GetAc(tgHit->GetAc())->current.pos);
                cStack_54 = (cStack_54 + current.pos) / 2.0f;
                balloon2d->setComboCount(unaff_r25, m_combo_count);
                balloon2d->setScoreCount(m_balloon_score);
                balloon2d->addScoreCount(&cStack_54, local_74, unaff_r25);
            }
            fopAcM_delete(this);
            return;
        }
    }
    fopAcM_posMoveF(this, mStts.GetCCMoveP());
}

/* 80BA865C-80BA86CC 00079C 0070+00 1/1 0/0 0/0 .text            mtx_set__15daObj_Balloon_cFv */
void daObj_Balloon_c::mtx_set() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(l_HIO.field_0x08[field_0x578],
                           l_HIO.field_0x08[field_0x578],
                           l_HIO.field_0x08[field_0x578]);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80BA86CC-80BA870C 00080C 0040+00 1/1 0/0 0/0 .text            execute__15daObj_Balloon_cFv */
int daObj_Balloon_c::execute() {
    action();
    cc_set();
    mtx_set();
    return 1;
}

/* 80BA870C-80BA872C 00084C 0020+00 2/1 0/0 0/0 .text daObj_Balloon_Execute__FP15daObj_Balloon_c
 */
static int daObj_Balloon_Execute(daObj_Balloon_c* i_this) {
    return i_this->execute();
}

/* 80BA872C-80BA8734 00086C 0008+00 1/0 0/0 0/0 .text daObj_Balloon_IsDelete__FP15daObj_Balloon_c
 */
static int daObj_Balloon_IsDelete(daObj_Balloon_c* i_this) {
    return 1;
}

/* 80BA8734-80BA87AC 000874 0078+00 1/1 0/0 0/0 .text            _delete__15daObj_Balloon_cFv */
int daObj_Balloon_c::_delete() {
    dComIfG_resDelete(&mPhase, "Obj_bal");
    Z2GetAudioMgr()->seStop(Z2SE_OBJ_WATERMILL_ROUND, 0);
    if (field_0x914 != 0) {
        data_80BA8FFC = 0;
    }
    return 1;
}

/* 80BA87AC-80BA87CC 0008EC 0020+00 1/0 0/0 0/0 .text daObj_Balloon_Delete__FP15daObj_Balloon_c */
static int daObj_Balloon_Delete(daObj_Balloon_c* i_this) {
    return i_this->_delete();
}

/* 80BA87CC-80BA88A4 00090C 00D8+00 1/1 0/0 0/0 .text            CreateHeap__15daObj_Balloon_cFv */
int daObj_Balloon_c::CreateHeap() {
    J3DModelData* modelData;
    if (field_0x578 == 0) {
        modelData = (J3DModelData*)dComIfG_getObjectRes("Obj_bal", 3);
    } else if (field_0x578 == 1) {
        modelData = (J3DModelData*)dComIfG_getObjectRes("Obj_bal", 4);
    } else if (field_0x578 == 2) {
        modelData = (J3DModelData*)dComIfG_getObjectRes("Obj_bal", 5);
    }
    JUT_ASSERT(501, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
    return mModel != NULL ? 1 : 0;
}

/* 80BA88A4-80BA88C4 0009E4 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return static_cast<daObj_Balloon_c*>(i_this)->CreateHeap();
}

/* 80BA88C4-80BA8B30 000A04 026C+00 1/1 0/0 0/0 .text            create__15daObj_Balloon_cFv */
int daObj_Balloon_c::create() {
    fopAcM_SetupActor(this, daObj_Balloon_c);
    field_0x578 = fopAcM_GetParam(this);
    if (field_0x578 == 0xff) {
        field_0x578 = 0x0;
    }
    int rv = dComIfG_resLoad(&mPhase, "Obj_bal");
    if (rv == cPhs_COMPLEATE_e) {
        OS_REPORT("Obj_Balloon PARAM %x\n", fopAcM_GetParam(this));
        if (fopAcM_entrySolidHeap(this, useHeapInit, 0xd60) == 0) {
            return cPhs_ERROR_e;
        } else {
            if (data_80BA8FFC == 0) {
                field_0x914 = 1;
                data_80BA8FFC = 1;
                l_HIO.field_0x04 = -1;
            }
            attention_info.flags = 0;
            fopAcM_SetMtx(this, mModel->getBaseTRMtx());
            fopAcM_SetMin(this, -1000.0f, -1000.0f, -1000.0f);
            fopAcM_SetMax(this, 1000.0f, 1000.0f, 1000.0f);
            fopAcM_setCullSizeFar(this, 2.0f);
            mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                      fopAcM_GetSpeed_p(this), NULL, NULL);
            mAcchCir.SetWall(0.0f, 0.0f);
            health = 60;
            field_0x560 = 60;
            mStts.Init(0xff, 0, this);
            mSph.Set(cc_sph_src);
            mSph.SetStts(&mStts);
            daObj_Balloon_Execute(this);
        }
    }
    return rv;
}

/* 80BA8CFC-80BA8D1C 000E3C 0020+00 1/0 0/0 0/0 .text daObj_Balloon_Create__FP15daObj_Balloon_c */
static int daObj_Balloon_Create(daObj_Balloon_c* i_this) {
    return i_this->create();
}

/* 80BA8EE8-80BA8F08 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Balloon_Method */
static actor_method_class l_daObj_Balloon_Method = {
    (process_method_func)daObj_Balloon_Create,  (process_method_func)daObj_Balloon_Delete,
    (process_method_func)daObj_Balloon_Execute, (process_method_func)daObj_Balloon_IsDelete,
    (process_method_func)daObj_Balloon_Draw,
};

/* 80BA8F08-80BA8F38 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_BALLOON */
extern actor_process_profile_definition g_profile_OBJ_BALLOON = {
    fpcLy_CURRENT_e,          // mLayerID
    7,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_OBJ_BALLOON,         // mProcName
    &g_fpcLf_Method.mBase,    // sub_method
    sizeof(daObj_Balloon_c),  // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    64,                       // mPriority
    &l_daObj_Balloon_Method,  // sub_method
    0x40100,                  // mStatus
    fopAc_ACTOR_e,            // mActorType
    fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* ############################################################################################## */
/* 80BA902C-80BA9030 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
JASDefaultBankTable* JASGlobalInstance<JASDefaultBankTable>::sInstance;

/* 80BA9030-80BA9034 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
JASAudioThread* JASGlobalInstance<JASAudioThread>::sInstance;

/* 80BA9034-80BA9038 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
Z2SeMgr* JASGlobalInstance<Z2SeMgr>::sInstance;

/* 80BA9038-80BA903C 000090 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
Z2SeqMgr* JASGlobalInstance<Z2SeqMgr>::sInstance;

/* 80BA903C-80BA9040 000094 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
Z2SceneMgr* JASGlobalInstance<Z2SceneMgr>::sInstance;

/* 80BA9040-80BA9044 000098 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
Z2StatusMgr* JASGlobalInstance<Z2StatusMgr>::sInstance;

/* 80BA9044-80BA9048 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80BA9044[4];
#pragma pop

/* 80BA9048-80BA904C 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
JAISoundStarter* JASGlobalInstance<JAISoundStarter>::sInstance;

/* 80BA904C-80BA9050 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
Z2SoundStarter* JASGlobalInstance<Z2SoundStarter>::sInstance;

/* 80BA9050-80BA9054 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
Z2SpeechMgr2* JASGlobalInstance<Z2SpeechMgr2>::sInstance;

/* 80BA9054-80BA9058 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
JAISeMgr* JASGlobalInstance<JAISeMgr>::sInstance;

/* 80BA9058-80BA905C 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
JAISeqMgr* JASGlobalInstance<JAISeqMgr>::sInstance;

/* 80BA905C-80BA9060 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
JAIStreamMgr* JASGlobalInstance<JAIStreamMgr>::sInstance;

/* 80BA9060-80BA9064 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
Z2SoundMgr* JASGlobalInstance<Z2SoundMgr>::sInstance;

/* 80BA9064-80BA9068 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
JAISoundInfo* JASGlobalInstance<JAISoundInfo>::sInstance;

/* 80BA9068-80BA906C 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
JAUSoundTable* JASGlobalInstance<JAUSoundTable>::sInstance;

/* 80BA906C-80BA9070 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
JAUSoundNameTable* JASGlobalInstance<JAUSoundNameTable>::sInstance;

/* 80BA9070-80BA9074 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
JAUSoundInfo* JASGlobalInstance<JAUSoundInfo>::sInstance;

/* 80BA9074-80BA9078 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
Z2SoundInfo* JASGlobalInstance<Z2SoundInfo>::sInstance;

/* 80BA9078-80BA907C 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
Z2SoundObjMgr* JASGlobalInstance<Z2SoundObjMgr>::sInstance;

/* 80BA907C-80BA9080 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
Z2Audience* JASGlobalInstance<Z2Audience>::sInstance;

/* 80BA9080-80BA9084 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
Z2FxLineMgr* JASGlobalInstance<Z2FxLineMgr>::sInstance;

/* 80BA9084-80BA9088 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
Z2EnvSeMgr* JASGlobalInstance<Z2EnvSeMgr>::sInstance;

/* 80BA9088-80BA908C 0000E0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BA9088[4];
#pragma pop

/* 80BA908C-80BA9090 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
Z2WolfHowlMgr* JASGlobalInstance<Z2WolfHowlMgr>::sInstance;

/* 80BA8E54-80BA8E54 000048 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
