/**
 * @file d_a_npc_kasi_mich.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_kasi_mich.h"
#include "Z2AudioLib/Z2Instances.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__15daNpcKasiMich_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__15daNpcKasiMich_cFv();
extern "C" void Create__15daNpcKasiMich_cFv();
extern "C" void CreateHeap__15daNpcKasiMich_cFv();
extern "C" void Delete__15daNpcKasiMich_cFv();
extern "C" void Execute__15daNpcKasiMich_cFv();
extern "C" void Draw__15daNpcKasiMich_cFv();
extern "C" void ctrlJoint__15daNpcKasiMich_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__15daNpcKasiMich_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__15daNpcKasiMich_cFP8J3DJointi();
extern "C" void setParam__15daNpcKasiMich_cFv();
extern "C" void main__15daNpcKasiMich_cFv();
extern "C" void setAttnPos__15daNpcKasiMich_cFv();
extern "C" void setMotionAnm__15daNpcKasiMich_cFif();
extern "C" void setMotion__15daNpcKasiMich_cFifi();
extern "C" bool drawDbgInfo__15daNpcKasiMich_cFv();
extern "C" void reset__15daNpcKasiMich_cFv();
extern "C" void playMotion__15daNpcKasiMich_cFv();
extern "C" void playMotionAnmLoop__15daNpcKasiMich_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i();
extern "C" void setLookMode__15daNpcKasiMich_cFi();
extern "C" void lookat__15daNpcKasiMich_cFv();
extern "C" void step__15daNpcKasiMich_cFsi();
extern "C" void chkFindPlayer__15daNpcKasiMich_cFv();
extern "C" void wait__15daNpcKasiMich_cFi();
extern "C" void fear__15daNpcKasiMich_cFi();
extern "C" void srchWolfTag__15daNpcKasiMich_cFv();
extern "C" void _srch_escape_tag__15daNpcKasiMich_cFPvPv();
extern "C" void getWolfPathNearIdx__15daNpcKasiMich_cFv();
extern "C" void chace_st__15daNpcKasiMich_cFi();
extern "C" void chace__15daNpcKasiMich_cFi();
extern "C" void getChacePos__15daNpcKasiMich_cFv();
extern "C" void turn_link__15daNpcKasiMich_cFi();
extern "C" void turn_home__15daNpcKasiMich_cFi();
extern "C" void turn_center__15daNpcKasiMich_cFi();
extern "C" void talk_dummy__15daNpcKasiMich_cFi();
extern "C" void kya__15daNpcKasiMich_cFi();
extern "C" void kya2__15daNpcKasiMich_cFi();
extern "C" void kya_stop__15daNpcKasiMich_cFi();
extern "C" void iyan__15daNpcKasiMich_cFi();
extern "C" void escape__15daNpcKasiMich_cFi();
extern "C" void iyan_look__15daNpcKasiMich_cFi();
extern "C" void turn_hana__15daNpcKasiMich_cFi();
extern "C" void wait_dummy__15daNpcKasiMich_cFi();
extern "C" void cheer__15daNpcKasiMich_cFi();
extern "C" void _turn_to_link__15daNpcKasiMich_cFs();
extern "C" void _turn_pos__15daNpcKasiMich_cFRC4cXyzs();
extern "C" void actor_front_check__15daNpcKasiMich_cFP10fopAc_ac_c();
extern "C" void _getOffset__15daNpcKasiMich_cFRC4cXyzR4cXyz();
extern "C" static void daNpcKasiMich_Create__FPv();
extern "C" static void daNpcKasiMich_Delete__FPv();
extern "C" static void daNpcKasiMich_Execute__FPv();
extern "C" static void daNpcKasiMich_Draw__FPv();
extern "C" static bool daNpcKasiMich_IsDelete__FPv();
extern "C" void __dt__13daNpcF_Path_cFv();
extern "C" void __dt__16daNpcF_SPCurve_cFv();
extern "C" void __dt__18daNpcF_ActorMngr_cFv();
extern "C" void __ct__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__15daNpcF_Lookat_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__8daNpcF_cFv();
extern "C" void __ct__8daNpcF_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" bool ctrlBtk__8daNpcF_cFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" bool setExpressionAnm__8daNpcF_cFib();
extern "C" bool setExpressionBtp__8daNpcF_cFi();
extern "C" void setExpression__8daNpcF_cFif();
extern "C" void drawOtherMdls__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_npc_kasi_mich_cpp();
extern "C" void adjustShapeAngle__15daNpcKasiMich_cFv();
extern "C" void __dt__21daNpcKasiMich_Param_cFv();
extern "C" static void func_80A2A028();
extern "C" static void func_80A2A030();
extern "C" u8 const m__21daNpcKasiMich_Param_c[116];
extern "C" extern char const* const d_a_npc_kasi_mich__stringBase0;
extern "C" u8 mEvtSeqList__15daNpcKasiMich_c[12];
extern "C" u8 mTargetTag__15daNpcKasiMich_c[4];
extern "C" u8 mTargetTagDist__15daNpcKasiMich_c[4];

//
// External References:
//

extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcF_ActorMngr_cFv();
extern "C" void getActorP__18daNpcF_ActorMngr_cFv();
extern "C" void initialize__16daNpcF_SPCurve_cFP5dPathi();
extern "C" void initialize__13daNpcF_Path_cFv();
extern "C" void setPathInfo__13daNpcF_Path_cFUcScUc();
extern "C" void getDstPos__13daNpcF_Path_cF4cXyzR4cXyz();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz();
extern "C" void calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii();
extern "C" void execute__8daNpcF_cFv();
extern "C" void draw__8daNpcF_cFiifP11_GXColorS10i();
extern "C" void setMtx__8daNpcF_cFv();
extern "C" void setMtx2__8daNpcF_cFv();
extern "C" void initialize__8daNpcF_cFv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcF_cFPci();
extern "C" void getTexPtrnAnmP__8daNpcF_cFPci();
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setLookatMtx__8daNpcF_cFiPif();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void chkActorInSight__8daNpcF_cFP10fopAc_ac_cf();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void turn__8daNpcF_cFsfi();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __ct__17Z2CreatureCitizenFv();
extern "C" void __dt__17Z2CreatureCitizenFv();
extern "C" void init__17Z2CreatureCitizenFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcF_c[68];
extern "C" extern void* __vt__8daNpcF_c[18];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" void __register_global_object();

/* 80A2A2D4-80A2A394 000020 00C0+00 1/1 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam2 l_bckGetParamList[16] = {
    {3, J3DFrameCtrl::EMode_LOOP, 1},
    {4, J3DFrameCtrl::EMode_LOOP, 1},
    {5, J3DFrameCtrl::EMode_LOOP, 1},
    {6, J3DFrameCtrl::EMode_LOOP, 1},
    {0x1F, J3DFrameCtrl::EMode_LOOP, 2},
    {0x1A, J3DFrameCtrl::EMode_NONE, 2},
    {0x22, J3DFrameCtrl::EMode_LOOP, 2},
    {0x0B, J3DFrameCtrl::EMode_LOOP, 2},
    {0x0D, J3DFrameCtrl::EMode_LOOP, 2},
    {0x1E, J3DFrameCtrl::EMode_LOOP, 2},
    {0x18, J3DFrameCtrl::EMode_NONE, 2},
    {0x1F, J3DFrameCtrl::EMode_NONE, 2},
    {0x19, J3DFrameCtrl::EMode_NONE, 2},
    {0x03, J3DFrameCtrl::EMode_NONE, 2},
    {5, J3DFrameCtrl::EMode_NONE, 2},
    {6, J3DFrameCtrl::EMode_NONE, 2},
};

/* 80A2A394-80A2A3A0 0000E0 000C+00 0/0 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam2 l_btpGetParamList[1] = {
    {7, J3DFrameCtrl::EMode_LOOP, 0},
};

/* 80A2A3A0-80A2A3AC -00001 000C+00 5/6 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[3] = {
    "kasi_mich",
    "girls",
    "Wgeneral",
};

/* 80A2A3AC-80A2A3B0 0000F8 0004+00 1/2 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[1] = {
    ""
};

/* 80A2A3B0-80A2A3B4 -00001 0004+00 0/0 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_myName = (void*)&d_a_npc_kasi_mich__stringBase0;
#pragma pop

/* 80A2A3B4-80A2A3C0 000100 000C+00 1/1 0/0 0/0 .data            mEvtSeqList__15daNpcKasiMich_c */
daNpcKasiMich_c::EventFn daNpcKasiMich_c::mEvtSeqList[1] = {
    NULL
};

