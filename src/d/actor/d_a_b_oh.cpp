/**
 * d_a_b_oh.cpp
 * Morpheel Tentacle
 */

/**
 * This almost entirely matches, there's just an issue with extra vtables / weak dtors being emitted
 * things like cCcD_ShapeAttr, dCcD/cCcD_Stts, etc
 */

#include "d/dolzel_rel.h"

#include "dol2asm.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_b_ob.h"
#include "d/actor/d_a_b_oh.h"
#include "SSystem/SComponent/c_lib.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"
#include "c/c_damagereaction.h"

//
// Forward References:
//

extern "C" void __ct__12daB_OH_HIO_cFv();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daB_OH_Draw__FP10b_oh_class();
extern "C" static void start__FP10b_oh_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void wait__FP10b_oh_class();
extern "C" static void attack__FP10b_oh_class();
extern "C" static void caught__FP10b_oh_class();
extern "C" static void end__FP10b_oh_class();
extern "C" static void non__FP10b_oh_class();
extern "C" static void action__FP10b_oh_class();
extern "C" static void damage_check__FP10b_oh_class();
extern "C" static void daB_OH_Execute__FP10b_oh_class();
extern "C" static bool daB_OH_IsDelete__FP10b_oh_class();
extern "C" static void daB_OH_Delete__FP10b_oh_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daB_OH_Create__FP10fopAc_ac_c();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__12daB_OH_HIO_cFv();
extern "C" void __sinit_d_a_b_oh_cpp();
extern "C" extern char const* const d_a_b_oh__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void cDmrNowMidnaTalk__Fv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxScale__FfffUc();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void startTentacleSound__12Z2CreatureOIF10JAISoundIDUcUlSc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __construct_array();
extern "C" void _savegpr_20();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_20();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 struct_80450C98[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 8061DAAC-8061DAEC 000030 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4457 */

/* 8061B72C-8061B75C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__12daB_OH_HIO_cFv */
daB_OH_HIO_c::daB_OH_HIO_c() {
    field_0x4 = -1;
    mModelSize = 1.0f;
    mLength = 70.0f;
}

/* 8061B75C-8061B8B0 00011C 0154+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        int jnt_no = i_joint->getJntNo();
        J3DModel* model_p = j3dSys.getModel();
        b_oh_class* this_ = (b_oh_class*)model_p->getUserArea();

        if (this_ != NULL && jnt_no >= this_->field_0xca8 && jnt_no <= 29) {
            MTXCopy(model_p->getAnmMtx(jnt_no), *calc_mtx);
            mDoMtx_YrotM(*calc_mtx, this_->field_0x61c[jnt_no].y + this_->field_0x784[jnt_no].y);
            mDoMtx_ZrotM(*calc_mtx, this_->field_0x61c[jnt_no].x + this_->field_0x784[jnt_no].x);
            MtxTrans(this_->mTentacleLength + -100.0f, 1.0f, 1.0f, 1);
            MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            MtxScale(1.0f, this_->field_0x8ec[jnt_no] + this_->field_0x9dc[jnt_no],
                     this_->field_0x8ec[jnt_no] + this_->field_0x9dc[jnt_no], 1);
            model_p->setAnmMtx(jnt_no, *calc_mtx);
        }
    }

    return 1;
}

/* 8061B8B0-8061B960 000270 00B0+00 1/0 0/0 0/0 .text            daB_OH_Draw__FP10b_oh_class */
static int daB_OH_Draw(b_oh_class* i_this) {
    if (i_this->mAction == OH_ACTION_NON) {
        return 1;
    }

    J3DModel* model_p = i_this->mpMorf->getModel();

    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model_p, &i_this->tevStr);

    i_this->mpBtk->entry(model_p->getModelData());
    i_this->mpBrk->entry(model_p->getModelData());
    i_this->mInvisModel.entryDL(NULL);
    return 1;
}

/* 8061DBB4-8061DBB8 -00001 0004+00 1/2 0/0 0/0 .bss             None */
/* 8061DBB5 0003+00 data_8061DBB5 None */
static u8 data_8061DBB5;

/* 8061DBC4-8061DBD4 000054 0010+00 2/3 0/0 0/0 .bss             l_HIO */
static daB_OH_HIO_c l_HIO;

/* 8061DBD4-8061DBD8 000064 0004+00 6/7 0/0 0/0 .bss             boss */
static b_ob_class* boss;

