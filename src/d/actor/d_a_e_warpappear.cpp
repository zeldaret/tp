/**
 * @file d_a_e_warpappear.cpp
 * 
*/

#include "d/actor/d_a_e_warpappear.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_e_s1.h"
#include "d/actor/d_a_player.h"
#include "d/actor/d_a_horse.h"
#include "dol2asm.h"
#include "d/d_camera.h"


//
// Forward References:
//

extern "C" static void daE_Warpappear_Draw__FP18e_warpappear_class();
extern "C" static void s_s1_sub__FPvPv();
extern "C" static void s_s1drop_sub__FPvPv();
extern "C" static void s_s1riv_sub__FPvPv();
extern "C" static void s_s1fight_sub__FPvPv();
extern "C" static void s_s1entry_sub__FPvPv();
extern "C" static void s_s1drop2_sub__FPvPv();
extern "C" static void s_s1Yangset_sub__FPvPv();
extern "C" static void s_s1start_sub__FPvPv();
extern "C" static void action__FP18e_warpappear_class();
extern "C" static void demo_camera__FP18e_warpappear_class();
extern "C" static void dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz();
extern "C" static void dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz();
extern "C" static void mtx_set__FP18e_warpappear_class();
extern "C" static void daE_Warpappear_Execute__FP18e_warpappear_class();
extern "C" static bool daE_Warpappear_IsDelete__FP18e_warpappear_class();
extern "C" static void daE_Warpappear_Delete__FP18e_warpappear_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daE_Warpappear_Create__FP10fopAc_ac_c();
extern "C" void changeDemoMode__9daPy_py_cFUliis();
extern "C" extern char const* const d_a_e_warpappear__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzsf();
extern "C" void Reset__9dCamera_cF4cXyz4cXyzfs();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void getNowMsgNo__10dMsgFlow_cFv();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 807CF7D8-807CF8BC 000078 00E4+00 1/0 0/0 0/0 .text           daE_Warpappear_Draw__FP18e_warpappear_class */
static int daE_Warpappear_Draw(e_warpappear_class* i_this) {
    int i_no = (fopAcM_GetParam(i_this) >> 8) & 0xFF;
    if (i_no != 0xff) {
        if (!dComIfGs_isSwitch(i_no, fopAcM_GetRoomNo(i_this))) {
            return 1;
        }
    }

    dComIfGd_setListDark();
    i_this->mpBtk->entry(i_this->field_0x574->getModelData());
    i_this->mpBrks[i_this->field_0x584]->entry(i_this->field_0x574->getModelData());
    mDoExt_modelUpdateDL(i_this->field_0x574);
    dComIfGd_setList();
    return 1;
}

/* 807D2378-807D2384 000000 000C+00 3/3 0/0 0/0 .bss             master_ns */
static fopAc_ac_c* master_ns[3];

/* 807CF8BC-807CF9D0 00015C 0114+00 1/1 0/0 0/0 .text            s_s1_sub__FPvPv */
static void* s_s1_sub(void* i_actor, void* i_data) {
    e_s1_class* shadowBeast = (e_s1_class*)i_actor;

    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_S1) {
        shadowBeast->mAction = 20;
        shadowBeast->mMode = 0;

        f32 fVar1 = -15336.0f;
        f32 fVar2 = -671.0f;
        fVar1 -= shadowBeast->home.pos.x;
        fVar2 -= shadowBeast->home.pos.z;
        if (fVar1 * fVar1 + fVar2 * fVar2 < 40000.0f) {
            master_ns[0] = shadowBeast;
        }

        fVar1 = -16552.0f;
        fVar2 = -144.0f;
        fVar1 -= shadowBeast->home.pos.x;
        fVar2 -= shadowBeast->home.pos.z;
        if (fVar1 * fVar1 + fVar2 * fVar2 < 40000.0f) {
            master_ns[1] = shadowBeast;
        }

        fVar1 = -14796.0f;
        fVar2 = 382.0f;
        fVar1 -= shadowBeast->home.pos.x;
        fVar2 -= shadowBeast->home.pos.z;
        if (fVar1 * fVar1 + fVar2 * fVar2 < 40000.0f) {
            master_ns[2] = shadowBeast;
        }
    }

    return NULL;
}

/* 807CF9D0-807CFA74 000270 00A4+00 1/1 0/0 0/0 .text            s_s1drop_sub__FPvPv */
static void* s_s1drop_sub(void* i_actor, void* i_data) {
    e_s1_class* shadowBeast = (e_s1_class*)i_actor;
    fopAc_ac_c* data = (fopAc_ac_c*)i_data;
    if ((fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_S1) && shadowBeast->mMode != 2) {
        shadowBeast->current.pos = data->current.pos;
        shadowBeast->current.pos.y += 400.0f;
        shadowBeast->mMode = 2;
        shadowBeast->scale.x = 2.0f;
        return i_actor;
    }

    return NULL;
}

/* 807CFA74-807CFB78 000314 0104+00 1/1 0/0 0/0 .text            s_s1riv_sub__FPvPv */
static void* s_s1riv_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_S1) {
        e_s1_class* shadowBeast = (e_s1_class*)i_actor;
        shadowBeast->current.pos = master_ns[0]->home.pos;
        shadowBeast->old = shadowBeast->current;
        shadowBeast->speed.y = 0.0f;
        shadowBeast->mMode = 10;

        if (shadowBeast != master_ns[0]) {
            shadowBeast->current.pos.y = master_ns[0]->home.pos.y + 50000.0f;
            shadowBeast->gravity = 0.0f;
        } else {
            shadowBeast->current.pos.y = master_ns[0]->home.pos.y + 3000.0f;
        }

        shadowBeast->scale.x = 1.0f;
    }

    return NULL;
}

/* 807CFB78-807CFBC4 000418 004C+00 1/1 0/0 0/0 .text            s_s1fight_sub__FPvPv */
static void* s_s1fight_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_S1) {
        e_s1_class* shadowBeast = (e_s1_class*)i_actor;
        shadowBeast->mMode = 20;
    }

    return NULL;
}

/* 807D2384-807D2388 00000C 0004+00 2/2 0/0 0/0 .bss             entry_no */
static int entry_no;

/* 807CFBC4-807CFC8C 000464 00C8+00 1/1 0/0 0/0 .text            s_s1entry_sub__FPvPv */
static void* s_s1entry_sub(void* i_actor, void* i_data) {
    // NONMATCHING
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_S1) {
        e_s1_class* shadowBeast = (e_s1_class*)i_actor;
        e_warpappear_class* data = (e_warpappear_class*)i_data;

        cXyz sp28 = shadowBeast->current.pos - data->current.pos;

        if (shadowBeast->mAction != 20) {
            shadowBeast->mAction = 20;
            shadowBeast->mMode = 0;
            shadowBeast->mEntryNo = entry_no;
            entry_no++;
            
            data->field_0x64c++;
        }
    }

    return NULL;
}

/* 807CFC8C-807CFD34 00052C 00A8+00 1/1 0/0 0/0 .text            s_s1drop2_sub__FPvPv */
static void* s_s1drop2_sub(void* i_actor, void* i_data) {
    e_s1_class* shadowBeast = (e_s1_class*)i_actor;
    e_warpappear_class* data = (e_warpappear_class*)i_data;

    if ((fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_S1) && data->field_0x64c == shadowBeast->mEntryNo) {
        shadowBeast->current.pos = data->current.pos;
        shadowBeast->current.pos.y += 400.0f;

        shadowBeast->mMode = 2;

        shadowBeast->scale.x = 2.0f;

        return i_actor;
    }

    return NULL;
}