/* 80A2A4A4-80A2A594 0001F0 00F0+00 0/1 0/0 0/0 .data            sSygnalAct$4364 */
// static daNpcKasiMich_c::actionFunc sSygnalAct[20] = {
//     NULL,
//     &daNpcKasiMich_c::wait,
//     &daNpcKasiMich_c::chace,
//     &daNpcKasiMich_c::turn_link,
//     &daNpcKasiMich_c::turn_home,
//     &daNpcKasiMich_c::talk_dummy,
//     &daNpcKasiMich_c::escape,
//     &daNpcKasiMich_c::turn_center,
//     &daNpcKasiMich_c::wait_dummy,
//     &daNpcKasiMich_c::cheer,
//     &daNpcKasiMich_c::chace_st,
//     &daNpcKasiMich_c::kya,
//     &daNpcKasiMich_c::iyan,
//     &daNpcKasiMich_c::kya_stop,
//     &daNpcKasiMich_c::wait_dummy,
//     &daNpcKasiMich_c::iyan_look,
//     &daNpcKasiMich_c::turn_hana,
//     &daNpcKasiMich_c::wait_dummy,
//     &daNpcKasiMich_c::kya2,
//     &daNpcKasiMich_c::fear
// };

/* 80A261CC-80A26384 0000EC 01B8+00 1/1 0/0 0/0 .text            __ct__15daNpcKasiMich_cFv */
daNpcKasiMich_c::daNpcKasiMich_c() {}

/* 80A26414-80A26624 000334 0210+00 1/0 0/0 0/0 .text            __dt__15daNpcKasiMich_cFv */
daNpcKasiMich_c::~daNpcKasiMich_c() {
    for (int i = 0; i < 3; i ++) {
        dComIfG_resDelete(&mPhases[i], l_arcNames[i]);
    }

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}

