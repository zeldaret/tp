/**
 * @file d_a_obj_swpush.cpp
 * 
*/

#include "d/actor/d_a_obj_swpush.h"
#include "SSystem/SComponent/c_lib.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void prmZ_init__Q211daObjSwpush5Act_cFv();
extern "C" void is_switch2__Q211daObjSwpush5Act_cCFv();
extern "C" void solidHeapCB__Q211daObjSwpush5Act_cFP10fopAc_ac_c();
extern "C" void create_heap__Q211daObjSwpush5Act_cFv();
extern "C" void create_res_load__Q211daObjSwpush5Act_cFv();
extern "C" void Mthd_Create__Q211daObjSwpush5Act_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void Mthd_Delete__Q211daObjSwpush5Act_cFv();
extern "C" void set_mtx__Q211daObjSwpush5Act_cFv();
extern "C" void init_mtx__Q211daObjSwpush5Act_cFv();
extern "C" void set_btp_frame__Q211daObjSwpush5Act_cFv();
extern "C" void rideCB__Q211daObjSwpush5Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void __dt__8cM3dGTriFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void jnodeCB__Q211daObjSwpush5Act_cFP8J3DJointi();
extern "C" void calc_top_pos__Q211daObjSwpush5Act_cFv();
extern "C" void top_bg_aim_req__Q211daObjSwpush5Act_cFfs();
extern "C" void set_push_flag__Q211daObjSwpush5Act_cFv();
extern "C" void mode_upper_init__Q211daObjSwpush5Act_cFv();
extern "C" void mode_upper__Q211daObjSwpush5Act_cFv();
extern "C" void mode_u_l_init__Q211daObjSwpush5Act_cFv();
extern "C" void mode_u_l__Q211daObjSwpush5Act_cFv();
extern "C" void mode_lower_init__Q211daObjSwpush5Act_cFv();
extern "C" void mode_lower__Q211daObjSwpush5Act_cFv();
extern "C" void mode_l_u_init__Q211daObjSwpush5Act_cFv();
extern "C" void mode_l_u__Q211daObjSwpush5Act_cFv();
extern "C" void demo_non_init__Q211daObjSwpush5Act_cFv();
extern "C" void demo_non__Q211daObjSwpush5Act_cFv();
extern "C" void demo_reqPause_init__Q211daObjSwpush5Act_cFv();
extern "C" void demo_reqPause__Q211daObjSwpush5Act_cFv();
extern "C" void demo_runPause_init__Q211daObjSwpush5Act_cFv();
extern "C" void demo_runPause__Q211daObjSwpush5Act_cFv();
extern "C" void demo_stop_puase__Q211daObjSwpush5Act_cFv();
extern "C" void demo_reqSw_init__Q211daObjSwpush5Act_cFv();
extern "C" void demo_reqSw__Q211daObjSwpush5Act_cFv();
extern "C" void demo_runSw_init__Q211daObjSwpush5Act_cFv();
extern "C" void demo_runSw__Q211daObjSwpush5Act_cFv();
extern "C" void check_ride_couple__Q211daObjSwpush5Act_cFs();
extern "C" void nr_ride_people__Q211daObjSwpush5Act_cFc();
extern "C" void Mthd_Execute__Q211daObjSwpush5Act_cFv();
extern "C" void Mthd_Draw__Q211daObjSwpush5Act_cFv();
extern "C" static void func_80484C5C();
extern "C" static void func_80484C7C();
extern "C" static void func_80484C9C();
extern "C" static void func_80484CBC();
extern "C" static bool func_80484CDC();
extern "C" void func_80484CE4(void* _this, fopAc_ac_c const*, daObjSwpush::Act_c::Prm_e,
                              daObjSwpush::Act_c::Prm_e);
