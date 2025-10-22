/**
 * @file d_a_obj_itamato.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_itamato.h"
#include "d/d_cc_d.h"
#include "d/actor/d_a_npc.h"
#include "dol2asm.h"

/* 80C2AD64-80C2AD68 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
#ifdef DEBUG
static daObj_ItaMato_HIO_c l_HIO;
#else
static daObj_ItaMato_Param_c l_HIO;
#endif

//
// Forward References:
//

extern "C" void __dt__15daObj_ItaMato_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void create__15daObj_ItaMato_cFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__8cM3dGLinFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void CreateHeap__15daObj_ItaMato_cFv();
extern "C" void Delete__15daObj_ItaMato_cFv();
extern "C" void Execute__15daObj_ItaMato_cFv();
extern "C" void Draw__15daObj_ItaMato_cFv();
extern "C" void createHeapCallBack__15daObj_ItaMato_cFP10fopAc_ac_c();
extern "C" void
tgHitCallBack__15daObj_ItaMato_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getResName__15daObj_ItaMato_cFv();
extern "C" void setSwayParam__15daObj_ItaMato_cFP10fopAc_ac_c();
extern "C" void setPrtcls__15daObj_ItaMato_cFv();
extern "C" void setEnvTevColor__15daObj_ItaMato_cFv();
extern "C" void setRoomNo__15daObj_ItaMato_cFv();
extern "C" void setMtx__15daObj_ItaMato_cFv();
extern "C" static void daObj_ItaMato_Create__FPv();
extern "C" static void daObj_ItaMato_Delete__FPv();
extern "C" static void daObj_ItaMato_Execute__FPv();
extern "C" static void daObj_ItaMato_Draw__FPv();
extern "C" static bool daObj_ItaMato_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_obj_itamato_cpp();
extern "C" void __dt__21daObj_ItaMato_Param_cFv();
extern "C" static void func_80C2AB4C();
extern "C" static void func_80C2AB54();
extern "C" u8 const m__21daObj_ItaMato_Param_c[20];
extern "C" extern char const* const d_a_obj_itamato__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void setEventReg__11dSv_event_cFUsUc();
extern "C" void getEventReg__11dSv_event_cCFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void GetLockonList__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void getActor__10dAttList_cFv();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C2AC20-80C2AC20 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C2AC20 = "H_ItaMato";
#pragma pop

/* 80C2AC34-80C2AC74 000000 0040+00 2/2 0/0 0/0 .data            l_ccDSph */
static dCcD_SrcSph l_ccDSph = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f} // mSph
    } // mSphAttr
};

/* 80C2AC74-80C2AC78 -00001 0004+00 1/1 0/0 0/0 .data            l_resName */
SECTION_DATA static void* l_resName = (void*)&d_a_obj_itamato__stringBase0;

/* 80C2AC78-80C2AC98 -00001 0020+00 1/0 0/0 0/0 .data            daObj_ItaMato_MethodTable */
static actor_method_class daObj_ItaMato_MethodTable = {
    (process_method_func)daObj_ItaMato_Create__FPv,
    (process_method_func)daObj_ItaMato_Delete__FPv,
    (process_method_func)daObj_ItaMato_Execute__FPv,
    (process_method_func)daObj_ItaMato_IsDelete__FPv,
    (process_method_func)daObj_ItaMato_Draw__FPv,
};

/* 80C2AC98-80C2ACC8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_ITAMATO */
extern actor_process_profile_definition g_profile_OBJ_ITAMATO = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_OBJ_ITAMATO,           // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daObj_ItaMato_c),    // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  83,                         // mPriority
  &daObj_ItaMato_MethodTable, // sub_method
  0x00044100,                 // mStatus
  fopAc_ACTOR_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 80C2ACC8-80C2ACEC 000094 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C2AB54,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C2AB4C,
};

/* 80C2ACEC-80C2ACF8 0000B8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C2ACF8-80C2AD04 0000C4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C2AD04-80C2AD10 0000D0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80C2AD10-80C2AD1C 0000DC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C2AD1C-80C2AD28 0000E8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C2AD28-80C2AD34 0000F4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGLin */
SECTION_DATA extern void* __vt__8cM3dGLin[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGLinFv,
};