/* 80A2A04C-80A2A0C0 000000 0074+00 17/17 0/0 0/0 .rodata          m__21daNpcKasiMich_Param_c */
daNpcKasiMich_HIOParam const daNpcKasiMich_Param_c::m = {
    55.0f,
    -3.0f,
    1.0f,
    500.0f,
    216.0f,
    140.0f,
    35.0f,
    30.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -10.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    2,
    6,
    3,
    6,
    60.0f,
    500.0f,
    300.0f,
    -300.0f,
    60,
    0,
    0,
    0,
    0,
    false,
    false,
    10,
    16.0f,
};

/* 80A26624-80A268A0 000544 027C+00 1/1 0/0 0/0 .text            Create__15daNpcKasiMich_cFv */
cPhs__Step daNpcKasiMich_c::Create() {
    fopAcM_SetupActor(this, daNpcKasiMich_c);

    mType = getType();
    mMessageNo = getMessageNo();

    cPhs__Step phase = cPhs_ERROR_e;
    for (int i = 0; i < 3; i++) {
        phase = (cPhs__Step)dComIfG_resLoad(&mPhases[i], l_arcNames[i]);

        if (phase != cPhs_COMPLEATE_e) {
            return phase;
        }
    }

    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x1940)) {
            return cPhs_ERROR_e;
        }

        J3DModel* model = mpMorf->getModel();
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -60.0f, -10.0f, -60.0f, 60.0f, 160.0f, 60.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcchCir.SetWall(daNpcKasiMich_Param_c::m.common.width, daNpcKasiMich_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.CrrPos(dComIfG_Bgsp());
        mCcStts.Init(dCcD_Stts::WEIGHT_HEAVY, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgType(0);
        mCyl.SetTgSPrm(0);
        mCyl.SetH(daNpcKasiMich_Param_c::m.common.height);
        mCyl.SetR(daNpcKasiMich_Param_c::m.common.width);
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();
    }

    return phase;
}

/* 80A268A0-80A26A24 0007C0 0184+00 1/1 0/0 0/0 .text            CreateHeap__15daNpcKasiMich_cFv */
int daNpcKasiMich_c::CreateHeap() {
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_arcNames[0], 4);

    JUT_ASSERT(314, 0 != mdlData_p);

    mpMorf = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020084);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }

    if (mpMorf == NULL) {
        return 0;
    }

    cXyz i_scale(1.0f, 0.8630768f, 1.0f);
    mpMorf->offTranslate();
    mpMorf->setTranslateScale(i_scale);

    J3DModel* model = mpMorf->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    setMotion(4, -1.0f, 0);

    return 1;
}

/* 80A26A24-80A26A58 000944 0034+00 1/1 0/0 0/0 .text            Delete__15daNpcKasiMich_cFv */
int daNpcKasiMich_c::Delete() {
    this->~daNpcKasiMich_c();
    return 1;
}

/* 80A26A58-80A26A84 000978 002C+00 2/2 0/0 0/0 .text            Execute__15daNpcKasiMich_cFv */
int daNpcKasiMich_c::Execute() {
    mFear = false;
    execute();
    return 1;
}

/* 80A26A84-80A26AD0 0009A4 004C+00 1/1 0/0 0/0 .text            Draw__15daNpcKasiMich_cFv */
int daNpcKasiMich_c::Draw() {
    if (!mEscape) {
        draw(FALSE, FALSE, daNpcKasiMich_Param_c::m.common.real_shadow_size, NULL, FALSE);
    }

    return 1;
}

/* 80A26AD0-80A26C5C 0009F0 018C+00 1/1 0/0 0/0 .text            ctrlJoint__15daNpcKasiMich_cFP8J3DJointP8J3DModel */
int daNpcKasiMich_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    int i_jointList[3] = {1, 2, 3};

    if (jntNo == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(2));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));

    switch (jntNo) {
        case 1:
        case 2:
        case 3:
            setLookatMtx(jntNo, i_jointList, daNpcKasiMich_Param_c::m.common.neck_rotation_ratio);
            break;
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    return 1;
}

/* 80A26C5C-80A26C7C 000B7C 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__15daNpcKasiMich_cFP10fopAc_ac_c */
int daNpcKasiMich_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpcKasiMich_c* i_this = (daNpcKasiMich_c*)a_this;
    return i_this->CreateHeap();
}