extern "C" u8 const M_bmd__Q211daObjSwpush5Act_c[6 + 2 /* padding */];
extern "C" u8 const M_dzb__Q211daObjSwpush5Act_c[6 + 2 /* padding */];
extern "C" u8 const M_heap_size__Q211daObjSwpush5Act_c[12];
extern "C" u8 const M_attr__Q211daObjSwpush5Act_c[220];
extern "C" u32 const M_op_vtx__Q211daObjSwpush5Act_c;
extern "C" extern char const* const d_a_obj_swpush__stringBase0;
extern "C" void* M_arcname__Q211daObjSwpush5Act_c[3];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void push__14mDoMtx_stack_cFv();
extern "C" void pop__14mDoMtx_stack_cFv();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void revSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getEventData__16dEvent_manager_cFs();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void GlobalVtx__4cBgWFv();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void Set__6dBgWSvFP6cBgD_tUl();
extern "C" void CopyBackVtx__6dBgWSvFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM3d_CrossY_Tri__FPC8cM3dGTriPC3Vec();
extern "C" void setPos__8cM3dGTriFPC3VecPC3VecPC3Vec();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void getName__10JUTNameTabCFUs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__6dBgWSv[65 + 1 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 80482D4C-80482D7C 0000EC 0030+00 1/1 0/0 0/0 .text            prmZ_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::prmZ_init() {
    if (mPrmZInit) {
        return;
    }
    mPrmZ = home.angle.z;
    mPrmZInit = true;
    home.angle.z = 0;
    current.angle.z = 0;
    shape_angle.z = 0;
}

/* 80482D7C-80482DC4 00011C 0048+00 2/2 0/0 0/0 .text is_switch2__Q211daObjSwpush5Act_cCFv */
bool daObjSwpush::Act_c::is_switch2() const {
    return fopAcM_isSwitch(this, prmZ_get_swSave2() & 0xFF);
}

/* 80482DC4-80482DE8 000164 0024+00 1/1 0/0 0/0 .text            solidHeapCB__Q211daObjSwpush5Act_cFP10fopAc_ac_c */
BOOL daObjSwpush::Act_c::solidHeapCB(fopAc_ac_c* a_this) {
    return static_cast<daObjSwpush::Act_c*>(a_this)->create_heap();
}

/* ############################################################################################## */
/* 80484D10-80484D18 000000 0006+02 8/8 0/0 0/0 .rodata          M_bmd__Q211daObjSwpush5Act_c */
s16 const daObjSwpush::Act_c::M_bmd[3] = {0x4, 0x4, 0x4};

/* 80484D18-80484D20 000008 0006+02 1/1 0/0 0/0 .rodata          M_dzb__Q211daObjSwpush5Act_c */
s16 const daObjSwpush::Act_c::M_dzb[3] = {0x7, 0x7, 0x7};

UNK_REL_DATA;

/* 80484EA4-80484EB0 -00001 000C+00 3/3 0/0 0/0 .data            M_arcname__Q211daObjSwpush5Act_c */
char* daObjSwpush::Act_c::M_arcname[3] = {
    "Kbota_00",
    "S_lv3bota",
    "S_lv6bota",
};

/* 80482DE8-80482FE8 000188 0200+00 1/1 0/0 0/0 .text create_heap__Q211daObjSwpush5Act_cFv */
bool daObjSwpush::Act_c::create_heap() {
    bool rv = false;
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(M_arcname[field_0x5f4], M_bmd[field_0x5f4]);

    JUT_ASSERT(518, model_data != 0);

    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel != NULL) {
        JUTNameTab* jointName = mpModel->getModelData()->getJointTree().getJointName();
        for (u16 i = 0; i < mpModel->getModelData()->getJointNum(); i++) {
            bool bVar1 = false;
            if (strcmp(jointName->getName(i), "bottan") == 0 || strcmp(jointName->getName(i), "botan") == 0) {
                bVar1 = true;
            }

            if (bVar1) {
                model_data->getJointNodePointer(i)->setCallBack(jnodeCB);
                mpModel->setUserArea((u32)this);
                break;
            }
        }
    }

    cBgD_t* bg_data = (cBgD_t*)dComIfG_getObjectRes(M_arcname[field_0x5f4], M_dzb[field_0x5f4]);

    JUT_ASSERT(569, bg_data != 0);

    bool bVar2 = false;
    mpBgW = new dBgWSv();
    if (mpBgW != NULL && mpBgW->Set(bg_data, 0) == 0) {
        bVar2 = true;
    }

    if (mpModel != NULL && mpBgW != NULL && bVar2) {
        rv = true;
    }

    if (rv == false) {
        mpBgW = NULL;
    }

    return rv;
}