/* 807D2388-807D238A 000010 0002+00 2/2 0/0 0/0 .bss             ew_s1angy */
static s16 ew_s1angy;

/* 807CFD34-807CFDAC 0005D4 0078+00 1/1 0/0 0/0 .text            s_s1Yangset_sub__FPvPv */
static void* s_s1Yangset_sub(void* i_actor, void* i_data) {
    e_s1_class* shadowBeast = (e_s1_class*)i_actor;
    e_warpappear_class* data = (e_warpappear_class*)i_data;

    if ((fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_S1) && data->field_0x64c == shadowBeast->mEntryNo) {
        shadowBeast->shape_angle.y = shadowBeast->current.angle.y = ew_s1angy;

        return i_actor;
    }

    return NULL;
}

/* 807CFDAC-807CFFD4 00064C 0228+00 1/1 0/0 0/0 .text            s_s1start_sub__FPvPv */
static void* s_s1start_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_S1) {
        e_s1_class* shadowBeast = (e_s1_class*)i_actor;
        fopAc_ac_c* data = (fopAc_ac_c*)i_data;

        cXyz sp28 = shadowBeast->current.pos - data->current.pos;
        sp28.y = 0.0f;

        if (sp28.abs() < 2000.0f) {
            shadowBeast->current = shadowBeast->home;
            shadowBeast->old = shadowBeast->home;
            shadowBeast->shape_angle = shadowBeast->current.angle;
            shadowBeast->mMode = 20;
            shadowBeast->scale.x = 1.0f;
        }
    }

    return NULL;
}

/* 807CFFD4-807D032C 000874 0358+00 1/1 0/0 0/0 .text            action__FP18e_warpappear_class */
static void action(e_warpappear_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    f32 fVar1 = -15200.0f - player->current.pos.x;
    f32 fVar2 = -35.0f - player->current.pos.z;
    fVar1 = JMAFastSqrt(fVar1 * fVar1 + fVar2 * fVar2);
    bool bVar1 = false;

    switch (i_this->field_0x596) {

        case 0:
            if (i_this->field_0x570 == 53) {
                if (i_this->field_0x64c == 0) {
                    entry_no = 0;
                    fpcM_Search(s_s1entry_sub, i_this);
                }

                if (dComIfGs_isEventBit(0x701)) {
                    if (dComIfGs_isSwitch(18, fopAcM_GetRoomNo(i_this))) {
                        i_this->field_0x596 = 1;
                        i_this->field_0x59e = 20;
                    }
                }
            } else if (i_this->field_0x570 == 255) {
                fpcM_Search(s_s1_sub, i_this);
                if (fVar1 < 950.0f) {
                    i_this->field_0x59e = 1;
                    i_this->field_0x596 = 1;
                }
            }
                entry_no = 0;
                fpcM_Search(s_s1entry_sub, i_this);
                if (i_this->field_0x64c != 0) {
                    int i_no = fopAcM_GetParam(i_this);
                    if (i_no != 0xff && !dComIfGs_isSwitch(i_no, fopAcM_GetRoomNo(i_this))) {
                        return;
                    }

                    if (i_this->field_0x59a == 0 && fopAcM_searchPlayerDistanceXZ(i_this) < 1000.0f) {
                        i_this->field_0x59e = 10;
                        i_this->field_0x596 = 1;
                    }
                }
            
            break;

        case 20:
            i_this->field_0x584 = 1;
        case 1:
            // break;

        case 10:
            i_this->mpBrks[0]->setPlaySpeed(1.0f);

            cXyz sp68(i_this->scale.x, i_this->scale.x, i_this->scale.x);
            if (i_this->field_0x598 == 0) {
                i_this->field_0x598 = 1;
                dComIfGp_particle_set(0x84a4, &i_this->current.pos, NULL, &sp68);
            }
    
            i_this->mParticle1 = dComIfGp_particle_set(i_this->mParticle1, 0x84a6, &i_this->current.pos, NULL, &sp68);
            i_this->mParticle2 = dComIfGp_particle_set(i_this->mParticle2, 0x84a7, &i_this->current.pos, NULL, &sp68);
    }
}