/* 80A26C7C-80A26CC8 000B9C 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__15daNpcKasiMich_cFP8J3DJointi */
int daNpcKasiMich_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcKasiMich_c* i_this = (daNpcKasiMich_c*)model->getUserArea();

        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80A26CC8-80A26D34 000BE8 006C+00 1/0 0/0 0/0 .text            setParam__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::setParam() {
    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(daNpcKasiMich_Param_c::m.common.attention_distance, daNpcKasiMich_Param_c::m.common.attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(daNpcKasiMich_Param_c::m.common.talk_distance, daNpcKasiMich_Param_c::m.common.talk_angle);
    attention_info.flags = 10;
}

/* 80A2A7EC-80A2A7F0 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpcKasiMich_Param_c l_HIO;

/* 80A2A7F0-80A2A7F4 000058 0004+00 1/2 0/0 0/0 .bss             mTargetTag__15daNpcKasiMich_c */
u8 daNpcKasiMich_c::mTargetTag[4];

/* 80A2A7F4-80A2A7F8 00005C 0004+00 0/1 0/0 0/0 .bss             mTargetTagDist__15daNpcKasiMich_c
 */
#pragma push
#pragma force_active on
u8 daNpcKasiMich_c::mTargetTagDist[4];
#pragma pop

/* 80A2A7F8-80A2A7FC -00001 0004+00 2/3 0/0 0/0 .bss             None */
/* 80A2A7F8 0002+00 data_80A2A7F8 mWolfAngle__15daNpcKasiMich_c */
/* 80A2A7FA 0002+00 data_80A2A7FA None */
static u8 struct_80A2A7F8[4];

/* 80A26D34-80A26FDC 000C54 02A8+00 1/0 0/0 0/0 .text            main__15daNpcKasiMich_cFv */
BOOL daNpcKasiMich_c::main() {
    // NONMATCHING
    if (mSygnal >= 0) {
        static daNpcKasiMich_c::actionFunc sSygnalAct[20] = {
            &daNpcKasiMich_c::wait,
            &daNpcKasiMich_c::chace,
            &daNpcKasiMich_c::turn_link,
            &daNpcKasiMich_c::turn_home,
            &daNpcKasiMich_c::talk_dummy,
            &daNpcKasiMich_c::escape,
            &daNpcKasiMich_c::turn_center,
            &daNpcKasiMich_c::wait_dummy,
            &daNpcKasiMich_c::cheer,
            &daNpcKasiMich_c::chace_st,
            &daNpcKasiMich_c::kya,
            &daNpcKasiMich_c::iyan,
            &daNpcKasiMich_c::kya_stop,
            &daNpcKasiMich_c::wait_dummy,
            &daNpcKasiMich_c::iyan_look,
            NULL,
            &daNpcKasiMich_c::turn_hana,
            &daNpcKasiMich_c::wait_dummy,
            &daNpcKasiMich_c::kya2,
            &daNpcKasiMich_c::fear,
        };
        setAction(sSygnalAct[mSygnal]);
    }

    if (mAction) {
        (this->*mAction)(NULL);
    }

    playMotion();

    return TRUE;
}

/* 80A26FDC-80A27184 000EFC 01A8+00 1/0 0/0 0/0 .text            setAttnPos__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::setAttnPos() {
    if (mLookMode == LOOK_RESET) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    daNpcF_c::setMtx();
    lookat();

    cXyz sp1c(10.0f, 15.0f, 0.0f);

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&sp1c, &eyePos);
    sp1c.x = 0.0f;
    mDoMtx_stack_c::multVec(&sp1c, &sp1c);

    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp1c);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp1c);
    attention_info.position.set(mHeadPos.x, mHeadPos.y + daNpcKasiMich_Param_c::m.common.attention_offset, mHeadPos.z);

    cXyz sp28;

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
    mDoMtx_stack_c::multVecZero(&sp28);
    sp28.y = current.pos.y;
    mCyl.SetC(sp28);
    #ifdef DEBUG
    mCyl.SetH(daNpcKasiMich_Param_c::m.common.height);
    mCyl.SetR(daNpcKasiMich_Param_c::m.common.width);
    #endif
    dComIfG_Ccsp()->Set(&mCyl);
}

/* 80A27184-80A27254 0010A4 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__15daNpcKasiMich_cFif */
void daNpcKasiMich_c::setMotionAnm(int i_index, f32 i_morf) {
    J3DAnmTransformKey* i_anm = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_index].arcIdx], l_bckGetParamList[i_index].fileIdx);
    int i_attr = l_bckGetParamList[i_index].attr;
    mAnmFlags &= 0xFFFFFFF6;

    if (i_anm != NULL && setMcaMorfAnm(i_anm, 1.0f, i_morf, i_attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }
}

/* 80A27254-80A2729C 001174 0048+00 1/0 0/0 0/0 .text            setMotion__15daNpcKasiMich_cFifi */
void daNpcKasiMich_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;
    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 0xD) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
        field_0x143e = 0;
    }
}

/* 80A2729C-80A272A4 0011BC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__15daNpcKasiMich_cFv */
BOOL daNpcKasiMich_c::drawDbgInfo() {
    return FALSE;
}