/* 8061DBD8-8061DBDC 000068 0004+00 0/1 0/0 0/0 .bss             Cinit */
#pragma push
#pragma force_active on
static int Cinit;
#pragma pop

/* 8061B960-8061BB18 000320 01B8+00 1/1 0/0 0/0 .text            start__FP10b_oh_class */
static void start(b_oh_class* i_this) {
    cXyz sp28;

    switch (i_this->mActionPhase) {
    case 0:
        if (boss->mCoreHandNo != i_this->field_0x5c8) {
            i_this->field_0xcac = -1500.0f;
        } else {
            i_this->field_0x608 = 0.3f;
            i_this->mActionPhase = 1;
        }
        break;
    case 1:
        if (i_this->field_0xcac < -100.0f) {
            for (int i = 0; i < 28; i++) {
                MTXCopy(i_this->mpMorf->getModel()->getAnmMtx(i), mDoMtx_stack_c::get());
                mDoMtx_stack_c::multVecZero(&sp28);

                if (sp28.y > boss->field_0x47a0) {
                    sp28.y = boss->field_0x47a0;
                    i_this->field_0x1f80 =
                        dComIfGp_particle_set(i_this->field_0x1f80, 0x8808, &sp28, NULL, NULL);
                    break;
                }
            }
        }

        cLib_addCalc0(&i_this->field_0xcac, 0.1f, 30.0f);
        cLib_addCalc2(&i_this->field_0x608, 0.3f, 0.1f, 0.005f);
        break;
    case 2:
        cLib_addCalc2(&i_this->field_0x608, 1.0f, 0.1f, 0.05f);
        break;
    }
}

/* 8061BB54-8061BC6C 000514 0118+00 1/1 0/0 0/0 .text            wait__FP10b_oh_class */
static void wait(b_oh_class* i_this) {
    daPy_py_c* player_p = (daPy_py_c*)dComIfGp_getPlayer(0);

    switch (i_this->mActionPhase) {
    case 0:
        i_this->mActionPhase = 1;
        i_this->mTimers[0] = (s16)(cM_rndF(30.0f) + 60.0f);
        break;
    case 1:
        cLib_addCalc2(&i_this->field_0x608, 1.0f, 0.1f, 0.005f);

        if (i_this->field_0xca8 == 0 && player_p->current.pos.y < -23000.0f &&
            i_this->mDistToPlayer < 1300.0f && i_this->mTimers[0] == 0 && boss->field_0x4744 == 0 &&
            boss->field_0x4794 == 0)
        {
            i_this->mAction = OH_ACTION_ATTACK;
            i_this->mActionPhase = 0;
            i_this->field_0xc98 = 0;
            boss->field_0x4794 = 3;
        }
        break;
    }
}