/* 80482FE8-80483038 000388 0050+00 1/1 0/0 0/0 .text create_res_load__Q211daObjSwpush5Act_cFv */
cPhs__Step daObjSwpush::Act_c::create_res_load() {
    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, M_arcname[field_0x5f4]);
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    }

    return cPhs_COMPLEATE_e;
}

/* 80484D20-80484D2C 000010 000C+00 0/1 0/0 0/0 .rodata          M_heap_size__Q211daObjSwpush5Act_c */
u32 const daObjSwpush::Act_c::M_heap_size[3] = {0x1000, 0x1000, 0x1000};

/* 80484D2C-80484E08 00001C 00DC+00 4/10 0/0 0/0 .rodata          M_attr__Q211daObjSwpush5Act_c */
daObjSwpush::Hio_c::Attr_c const daObjSwpush::Act_c::M_attr[5] = {
    {
        3,
        1.0f,
        0.89999998f,
        0.6f,
        0.0f,
        -0.3f,
        1,
        6,
        6,
        13,
        1.0f,
        2.5f,
        10,
    },
    {
        32,
        1.25f,
        0.89999998f,
        0.6f,
        0.0f,
        -0.3f,
        1,
        6,
        6,
        13,
        1.0f,
        2.5f,
        10,
    },
    {
        19,
        1.0f,
        0.89999998f,
        0.6f,
        0.0f,
        -0.3f,
        1,
        6,
        6,
        13,
        1.0f,
        2.5f,
        10,
    },
    {
        4,
        1.0f,
        0.89999998f,
        0.6f,
        0.0f,
        -0.3f,
        1,
        6,
        6,
        13,
        1.0f,
        2.5f,
        10,
    },
    {
        32,
        1.0f,
        0.89999998f,
        0.6f,
        0.0f,
        -0.3f,
        1,
        6,
        6,
        13,
        1.0f,
        2.5f,
        10,
    },

};

/* 80484E08-80484E0C 0000F8 0004+00 0/3 0/0 0/0 .rodata          M_op_vtx__Q211daObjSwpush5Act_c */
u8 const daObjSwpush::Act_c::M_op_vtx[4] = {0x0D, 0x0B, 0x0A, 0x0C};