/* 80C2AD34-80C2AD40 000100 000C+00 2/2 0/0 0/0 .data            __vt__15daObj_ItaMato_c */
SECTION_DATA extern void* __vt__15daObj_ItaMato_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daObj_ItaMato_cFv,
};

/* 80C294EC-80C296E0 0000EC 01F4+00 1/0 0/0 0/0 .text            __dt__15daObj_ItaMato_cFv */
daObj_ItaMato_c::~daObj_ItaMato_c() {
    dComIfG_resDelete(&mPhase, getResName());
}

/* 80C2AB70-80C2AB84 000000 0014+00 4/4 0/0 0/0 .rodata          m__21daObj_ItaMato_Param_c */
daObj_ItaMato_HIOParam const daObj_ItaMato_Param_c::m = {
    110.0f,
    -3.0f,
    1.0f,
    400.0f,
    20.0f,
};

/* 80C2AB84-80C2ABB4 000014 0030+00 1/1 0/0 0/0 .rodata          l_ccDObjData */
SECTION_RODATA static u8 const l_ccDObjData[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
SECTION_DEAD void* const cg_80C2AB84 = (void*)(&l_ccDObjData);
// static dCcD_SrcSph const l_ccDObjData = {
//     {
//         {
//             0, {{0, 0, 0}, {0xD8FBFDFF, 0x1F}, 0x79}, 
//         },
//         {dCcD_SE_NONE, 0, 0, 0, 0},
//         {dCcD_SE_NONE, 0, 0, 0},
//         {0}
//     },
//     {
//         {{0.0f, 0.0f, 0.0f}, 0.0f},
//     }
// };

/* 80C2971C-80C29AC0 00031C 03A4+00 1/1 0/0 0/0 .text            create__15daObj_ItaMato_cFv */
cPhs__Step daObj_ItaMato_c::create() {
    fopAcM_ct(this, daObj_ItaMato_c);

    mType = getType();
    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, getResName());
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) no:%d, SWBit:%02x, SWBit2:%02x<%08x> -> roomNo.%d", fopAcM_getProcNameString(this), (getType() >> 32) & 0xFF, getNo(),
                  getBitSW() & 0xFF, getBitSW2() & 0xFF, fopAcM_GetParam(this), fopAcM_GetRoomNo(this));
        if (getBitSW() != 0xFF) {
            if (dComIfGs_isSwitch(getBitSW(), fopAcM_GetRoomNo(this))) {
                OS_REPORT("===>isDelete:TRUE\n");
                return cPhs_ERROR_e;
            }
        }

        OS_REPORT("\n");

        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x16B0)) {
            return cPhs_ERROR_e;
        }

        health = 1;
        mpModels[health]->getModelData();
        fopAcM_SetMtx(this, mpModels[health]->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -50.0f, -200.0f, 200.0f, 200.0f, 200.0f);

        #ifdef DEBUG
        mHIO = l_HIO;
        #endif

        mBgc.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mStts.Init(0xFF, 0, this);
        mSph.Set(l_ccDSph);
        mSph.SetStts(&mStts);
        mSph.SetTgHitCallback(tgHitCallBack);
        mBgc.CrrPos(dComIfG_Bgsp());
        mGndChk = mBgc.m_gnd;
        mGroundH = mBgc.GetGroundH();
        if (mGroundH != -1e9f) {
            setEnvTevColor();
            setRoomNo();
        }

        daNpcT_offTmpBit(60); // dSv_event_tmp_flag_c::T_0060 - Kakariko Village - During bow and arrow game
        daNpcT_offTmpBit(63); // dSv_event_tmp_flag_c::T_0063 - Kakariko Village - [Bow and arrow game] Missed the final target!
        daNpcT_offTmpBit(64); // dSv_event_tmp_flag_c::T_0064 - Kakariko Village - [Bow and arrow game] Attempting to hit target...
        daNpcT_offTmpBit(65); // dSv_event_tmp_flag_c::T_0065 - Kakariko Village - [Bow and arrow game] Destroy first one with Clawshot
        daNpcT_offTmpBit(66); // dSv_event_tmp_flag_c::T_0066 - Kakariko Village - [Bow and arrow game] Restart from the middle

        if (strcmp(dComIfGp_getStartStageName(), "F_SP103") == 0 && dComIfGp_roomControl_getStayNo() == 1) {
            field_0xa18 = 1;
        }

        Execute();
    }

    return phase;
}