/* 80A272A4-80A274D8 0011C4 0234+00 1/1 0/0 0/0 .text            reset__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::reset() {
    initialize();
    mLookat.initialize();

    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }

    mPath.initialize();

    if (mType == 0) {
        mPath.setPathInfo(getRailNo(), fopAcM_GetRoomNo(this), 0);
        mPath.setIdx(6);
    } else if (mType == 1) {
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_004000);
    }

    field_0x1430 = 0;
    field_0x1434 = 0;
    mAction = NULL;
    mLookMode = -1;
    mMode = 0;
    current.pos.set(home.pos);
    old.pos.set(current.pos);
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    field_0x142c = fpcM_ERROR_PROCESS_ID_e;
    mOrderEvtNo = 0;

    J3DAnmTexPattern* i_btp = getTexPtrnAnmP(l_arcNames[0], 7);
    mAnmFlags &= 0xFFFFF57F;

    if (setBtpAnm(i_btp, mpMorf->getModel()->getModelData(), 1.0f, J3DFrameCtrl::EMode_LOOP)) {
        mAnmFlags |= ANM_FLAG_800 | ANM_PLAY_BTP | ANM_PAUSE_BTP;
    }

    mTalked = false;
    mFear = false;
    mEscape = false;
    field_0x1465 = 0;
    setAction(&daNpcKasiMich_c::wait);
    mMotionMorfOverride = 0.0f;
}

/* 80A274D8-80A2790C 0013F8 0434+00 1/1 0/0 0/0 .text            playMotion__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::playMotion() {
    daNpcF_anmPlayData dat0 = {1, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {0, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2 = {2, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3 = {3, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4 = {4, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {5, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {6, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7 = {7, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {8, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData dat9 = {9, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat9[1] = {&dat9};
    daNpcF_anmPlayData dat10 = {0xA, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat10[1] = {&dat10};
    daNpcF_anmPlayData dat11a = {0xC, daNpcKasiMich_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11b = {0xD, daNpcKasiMich_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11c = {0xB, daNpcKasiMich_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11d = {5, daNpcKasiMich_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11e = {0xB, daNpcKasiMich_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11f = {0xE, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat11[6] = {&dat11a, &dat11b, &dat11c, &dat11d, &dat11e, &dat11f};
    daNpcF_anmPlayData dat12a = {0xF, daNpcKasiMich_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat12b = {4, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat12[2] = {&dat12a, &dat12b};

    daNpcF_anmPlayData** ppDat[13] = {
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
        pDat8,
        pDat9,
        pDat10,
        pDat11,
        pDat12
    };

    if (mMotion >= 0 && mMotion < 0xD) {
        field_0x143e = mMotionPhase;

        if (mMotion == 0xB) {
            playMotionAnmLoop(ppDat);
        } else {
            playMotionAnm(ppDat);
        }
    }
}

/* 80A2790C-80A27A84 00182C 0178+00 1/1 0/0 0/0 .text            playMotionAnmLoop__15daNpcKasiMich_cFPPPQ28daNpcF_c18daNpcF_anmPlayData */
void daNpcKasiMich_c::playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData*** i_data) {
    daNpcF_anmPlayData* playData = NULL;

    if (i_data[mMotion] != NULL) {
        playData = i_data[mMotion][mMotionPhase];
    }

    if (playData != NULL) {
        if (mMotionPrevPhase == mMotionPhase) {
            if (playData->numLoops > 0 && playData->numLoops <= mMotionLoops) {
                mMotionPhase++;
                playData = i_data[mMotion][mMotionPhase];
            } else if (playData->numLoops == 0 && mMotionLoops >= 1) {
                mMotionPhase = 0;
                playData = i_data[mMotion][mMotionPhase];
            }
        }

        if (playData != NULL && mMotionPrevPhase != mMotionPhase) {
            setMotionAnm(playData->idx, 0.0f);
            f32 i_morf = playData->morf;

            if (mMotionPhase == 0) {
                if (mMotion == 0xB) {
                    i_morf = daNpcKasiMich_Param_c::m.common.morf_frame;
                } else if (0.0f <= mMotionMorfOverride) {
                    i_morf = mMotionMorfOverride;
                }
            }

            mExpressionMorf = 0.0f;
            mpMorf->setMorf(i_morf);
        }
    }

    mMotionPrevPhase = mMotionPhase;
}

/* 80A27A84-80A27B2C 0019A4 00A8+00 10/10 0/0 0/0 .text          setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i */
BOOL daNpcKasiMich_c::setAction(actionFunc action) {
    mMode = -1;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    mMode = 0;
    mAction = action;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    return TRUE;
}

/* 80A27B2C-80A27B50 001A4C 0024+00 8/8 0/0 0/0 .text            setLookMode__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::setLookMode(int i_lookMode) {
    if (i_lookMode >= 0 && i_lookMode < 4 && i_lookMode != mLookMode) {
        mLookMode = i_lookMode;
    }
}

/* 80A27B50-80A27D30 001A70 01E0+00 1/1 0/0 0/0 .text            lookat__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::lookat() {
    daPy_py_c* player = NULL;
    J3DModel* model = mpMorf->getModel();
    BOOL i_snap = FALSE;
    f32 body_angleX_min = daNpcKasiMich_Param_c::m.common.body_angleX_min;
    f32 body_angleX_max = daNpcKasiMich_Param_c::m.common.body_angleX_max;
    f32 body_angleY_min = daNpcKasiMich_Param_c::m.common.body_angleY_min;
    f32 body_angleY_max = daNpcKasiMich_Param_c::m.common.body_angleY_max;
    f32 head_angleX_min = daNpcKasiMich_Param_c::m.common.head_angleX_min;
    f32 head_angleX_max = daNpcKasiMich_Param_c::m.common.head_angleX_max;
    f32 head_angleY_min = daNpcKasiMich_Param_c::m.common.head_angleY_min;
    f32 head_angleY_max = daNpcKasiMich_Param_c::m.common.head_angleY_max;
    s16 angle_delta = mCurAngle.y - mOldAngle.y;
    cXyz lookatPos[3] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* lookatAngle[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};
    cXyz spe8;

    switch (mLookMode) {
        case LOOK_NONE:
            break;

        case LOOK_RESET:
            i_snap = TRUE;
            break;

        case LOOK_PLAYER:
        case LOOK_PLAYER_TALK:
            player = daPy_getPlayerActorClass();

            if (mLookMode != LOOK_PLAYER_TALK) {
                break;
            }

            head_angleY_min = -80.0f;
            head_angleY_max = 80.0f;
            break;
    }

    if (player != NULL) {
        mLookPos = player->attention_info.position;

        if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK) {
            mLookPos.y -= 40.0f;
        }

        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(NULL);
    }
    
    mLookat.setParam(body_angleX_min, body_angleX_max, body_angleY_min, body_angleY_max, 0.0f, 0.0f, 0.0f, 0.0f, 
                     head_angleX_min, head_angleX_max, head_angleY_min, head_angleY_max, mCurAngle.y, lookatPos);
    mLookat.calc(this, model->getBaseTRMtx(), lookatAngle, i_snap, angle_delta, FALSE);
}

/* 80A27D30-80A27E24 001C50 00F4+00 1/1 0/0 0/0 .text            step__15daNpcKasiMich_cFsi */
BOOL daNpcKasiMich_c::step(s16 i_targetAngle, int param_2) {
    if (mTurnMode == 0) {
        mTurnTargetAngle = i_targetAngle;
        mTurnAmount = 0;

        if (mCurAngle.y == mTurnTargetAngle) {
            mTurnMode++;
        }

        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        mTurnMode++;
    } else if (mTurnMode == 1) {
        if (daNpcF_c::turn(mTurnTargetAngle, 15.0f, 0)) {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
            mOldAngle.y = current.angle.y;
            mTurnMode++;
        } else {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
        }
    }

    return mTurnMode > 1;
}