/* 80483038-80483450 0003D8 0418+00 1/1 0/0 0/0 .text Mthd_Create__Q211daObjSwpush5Act_cFv */
cPhs__Step daObjSwpush::Act_c::Mthd_Create() {
    fopAcM_SetupActor(this, daObjSwpush::Act_c);

    prmZ_init();
    mType = prm_get_type();
    field_0x5f4 = prm_get_mdl();

    if (mType == 4) {
        field_0x5f4 = 1;
    } else if (field_0x5f4 == 15) {
        field_0x5f4 = 0;
    }

    cPhs__Step phase = create_res_load();
    if (phase == cPhs_COMPLEATE_e) {
        scale.x *= attr().scale;
        scale.z *= attr().scale;

        if (mType != 4) {
            scale.y = 0.5f;
        }

        field_0x5f8.x = 1.25f;
        field_0x5f8.y = 0.5f;
        field_0x5f8.z = 1.25f;

        if (prm_get_couple() != 0) {
            scale.x *= 2.0f;
            scale.z *= 2.0f;
        }

        if (fopAcM_entrySolidHeap(this, solidHeapCB, M_heap_size[field_0x5f4])) {
            if (dComIfG_Bgsp().Regist(mpBgW, this)) {
                phase = cPhs_ERROR_e;
            } else {
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::ZXYrotM(shape_angle);
                mDoMtx_stack_c::scaleM(field_0x5f8);
                MTXCopy(mDoMtx_stack_c::get(), mMtx);
                mpBgW->ClrNoCalcVtx();
                mpBgW->SetBaseMtxP(mMtx);
                mpBgW->GlobalVtx();
                mpBgW->SetBaseMtxP(NULL);
                mpBgW->SetNoCalcVtx();
                field_0x5a4 = mpBgW->GetVtxTbl()[M_op_vtx[0]].y;
                mpBgW->SetRideCallback(rideCB);

                fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
                init_mtx();
                fopAcM_setCullSizeBox(this, attr().scale * -80.0f, -2.0f, attr().scale * -80.0f, attr().scale * 80.0f, 39.0f, attr().scale * 80.0f);
                field_0x5bf = 0;
                field_0x5c0 = 0;
                field_0x5c1 = 0;
                field_0x5c2 = 0;
                field_0x5c4 = 0;
                field_0x5c6 = 0;
                field_0x5c7 = 0;
                field_0x5c8 = 0;
                field_0x5ca = 0;
                field_0x5d4 = 0.0f;
                field_0x5e0 = 0;
                field_0x5e4 = 0;
                field_0x5f2 = 0;
                field_0x5f3 = 0;
                
                set_btp_frame();

                bool is_toggle = cLib_checkBit<int>(attr().field_0x0, 4);
                bool on_is_up = cLib_checkBit<int>(attr().field_0x0, 16);
                bool unkFlg = cLib_checkBit<int>(attr().field_0x0, 32);
                bool is_sw = is_switch();
                bool is_sw2 = is_switch2();
                
                if ((is_toggle || (!is_sw && !on_is_up) || (is_sw && on_is_up)) && (!unkFlg || !is_sw2)) {
                    field_0x5cc = 1.0f;
                    field_0x5d0 = 1.0f;
                    field_0x5d8 = 0.0f;
                    field_0x5dc = 1.0f;
                    field_0x5e8 = 1.0f;
                    field_0x5ec = 0.0f;
                    mode_upper_init();
                } else {
                    field_0x5cc = 0.0f;
                    field_0x5d0 = 0.0f;
                    field_0x5d8 = -35.5f;
                    field_0x5dc = 0.0f;
                    field_0x5e8 = 0.0f;
                    field_0x5ec = -35.5f;
                    field_0x5c2 = 5;
                    field_0x5c4 = 1;
                    mode_lower_init();
                }

                field_0x5ba = dComIfGp_getEventManager().getEventIdx(this, prm_get_evId());

                OS_REPORT("踏みスイッチ<%x><%d %d>\n", fopAcM_GetParam(this), prm_get_evId() & 0xFF, field_0x5ba);

                demo_non_init();
                Mthd_Execute();
            }
        } else {
            phase = cPhs_ERROR_e;
        }
    }

    return phase;
}

/* 8048348C-804834E8 00082C 005C+00 1/1 0/0 0/0 .text Mthd_Delete__Q211daObjSwpush5Act_cFv */
int daObjSwpush::Act_c::Mthd_Delete() {
    if (dComIfG_Bgsp().Release(mpBgW)) {
        OS_REPORT_ERROR("Release Error(%s %d)\n", "d_a_obj_swpush.cpp", 777);
    }

    dComIfG_resDelete(&mPhase, M_arcname[field_0x5f4]);
    return 1;
}

/* 804834E8-80483534 000888 004C+00 2/2 0/0 0/0 .text            set_mtx__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::set_mtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80483534-80483570 0008D4 003C+00 1/1 0/0 0/0 .text            init_mtx__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::init_mtx() {
    mpModel->setBaseScale(scale);
    set_mtx();
}

/* 80483570-80483574 000910 0004+00 2/2 0/0 0/0 .text set_btp_frame__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::set_btp_frame() {
    /* empty function */
}

/* ############################################################################################## */
/* 80484E34-80484E3C 000124 0006+02 0/1 0/0 0/0 .rodata          tri_id$3921 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const tri_id[6 + 2 /* padding */] = {
    0x00,
    0x01,
    0x02,
    0x03,
    0x00,
    0x02,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80484E34, &tri_id);
#pragma pop