/* 807D032C-807D1A54 000BCC 1728+00 2/1 0/0 0/0 .text            demo_camera__FP18e_warpappear_class */
static void demo_camera(e_warpappear_class* i_this) {
    // NONMATCHING
    static u16 w_id[20] = {
        0x850D, 0x850E, 0x850F, 0x8510, 0x8511, 0x8512, 0x8513,
        0x8514, 0x8515, 0x8516, 0x8517, 0x8518, 0x8519, 0x851A,
        0x851B, 0x851C, 0x851D, 0x851E, 0x851F, 0x8520,
    };

    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    daHorse_c* horseActor = dComIfGp_getHorseActor();

    cXyz sp48, sp54;
    switch (i_this->field_0x59e) {
        case 1:
            if (!i_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(i_this, 2, 0xffff, 0);
                i_this->eventInfo.onCondition(2);
                return;
            }

            camera->mCamera.Stop();
            i_this->field_0x59e = 2;
            i_this->field_0x5a0 = 0;
            i_this->field_0x5f4 = 55.0f;
            i_this->field_0x5a0 = 0;
            i_this->field_0x5ec = 300.0f;
            i_this->field_0x5f0 = 1000.0f;
            i_this->field_0x5f8 = 0.0f;

            camera->mCamera.SetTrimSize(3);
            daPy_getPlayerActorClass()->changeOriginalDemo();
            daPy_getPlayerActorClass()->changeDemoMode(25, 0, 0, 0);
            // fallthrough
        case 2:
            sp54.set(-15600.0f, 0.0f, -200.0f);
            player->setPlayerPosAndAngle(&sp54, 0x4ef8, 0);
            i_this->current.pos.x = sp54.x;
            i_this->current.pos.z = sp54.z;
            i_this->field_0x5ec = 200.0f;
            i_this->field_0x5f0 = -500.0f;

            mDoMtx_stack_c::YrotS(player->shape_angle.y);
            sp48.x = -100.0f;
            sp48.y = i_this->field_0x5ec;
            sp48.z = i_this->field_0x5f0;

            mDoMtx_stack_c::multVec(&sp48, &i_this->field_0x5a4);
            i_this->field_0x5a4 += player->current.pos;
            i_this->field_0x5b0 = player->current.pos;
            i_this->field_0x5b0.y += 100.0f;

            if (i_this->field_0x5a0 > 20) {
                i_this->field_0x59e = 3;
                i_this->field_0x5a0 = 0;
            }
            break;

        case 3:
            cLib_addCalc2(&i_this->field_0x5b0.y, i_this->current.pos.y, 0.1f, i_this->field_0x5f8);
            cLib_addCalc2(&i_this->field_0x5f8, 200.0f, 1.0f, 10.0f);
            if (i_this->field_0x5a0 == 40) {
                i_this->field_0x596 = 10;
                Z2GetAudioMgr()->seStart(Z2SE_DEMO_NS_WARPHOLE, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            }

            if (i_this->field_0x5a0 > 150) {
                i_this->field_0x59e = 4;
                i_this->field_0x5a0 = 0;
            }
            break;

        case 4:
            sp54.set(-15600.0f, 0.0f, 200.0f);
            player->setPlayerPosAndAngle(&sp54, 0x6e38, 0);
            i_this->current.pos.x = sp54.x;
            i_this->current.pos.z = sp54.z;
            cLib_addCalc2(&i_this->field_0x5f4, 70.0f, 0.05f, 0.08f);
            mDoMtx_stack_c::YrotS(player->shape_angle.y);
            sp48.x = -100.0f;
            sp48.y = -1000.0f;
            sp48.z = -1500.0f;
            mDoMtx_stack_c::multVec(&sp48, &i_this->field_0x5a4);
            i_this->field_0x5a4 += i_this->current.pos;
            i_this->field_0x5b0 = i_this->current.pos;
            i_this->field_0x5b0.y += -300.0f;

            if (i_this->field_0x5a0 == 50 || i_this->field_0x5a0 == 70 || i_this->field_0x5a0 == 90) {
                fpcM_Search(s_s1drop_sub,i_this);
            }

            if (i_this->field_0x5a0 == 110) {
                i_this->field_0x596 = 20;
            }

            if (i_this->field_0x5a0 == 200) {
                i_this->field_0x59e = 5;
                i_this->field_0x5a0 = 0;
                fpcM_Search(s_s1riv_sub,i_this);

                i_this->field_0x5b0.set(-14654.0f, 13.0f, -1518.0f);
                i_this->field_0x5a4.set(-15595.0f, 140.0f, -335.0f);
                i_this->field_0x5c8.set(-14932.0f, -19.0f, -847.0f);
                i_this->field_0x5bc.set(-15806.0f, 92.0f, 385.0f);

                i_this->field_0x5d4 = fabsf(i_this->field_0x5bc.x - i_this->field_0x5a4.x);
                i_this->field_0x5d8 = fabsf(i_this->field_0x5bc.y - i_this->field_0x5a4.y);
                i_this->field_0x5dc = fabsf(i_this->field_0x5bc.z - i_this->field_0x5a4.z);
                i_this->field_0x5e0 = fabsf(i_this->field_0x5c8.x - i_this->field_0x5b0.x);
                i_this->field_0x5e4 = fabsf(i_this->field_0x5c8.y - i_this->field_0x5b0.y);
                i_this->field_0x5e8 = fabsf(i_this->field_0x5c8.z - i_this->field_0x5b0.z);
                i_this->field_0x5b0.y += 4200.0f;
                i_this->field_0x5f8 = 0.0f;
                i_this->field_0x5f4 = 55.0f;
            }
            break;

        case 5:
        case 6:
            sp54.set(-15600.0f, 0.0f, 200.0f);
            player->setPlayerPosAndAngle(&sp54, 0x6e38, 0);
            if (i_this->field_0x5a0 == 38) {
                dComIfGp_getVibration().StartShock(5, 2, cXyz(0.0f, 1.0f, 0.0f));
                i_this->field_0x5fc = 30.0f;
            }

            if (i_this->field_0x5a0 < 81) {
                cLib_addCalc2(&i_this->field_0x5b0.y, 13.0f, 0.4f, 100.0f);
            } else {
                f32 fVar1 = 0.1f;
                if (i_this->field_0x59e == 6) {
                    fVar1 = 0.2f;
                }

                cLib_addCalc2(&i_this->field_0x5b0.x, i_this->field_0x5c8.x, fVar1, i_this->field_0x5e0 * i_this->field_0x5f8);
                cLib_addCalc2(&i_this->field_0x5b0.y, i_this->field_0x5c8.y, fVar1, i_this->field_0x5e4 * i_this->field_0x5f8);
                cLib_addCalc2(&i_this->field_0x5b0.z, i_this->field_0x5c8.z, fVar1, i_this->field_0x5e4 * i_this->field_0x5f8);
                cLib_addCalc2(&i_this->field_0x5a4.x, i_this->field_0x5bc.x, fVar1, i_this->field_0x5d4 * i_this->field_0x5f8);
                cLib_addCalc2(&i_this->field_0x5a4.y, i_this->field_0x5bc.y, fVar1, i_this->field_0x5d8 * i_this->field_0x5f8);
                cLib_addCalc2(&i_this->field_0x5a4.z, i_this->field_0x5bc.z, fVar1, i_this->field_0x5dc * i_this->field_0x5f8);
            }

            if (i_this->field_0x5a0 == 150) {
                i_this->field_0x5b0.set(-16437.0f, 251.0f, -605.0f);
                i_this->field_0x5a4.set(-15451.0f, 45.0f, 526.0f);
                i_this->field_0x5c8.set(-16531.0f, 251.0f, -511.0f);
                i_this->field_0x5bc.set(-15454.0f, 45.0f, 501.0f);
                i_this->field_0x5d4 = fabsf((i_this->field_0x5bc.x - i_this->field_0x5a4.x) * 0.2f);
                i_this->field_0x5d8 = fabsf((i_this->field_0x5bc.y - i_this->field_0x5a4.y) * 0.2f);
                i_this->field_0x5dc = fabsf((i_this->field_0x5bc.z - i_this->field_0x5a4.z) * 0.2f);
                i_this->field_0x5e0 = fabsf((i_this->field_0x5c8.x - i_this->field_0x5b0.x) * 0.2f);
                i_this->field_0x5e4 = fabsf((i_this->field_0x5c8.y - i_this->field_0x5b0.y) * 0.2f);
                i_this->field_0x5e8 = fabsf((i_this->field_0x5c8.z - i_this->field_0x5b0.z) * 0.2f);
                i_this->field_0x5f8 = 0.02f;

                master_ns[1]->current.pos.x = master_ns[1]->home.pos.x;
                master_ns[1]->current.pos.z = master_ns[1]->home.pos.z;
                master_ns[1]->current.pos.y = master_ns[1]->home.pos.y + 500.0f;
                master_ns[1]->speed.y = -120.0f;
                master_ns[1]->gravity = -7.0f;
            }

            if (i_this->field_0x5a0 == 210) {
                i_this->field_0x5b0.set(-14474.0f, 87.0f, -154.0f);
                i_this->field_0x5a4.set(-15888.0f, 40.0f, 390.0f);
                i_this->field_0x5c8.set(-14447.0f, -131.0f, 15.0f);
                i_this->field_0x5bc.set(-15895.0f, 145.0f, 365.0f);
                i_this->field_0x5d4 = fabsf((i_this->field_0x5bc.x - i_this->field_0x5a4.x) * 0.2f);
                i_this->field_0x5d8 = fabsf((i_this->field_0x5bc.y - i_this->field_0x5a4.y) * 0.2f);
                i_this->field_0x5dc = fabsf((i_this->field_0x5bc.z - i_this->field_0x5a4.z) * 0.2f);
                i_this->field_0x5e0 = fabsf((i_this->field_0x5c8.x - i_this->field_0x5b0.x) * 0.2f);
                i_this->field_0x5e4 = fabsf((i_this->field_0x5c8.y - i_this->field_0x5b0.y) * 0.2f);
                i_this->field_0x5e8 = fabsf((i_this->field_0x5c8.z - i_this->field_0x5b0.z) * 0.2f);

                master_ns[2]->current.pos.x = master_ns[2]->home.pos.x;
                master_ns[2]->current.pos.z = master_ns[2]->home.pos.z;
                master_ns[2]->current.pos.y = master_ns[2]->home.pos.y + 500.0f;
                master_ns[2]->speed.y = -120.0f;
                master_ns[2]->gravity = -7.0f;
            }

            if (i_this->field_0x5a0 == 290) {
                i_this->field_0x5b0.set(-15312.0f, 361.0f, 1425.0f);
                i_this->field_0x5a4.set(-15630.0f, 16.0f, -15.0f);
                i_this->field_0x5c8.set(-15312.0f, 361.0f, 1425.0f);
                i_this->field_0x5bc.set(-15630.0f, 16.0f, -15.0f);
                i_this->field_0x5f8 = 0.0f;
            }

            dComIfGp_event_onHindFlag(15);

            if (i_this->field_0x59e == 5) {
                if (i_this->field_0x5a0 > 309) {
                    if (i_this->field_0x5a0 == 310) {
                        i_this->mMsgFlow.init(i_this, 127, 0, NULL);
                    }
                    i_this->mMsgFlow.doFlow(i_this, NULL, 0);
                }

                if (i_this->mMsgFlow.getNowMsgNo() == 0x13a5 || i_this->mMsgFlow.getNowMsgNo() == 0x13e3) {
                    i_this->field_0x59e = 6;
                    i_this->field_0x5b0.set(-15605.0f, 144.0f, -1017.0f);
                    i_this->field_0x5a4.set(-15487.0f, 69.0f, 491.0f);
                    i_this->field_0x5c8.set(-15560.0f, 85.0f, 108.0f);
                    i_this->field_0x5bc.set(-15778.0f, 534.0f, 1538.0f);
                    i_this->field_0x5d4 = fabsf((i_this->field_0x5bc.x - i_this->field_0x5a4.x) * 0.9f);
                    i_this->field_0x5d8 = fabsf((i_this->field_0x5bc.y - i_this->field_0x5a4.y) * 0.9f);
                    i_this->field_0x5dc = fabsf((i_this->field_0x5bc.z - i_this->field_0x5a4.z) * 0.9f);
                    i_this->field_0x5e0 = fabsf((i_this->field_0x5c8.x - i_this->field_0x5b0.x) * 0.9f);
                    i_this->field_0x5e4 = fabsf((i_this->field_0x5c8.y - i_this->field_0x5b0.y) * 0.9f);
                    i_this->field_0x5e8 = fabsf((i_this->field_0x5c8.z - i_this->field_0x5b0.z) * 0.9f);
                    i_this->field_0x5f8 = 0.02f;
                }
            } else if (i_this->field_0x59e == 6 && i_this->mMsgFlow.doFlow(i_this, NULL, 0) != 0) {
                camera->mCamera.Reset(i_this->field_0x5b0, i_this->field_0x5a4);
                camera->mCamera.Start();
                camera->mCamera.SetTrimSize(0);
                dComIfGp_event_reset();
                daPy_getPlayerActorClass()->cancelOriginalDemo();
                fopAcM_delete(i_this);
                fpcM_Search(s_s1fight_sub,i_this);
                dComIfGs_onEventBit(0x1202);
            }
            break;

        case 10:
            if (!i_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(i_this, 2, 0xffff, 0);
                i_this->eventInfo.onCondition(2);
                return;
            }

            camera->mCamera.Stop();
            i_this->field_0x59e = 11;
            i_this->field_0x5a0 = 0;
            i_this->field_0x5f4 = 55.0f;
            i_this->field_0x5a0 = 0;
            i_this->field_0x5ec = 300.0f;
            i_this->field_0x5f0 = 1000.0f;
            i_this->field_0x5f8 = 0.0f;
            camera->mCamera.SetTrimSize(3);
            daPy_getPlayerActorClass()->changeOriginalDemo();
            daPy_getPlayerActorClass()->changeDemoMode(23, 0, 0, 0);
            // fallthrough
        case 11:
            if (strcmp(dComIfGp_getStartStageName(), "F_SP104") == 0) {
                if (i_this->field_0x5a0 > 39) {
                    if (i_this->field_0x5a0 == 40) {
                        i_this->mMsgFlow.init(i_this, 0xbba, 0, NULL);
                    }

                    if (i_this->mMsgFlow.doFlow(i_this, NULL, 0)) {
                        i_this->field_0x59e = 12;
                        i_this->field_0x5a0 = 0;
                    }
                }
            } else if (i_this->field_0x5a0 == 40) {
                i_this->field_0x59e = 12;
                i_this->field_0x5a0 = 0;
            }

            sp54 = i_this->home.pos;
            sp54.y = player->current.pos.y + 200.0f;

            if (fopAcM_gc_c::gndCheck(&sp54)) {
                sp54.y = fopAcM_gc_c::getGroundY();
            } else {
                sp54.y = player->current.pos.y;
            }
            player->setPlayerPosAndAngle(&sp54, i_this->home.angle.y, 0);

            i_this->field_0x5ec = 200.0f;
            i_this->field_0x5f0 = -500.0f;
            mDoMtx_stack_c::YrotS(i_this->home.angle.y);
            sp48.x = -100.0f;
            sp48.y = i_this->field_0x5ec;
            sp48.z = i_this->field_0x5f0;
            mDoMtx_stack_c::multVec(&sp48, &i_this->field_0x5a4);
            i_this->field_0x5a4 += player->current.pos;
            i_this->field_0x5b0 = player->current.pos;
            i_this->field_0x5b0.y += 100.0f;
            break;

        case 12:
            if (i_this->field_0x5a0 > 28) {
                cLib_addCalc2(&i_this->field_0x5b0.y, i_this->current.pos.y, 0.2f, i_this->field_0x5f8);
                cLib_addCalc2(&i_this->field_0x5f8, 200.0f, 1.0f, 10.0f);

                if (i_this->field_0x5a0 == 69) {
                    i_this->field_0x596 = 10;
                    Z2GetAudioMgr()->seStart(Z2SE_DEMO_NS_WARPHOLE, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                }

                if (i_this->field_0x5a0 > 159) {
                    i_this->field_0x59e = 13;
                    i_this->field_0x5a0 = 0;
                }
            }
            break;

        case 13:
            cLib_addCalc2(&i_this->field_0x5f4, 70.0f, 0.05f, 0.08f);
            mDoMtx_stack_c::YrotS(i_this->home.angle.y);
            sp48.x = -100.0f;
            sp48.y = -1000.0f;
            sp48.z = -1500.0f;
            mDoMtx_stack_c::multVec(&sp48, &i_this->field_0x5a4);
            i_this->field_0x5a4 += i_this->current.pos;
            i_this->field_0x5b0 = i_this->current.pos;
            i_this->field_0x5b0.y += -300.0f;

            if (i_this->field_0x5a0 == 50 && i_this->field_0x64c != 0) {
                i_this->field_0x64c--;
                fpcM_Search(s_s1drop2_sub,i_this);
                if (i_this->field_0x64c != 0) {
                    i_this->field_0x5a0 += -20;
                }
            }

            if (i_this->field_0x5a0 == 70) {
                i_this->field_0x596 = 20;
            }

            if (i_this->field_0x5a0 == 140) {
                fpcM_Search(s_s1start_sub,i_this);
                camera->mCamera.Reset(i_this->field_0x5b0, i_this->field_0x5a4);
                camera->mCamera.Start();
                camera->mCamera.SetTrimSize(0);
                dComIfGp_event_reset();
                daPy_getPlayerActorClass()->cancelOriginalDemo();
                fopAcM_delete(i_this);
            }
            break;

        case 20:
            if (!i_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(i_this, 2, 0xffff, 0);
                i_this->eventInfo.onCondition(2);
                return;
            }

            camera->mCamera.Stop();
            i_this->field_0x59e = 21;
            i_this->field_0x5a0 = 0;
            i_this->field_0x5f4 = 55.0f;
            i_this->field_0x5a0 = 0;
            camera->mCamera.SetTrimSize(3);
            i_this->field_0x5b0.set(34800.0f, 5700.0f, -26735.0f);
            i_this->field_0x5a4.set(37592.0f, 1256.0f, -24152.0f);
            // fallthrough
        case 21:
            if ((daPy_getPlayerActorClass()->checkHorseRide() == 0 && horseActor != NULL) && horseActor->current.pos.z > -28000.0f) {
                horseActor->current.pos.set(34785.0f, -300.0f, -28500.0f);
                horseActor->old.pos.set(34785.0f, -300.0f, -28500.0f);
            }

            if (i_this->field_0x5a0 == 40) {
                i_this->field_0x596 = 10;
                Z2GetAudioMgr()->seStart(Z2SE_DEMO_NS_WARPHOLE, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            }

            if (i_this->field_0x5a0 > 179) {
                fopAc_ac_c* actor = fopAcM_SearchByName(0xde);
                sp54.set(34800.0f, i_this->field_0x5ec + -300.0f, -26735.0f);



                if (i_this->field_0x5a0 == 180) {
                    sp54 = i_this->field_0x5b0;
                    dComIfGp_particle_set(0x850c, &sp54, NULL, &cXyz(i_this->scale.x, i_this->scale.x, i_this->scale.x));
                    sp54.set(34800.0f, -300.0f, -26735.0f);

                    for (int i = 0; i < 20; i++) {
                        dComIfGp_particle_set(w_id[i], &sp54, NULL, NULL);
                    }

                    i_this->field_0x5ec = -30.0f;
                    
                }
            }

            if (i_this->field_0x5a0 > 181) {
                cLib_addCalc2(&i_this->field_0x5b0.y, -300.0f, 0.5f, 800.0f);
            }

            if (i_this->field_0x5a0 == 190) {
                dComIfGp_getVibration().StartQuake(3, 1, cXyz(0.0f, 1.0f, 0.0f));
            }

            if (i_this->field_0x5a0 > 189 && i_this->field_0x5a0 < 222) {
                i_this->field_0x5fc = 10.0f;
            }

            if (i_this->field_0x5a0 == 222) {
                dComIfGp_getVibration().StopQuake(31);
                dComIfGp_getVibration().StartShock(8, 1, cXyz(0.0f, 1.0f, 0.0f));
                i_this->field_0x5fc = 25.0f;
            }

            if (i_this->field_0x5a0 > 459) {
                i_this->field_0x59e = 22;
                i_this->field_0x5a0 = 0;
                i_this->field_0x5b0.set(34800.0f, 5700.0f, -26735.0f);
                i_this->field_0x5a4.set(37592.0f, 1256.0f, -24152.0f);
                sp54.set(34800.0f, 5700.0f, -26735.0f);
                cXyz sp84(i_this->scale.x, i_this->scale.x, i_this->scale.x);
                dComIfGp_particle_set(0x8522, &sp54, NULL, &sp84);
                dComIfGp_particle_set(0x8523, &sp54, NULL, &sp84);
                i_this->field_0x5f8 = 0.0f;
                ew_s1angy = 0;
            }
            break;

        case 22:
            if (i_this->field_0x5a0 > 29) {
                cLib_addCalc2(&i_this->field_0x5f4, 30.0f, 0.05f, i_this->field_0x5f8 * 0.2f);
                cLib_addCalc2(&i_this->field_0x5f8, 1.0f, 1.0f, 0.03f);
            }

            if (i_this->field_0x5a0 == 140 && i_this->field_0x64c != 0) {
                i_this->field_0x64c--;
                fpcM_Search(s_s1drop2_sub,i_this);
                fpcM_Search(s_s1Yangset_sub,i_this);
                ew_s1angy += 0x5555;
                if (i_this->field_0x64c != 0) {
                    i_this->field_0x5a0 += -20;
                }
            }

            if (i_this->field_0x5a0 == 150) {
                i_this->field_0x596 = 20;
            }

            if (i_this->field_0x5a0 > 229) {
                fpcM_Search(s_s1start_sub,i_this);
                i_this->field_0x59e = 23;
                i_this->field_0x5a0 = 0;
                i_this->field_0x5b0.set(34397.0f, -180.0f, -31312.0f);
                i_this->field_0x5a4.set(34218.0f, -166.0f, -31724.0f);
                i_this->field_0x5f4 = 55.0f;
            }
            break;

        case 23:
            if (i_this->field_0x5a0 > 79) {
                camera->mCamera.Reset(i_this->field_0x5b0, i_this->field_0x5a4);
                camera->mCamera.Start();
                camera->mCamera.SetTrimSize(0);
                dComIfGp_event_reset();
                daPy_getPlayerActorClass()->cancelOriginalDemo();
                if (horseActor != NULL) {
                    horseActor->cancelOriginalDemo();
                }
                fopAcM_delete(i_this);
            }
    }

    if (i_this->field_0x59e != 0) {
        int iVar1 = i_this->field_0x5fc * cM_scos(i_this->field_0x594 * 0x3500) * 10.0f;
        cXyz sp90 = i_this->field_0x5b0;
        cXyz sp9c = i_this->field_0x5a4;
        sp90.y += i_this->field_0x5fc * cM_ssin(i_this->field_0x594 * 0x3200);
        sp9c.y += i_this->field_0x5fc * cM_ssin(i_this->field_0x594 * 0x3200);
        camera->mCamera.Set(sp9c, sp90, iVar1, i_this->field_0x5f4);
        cLib_addCalc0(&i_this->field_0x5fc, 1.0f, 2.0f);
        i_this->field_0x5a0++;

        if (i_this->field_0x5a0 > 10000) {
            i_this->field_0x5a0 = 10000;
        }
    }
}

/* 807D1B48-807D1BAC 0023E8 0064+00 2/2 0/0 0/0 .text            mtx_set__FP18e_warpappear_class */
static void mtx_set(e_warpappear_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807D210C-807D2110 000084 0004+00 0/0 0/0 0/0 .rodata          @4804 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4804 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807D210C, &lit_4804);
#pragma pop

/* 807D2110-807D2114 000088 0004+00 0/0 0/0 0/0 .rodata          @4805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4805 = 10.0f;
COMPILER_STRIP_GATE(0x807D2110, &lit_4805);
#pragma pop

/* 807D2114-807D2118 00008C 0004+00 0/0 0/0 0/0 .rodata          @4806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4806 = -1.0f;
COMPILER_STRIP_GATE(0x807D2114, &lit_4806);
#pragma pop

/* 807D2118-807D211C 000090 0004+00 0/0 0/0 0/0 .rodata          @4807 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4807 = 70.0f;
COMPILER_STRIP_GATE(0x807D2118, &lit_4807);
#pragma pop

/* 807D211C-807D2120 000094 0004+00 0/0 0/0 0/0 .rodata          @4808 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4808 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x807D211C, &lit_4808);
#pragma pop

/* 807D2120-807D2124 000098 0004+00 0/0 0/0 0/0 .rodata          @4809 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4809 = 2.0f / 25.0f;
COMPILER_STRIP_GATE(0x807D2120, &lit_4809);
#pragma pop

/* 807D2124-807D2128 00009C 0004+00 0/0 0/0 0/0 .rodata          @4810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4810 = -1000.0f;
COMPILER_STRIP_GATE(0x807D2124, &lit_4810);
#pragma pop

/* 807D2128-807D212C 0000A0 0004+00 0/0 0/0 0/0 .rodata          @4811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4811 = -1500.0f;
COMPILER_STRIP_GATE(0x807D2128, &lit_4811);
#pragma pop

/* 807D212C-807D2130 0000A4 0004+00 0/0 0/0 0/0 .rodata          @4812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4812 = -300.0f;
COMPILER_STRIP_GATE(0x807D212C, &lit_4812);
#pragma pop

/* 807D2130-807D2134 0000A8 0004+00 0/0 0/0 0/0 .rodata          @4813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4813 = -14654.0f;
COMPILER_STRIP_GATE(0x807D2130, &lit_4813);
#pragma pop

/* 807D2134-807D2138 0000AC 0004+00 0/0 0/0 0/0 .rodata          @4814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4814 = 13.0f;
COMPILER_STRIP_GATE(0x807D2134, &lit_4814);
#pragma pop

/* 807D2138-807D213C 0000B0 0004+00 0/0 0/0 0/0 .rodata          @4815 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4815 = -1518.0f;
COMPILER_STRIP_GATE(0x807D2138, &lit_4815);
#pragma pop

/* 807D213C-807D2140 0000B4 0004+00 0/0 0/0 0/0 .rodata          @4816 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4816 = -15595.0f;
COMPILER_STRIP_GATE(0x807D213C, &lit_4816);
#pragma pop

/* 807D2140-807D2144 0000B8 0004+00 0/0 0/0 0/0 .rodata          @4817 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4817 = 140.0f;
COMPILER_STRIP_GATE(0x807D2140, &lit_4817);
#pragma pop

/* 807D2144-807D2148 0000BC 0004+00 0/0 0/0 0/0 .rodata          @4818 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4818 = -335.0f;
COMPILER_STRIP_GATE(0x807D2144, &lit_4818);
#pragma pop

/* 807D2148-807D214C 0000C0 0004+00 0/0 0/0 0/0 .rodata          @4819 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4819 = -14932.0f;
COMPILER_STRIP_GATE(0x807D2148, &lit_4819);
#pragma pop

/* 807D214C-807D2150 0000C4 0004+00 0/0 0/0 0/0 .rodata          @4820 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4820 = -19.0f;
COMPILER_STRIP_GATE(0x807D214C, &lit_4820);
#pragma pop

/* 807D2150-807D2154 0000C8 0004+00 0/0 0/0 0/0 .rodata          @4821 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4821 = -847.0f;
COMPILER_STRIP_GATE(0x807D2150, &lit_4821);
#pragma pop

/* 807D2154-807D2158 0000CC 0004+00 0/0 0/0 0/0 .rodata          @4822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4822 = -15806.0f;
COMPILER_STRIP_GATE(0x807D2154, &lit_4822);
#pragma pop

/* 807D2158-807D215C 0000D0 0004+00 0/0 0/0 0/0 .rodata          @4823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4823 = 92.0f;
COMPILER_STRIP_GATE(0x807D2158, &lit_4823);
#pragma pop

/* 807D215C-807D2160 0000D4 0004+00 0/0 0/0 0/0 .rodata          @4824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4824 = 385.0f;
COMPILER_STRIP_GATE(0x807D215C, &lit_4824);
#pragma pop

/* 807D2160-807D2164 0000D8 0004+00 0/0 0/0 0/0 .rodata          @4825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4825 = 4200.0f;
COMPILER_STRIP_GATE(0x807D2160, &lit_4825);
#pragma pop

/* 807D2164-807D2168 0000DC 0004+00 0/0 0/0 0/0 .rodata          @4826 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4826 = 30.0f;
COMPILER_STRIP_GATE(0x807D2164, &lit_4826);
#pragma pop

/* 807D2168-807D216C 0000E0 0004+00 0/0 0/0 0/0 .rodata          @4827 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4827 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807D2168, &lit_4827);
#pragma pop

/* 807D216C-807D2170 0000E4 0004+00 0/0 0/0 0/0 .rodata          @4828 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4828 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x807D216C, &lit_4828);
#pragma pop

/* 807D2170-807D2174 0000E8 0004+00 0/0 0/0 0/0 .rodata          @4829 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4829 = 0x3B03126F;
COMPILER_STRIP_GATE(0x807D2170, &lit_4829);
#pragma pop

/* 807D2174-807D2178 0000EC 0004+00 0/0 0/0 0/0 .rodata          @4830 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4830 = -16437.0f;
COMPILER_STRIP_GATE(0x807D2174, &lit_4830);
#pragma pop

/* 807D2178-807D217C 0000F0 0004+00 0/0 0/0 0/0 .rodata          @4831 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4831 = 251.0f;
COMPILER_STRIP_GATE(0x807D2178, &lit_4831);
#pragma pop

/* 807D217C-807D2180 0000F4 0004+00 0/0 0/0 0/0 .rodata          @4832 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4832 = -605.0f;
COMPILER_STRIP_GATE(0x807D217C, &lit_4832);
#pragma pop

/* 807D2180-807D2184 0000F8 0004+00 0/0 0/0 0/0 .rodata          @4833 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4833 = -15451.0f;
COMPILER_STRIP_GATE(0x807D2180, &lit_4833);
#pragma pop

/* 807D2184-807D2188 0000FC 0004+00 0/0 0/0 0/0 .rodata          @4834 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4834 = 45.0f;
COMPILER_STRIP_GATE(0x807D2184, &lit_4834);
#pragma pop

/* 807D2188-807D218C 000100 0004+00 0/0 0/0 0/0 .rodata          @4835 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4835 = 526.0f;
COMPILER_STRIP_GATE(0x807D2188, &lit_4835);
#pragma pop

/* 807D218C-807D2190 000104 0004+00 0/0 0/0 0/0 .rodata          @4836 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4836 = -16531.0f;
COMPILER_STRIP_GATE(0x807D218C, &lit_4836);
#pragma pop

/* 807D2190-807D2194 000108 0004+00 0/0 0/0 0/0 .rodata          @4837 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4837 = -511.0f;
COMPILER_STRIP_GATE(0x807D2190, &lit_4837);
#pragma pop

/* 807D2194-807D2198 00010C 0004+00 0/0 0/0 0/0 .rodata          @4838 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4838 = -15454.0f;
COMPILER_STRIP_GATE(0x807D2194, &lit_4838);
#pragma pop

/* 807D2198-807D219C 000110 0004+00 0/0 0/0 0/0 .rodata          @4839 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4839 = 501.0f;
COMPILER_STRIP_GATE(0x807D2198, &lit_4839);
#pragma pop

/* 807D219C-807D21A0 000114 0004+00 0/0 0/0 0/0 .rodata          @4840 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4840 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x807D219C, &lit_4840);
#pragma pop

/* 807D21A0-807D21A4 000118 0004+00 0/0 0/0 0/0 .rodata          @4841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4841 = 500.0f;
COMPILER_STRIP_GATE(0x807D21A0, &lit_4841);
#pragma pop

/* 807D21A4-807D21A8 00011C 0004+00 0/0 0/0 0/0 .rodata          @4842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4842 = -120.0f;
COMPILER_STRIP_GATE(0x807D21A4, &lit_4842);
#pragma pop

/* 807D21A8-807D21AC 000120 0004+00 0/0 0/0 0/0 .rodata          @4843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4843 = -7.0f;
COMPILER_STRIP_GATE(0x807D21A8, &lit_4843);
#pragma pop

/* 807D21AC-807D21B0 000124 0004+00 0/0 0/0 0/0 .rodata          @4844 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4844 = -14474.0f;
COMPILER_STRIP_GATE(0x807D21AC, &lit_4844);
#pragma pop

/* 807D21B0-807D21B4 000128 0004+00 0/0 0/0 0/0 .rodata          @4845 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4845 = 87.0f;
COMPILER_STRIP_GATE(0x807D21B0, &lit_4845);
#pragma pop

/* 807D21B4-807D21B8 00012C 0004+00 0/0 0/0 0/0 .rodata          @4846 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4846 = -154.0f;
COMPILER_STRIP_GATE(0x807D21B4, &lit_4846);
#pragma pop

/* 807D21B8-807D21BC 000130 0004+00 0/0 0/0 0/0 .rodata          @4847 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4847 = -15888.0f;
COMPILER_STRIP_GATE(0x807D21B8, &lit_4847);
#pragma pop

/* 807D21BC-807D21C0 000134 0004+00 0/0 0/0 0/0 .rodata          @4848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4848 = 40.0f;
COMPILER_STRIP_GATE(0x807D21BC, &lit_4848);
#pragma pop

/* 807D21C0-807D21C4 000138 0004+00 0/0 0/0 0/0 .rodata          @4849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4849 = 390.0f;
COMPILER_STRIP_GATE(0x807D21C0, &lit_4849);
#pragma pop

/* 807D21C4-807D21C8 00013C 0004+00 0/0 0/0 0/0 .rodata          @4850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4850 = -14447.0f;
COMPILER_STRIP_GATE(0x807D21C4, &lit_4850);
#pragma pop

/* 807D21C8-807D21CC 000140 0004+00 0/0 0/0 0/0 .rodata          @4851 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4851 = -131.0f;
COMPILER_STRIP_GATE(0x807D21C8, &lit_4851);
#pragma pop

/* 807D21CC-807D21D0 000144 0004+00 0/0 0/0 0/0 .rodata          @4852 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4852 = 15.0f;
COMPILER_STRIP_GATE(0x807D21CC, &lit_4852);
#pragma pop

/* 807D21D0-807D21D4 000148 0004+00 0/0 0/0 0/0 .rodata          @4853 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4853 = -15895.0f;
COMPILER_STRIP_GATE(0x807D21D0, &lit_4853);
#pragma pop

/* 807D21D4-807D21D8 00014C 0004+00 0/0 0/0 0/0 .rodata          @4854 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4854 = 145.0f;
COMPILER_STRIP_GATE(0x807D21D4, &lit_4854);
#pragma pop

/* 807D21D8-807D21DC 000150 0004+00 0/0 0/0 0/0 .rodata          @4855 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4855 = 365.0f;
COMPILER_STRIP_GATE(0x807D21D8, &lit_4855);
#pragma pop

/* 807D21DC-807D21E0 000154 0004+00 0/0 0/0 0/0 .rodata          @4856 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4856 = -15312.0f;
COMPILER_STRIP_GATE(0x807D21DC, &lit_4856);
#pragma pop

/* 807D21E0-807D21E4 000158 0004+00 0/0 0/0 0/0 .rodata          @4857 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4857 = 361.0f;
COMPILER_STRIP_GATE(0x807D21E0, &lit_4857);
#pragma pop

/* 807D21E4-807D21E8 00015C 0004+00 0/0 0/0 0/0 .rodata          @4858 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4858 = 1425.0f;
COMPILER_STRIP_GATE(0x807D21E4, &lit_4858);
#pragma pop

/* 807D21E8-807D21EC 000160 0004+00 0/0 0/0 0/0 .rodata          @4859 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4859 = -15630.0f;
COMPILER_STRIP_GATE(0x807D21E8, &lit_4859);
#pragma pop

/* 807D21EC-807D21F0 000164 0004+00 0/0 0/0 0/0 .rodata          @4860 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4860 = 16.0f;
COMPILER_STRIP_GATE(0x807D21EC, &lit_4860);
#pragma pop

/* 807D21F0-807D21F4 000168 0004+00 0/0 0/0 0/0 .rodata          @4861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4861 = -15.0f;
COMPILER_STRIP_GATE(0x807D21F0, &lit_4861);
#pragma pop

/* 807D21F4-807D21F8 00016C 0004+00 0/0 0/0 0/0 .rodata          @4862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4862 = -15605.0f;
COMPILER_STRIP_GATE(0x807D21F4, &lit_4862);
#pragma pop

/* 807D21F8-807D21FC 000170 0004+00 0/0 0/0 0/0 .rodata          @4863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4863 = 144.0f;
COMPILER_STRIP_GATE(0x807D21F8, &lit_4863);
#pragma pop

/* 807D21FC-807D2200 000174 0004+00 0/0 0/0 0/0 .rodata          @4864 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4864 = -1017.0f;
COMPILER_STRIP_GATE(0x807D21FC, &lit_4864);
#pragma pop

/* 807D2200-807D2204 000178 0004+00 0/0 0/0 0/0 .rodata          @4865 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4865 = -15487.0f;
COMPILER_STRIP_GATE(0x807D2200, &lit_4865);
#pragma pop

/* 807D2204-807D2208 00017C 0004+00 0/0 0/0 0/0 .rodata          @4866 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4866 = 69.0f;
COMPILER_STRIP_GATE(0x807D2204, &lit_4866);
#pragma pop

/* 807D2208-807D220C 000180 0004+00 0/0 0/0 0/0 .rodata          @4867 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4867 = 491.0f;
COMPILER_STRIP_GATE(0x807D2208, &lit_4867);
#pragma pop

/* 807D220C-807D2210 000184 0004+00 0/0 0/0 0/0 .rodata          @4868 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4868 = -15560.0f;
COMPILER_STRIP_GATE(0x807D220C, &lit_4868);
#pragma pop

/* 807D2210-807D2214 000188 0004+00 0/0 0/0 0/0 .rodata          @4869 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4869 = 85.0f;
COMPILER_STRIP_GATE(0x807D2210, &lit_4869);
#pragma pop

/* 807D2214-807D2218 00018C 0004+00 0/0 0/0 0/0 .rodata          @4870 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4870 = 108.0f;
COMPILER_STRIP_GATE(0x807D2214, &lit_4870);
#pragma pop

/* 807D2218-807D221C 000190 0004+00 0/0 0/0 0/0 .rodata          @4871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4871 = -15778.0f;
COMPILER_STRIP_GATE(0x807D2218, &lit_4871);
#pragma pop

/* 807D221C-807D2220 000194 0004+00 0/0 0/0 0/0 .rodata          @4872 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4872 = 534.0f;
COMPILER_STRIP_GATE(0x807D221C, &lit_4872);
#pragma pop

/* 807D2220-807D2224 000198 0004+00 0/0 0/0 0/0 .rodata          @4873 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4873 = 1538.0f;
COMPILER_STRIP_GATE(0x807D2220, &lit_4873);
#pragma pop

/* 807D2224-807D2228 00019C 0004+00 0/0 0/0 0/0 .rodata          @4874 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4874 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x807D2224, &lit_4874);
#pragma pop

/* 807D2228-807D222C 0001A0 0004+00 0/0 0/0 0/0 .rodata          @4875 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4875 = 34800.0f;
COMPILER_STRIP_GATE(0x807D2228, &lit_4875);
#pragma pop

/* 807D222C-807D2230 0001A4 0004+00 0/0 0/0 0/0 .rodata          @4876 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4876 = 5700.0f;
COMPILER_STRIP_GATE(0x807D222C, &lit_4876);
#pragma pop

/* 807D2230-807D2234 0001A8 0004+00 0/0 0/0 0/0 .rodata          @4877 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4877 = -26735.0f;
COMPILER_STRIP_GATE(0x807D2230, &lit_4877);
#pragma pop

/* 807D2234-807D2238 0001AC 0004+00 0/0 0/0 0/0 .rodata          @4878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4878 = 37592.0f;
COMPILER_STRIP_GATE(0x807D2234, &lit_4878);
#pragma pop

/* 807D2238-807D223C 0001B0 0004+00 0/0 0/0 0/0 .rodata          @4879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4879 = 1256.0f;
COMPILER_STRIP_GATE(0x807D2238, &lit_4879);
#pragma pop

/* 807D223C-807D2240 0001B4 0004+00 0/0 0/0 0/0 .rodata          @4880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4880 = -24152.0f;
COMPILER_STRIP_GATE(0x807D223C, &lit_4880);
#pragma pop

/* 807D2240-807D2244 0001B8 0004+00 0/0 0/0 0/0 .rodata          @4881 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4881 = -28000.0f;
COMPILER_STRIP_GATE(0x807D2240, &lit_4881);
#pragma pop

/* 807D2244-807D2248 0001BC 0004+00 0/0 0/0 0/0 .rodata          @4882 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4882 = 34785.0f;
COMPILER_STRIP_GATE(0x807D2244, &lit_4882);
#pragma pop

/* 807D2248-807D224C 0001C0 0004+00 0/0 0/0 0/0 .rodata          @4883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4883 = -28500.0f;
COMPILER_STRIP_GATE(0x807D2248, &lit_4883);
#pragma pop

/* 807D224C-807D2250 0001C4 0004+00 0/0 0/0 0/0 .rodata          @4884 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4884 = 0x41815556;
COMPILER_STRIP_GATE(0x807D224C, &lit_4884);
#pragma pop

/* 807D2250-807D2254 0001C8 0004+00 0/0 0/0 0/0 .rodata          @4885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4885 = -30.0f;
COMPILER_STRIP_GATE(0x807D2250, &lit_4885);
#pragma pop

/* 807D2254-807D2258 0001CC 0004+00 0/0 0/0 0/0 .rodata          @4886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4886 = 0.5f;
COMPILER_STRIP_GATE(0x807D2254, &lit_4886);
#pragma pop

/* 807D2258-807D225C 0001D0 0004+00 0/0 0/0 0/0 .rodata          @4887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4887 = 800.0f;
COMPILER_STRIP_GATE(0x807D2258, &lit_4887);
#pragma pop

/* 807D225C-807D2260 0001D4 0004+00 0/0 0/0 0/0 .rodata          @4888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4888 = 25.0f;
COMPILER_STRIP_GATE(0x807D225C, &lit_4888);
#pragma pop

/* 807D2260-807D2264 0001D8 0004+00 0/0 0/0 0/0 .rodata          @4889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4889 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x807D2260, &lit_4889);
#pragma pop

/* 807D2264-807D2268 0001DC 0004+00 0/0 0/0 0/0 .rodata          @4890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4890 = 34397.0f;
COMPILER_STRIP_GATE(0x807D2264, &lit_4890);
#pragma pop

/* 807D2268-807D226C 0001E0 0004+00 0/0 0/0 0/0 .rodata          @4891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4891 = -180.0f;
COMPILER_STRIP_GATE(0x807D2268, &lit_4891);
#pragma pop

/* 807D226C-807D2270 0001E4 0004+00 0/0 0/0 0/0 .rodata          @4892 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4892 = -31312.0f;
COMPILER_STRIP_GATE(0x807D226C, &lit_4892);
#pragma pop

/* 807D2270-807D2274 0001E8 0004+00 0/0 0/0 0/0 .rodata          @4893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4893 = 34218.0f;
COMPILER_STRIP_GATE(0x807D2270, &lit_4893);
#pragma pop

/* 807D2274-807D2278 0001EC 0004+00 0/0 0/0 0/0 .rodata          @4894 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4894 = -166.0f;
COMPILER_STRIP_GATE(0x807D2274, &lit_4894);
#pragma pop

/* 807D2278-807D227C 0001F0 0004+00 0/0 0/0 0/0 .rodata          @4895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4895 = -31724.0f;
COMPILER_STRIP_GATE(0x807D2278, &lit_4895);
#pragma pop

/* 807D227C-807D2280 0001F4 0004+00 1/1 0/0 0/0 .rodata          @4949 */
SECTION_RODATA static f32 const lit_4949 = 20.0f;
COMPILER_STRIP_GATE(0x807D227C, &lit_4949);

/* 807D1BAC-807D1C50 00244C 00A4+00 1/0 0/0 0/0 .text
 * daE_Warpappear_Execute__FP18e_warpappear_class               */
static void daE_Warpappear_Execute(e_warpappear_class* param_0) {
    // NONMATCHING
}

/* 807D1C50-807D1C58 0024F0 0008+00 1/0 0/0 0/0 .text
 * daE_Warpappear_IsDelete__FP18e_warpappear_class              */
static bool daE_Warpappear_IsDelete(e_warpappear_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 807D2280-807D2280 0001F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807D2288 = "Kytag04";
#pragma pop

/* 807D1C58-807D1C8C 0024F8 0034+00 1/0 0/0 0/0 .text
 * daE_Warpappear_Delete__FP18e_warpappear_class                */
static void daE_Warpappear_Delete(e_warpappear_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807D2318-807D2338 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_Warpappear_Method */
static actor_method_class l_daE_Warpappear_Method = {
    (process_method_func)daE_Warpappear_Create__FP10fopAc_ac_c,
    (process_method_func)daE_Warpappear_Delete__FP18e_warpappear_class,
    (process_method_func)daE_Warpappear_Execute__FP18e_warpappear_class,
    (process_method_func)daE_Warpappear_IsDelete__FP18e_warpappear_class,
    (process_method_func)daE_Warpappear_Draw__FP18e_warpappear_class,
};

/* 807D2338-807D2368 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_WAP */
extern actor_process_profile_definition g_profile_E_WAP = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_E_WAP,                 // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(e_warpappear_class), // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  233,                        // mPriority
  &l_daE_Warpappear_Method,   // sub_method
  0x00044000,                 // mStatus
  fopAc_ACTOR_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 807D2368-807D2374 0000D8 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 807D1C8C-807D1EF8 00252C 026C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 807D1EF8-807D1F40 002798 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 807D1F40-807D206C 0027E0 012C+00 1/0 0/0 0/0 .text daE_Warpappear_Create__FP10fopAc_ac_c */
static void daE_Warpappear_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 807D206C-807D2080 00290C 0014+00 1/1 0/0 0/0 .text            changeDemoMode__9daPy_py_cFUliis */
// void daPy_py_c::changeDemoMode(u32 param_0, int param_1, int param_2, s16 param_3) {
extern "C" void changeDemoMode__9daPy_py_cFUliis() {
    // NONMATCHING
}

/* 807D2280-807D2280 0001F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