/* 80A27E24-80A27F08 001D44 00E4+00 1/1 0/0 0/0 .text            chkFindPlayer__15daNpcKasiMich_cFv */
BOOL daNpcKasiMich_c::chkFindPlayer() {
    if (!chkActorInSight(daPy_getPlayerActorClass(), daNpcKasiMich_Param_c::m.common.fov)) {
        mActorMngr[0].remove();
        return FALSE;
    }

    bool rv;
    if (mActorMngr[0].getActorP() == NULL) {
        rv = chkPlayerInSpeakArea(this);
    } else {
        rv = chkPlayerInTalkArea(this);
    }

    if (rv) {
        mActorMngr[0].entry(daPy_getPlayerActorClass());
    } else {
        mActorMngr[0].remove();
    }

    return rv;
}

/* 80A27F08-80A282B4 001E28 03AC+00 8/0 0/0 0/0 .text            wait__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::wait(int param_1) {
    // NONMATCHING
    switch (mMode) {
        case -1:
            break;

        case 0:
            if (mType == 0 && !field_0x1465) {
                setMotion(0xB, -1.0f, 0);
            } else {
                setMotion(4, -1.0f, 0);
            }

            speedF = 0.0f;
            mMode = 1;
            break;

        case 1:
            chkFindPlayer();

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER);
            } else if (!fopAcM_isSwitch(this, 12) && !dComIfGp_event_runCheck()) {
                setLookMode(LOOK_NONE);
                if (home.angle.y != mCurAngle.y && step(home.angle.y, 1)) {
                    if (mType == 0 && !field_0x1465) {
                        setMotion(0xB, -1.0f, 0);
                    } else {
                        setMotion(4, -1.0f, 0);
                    }

                    mTurnMode = 0;
                }
            }

            /* dSv_event_flag_c::F_290 - Castle Town - Star Game 1 cleared */
            if (daNpcF_chkEvtBit(290) && field_0x1465 && mType == 0 && fopAcM_isSwitch(this, 12)) {
                if (pl_front_check()) {
                    if (fopAcM_searchActorDistanceXZ(this, daPy_getPlayerActorClass()) >= 450.0f) {
                        setAction(&daNpcKasiMich_c::chace);
                        return 1;
                    }
                } else {
                    setAction(&daNpcKasiMich_c::turn_link);
                    return 1;
                }
            }

            if (dComIfGp_event_runCheck()) {
                if (eventInfo.checkCommandTalk()) {
                    if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                        OS_REPORT("------------------mich talk reset!!\n");

                        mTalked = true;
                        dComIfGp_event_reset();
                    }
                }
            } else {
                if (!dKy_darkworld_check()) {
                    if (daPy_py_c::checkNowWolf()) {
                        f32 fVar1 = pow(500.0, 2.0);
                        if (fopAcM_searchPlayerDistanceXZ2(this) < fVar1) {
                            mFear = true;
                            break;
                        }
                    }
                }

                if (mOrderEvtNo != 0) {
                    eventInfo.setArchiveName(l_arcNames[0]);
                }

                orderEvent(field_0x1469, l_evtNames[mOrderEvtNo], 0xFFFF, 40, 0xFF, 1);
            }
            break;

        default:
            JUT_ASSERT(1301, 0);
            break;
    }

    return 1;
}