/* 80484E3C-80484E40 00012C 0004+00 0/3 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = -1.0f;
COMPILER_STRIP_GATE(0x80484E3C, &lit_4028);
#pragma pop

/* 80484EB0-80484EBC -00001 000C+00 0/1 0/0 0/0 .data            @4518 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4518[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_non__Q211daObjSwpush5Act_cFv,
};
#pragma pop

/* 80484EBC-80484EC8 -00001 000C+00 0/1 0/0 0/0 .data            @4519 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4519[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_reqPause__Q211daObjSwpush5Act_cFv,
};
#pragma pop

/* 80484EC8-80484ED4 -00001 000C+00 0/1 0/0 0/0 .data            @4520 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4520[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_runPause__Q211daObjSwpush5Act_cFv,
};
#pragma pop

/* 80484ED4-80484EE0 -00001 000C+00 0/1 0/0 0/0 .data            @4521 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4521[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_reqSw__Q211daObjSwpush5Act_cFv,
};
#pragma pop

/* 80484EE0-80484EEC -00001 000C+00 0/1 0/0 0/0 .data            @4522 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4522[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo_runSw__Q211daObjSwpush5Act_cFv,
};
#pragma pop

/* 80484EEC-80484F28 000068 003C+00 0/1 0/0 0/0 .data            demo_proc$4517 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 demo_proc[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80484F28-80484F34 -00001 000C+00 0/1 0/0 0/0 .data            @4526 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4526[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_upper__Q211daObjSwpush5Act_cFv,
};
#pragma pop

/* 80484F34-80484F40 -00001 000C+00 0/1 0/0 0/0 .data            @4527 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4527[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_u_l__Q211daObjSwpush5Act_cFv,
};
#pragma pop

/* 80484F40-80484F4C -00001 000C+00 0/1 0/0 0/0 .data            @4528 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4528[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_lower__Q211daObjSwpush5Act_cFv,
};
#pragma pop

/* 80484F4C-80484F58 -00001 000C+00 0/1 0/0 0/0 .data            @4529 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4529[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_l_u__Q211daObjSwpush5Act_cFv,
};
#pragma pop

/* 80484F58-80484F88 0000D4 0030+00 0/1 0/0 0/0 .data            mode_proc$4525 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80484FD8-80484FE4 000154 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGTri */
SECTION_DATA extern void* __vt__8cM3dGTri[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGTriFv,
};

/* 80484FE4-80484FF0 000160 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

UNK_REL_BSS;

/* 80485038-80485048 000048 000C+04 0/1 0/0 0/0 .bss             @3915 */
#pragma push
#pragma force_active on
static u8 lit_3915[12 + 4 /* padding */];
#pragma pop

/* 80485048-80485054 000058 000C+00 0/1 0/0 0/0 .bss             @3918 */
#pragma push
#pragma force_active on
static u8 lit_3918[12];
#pragma pop

/* 80485054-80485060 000064 000C+00 0/1 0/0 0/0 .bss             @3919 */
#pragma push
#pragma force_active on
static u8 lit_3919[12];
#pragma pop

/* 80485060-8048506C 000070 000C+00 0/1 0/0 0/0 .bss             @3920 */
#pragma push
#pragma force_active on
static u8 lit_3920[12];
#pragma pop

/* 8048506C-8048509C 00007C 0030+00 0/1 0/0 0/0 .bss             no_push_vec$3914 */
#pragma push
#pragma force_active on
static u8 no_push_vec[48];
#pragma pop

/* 80483574-80483910 000914 039C+00 1/1 0/0 0/0 .text            rideCB__Q211daObjSwpush5Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
void daObjSwpush::Act_c::rideCB(dBgW* i_bgw, fopAc_ac_c* param_2, fopAc_ac_c* param_3) {
    // NONMATCHING
    Act_c* i_this = (Act_c*)param_2;
    if (fopAcM_checkStatus(param_2, 0x400)) {
        static cXyz no_push_vec[4] = {
            cXyz(-1.0f, 0.0f, -1.0f),
            cXyz(-1.0f, 0.0f, 1.0f),
            cXyz(1.0f, 0.0f, 1.0f),
            cXyz(1.0f, 0.0f, -1.0f),
        };

        cBgD_Vtx_t* vtxTbl = i_this->mpBgW->GetVtxTbl();
        cM3dGTri tri;
        cXyz sp98[4];
        cXyz spa8;
        int vtxnum = i_this->mpBgW->GetVtxNum();

        for (int i = 0; i < 4; i++) {
            JUT_ASSERT(859, M_op_vtx[i] < vtxnum);
        }

        f32 fVar1;
        if (i_this->field_0x5c1 == 0) {
            fVar1 = i_this->attr().step_up_space;
        } else {
            fVar1 = i_this->attr().step_down_space;
        }

        mDoMtx_stack_c::push();
        mDoMtx_stack_c::YrotS(i_this->shape_angle.y);
        mDoMtx_stack_c::scaleM(fVar1, fVar1, fVar1);
        mDoMtx_stack_c::scaleM(1.25f, 1.0f, 1.25f);

        for (int i = 0; i < 4; i++) {
            sp98[i].set(vtxTbl[i]);
            mDoMtx_stack_c::multVec(&no_push_vec[i], &spa8);
            sp98[i] += spa8;
        }

        mDoMtx_stack_c::pop();

        for (int i = 0; i < 2; i++) {
            // tri.setPos(sp98[tri_id])
        }
    }
}

/* 80483910-8048396C 000CB0 005C+00 1/0 0/0 0/0 .text            __dt__8cM3dGTriFv */
// cM3dGTri::~cM3dGTri() {
extern "C" void __dt__8cM3dGTriFv() {
    // NONMATCHING
}