/* 8061BC6C-8061C070 00062C 0404+00 1/1 0/0 0/0 .text            attack__FP10b_oh_class */
static void attack(b_oh_class* i_this) {
    daPy_py_c* player_p = (daPy_py_c*)dComIfGp_getPlayer(0);
    i_this->field_0xca0++;

    switch (i_this->mActionPhase) {
    case 0:
        i_this->mActionPhase = 1;
        i_this->field_0xc9c = 0.0f;
        i_this->field_0xca2 = 0;
        i_this->field_0xca4 = 0;

        if ((s16)(i_this->mAngleToPlayer - i_this->current.angle.y) > 0) {
            i_this->field_0xc88 = 1;
        } else {
            i_this->field_0xc88 = -1;
        }

        i_this->mActionPhase = 2;
        i_this->mTimers[0] = 100;
        i_this->field_0xca0 = 0;
        i_this->field_0xc98 = 0;
    case 1:
    case 2:
        if (i_this->mTimers[0] == 0) {
            i_this->mAction = OH_ACTION_WAIT;
            i_this->mActionPhase = 0;
            i_this->field_0xc98 = 0;
            i_this->field_0xca2 = 0;
            return;
        }
    case 3:
        cLib_addCalcAngleS2(&i_this->field_0xc98, 0x200, 1, 32);

        if (i_this->field_0xca0 > 8) {
            cLib_addCalc2(&i_this->field_0xc90, -0.12f, 0.8f, 0.02f);
        }

        if (i_this->field_0xca0 < 70) {
            cLib_addCalcAngleS2(&i_this->field_0xca4, 0, 1, 500);
            cLib_addCalcAngleS2(&i_this->current.angle.y,
                                i_this->mAngleToPlayer + i_this->field_0xc88 * -0x600, 2, 0x400);
            cLib_addCalc2(&i_this->field_0xc9c, 200.0f, 0.5f, 50.0f);

            if (i_this->field_0xca0 < 30) {
                f32 fvar = player_p->current.pos.y - -24000.0f;
                if (fvar > 1000.0f) {
                    fvar = 1000.0f;
                }

                i_this->field_0xc96 = fvar + 3700.0f;

                cLib_addCalcAngleS2(&i_this->current.angle.x,
                                    (s16)(-fvar * 2.0f + 11700.0f) - 0x4000, 1, 1000);
            }
        } else {
            s16 var7;
            s16 var3;

            if (i_this->mTimers[1] != 0) {
                var7 = 6;
                var3 = i_this->field_0xc88 * 9000;
            } else {
                var7 = 10;
                var3 = i_this->field_0xc88 * 5000;
            }

            cLib_addCalcAngleS2(&i_this->field_0xca2, var7, 1, 1);
            cLib_addCalcAngleS2(&i_this->field_0xca4, var3, 1, 500);

            if (i_this->mTimers[1] == 0 || i_this->mTimers[1] > 10) {
                i_this->current.angle.y += (s16)(i_this->field_0xc88 * 300);
            }

            if (i_this->mActionPhase == 2) {
                for (int i = 7; i < 15; i++) {
                    if (i_this->mColliders[i].ChkCoHit()) {
                        cCcD_Obj* obj_p = i_this->mColliders[i].GetCoHitObj();
                        if (fopAcM_GetName(obj_p->GetAc()) == PROC_ALINK &&
                            !dComIfGp_event_runCheck())
                        {
                            if (!player_p->checkHookshotShootReturnMode() &&
                                boss->field_0x4744 == 0)
                            {
                                i_this->mActionPhase = 3;
                                boss->mDemoAction = 1;
                                boss->field_0x5ce8 = i_this->field_0x5c8;
                                i_this->mTimers[1] = 20;

                                if (boss->mAction != OB_ACTION_CORE_HAND_MOVE) {
                                    boss->mAction = OB_ACTION_CORE_HAND_MOVE;
                                    boss->mMode = 0;
                                    boss->mCoreAnm = 30;
                                    boss->mCoreAnmMode = 2;
                                }

                                boss->mOISound.startTentacleSound(
                                    Z2SE_EN_OI_TENT_SWING, i_this->field_0x5c8, 0,
                                    dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
                                break;
                            }
                        }
                    }
                }
            }
        }

        cLib_addCalcAngleS2(&i_this->field_0xc94, 22500, 1, 2000);
        cLib_addCalc2(&i_this->field_0xc8c, 4000.0f, 1.0f, 400.0f);
        if (i_this->mTimers[1] == 1) {
            i_this->mAction = OH_ACTION_CAUGHT;
            i_this->mActionPhase = 0;
            i_this->field_0xc98 = 0;
        }
        break;
    }
}

/* 8061C070-8061C1F8 000A30 0188+00 1/1 0/0 0/0 .text            caught__FP10b_oh_class */
static void caught(b_oh_class* i_this) {
    i_this->field_0x5f4 = 6;

    switch (i_this->mActionPhase) {
    case 0:
        i_this->mActionPhase = 1;
        i_this->mTimers[0] = 10;
        i_this->mTimers[1] = 50;
    case 1:
        i_this->field_0x60c = 500.0f;
        cLib_addCalcAngleS2(&i_this->field_0xca2, 6, 1, 1);
        cLib_addCalcAngleS2(&i_this->field_0xca4, i_this->field_0xc88 * 9000, 1, 500);

        if (i_this->mTimers[0] == 1) {
            boss->mCoreAnm = 21;
            boss->mCoreAnmMode = 0;
            boss->mOISound.startCreatureVoice(Z2SE_EN_OI_V_EAT, -1);
        }

        if (!(i_this->field_0x5cc & 0xF)) {
            dComIfGp_getVibration().StartShock(3, 31, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (i_this->mTimers[1] == 0) {
            if (boss->mDemoAction != 0) {
                boss->mDemoAction = 3;
                boss->mDemoActionTimer = 0;
            }

            i_this->mAction = OH_ACTION_WAIT;
            i_this->mActionPhase = 0;
            i_this->field_0xc98 = 0;
        }
        break;
    }
}

/* 8061C1F8-8061C298 000BB8 00A0+00 1/1 0/0 0/0 .text            end__FP10b_oh_class */
static void end(b_oh_class* i_this) {
    i_this->field_0x5f4 = 6;

    switch (i_this->mActionPhase) {
    case 0:
        i_this->mActionPhase = 1;
        i_this->mTimers[0] = 70;
        break;
    case 1:
        cLib_addCalc2(&i_this->field_0x60c, 1000.0f, 1.0f, 150.0f);

        if (i_this->mTimers[0] == 0) {
            cLib_addCalc0(&i_this->mTentacleLength, 1.0f, 1.0f);
        }
        break;
    }
}

/* 8061C298-8061C2C4 000C58 002C+00 1/1 0/0 0/0 .text            non__FP10b_oh_class */
static void non(b_oh_class* i_this) {
    i_this->field_0x5f4 = 6;

    switch (i_this->mActionPhase) {
    case 0:
        i_this->mActionPhase = 1;
        break;
    case 1:
        break;
    }
}

/* 8061C2C4-8061CB4C 000C84 0888+00 2/1 0/0 0/0 .text            action__FP10b_oh_class */
static void action(b_oh_class* i_this) {
    b_oh_class* a_this = (b_oh_class*)i_this;
    int var_r28;
    BOOL var_r27;

    cXyz sp90;
    cXyz sp9C;

    a_this->mAngleToPlayer = fopAcM_searchPlayerAngleY(a_this);
    a_this->mDistToPlayer = fopAcM_searchPlayerDistance(a_this);

    fopAcM_OffStatus(a_this, 0);
    a_this->attention_info.flags = 0;

    var_r28 = 0;
    var_r27 = true;

    cLib_addCalcAngleS2(&a_this->field_0xc98, 0x800, 1, 0x10);

    switch (a_this->mAction) {
    case OH_ACTION_START:
        start(a_this);
        var_r28 = 1;
        break;
    case OH_ACTION_WAIT:
        wait(a_this);
        var_r28 = 1;
        break;
    case OH_ACTION_ATTACK:
        attack(a_this);
        var_r28 = 2;
        boss->field_0x4794 = 180;
        break;
    case OH_ACTION_CAUGHT:
        caught(a_this);
        var_r27 = false;
        var_r28 = 3;
        boss->field_0x4794 = 180;
        break;
    case OH_ACTION_END:
        end(a_this);
        var_r28 = 1;
        break;
    case OH_ACTION_NON:
        non(a_this);
        return;
    }

    if (boss->mAction == OB_ACTION_BOMBFISH_SET) {
        cLib_addCalc2(&a_this->field_0x60c, 500.0f, 1.0f, 80.0f);
    }

    if (var_r28 == 1) {
        f32 var_f29 = a_this->field_0x608 * 500.0f;
        f32 var_f28 = a_this->field_0x608 * 1500.0f;
        s16 var_r5 = 2000;

        for (int i = i_this->field_0xca8; i < 30; i++) {
            f32 var_f31 = 1.0f;
            if (i < 5) {
                var_f31 = i * 0.2f;
            } else if (i >= 20) {
                var_f31 = (i - 20) * 0.3f + 1.0f;
            }

            a_this->field_0x6d0[i].x =
                var_f31 * (var_f29 * cM_ssin(i_this->field_0x5f8 + (i * 1800)));
            a_this->field_0x6d0[i].y =
                var_f31 * (var_f28 * cM_ssin(i_this->field_0x5fa + (i * 1800)));

            a_this->field_0x838[i].x =
                var_r5 + var_f31 * (var_f29 * cM_ssin(a_this->field_0x5fa + (i * 7000)) * 0.5f);
            a_this->field_0x838[i].y =
                var_f31 * (var_f28 * cM_ssin(a_this->field_0x5f8 + (i * 7000)) * 0.5f);

            var_r5 -= 200;
            if (var_r5 < 0) {
                var_r5 = 0;
            }

            a_this->field_0x964[i] =
                a_this->field_0x610 + 1.0f +
                a_this->field_0x610 * cM_ssin(a_this->field_0x5f6 + i * -10000);
        }

        cLib_addCalcAngleS2(&a_this->current.angle.x, -0xF2C, 4, 100);
        cLib_addCalcAngleS2(&a_this->current.angle.y, a_this->home.angle.y, 4, 0x100);
    } else if (var_r28 == 2) {
        f32 var_f4 = a_this->field_0xc8c;
        for (int i = a_this->field_0xca8; i < 30; i++) {
            if (i >= 30 - a_this->field_0xca2) {
                a_this->field_0x6d0[i].y = a_this->field_0xca4;
            } else {
                a_this->field_0x6d0[i].y = 0;
            }

            if (i >= 13) {
                var_f4 *= a_this->field_0xc90 + 1.0f;
            }

            a_this->field_0x6d0[i].x =
                var_f4 * cM_ssin(a_this->field_0xc94 + i * a_this->field_0xc96);

            if (i >= 18) {
                a_this->field_0x838[i].x =
                    a_this->field_0xc9c * cM_ssin(a_this->field_0x5cc * 1000 + i * -4000);
            } else {
                a_this->field_0x838[i].x = 0;
            }

            a_this->field_0x838[i].y = 0;
            a_this->field_0x964[i] =
                a_this->field_0x610 + 1.0f +
                a_this->field_0x610 * cM_ssin(a_this->field_0x5f6 + i * -10000);
        }
    } else if (var_r28 == 3) {
        for (int i = a_this->field_0xca8; i < 30; i++) {
            a_this->field_0x838[i].y = 0;
            a_this->field_0x838[i].x = 0;

            if (i >= 30 - a_this->field_0xca2) {
                a_this->field_0x6d0[i].y = a_this->field_0xca4;
                a_this->field_0x6d0[i].x = 0;
                a_this->field_0x964[i] = 1.0f;
            } else {
                a_this->field_0x6d0[i].y = 0;
                a_this->field_0x6d0[i].x = 2250;
                a_this->field_0x964[i] =
                    a_this->field_0x610 + 1.0f +
                    a_this->field_0x610 * cM_ssin(a_this->field_0x5f6 + i * -10000);
            }
        }

        cLib_addCalcAngleS2(&a_this->current.angle.x, 0xA92, 4, 0x200);
        cLib_addCalcAngleS2(&a_this->current.angle.y, a_this->home.angle.y, 4, 0x800);
    }

    a_this->field_0x600 =
        (-a_this->field_0x614 - a_this->field_0x60c) + cM_ssin(a_this->field_0x5cc * 200) * 100.0f;
    a_this->field_0x604 = ((100.0f - a_this->field_0x614) - a_this->field_0x60c) +
                          cM_ssin(a_this->field_0x5cc * 200) * 100.0f;
    a_this->field_0x5f8 += (s16)a_this->field_0x600;
    a_this->field_0x5fa += (s16)a_this->field_0x604;
    a_this->field_0x5fc = a_this->field_0x60c + 2000.0f;
    a_this->field_0x5f6 += (s16)a_this->field_0x5fc;

    cLib_addCalc0(&a_this->field_0x60c, 0.1f, 50.0f);
    cLib_addCalc2(&a_this->field_0x610, 0.2f, 0.1f, 0.01f);

    if (var_r28 <= 3) {
        cLib_addCalc2(&a_this->mTentacleLength, l_HIO.mLength, 0.1f, 0.5f);
    }

    MTXCopy(boss->mBodyParts[0].mpMorf->getModel()->getAnmMtx(a_this->field_0x5c8 + 8),
            mDoMtx_stack_c::get());
    mDoMtx_stack_c::multVecZero(&a_this->current.pos);

    sp90.x = a_this->current.pos.x - boss->home.pos.x;
    sp90.z = a_this->current.pos.z - boss->home.pos.z;
    a_this->home.angle.y = cM_atan2s(sp90.x, sp90.z);
    cLib_addCalcAngleS2(&a_this->shape_angle.y, a_this->current.angle.y, 2, 0x2000);
    cLib_addCalcAngleS2(&a_this->shape_angle.x, a_this->current.angle.x, 2, 0x2000);

    for (int i = a_this->field_0xca8; i < 30; i++) {
        if (Cinit) {
            a_this->field_0x61c[i] = a_this->field_0x6d0[i];
            a_this->field_0x784[i] = a_this->field_0x838[i];
            a_this->field_0x8ec[i] = a_this->field_0x964[i];
        } else {
            cLib_addCalcAngleS2(&a_this->field_0x61c[i].x, a_this->field_0x6d0[i].x, 2,
                                a_this->field_0xc98);
            cLib_addCalcAngleS2(&a_this->field_0x61c[i].y, a_this->field_0x6d0[i].y, 2,
                                a_this->field_0xc98);
            cLib_addCalcAngleS2(&a_this->field_0x784[i].x, a_this->field_0x838[i].x, 2,
                                a_this->field_0xc98);
            cLib_addCalcAngleS2(&a_this->field_0x784[i].y, a_this->field_0x838[i].y, 2,
                                a_this->field_0xc98);
            cLib_addCalc2(&a_this->field_0x8ec[i], a_this->field_0x964[i], 0.5f, 0.2f);
            cLib_addCalc0(&a_this->field_0x9dc[i], 0.1f, 0.2f);
        }
    }

    for (int i = 0; i < 15; i++) {
        if (var_r27 && boss->mDemoAction == 0) {
            a_this->mColliders[i].OnCoSetBit();
        } else {
            a_this->mColliders[i].OffCoSetBit();
        }
    }

    Cinit = 0;
}

/* 8061CB4C-8061CD98 00150C 024C+00 1/1 0/0 0/0 .text            damage_check__FP10b_oh_class */
static void damage_check(b_oh_class* i_this) {
    i_this->mCcStts.Move();

    if (i_this->field_0x5f4 == 0) {
        BOOL bvar = false;
        for (int i = 7; i < 15; i++) {
            if (i_this->mColliders[i].ChkTgHit()) {
                i_this->mAtInfo.mpCollider = i_this->mColliders[i].GetTgHitObj();
                i_this->health = 1000;
                cc_at_check(i_this, &i_this->mAtInfo);

                MTXCopy(i_this->mpMorf->getModel()->getAnmMtx(i * 2 + 1), mDoMtx_stack_c::get());
                mDoMtx_stack_c::multVecZero(&i_this->eyePos);
                dComIfGp_setHitMark(1, i_this, &i_this->eyePos, NULL, NULL, 0);
                mDoAud_seStart(Z2SE_EN_OI_HIT_TENTACLE, &i_this->eyePos, 0, 0);

                bvar = true;
                i_this->field_0x5f4 = 20;
                break;
            }
        }

        if (i_this->mAction == OH_ACTION_ATTACK && boss->field_0x5d10) {
            boss->field_0x5d10 = 0;
            bvar = true;
        }

        if (bvar) {
            i_this->field_0x60c = 2000.0f;
            i_this->field_0x610 = 0.5f;

            if (i_this->mAction != OH_ACTION_WAIT) {
                i_this->mAction = OH_ACTION_WAIT;
                i_this->mActionPhase = 0;
                i_this->field_0xc98 = 0;
                i_this->field_0xca2 = 0;
            }

            if (boss->mDemoAction != 0) {
                boss->mDemoAction = 100;
                boss->mCoreAnm = 30;
                boss->mCoreAnmMode = 2;
                boss->field_0x4794 = 180;
            }

            i_this->field_0x5f4 = 6;
            boss->mOISound.startCreatureVoice(Z2SE_EN_OI_V_TENT_DAMAGE, -1);
        }
    }
}

/* 8061CD98-8061D05C 001758 02C4+00 2/1 0/0 0/0 .text            daB_OH_Execute__FP10b_oh_class */
static int daB_OH_Execute(b_oh_class* i_this) {
    if (cDmrNowMidnaTalk()) {
        return 1;
    }

    if (i_this->field_0x5c8 == 0) {
        boss = (b_ob_class*)fopAcM_SearchByID(i_this->parentActorID);
    }

    if (boss == NULL) {
        return 1;
    }

    if (boss->mAction == OB_ACTION_CORE_END && i_this->mAction != OH_ACTION_END) {
        i_this->mAction = OH_ACTION_END;
        i_this->mActionPhase = 0;
    }

    cXyz collider_center;

    i_this->field_0x5cc++;

    for (int i = 0; i < 4; i++) {
        if (i_this->mTimers[i] != 0) {
            i_this->mTimers[i]--;
        }
    }

    if (i_this->field_0x5f4 != 0) {
        i_this->field_0x5f4--;
    }

    damage_check(i_this);
    action(i_this);

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y + i_this->field_0xcac,
                           i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(i_this->shape_angle.x);
    mDoMtx_stack_c::scaleM(l_HIO.mModelSize, l_HIO.mModelSize, l_HIO.mModelSize);

    J3DModel* model_p = i_this->mpMorf->getModel();
    model_p->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mpMorf->play(NULL, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)), 0);
    i_this->mpBtk->play();
    i_this->mpBrk->play();
    i_this->mpMorf->modelCalc();

    int tmp = 1;
    if (i_this->mDistToPlayer > 150.0f && i_this->mAction == OH_ACTION_WAIT) {
        tmp = i_this->field_0x5cc & 1;
    }

    for (int i = 0; i < 15; i++) {
        MTXCopy(model_p->getAnmMtx(tmp + i * 2), mDoMtx_stack_c::get());
        mDoMtx_stack_c::multVecZero(&collider_center);

        if (i_this->mAction >= OH_ACTION_END) {
            collider_center.z -= 20000.0f;
        }

        i_this->mColliders[i].SetC(collider_center);

        if (i_this->mAction == OH_ACTION_ATTACK) {
            i_this->mColliders[i].SetR(l_HIO.mModelSize * 70.0f);
        } else {
            i_this->mColliders[i].SetR(l_HIO.mModelSize * 50.0f);
        }

        dComIfG_Ccsp()->Set(&i_this->mColliders[i]);
    }

    return 1;
}

/* 8061D05C-8061D064 001A1C 0008+00 1/0 0/0 0/0 .text            daB_OH_IsDelete__FP10b_oh_class */
static int daB_OH_IsDelete(b_oh_class* i_this) {
    return 1;
}

/* 8061D064-8061D0B8 001A24 0054+00 1/0 0/0 0/0 .text            daB_OH_Delete__FP10b_oh_class */
static int daB_OH_Delete(b_oh_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, "B_oh");
    if (i_this->field_0x1f86) {
        data_8061DBB5 = 0;
    }

    return 1;
}