/* 80C29CD8-80C29DAC 0008D8 00D4+00 1/1 0/0 0/0 .text            CreateHeap__15daObj_ItaMato_cFv */
int daObj_ItaMato_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(getResName(), 5);
    if (modelData == NULL) {
        return 0;
    }

    mpModels[0] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModels[0] == NULL) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes(getResName(), 4);
    if (modelData == NULL) {
        return 0;
    }

    mpModels[1] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModels[1] == NULL) {
        return 0;
    }

    return 1;
}

/* 80C29DAC-80C29DE0 0009AC 0034+00 1/1 0/0 0/0 .text            Delete__15daObj_ItaMato_cFv */
int daObj_ItaMato_c::Delete() {
    this->~daObj_ItaMato_c();
    return 1;
}

/* 80C29DE0-80C2A44C 0009E0 066C+00 2/2 0/0 0/0 .text            Execute__15daObj_ItaMato_cFv */
int daObj_ItaMato_c::Execute() {
    cXyz sp38, sp44, sp50;

    mStts.Move();
    field_0xa16 = 1;

    if (field_0xa18 != 0) {
        field_0xa16 = 0;
    } else if (getBitSW2() == 0xFF || (getBitSW2() != 0xFF && dComIfGs_isSwitch(getBitSW2(), fopAcM_GetRoomNo(this)))) {
        field_0xa16 = daNpcT_chkTmpBit(60) == FALSE;
    }

    attention_info.flags = 0;
    field_0xa15 = 0;

    if (field_0x9e8 != 0) {
        field_0x9e8--;
    }

    if (field_0x9e8 == 0 && mSph.ChkTgHit()) {
        setSwayParam(mSph.GetTgHitAc());

        if (!mSph.GetTgHitObj()->ChkAtType(AT_TYPE_BOOMERANG)) {
            field_0xa15 = 1;
            if (health != 0) {
                health--;

                if (health < 1) {
                    u8 i_no = 4;

                    if (field_0xa18 != 0) {
                        if (getBitSW2() != 0xFF) {
                            if (!dComIfGs_isSwitch(getBitSW2(), fopAcM_GetRoomNo(this))) {
                                dComIfGs_onSwitch(getBitSW2(), fopAcM_GetRoomNo(this));
                            }
                        }

                        dComIfGs_setTmpReg(0xF4FF, dComIfGs_getTmpReg(0xF4FF) + 1);
                        if (dComIfGp_getAttention()->GetLockonList(0) != NULL) {
                            if (dComIfGp_getAttention()->LockonTruth()) {
                                if (this == dComIfGp_getAttention()->GetLockonList(0)->getActor()) {
                                    i_no |= 0x80;
                                }
                            }
                        }

                        dComIfGs_setTmpReg(0xF3FF, i_no);
                    } else if (getBitSW() != 0xFF) {
                        if (!dComIfGs_isSwitch(getBitSW(), fopAcM_GetRoomNo(this))) {
                            dComIfGs_onSwitch(getBitSW(), fopAcM_GetRoomNo(this));
                        }
                    }
                }

                fopAcM_seStartCurrent(this, Z2SE_OBJ_ARW_TRGT_BRK, 0);
                setPrtcls();
                mFake = 0;
            }
        }
    }

    fopAcM_posMoveF(this, mStts.GetCCMoveP());
    mBgc.CrrPos(dComIfG_Bgsp());
    mGndChk = mBgc.m_gnd;
    mGroundH = mBgc.GetGroundH();
    if (mGroundH != -1e9f) {
        setEnvTevColor();
        setRoomNo();
    }

    for (int i = 0; i < 3; i++) {
        if (field_0xa17 != 0) {
            mDoMtx_stack_c::YrotS(field_0x9fc[i]);
            sp44.set(0.0f, 0.0f, field_0x9f0[i]);
            mDoMtx_stack_c::multVec(&sp44, &sp50);
            field_0x9d0[i].x = sp50.z;
            field_0x9d0[i].z = -sp50.x;
            field_0x9fc[i] -= cM_deg2s(45.0f);
        } else {
            mDoMtx_stack_c::YrotS(field_0xa02);
            sp44.set(0.0f, 0.0f, field_0x9f0[i] * cM_ssin(field_0x9fc[i]));
            mDoMtx_stack_c::multVec(&sp44, &sp50);
            field_0x9d0[i].x = sp50.z;
            field_0x9d0[i].z = -sp50.x;
            field_0x9fc[i] += cM_deg2s(45.0f);
        }
    }

    cLib_addCalc2(&field_0x9f0[0], 0.0f, 0.075f, 50.0f);
    cLib_addCalc2(&field_0x9f0[1], 0.0f, 0.1f, 100.0f);
    cLib_addCalc2(&field_0x9f0[2], 0.0f, 0.125f, 125.0f);
    setMtx();
    attention_info.position = current.pos;
    attention_info.position.y += daObj_ItaMato_Param_c::m.attn_offset;
    eyePos = attention_info.position;

    if (field_0xa16 == 0) {
        u32 tgType = 0xD8FBFDFF;
        sp38 = current.pos;

        if (health == 0) {
            mSph.OffTgSetBit();
            sp38.y += 10.0f;
            mSph.SetC(sp38);
            mSph.SetR(10.0f);
        } else {
            if (daNpcT_chkTmpBit(60) && !mFake) {
                tgType = 0xD8FBDDFF;
            }

            mSph.SetTgType(tgType);

            if (mFake) {
                mSph.SetR(100.0f);
            } else {
                mSph.SetR(60.0f);
            }

            sp38.y += 110.0f;
            mSph.SetC(sp38);
        }

        dComIfG_Ccsp()->Set(&mSph);
    }

    mSph.ClrCoHit();
    mSph.ClrTgHit();

    return 1;
}