/* ############################################################################################## */
/* 80A2A284-80A2A288 000238 0004+00 0/1 0/0 0/0 .rodata          @4879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4879 = 1.5f;
COMPILER_STRIP_GATE(0x80A2A284, &lit_4879);
#pragma pop

/* 80A282B4-80A28490 0021D4 01DC+00 1/0 0/0 0/0 .text            fear__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::fear(int param_0) {
    // NONMATCHING
}

/* 80A28490-80A284F8 0023B0 0068+00 1/1 0/0 0/0 .text            srchWolfTag__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::srchWolfTag() {
    // NONMATCHING
}

/* 80A284F8-80A285C8 002418 00D0+00 1/1 0/0 0/0 .text _srch_escape_tag__15daNpcKasiMich_cFPvPv */
void daNpcKasiMich_c::_srch_escape_tag(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A285C8-80A286FC 0024E8 0134+00 1/1 0/0 0/0 .text getWolfPathNearIdx__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::getWolfPathNearIdx() {
    // NONMATCHING
}

/* 80A286FC-80A287A0 00261C 00A4+00 2/0 0/0 0/0 .text            chace_st__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::chace_st(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A288-80A2A28C 00023C 0004+00 0/1 0/0 0/0 .rodata          @5067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5067 = 14.0f;
COMPILER_STRIP_GATE(0x80A2A288, &lit_5067);
#pragma pop

/* 80A2A28C-80A2A290 000240 0004+00 0/1 0/0 0/0 .rodata          @5068 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5068 = 400.0f;
COMPILER_STRIP_GATE(0x80A2A28C, &lit_5068);
#pragma pop

/* 80A287A0-80A28910 0026C0 0170+00 4/0 0/0 0/0 .text            chace__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::chace(int param_0) {
    // NONMATCHING
}

/* 80A28910-80A289CC 002830 00BC+00 1/1 0/0 0/0 .text            getChacePos__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::getChacePos() {
    // NONMATCHING
}

/* 80A289CC-80A28A8C 0028EC 00C0+00 2/0 0/0 0/0 .text            turn_link__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::turn_link(int param_0) {
    // NONMATCHING
}

/* 80A28A8C-80A28B70 0029AC 00E4+00 1/0 0/0 0/0 .text            turn_home__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::turn_home(int param_0) {
    // NONMATCHING
}

/* 80A28B70-80A28C40 002A90 00D0+00 1/0 0/0 0/0 .text            turn_center__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::turn_center(int param_0) {
    // NONMATCHING
}

/* 80A28C40-80A28CB8 002B60 0078+00 1/0 0/0 0/0 .text            talk_dummy__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::talk_dummy(int param_0) {
    // NONMATCHING
}

/* 80A28CB8-80A28D90 002BD8 00D8+00 1/0 0/0 0/0 .text            kya__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::kya(int param_0) {
    // NONMATCHING
}

/* 80A28D90-80A28E28 002CB0 0098+00 1/0 0/0 0/0 .text            kya2__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::kya2(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A290-80A2A294 000244 0004+00 1/1 0/0 0/0 .rodata          @5219 */
SECTION_RODATA static f32 const lit_5219 = 19.0f;
COMPILER_STRIP_GATE(0x80A2A290, &lit_5219);

/* 80A28E28-80A28EFC 002D48 00D4+00 1/0 0/0 0/0 .text            kya_stop__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::kya_stop(int param_0) {
    // NONMATCHING
}

/* 80A28EFC-80A28F74 002E1C 0078+00 1/0 0/0 0/0 .text            iyan__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::iyan(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A294-80A2A298 000248 0004+00 0/1 0/0 0/0 .rodata          @5251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5251 = 1.75f;
COMPILER_STRIP_GATE(0x80A2A294, &lit_5251);
#pragma pop

/* 80A28F74-80A2908C 002E94 0118+00 1/0 0/0 0/0 .text            escape__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::escape(int param_0) {
    // NONMATCHING
}

/* 80A2908C-80A29164 002FAC 00D8+00 1/0 0/0 0/0 .text            iyan_look__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::iyan_look(int param_0) {
    // NONMATCHING
}

/* 80A29164-80A291E8 003084 0084+00 1/0 0/0 0/0 .text            turn_hana__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::turn_hana(int param_0) {
    // NONMATCHING
}

/* 80A291E8-80A2926C 003108 0084+00 7/0 0/0 0/0 .text            wait_dummy__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::wait_dummy(int param_0) {
    // NONMATCHING
}

/* 80A2926C-80A29458 00318C 01EC+00 1/0 0/0 0/0 .text            cheer__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::cheer(int param_0) {
    // NONMATCHING
}

/* 80A29458-80A294A4 003378 004C+00 3/3 0/0 0/0 .text            _turn_to_link__15daNpcKasiMich_cFs
 */
void daNpcKasiMich_c::_turn_to_link(s16 param_0) {
    // NONMATCHING
}

/* 80A294A4-80A29500 0033C4 005C+00 5/5 0/0 0/0 .text _turn_pos__15daNpcKasiMich_cFRC4cXyzs */
void daNpcKasiMich_c::_turn_pos(cXyz const& param_0, s16 param_1) {
    // NONMATCHING
}

/* 80A29500-80A295D8 003420 00D8+00 2/2 0/0 0/0 .text
 * actor_front_check__15daNpcKasiMich_cFP10fopAc_ac_c           */
BOOL daNpcKasiMich_c::actor_front_check(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A295D8-80A29644 0034F8 006C+00 1/1 0/0 0/0 .text _getOffset__15daNpcKasiMich_cFRC4cXyzR4cXyz
 */
void daNpcKasiMich_c::_getOffset(cXyz const& param_0, cXyz& param_1) {
    // NONMATCHING
}

/* 80A29644-80A29664 003564 0020+00 1/0 0/0 0/0 .text            daNpcKasiMich_Create__FPv */
static void daNpcKasiMich_Create(void* param_0) {
    // NONMATCHING
}

/* 80A29664-80A29684 003584 0020+00 1/0 0/0 0/0 .text            daNpcKasiMich_Delete__FPv */
static void daNpcKasiMich_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A29684-80A296A4 0035A4 0020+00 1/0 0/0 0/0 .text            daNpcKasiMich_Execute__FPv */
static void daNpcKasiMich_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A296A4-80A296C4 0035C4 0020+00 1/0 0/0 0/0 .text            daNpcKasiMich_Draw__FPv */
static void daNpcKasiMich_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A296C4-80A296CC 0035E4 0008+00 1/0 0/0 0/0 .text            daNpcKasiMich_IsDelete__FPv */
static bool daNpcKasiMich_IsDelete(void* param_0) {
    return true;
}

/* 80A296CC-80A2972C 0035EC 0060+00 1/0 0/0 0/0 .text            __dt__13daNpcF_Path_cFv */
// daNpcF_Path_c::~daNpcF_Path_c() {
extern "C" void __dt__13daNpcF_Path_cFv() {
    // NONMATCHING
}

/* 80A2972C-80A29774 00364C 0048+00 1/0 0/0 0/0 .text            __dt__16daNpcF_SPCurve_cFv */
// daNpcF_SPCurve_c::~daNpcF_SPCurve_c() {
extern "C" void __dt__16daNpcF_SPCurve_cFv() {
    // NONMATCHING
}

/* 80A29774-80A297BC 003694 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A297BC-80A297F8 0036DC 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A297F8-80A298C8 003718 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80A298C8-80A29904 0037E8 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A29904-80A29908 003824 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A29908-80A29944 003828 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A29944-80A29948 003864 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A29948-80A29B94 003868 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80A29B94-80A29D84 003AB4 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80A29D84-80A29DF4 003CA4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A29DF4-80A29E50 003D14 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A29E50-80A29EC0 003D70 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A29EC0-80A29F08 003DE0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A29F08-80A29F10 003E28 0008+00 1/0 0/0 0/0 .text            ctrlBtk__8daNpcF_cFv */
// bool daNpcF_c::ctrlBtk() {
extern "C" bool ctrlBtk__8daNpcF_cFv() {
    return false;
}

/* 80A29F10-80A29F14 003E30 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80A29F14-80A29F1C 003E34 0008+00 1/0 0/0 0/0 .text            setExpressionAnm__8daNpcF_cFib */
// bool daNpcF_c::setExpressionAnm(int param_0, bool param_1) {
extern "C" bool setExpressionAnm__8daNpcF_cFib() {
    return true;
}

/* 80A29F1C-80A29F24 003E3C 0008+00 1/0 0/0 0/0 .text            setExpressionBtp__8daNpcF_cFi */
// bool daNpcF_c::setExpressionBtp(int param_0) {
extern "C" bool setExpressionBtp__8daNpcF_cFi() {
    return true;
}

/* 80A29F24-80A29F28 003E44 0004+00 1/0 0/0 0/0 .text            setExpression__8daNpcF_cFif */
// void daNpcF_c::setExpression(int param_0, f32 param_1) {
extern "C" void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 80A29F28-80A29F2C 003E48 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 80A29F2C-80A29F74 003E4C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A2A788-80A2A794 0004D4 000C+00 2/2 0/0 0/0 .data            __vt__21daNpcKasiMich_Param_c */
SECTION_DATA extern void* __vt__21daNpcKasiMich_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__21daNpcKasiMich_Param_cFv,
};

/* 80A29F74-80A29FDC 003E94 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_kasi_mich_cpp */
void __sinit_d_a_npc_kasi_mich_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A29F74, __sinit_d_a_npc_kasi_mich_cpp);
#pragma pop