/* 8061D0B8-8061D39C 001A78 02E4+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    b_oh_class* this_ = (b_oh_class*)i_this;

    this_->mpMorf = new mDoExt_McaMorf((J3DModelData*)dComIfG_getObjectRes("B_oh", 0x29), NULL,
                                       NULL, NULL, 2, 1.0f, 0, -1, 1, NULL, 0, 0x11000284);
    if (this_->mpMorf == NULL || this_->mpMorf->getModel() == NULL) {
        return 0;
    }

    if (!this_->mInvisModel.create(this_->mpMorf->getModel(), 1)) {
        return 0;
    }

    this_->mpMorf->getModel()->setUserArea((u32)this_);

    for (u16 i = 0; i < this_->mpMorf->getModel()->getModelData()->getJointNum(); i++) {
        this_->mpMorf->getModel()->getModelData()->getJointNodePointer(i)->setCallBack(
            nodeCallBack);
    }

    this_->mpBtk = new mDoExt_btkAnm();
    if (this_->mpBtk == NULL) {
        return 0;
    }

    J3DAnmTextureSRTKey* btk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_oh", 0x36);
    if (!this_->mpBtk->init(this_->mpMorf->getModel()->getModelData(), btk, TRUE, 2, 1.0f, 0, -1)) {
        return 0;
    }

    this_->mpBtk->setFrame(cM_rndF(39.0f));
    this_->mpBtk->setPlaySpeed(cM_rndFX(0.1f) + 1.0f);

    this_->mpBrk = new mDoExt_brkAnm();
    if (this_->mpBrk == NULL) {
        return 0;
    }

    J3DAnmTevRegKey* brk = (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_oh", 0x2F);
    if (!this_->mpBrk->init(this_->mpMorf->getModel()->getModelData(), brk, TRUE, 2, 1.0f, 0, -1)) {
        return 0;
    }

    this_->mpBrk->setFrame(cM_rndF(39.0f));
    this_->mpBrk->setPlaySpeed(cM_rndFX(0.1f) + 1.0f);

    return 1;
}

/* 8061D3E4-8061D718 001DA4 0334+00 1/0 0/0 0/0 .text            daB_OH_Create__FP10fopAc_ac_c */
static int daB_OH_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, b_oh_class);
    b_oh_class* this_ = (b_oh_class*)i_this;

    int phase = dComIfG_resLoad(&this_->mPhase, "B_oh");
    if (phase == cPhs_COMPLEATE_e) {
        this_->field_0x5c8 = fopAcM_GetParam(this_) & 0xFF;

        if (!fopAcM_entrySolidHeap(this_, useHeapInit, 0x23E0)) {
            return cPhs_ERROR_e;
        }

        if (!data_8061DBB5) {
            this_->field_0x1f86 = 1;
            data_8061DBB5 = 1;
            l_HIO.field_0x4 = -1;
        }

        this_->health = 1000;
        this_->field_0x560 = 1000;

        this_->field_0x5cc = cM_rndF(65536.0f);
        this_->field_0x5f6 = cM_rndF(65536.0f);
        this_->field_0x5f8 = cM_rndF(65536.0f);
        this_->field_0x5fa = cM_rndF(65536.0f);
        this_->field_0x614 = cM_rndF(100.0f) + 400.0f;

        static dCcD_SrcSph cc_sph_src = {
            {
                {0, {{0, 0, 12}, {0xD8FBFDFF, 3}, 0x15}},
                {dCcD_SE_NONE, 0, 0, 0, {0}},
                {dCcD_SE_NONE, 0, 0, 0, {0x80}},
                {0},
            },
            {
                {
                    {0.0f, 0.0f, 0.0f},
                    60.0f,
                },
            },
        };

        this_->mCcStts.Init(0xFF, 0, this_);
        for (int i = 0; i < 15; i++) {
            this_->mColliders[i].Set(cc_sph_src);
            this_->mColliders[i].SetStts(&this_->mCcStts);
            this_->mColliders[i].OnTgNoHitMark();
        }

        this_->current.angle.x = -0x3448;

        if (cDmr_SkipInfo) {
            this_->mAction = OH_ACTION_WAIT;
            this_->mActionPhase = 1;
            this_->mTimers[0] = cM_rndF(100.0f) + 200.0f;
            this_->mTentacleLength = l_HIO.mLength;
            this_->field_0x608 = 1.0f;
            Cinit = 1;
        } else {
            this_->mAction = OH_ACTION_START;
            Cinit = 0;
        }

        daB_OH_Execute(this_);
    }

    return phase;
}