/* 8048396C-804839B4 000D0C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 804839B4-80483A5C 000D54 00A8+00 1/1 0/0 0/0 .text jnodeCB__Q211daObjSwpush5Act_cFP8J3DJointi
 */
int daObjSwpush::Act_c::jnodeCB(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80484E40-80484E44 000130 0004+00 0/1 0/0 0/0 .rodata          @4097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4097 = -36.5f;
COMPILER_STRIP_GATE(0x80484E40, &lit_4097);
#pragma pop

/* 80483A5C-80483B70 000DFC 0114+00 1/1 0/0 0/0 .text calc_top_pos__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::calc_top_pos() {
    // NONMATCHING
}

/* 80483B70-80483B7C 000F10 000C+00 3/3 0/0 0/0 .text top_bg_aim_req__Q211daObjSwpush5Act_cFfs */
void daObjSwpush::Act_c::top_bg_aim_req(f32 param_0, s16 param_1) {
    // NONMATCHING
}

/* 80483B7C-80483D0C 000F1C 0190+00 1/1 0/0 0/0 .text set_push_flag__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::set_push_flag() {
    // NONMATCHING
}

/* 80483D0C-80483D2C 0010AC 0020+00 2/2 0/0 0/0 .text mode_upper_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::mode_upper_init() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80484E44-80484E48 000134 0004+00 0/1 0/0 0/0 .rodata          @4214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4214 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80484E44, &lit_4214);
#pragma pop

/* 80483D2C-80483FA8 0010CC 027C+00 1/0 0/0 0/0 .text            mode_upper__Q211daObjSwpush5Act_cFv
 */
void daObjSwpush::Act_c::mode_upper() {
    // NONMATCHING
}

/* 80483FA8-80484008 001348 0060+00 1/1 0/0 0/0 .text mode_u_l_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::mode_u_l_init() {
    // NONMATCHING
}

/* 80484008-804841D4 0013A8 01CC+00 1/0 0/0 0/0 .text            mode_u_l__Q211daObjSwpush5Act_cFv
 */
void daObjSwpush::Act_c::mode_u_l() {
    // NONMATCHING
}

/* 804841D4-804841F4 001574 0020+00 2/2 0/0 0/0 .text mode_lower_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::mode_lower_init() {
    // NONMATCHING
}

/* 804841F4-80484388 001594 0194+00 1/0 0/0 0/0 .text            mode_lower__Q211daObjSwpush5Act_cFv
 */
void daObjSwpush::Act_c::mode_lower() {
    // NONMATCHING
}

/* 80484388-804843C0 001728 0038+00 1/1 0/0 0/0 .text mode_l_u_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::mode_l_u_init() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80484E4C-80484E4C 00013C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80484E76 = "D_MN11";
SECTION_DEAD static char const* const stringBase_80484E7D = "D_MN06";
#pragma pop

/* 804843C0-80484570 001760 01B0+00 1/0 0/0 0/0 .text            mode_l_u__Q211daObjSwpush5Act_cFv
 */
void daObjSwpush::Act_c::mode_l_u() {
    // NONMATCHING
}

/* 80484570-8048457C 001910 000C+00 4/4 0/0 0/0 .text demo_non_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_non_init() {
    // NONMATCHING
}

/* 8048457C-80484580 00191C 0004+00 1/0 0/0 0/0 .text            demo_non__Q211daObjSwpush5Act_cFv
 */
void daObjSwpush::Act_c::demo_non() {
    /* empty function */
}

/* 80484580-804845D8 001920 0058+00 1/1 0/0 0/0 .text demo_reqPause_init__Q211daObjSwpush5Act_cFv
 */
void daObjSwpush::Act_c::demo_reqPause_init() {
    // NONMATCHING
}

/* 804845D8-8048460C 001978 0034+00 2/1 0/0 0/0 .text demo_reqPause__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_reqPause() {
    // NONMATCHING
}

/* 8048460C-8048464C 0019AC 0040+00 1/1 0/0 0/0 .text demo_runPause_init__Q211daObjSwpush5Act_cFv
 */
void daObjSwpush::Act_c::demo_runPause_init() {
    // NONMATCHING
}

/* 8048464C-804846B4 0019EC 0068+00 1/0 0/0 0/0 .text demo_runPause__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_runPause() {
    // NONMATCHING
}

/* 804846B4-80484708 001A54 0054+00 1/1 0/0 0/0 .text demo_stop_puase__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_stop_puase() {
    // NONMATCHING
}

/* 80484708-804847B4 001AA8 00AC+00 2/2 0/0 0/0 .text demo_reqSw_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_reqSw_init() {
    // NONMATCHING
}

/* 804847B4-80484828 001B54 0074+00 1/0 0/0 0/0 .text            demo_reqSw__Q211daObjSwpush5Act_cFv
 */
void daObjSwpush::Act_c::demo_reqSw() {
    // NONMATCHING
}

/* 80484828-80484834 001BC8 000C+00 1/1 0/0 0/0 .text demo_runSw_init__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::demo_runSw_init() {
    // NONMATCHING
}

/* 80484834-80484890 001BD4 005C+00 1/0 0/0 0/0 .text            demo_runSw__Q211daObjSwpush5Act_cFv
 */
void daObjSwpush::Act_c::demo_runSw() {
    // NONMATCHING
}

/* 80484890-804848D8 001C30 0048+00 1/1 0/0 0/0 .text check_ride_couple__Q211daObjSwpush5Act_cFs
 */
void daObjSwpush::Act_c::check_ride_couple(s16 param_0) {
    // NONMATCHING
}

/* 804848D8-80484908 001C78 0030+00 1/1 0/0 0/0 .text nr_ride_people__Q211daObjSwpush5Act_cFc */
void daObjSwpush::Act_c::nr_ride_people(char param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80484E48-80484E4C 000138 0004+00 0/1 0/0 0/0 .rodata          @4554 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4554 = 150.0f;
COMPILER_STRIP_GATE(0x80484E48, &lit_4554);
#pragma pop

/* 8048509C-804850A0 -00001 0004+00 1/1 0/0 0/0 .bss             None */
/* 8048509C 0001+00 data_8048509C None */
/* 8048509D 0003+00 data_8048509D None */
static u8 struct_8048509C[4];

/* 80484908-80484BB8 001CA8 02B0+00 2/2 0/0 0/0 .text Mthd_Execute__Q211daObjSwpush5Act_cFv */
void daObjSwpush::Act_c::Mthd_Execute() {
    // NONMATCHING
}

/* 80484BB8-80484C5C 001F58 00A4+00 1/1 0/0 0/0 .text            Mthd_Draw__Q211daObjSwpush5Act_cFv
 */
void daObjSwpush::Act_c::Mthd_Draw() {
    // NONMATCHING
}

/* 80484C5C-80484C7C 001FFC 0020+00 1/0 0/0 0/0 .text
 * Mthd_Create__Q211daObjSwpush28@unnamed@d_a_obj_swpush_cpp@FPv */
static void func_80484C5C() {
    // NONMATCHING
}

/* 80484C7C-80484C9C 00201C 0020+00 1/0 0/0 0/0 .text
 * Mthd_Delete__Q211daObjSwpush28@unnamed@d_a_obj_swpush_cpp@FPv */
static void func_80484C7C() {
    // NONMATCHING
}

/* 80484C9C-80484CBC 00203C 0020+00 1/0 0/0 0/0 .text
 * Mthd_Execute__Q211daObjSwpush28@unnamed@d_a_obj_swpush_cpp@FPv */
static void func_80484C9C() {
    // NONMATCHING
}

/* 80484CBC-80484CDC 00205C 0020+00 1/0 0/0 0/0 .text
 * Mthd_Draw__Q211daObjSwpush28@unnamed@d_a_obj_swpush_cpp@FPv  */
static void func_80484CBC() {
    // NONMATCHING
}

/* 80484CDC-80484CE4 00207C 0008+00 1/0 0/0 0/0 .text
 * Mthd_IsDelete__Q211daObjSwpush28@unnamed@d_a_obj_swpush_cpp@FPv */
static bool func_80484CDC() {
    return true;
}

/* 80484CE4-80484D00 002084 001C+00 8/8 0/0 0/0 .text
 * PrmAbstract<Q311daObjSwpush5Act_c5Prm_e>__5daObjFPC10fopAc_ac_cQ311daObjSwpush5Act_c5Prm_eQ311daObjSwpush5Act_c5Prm_e
 */
extern "C" void func_80484CE4(void* _this, fopAc_ac_c const* param_0,
                                  daObjSwpush::Act_c::Prm_e param_1,
                                  daObjSwpush::Act_c::Prm_e param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804850A0-804850A4 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_804850A0[4];
#pragma pop

/* 804850A4-804850A8 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_804850A4[4];
#pragma pop

/* 804850A8-804850AC 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_804850A8[4];
#pragma pop

/* 804850AC-804850B0 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_804850AC[4];
#pragma pop

/* 804850B0-804850B4 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804850B0[4];
#pragma pop

/* 804850B4-804850B8 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804850B4[4];
#pragma pop

/* 804850B8-804850BC 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_804850B8[4];
#pragma pop

/* 804850BC-804850C0 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_804850BC[4];
#pragma pop

/* 804850C0-804850C4 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_804850C0[4];
#pragma pop

/* 804850C4-804850C8 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_804850C4[4];
#pragma pop

/* 804850C8-804850CC 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_804850C8[4];
#pragma pop

/* 804850CC-804850D0 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_804850CC[4];
#pragma pop

/* 804850D0-804850D4 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_804850D0[4];
#pragma pop

/* 804850D4-804850D8 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804850D4[4];
#pragma pop

/* 804850D8-804850DC 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_804850D8[4];
#pragma pop

/* 804850DC-804850E0 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_804850DC[4];
#pragma pop

/* 804850E0-804850E4 0000F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_804850E0[4];
#pragma pop

/* 804850E4-804850E8 0000F4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_804850E4[4];
#pragma pop

/* 804850E8-804850EC 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_804850E8[4];
#pragma pop

/* 804850EC-804850F0 0000FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_804850EC[4];
#pragma pop

/* 804850F0-804850F4 000100 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_804850F0[4];
#pragma pop

/* 804850F4-804850F8 000104 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804850F4[4];
#pragma pop

/* 804850F8-804850FC 000108 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804850F8[4];
#pragma pop

/* 804850FC-80485100 00010C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804850FC[4];
#pragma pop

/* 80485100-80485104 000110 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80485100[4];
#pragma pop

/* 80484E4C-80484E4C 00013C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80484F88-80484FA8 -00001 0020+00 1/0 0/0 0/0 .data            Mthd_Table__Q211daObjSwpush28@unnamed@d_a_obj_swpush_cpp@ */
static actor_method_class data_80484F88 = {
    (process_method_func)func_80484C5C, 
    (process_method_func)func_80484C7C, 
    (process_method_func)func_80484C9C, 
    (process_method_func)func_80484CDC,
    (process_method_func)func_80484CBC,
};

/* 80484FA8-80484FD8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Swpush */
extern actor_process_profile_definition g_profile_Obj_Swpush = {
  fpcLy_CURRENT_e,        // mLayerID
  2,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Swpush,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjSwpush::Act_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  11,                     // mPriority
  &data_80484F88,         // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