/* 80A29FDC-80A29FE0 003EFC 0004+00 1/0 0/0 0/0 .text adjustShapeAngle__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::adjustShapeAngle() {
    /* empty function */
}

/* 80A29FE0-80A2A028 003F00 0048+00 2/1 0/0 0/0 .text            __dt__21daNpcKasiMich_Param_cFv */
daNpcKasiMich_Param_c::~daNpcKasiMich_Param_c() {
    // NONMATCHING
}

/* 80A2A028-80A2A030 003F48 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A2A028() {
    // NONMATCHING
}

/* 80A2A030-80A2A038 003F50 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A2A030() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 80A2A654-80A2A674 -00001 0020+00 1/0 0/0 0/0 .data            daNpcKasiMich_MethodTable */
static actor_method_class daNpcKasiMich_MethodTable = {
    (process_method_func)daNpcKasiMich_Create,
    (process_method_func)daNpcKasiMich_Delete,
    (process_method_func)daNpcKasiMich_Execute,
    (process_method_func)daNpcKasiMich_IsDelete,
    (process_method_func)daNpcKasiMich_Draw,
};

/* 80A2A674-80A2A6A4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KASIMICH */
extern actor_process_profile_definition g_profile_NPC_KASIMICH = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_NPC_KASIMICH,          // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daNpcKasiMich_c),    // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  422,                        // mPriority
  &daNpcKasiMich_MethodTable, // sub_method
  0x00040108,                 // mStatus
  fopAc_NPC_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};