/* ############################################################################################## */
/* 8061DBDC-8061DBE0 00006C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8061DBDC[4];
#pragma pop

/* 8061DBE0-8061DBE4 000070 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8061DBE0[4];
#pragma pop

/* 8061DBE4-8061DBE8 000074 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8061DBE4[4];
#pragma pop

/* 8061DBE8-8061DBEC 000078 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8061DBE8[4];
#pragma pop

/* 8061DBEC-8061DBF0 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8061DBEC[4];
#pragma pop

/* 8061DBF0-8061DBF4 000080 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8061DBF0[4];
#pragma pop

/* 8061DBF4-8061DBF8 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8061DBF4[4];
#pragma pop

/* 8061DBF8-8061DBFC 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8061DBF8[4];
#pragma pop

/* 8061DBFC-8061DC00 00008C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8061DBFC[4];
#pragma pop

/* 8061DC00-8061DC04 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8061DC00[4];
#pragma pop

/* 8061DC04-8061DC08 000094 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8061DC04[4];
#pragma pop

/* 8061DC08-8061DC0C 000098 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8061DC08[4];
#pragma pop

/* 8061DC0C-8061DC10 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8061DC0C[4];
#pragma pop

/* 8061DC10-8061DC14 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8061DC10[4];
#pragma pop

/* 8061DC14-8061DC18 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8061DC14[4];
#pragma pop

/* 8061DC18-8061DC1C 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8061DC18[4];
#pragma pop

/* 8061DC1C-8061DC20 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8061DC1C[4];
#pragma pop

/* 8061DC20-8061DC24 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8061DC20[4];
#pragma pop

/* 8061DC24-8061DC28 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8061DC24[4];
#pragma pop

/* 8061DC28-8061DC2C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8061DC28[4];
#pragma pop

/* 8061DC2C-8061DC30 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8061DC2C[4];
#pragma pop

/* 8061DC30-8061DC34 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8061DC30[4];
#pragma pop

/* 8061DC34-8061DC38 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8061DC34[4];
#pragma pop

/* 8061DC38-8061DC3C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8061DC38[4];
#pragma pop

/* 8061DC3C-8061DC40 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8061DC3C[4];
#pragma pop

/* 8061DA74-8061DA74 0000A0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 8061DAEC-8061DB0C -00001 0020+00 1/0 0/0 0/0 .data            l_daB_OH_Method */
SECTION_DATA static void* l_daB_OH_Method[8] = {
    (void*)daB_OH_Create__FP10fopAc_ac_c,
    (void*)daB_OH_Delete__FP10b_oh_class,
    (void*)daB_OH_Execute__FP10b_oh_class,
    (void*)daB_OH_IsDelete__FP10b_oh_class,
    (void*)daB_OH_Draw__FP10b_oh_class,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 8061DB0C-8061DB3C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_OH */
SECTION_DATA extern void* g_profile_B_OH[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x00D20000, (void*)&g_fpcLf_Method,
    (void*)0x00001F88, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x00DA0000, (void*)&l_daB_OH_Method,
    (void*)0x00044000, (void*)0x020E0000,
};