/* ############################################################################################## */
/* 80C2ABF4-80C2ABF8 000084 0004+00 0/1 0/0 0/0 .rodata          @4380 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4380 = 400.0f;
COMPILER_STRIP_GATE(0x80C2ABF4, &lit_4380);
#pragma pop

/* 80C2ABF8-80C2ABFC 000088 0004+00 0/1 0/0 0/0 .rodata          @4381 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4381 = 20.0f;
COMPILER_STRIP_GATE(0x80C2ABF8, &lit_4381);
#pragma pop

/* 80C2A44C-80C2A5D0 00104C 0184+00 1/1 0/0 0/0 .text            Draw__15daObj_ItaMato_cFv */
int daObj_ItaMato_c::Draw() {
    // NONMATCHING
}

/* 80C2A5D0-80C2A5F0 0011D0 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__15daObj_ItaMato_cFP10fopAc_ac_c          */
int daObj_ItaMato_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C2A5F0-80C2A620 0011F0 0030+00 1/1 0/0 0/0 .text
 * tgHitCallBack__15daObj_ItaMato_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
void daObj_ItaMato_c::tgHitCallBack(fopAc_ac_c* param_0, dCcD_GObjInf* param_1,
                                        fopAc_ac_c* param_2, dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* 80C2A620-80C2A630 001220 0010+00 3/3 0/0 0/0 .text            getResName__15daObj_ItaMato_cFv */
const char* daObj_ItaMato_c::getResName() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C2ABFC-80C2AC08 00008C 000C+00 0/1 0/0 0/0 .rodata          @4405 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4405[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C2ABFC, &lit_4405);
#pragma pop

/* 80C2AC08-80C2AC0C 000098 0004+00 0/1 0/0 0/0 .rodata          @4433 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4433 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C2AC08, &lit_4433);
#pragma pop

/* 80C2AC0C-80C2AC10 00009C 0004+00 0/1 0/0 0/0 .rodata          @4434 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4434 = 0x43360B61;
COMPILER_STRIP_GATE(0x80C2AC0C, &lit_4434);
#pragma pop

/* 80C2AC10-80C2AC18 0000A0 0008+00 0/1 0/0 0/0 .rodata          @4437 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4437[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C2AC10, &lit_4437);
#pragma pop

/* 80C2A630-80C2A7C4 001230 0194+00 1/1 0/0 0/0 .text
 * setSwayParam__15daObj_ItaMato_cFP10fopAc_ac_c                */
void daObj_ItaMato_c::setSwayParam(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C2AC18-80C2AC20 0000A8 0006+02 1/1 0/0 0/0 .rodata          id$4441 */
SECTION_RODATA static u8 const id[6 + 2 /* padding */] = {
    0x85,
    0xF1,
    0x85,
    0xF2,
    0x85,
    0xF3,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C2AC18, &id);

/* 80C2A7C4-80C2A890 0013C4 00CC+00 1/1 0/0 0/0 .text            setPrtcls__15daObj_ItaMato_cFv */
void daObj_ItaMato_c::setPrtcls() {
    // NONMATCHING
}

/* 80C2A890-80C2A8EC 001490 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__15daObj_ItaMato_cFv
 */
void daObj_ItaMato_c::setEnvTevColor() {
    // NONMATCHING
}

/* 80C2A8EC-80C2A930 0014EC 0044+00 2/2 0/0 0/0 .text            setRoomNo__15daObj_ItaMato_cFv */
void daObj_ItaMato_c::setRoomNo() {
    // NONMATCHING
}

/* 80C2A930-80C2A9C0 001530 0090+00 1/1 0/0 0/0 .text            setMtx__15daObj_ItaMato_cFv */
void daObj_ItaMato_c::setMtx() {
    // NONMATCHING
}

/* 80C2A9C0-80C2A9E0 0015C0 0020+00 1/0 0/0 0/0 .text            daObj_ItaMato_Create__FPv */
static void daObj_ItaMato_Create(void* param_0) {
    // NONMATCHING
}

/* 80C2A9E0-80C2AA00 0015E0 0020+00 1/0 0/0 0/0 .text            daObj_ItaMato_Delete__FPv */
static void daObj_ItaMato_Delete(void* param_0) {
    // NONMATCHING
}

/* 80C2AA00-80C2AA20 001600 0020+00 1/0 0/0 0/0 .text            daObj_ItaMato_Execute__FPv */
static void daObj_ItaMato_Execute(void* param_0) {
    // NONMATCHING
}

/* 80C2AA20-80C2AA40 001620 0020+00 1/0 0/0 0/0 .text            daObj_ItaMato_Draw__FPv */
static void daObj_ItaMato_Draw(void* param_0) {
    // NONMATCHING
}

/* 80C2AA40-80C2AA48 001640 0008+00 1/0 0/0 0/0 .text            daObj_ItaMato_IsDelete__FPv */
static bool daObj_ItaMato_IsDelete(void* param_0) {
    return true;
}

/* 80C2AA48-80C2AA90 001648 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C2AD40-80C2AD4C 00010C 000C+00 2/2 0/0 0/0 .data            __vt__21daObj_ItaMato_Param_c */
SECTION_DATA extern void* __vt__21daObj_ItaMato_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__21daObj_ItaMato_Param_cFv,
};

// /* 80C2AB04-80C2AB4C 001704 0048+00 2/1 0/0 0/0 .text            __dt__21daObj_ItaMato_Param_cFv */
// daObj_ItaMato_Param_c::~daObj_ItaMato_Param_c() {
//     // NONMATCHING
// }

/* 80C2AB4C-80C2AB54 00174C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C2AB4C() {
    // NONMATCHING
}

/* 80C2AB54-80C2AB5C 001754 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C2AB54() {
    // NONMATCHING
}

/* 80C2AC20-80C2AC20 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
