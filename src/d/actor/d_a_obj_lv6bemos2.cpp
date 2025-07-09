/**
 * @file d_a_obj_lv6bemos2.cpp
 * 
*/

#include "d/actor/d_a_obj_lv6bemos2.h"
#include "d/actor/d_a_player.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include "d/d_camera.h"


//
// Forward References:
//

extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" void initBaseMtx__12daObjLv6Bm_cFv();
extern "C" void setBaseMtx__12daObjLv6Bm_cFv();
extern "C" void Create__12daObjLv6Bm_cFv();
extern "C" void CreateHeap__12daObjLv6Bm_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void create1st__12daObjLv6Bm_cFv();
extern "C" void Execute__12daObjLv6Bm_cFPPA3_A4_f();
extern "C" void action__12daObjLv6Bm_cFv();
extern "C" void calcBeam__12daObjLv6Bm_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void checkFindPlayer__12daObjLv6Bm_cFv();
extern "C" void checkSearchPlayer__12daObjLv6Bm_cFv();
extern "C" void getSearchDistance__12daObjLv6Bm_cFv();
extern "C" void getBeamSearchDistance__12daObjLv6Bm_cFv();
extern "C" void effect_proc__12daObjLv6Bm_cFv();
extern "C" void effectWait__12daObjLv6Bm_cFv();
extern "C" void initEffectSet0__12daObjLv6Bm_cFv();
extern "C" void effectSet0__12daObjLv6Bm_cFv();
extern "C" void initActionSwWait__12daObjLv6Bm_cFv();
extern "C" void actionSwWait__12daObjLv6Bm_cFv();
extern "C" void initActionWarning__12daObjLv6Bm_cFv();
extern "C" void actionWarning__12daObjLv6Bm_cFv();
extern "C" void initActionFindPlayer__12daObjLv6Bm_cFv();
extern "C" void actionFindPlayer__12daObjLv6Bm_cFv();
extern "C" void initActionAttack__12daObjLv6Bm_cFv();
extern "C" void actionAttack__12daObjLv6Bm_cFv();
extern "C" void initActionDead__12daObjLv6Bm_cFv();
extern "C" void actionDead__12daObjLv6Bm_cFv();
extern "C" void initActionEnd__12daObjLv6Bm_cFv();
extern "C" void actionEnd__12daObjLv6Bm_cFv();
extern "C" void Draw__12daObjLv6Bm_cFv();
extern "C" void Delete__12daObjLv6Bm_cFv();
extern "C" static void daObjLv6Bm_create1st__FP12daObjLv6Bm_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void daObjLv6Bm_MoveBGDelete__FP12daObjLv6Bm_c();
extern "C" static void daObjLv6Bm_MoveBGExecute__FP12daObjLv6Bm_c();
extern "C" static void daObjLv6Bm_MoveBGDraw__FP12daObjLv6Bm_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80C81BB0(void* _this, u16*);
extern "C" void func_80C81BCC(void* _this, u8*);
extern "C" void __sinit_d_a_obj_lv6bemos2_cpp();
extern "C" extern char const* const d_a_obj_lv6bemos2__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_btkAnmRemove__FP12J3DModelData();
extern "C" void mDoExt_brkAnmRemove__FP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void CalcAtVec__8dCcD_CpsFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void ForceLockOn__9dCamera_cFP10fopAc_ac_c();
extern "C" void dCam_getBody__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" bool __ne__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cBgW_CheckBGround__Ff();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC4cXyzRC4cXyzf();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseUC__FPUcUcUc();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void func_802807E0();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void getName__10JUTNameTabCFUs();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mLineCheck__11fopAcM_lc_c[112];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 struct_80C81FE8[4];

//
// Declarations:
//

/* 80C7E1B8-80C7E30C 000078 0154+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_2) {
    // NONMATCHING
    if (param_2 == 0) {
        int jntNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        daObjLv6Bm_c* i_this = (daObjLv6Bm_c*)model->getUserArea();

        MTXCopy(model->getAnmMtx(jntNo), mDoMtx_stack_c::get());

        if (jntNo == i_this->getHeadJoint()) {
            mDoMtx_stack_c::XrotM(i_this->field_0x9c2 + (s16)(int)(i_this->field_0xa28 * cM_scos((s16)(i_this->field_0xa20 * 0x2CEC))));
        } else if (jntNo == i_this->getBigGearJoint()) {
            mDoMtx_stack_c::XrotM(i_this->field_0x9c6);
        } else if (jntNo == i_this->getSmallGear0Joint()) {
            mDoMtx_stack_c::XrotM(i_this->field_0x9ca);
        } else if (jntNo == i_this->getSmallGear1Joint()) {
            mDoMtx_stack_c::XrotM(i_this->field_0x9ce);
        } else if (jntNo == i_this->getSmallGear2Joint()) {
            mDoMtx_stack_c::XrotM(i_this->field_0x9d2);
        }

        MTXCopy(mDoMtx_stack_c::get(), model->getAnmMtx(jntNo));
    }

    return 1;
}

/* 80C81C2C-80C81C38 000000 000C+00 9/9 0/0 0/0 .rodata          l_eye_offset */
static f32 const l_eye_offset[3] = {0.0f, 430.0f, 80.0f};

/* 80C81C38-80C81C44 00000C 000C+00 0/1 0/0 0/0 .rodata          l_beam_offsetPos */
static f32 const l_beam_offsetPos[3] = {0.0f, 98.0f, 125.0f};

/* 80C7E30C-80C7E374 0001CC 0068+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initBaseMtx() {
    cXyz sp18(0.5f, 0.5f, 1.0f);
    field_0x5a8->setBaseScale(scale);
    field_0x5b4->setBaseScale(sp18);
    setBaseMtx();
}

/* 80C7E374-80C7E448 000234 00D4+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    field_0x5a8->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::scaleM(1.0f, 1.0f, 1.0f);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);

    cXyz sp18(0.5f, 0.5f, field_0xa0c);
    field_0x5b4->setBaseScale(sp18);
    mDoMtx_stack_c::transS(field_0x9e4);
    mDoMtx_stack_c::ZXYrotM(field_0x9f0);
    field_0x5b4->setBaseTRMtx(mDoMtx_stack_c::get());
}

UNK_REL_DATA;

/* 80C81D24-80C81D28 -00001 0004+00 9/10 0/0 0/0 .data            l_arcName */
static char* l_arcName = "E_bm6";

/* 80C81D28-80C81D2C -00001 0004+00 0/1 0/0 0/0 .data            l_eye_matName */
static char* l_eye_matName = "bm6_eye";

/* 80C81D2C-80C81D30 -00001 0004+00 0/1 0/0 0/0 .data            l_head_joint */
static char* l_head_joint = "head";

/* 80C81D30-80C81D34 -00001 0004+00 0/1 0/0 0/0 .data            l_bigGear_joint */
static char* l_bigGear_joint = "cogRed";

/* 80C81D34-80C81D38 -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear0_joint */
static char* l_smallGear0_joint = "cogBlue";

/* 80C81D38-80C81D3C -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear1_joint */
static char* l_smallGear1_joint = "cogGreen";

/* 80C81D3C-80C81D40 -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear2_joint */
static char* l_smallGear2_joint = "cogYellow";

/* 80C81D40-80C81D54 00003C 0014+00 0/2 0/0 0/0 .data            l_joint_table */
static char* l_joint_table[5] = {
    l_head_joint,
    l_bigGear_joint,
    l_smallGear0_joint,
    l_smallGear1_joint,
    l_smallGear2_joint,
};

/* 80C81D54-80C81D6C 000050 0018+00 0/1 0/0 0/0 .data            l_cull_box */
static f32 l_cull_box[6] = {
    -1200.0f, -100.0f, -1200.0f,
    1200.0f, 400.0f, 1200.0f,
};

/* 80C81D6C-80C81DAC 000068 0040+00 0/1 0/0 0/0 .data            l_sph_src */
static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x402420, 0x11}, 0x58}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 50.0f} // mSph
    } // mSphAttr
};

/* 80C81DAC-80C81DF8 0000A8 004C+00 0/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{0x100, 0x1, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_SWORD, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}, 20.0f}, // mCps
    } // mCpsAttr
};

/* 80C81DF8-80C81E3C 0000F4 0044+00 0/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x1e}, {0x400, 0x11}, 0x18}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        120.0f, // mRadius
        200.0f // mHeight
    } // mCyl
};

/* 80C7E448-80C7E764 000308 031C+00 1/0 0/0 0/0 .text            Create__12daObjLv6Bm_cFv */
int daObjLv6Bm_c::Create() {
    // NONMATCHING
    fopAcM_SetMtx(this, field_0x5a8->getBaseTRMtx());
    mStts.Init(0xFF, 0xFF, this);
    field_0x600.Set(l_sph_src);
    field_0x600.SetStts(&mStts);
    field_0x738.Set(l_cps_src);
    field_0x738.SetStts(&mStts);
    field_0x87c.Set(l_cyl_src);
    field_0x87c.SetStts(&mStts);
    
    fopAcM_setCullSizeBox(this, l_cull_box[0], l_cull_box[1], l_cull_box[2], l_cull_box[3], l_cull_box[4], l_cull_box[5]);

    JUTNameTab* name = field_0x5a8->getModelData()->getJointTree().getJointName();
    for (int i = 0; i < 5; i++) {
        for (u16 j = 0; j < field_0x5a8->getModelData()->getJointNum(); j++) {
            if (strcmp(name->getName(j), l_joint_table[i]) == 0) {
                field_0x9b8[i] = j;
                field_0x5a8->getModelData()->getJointNodePointer(j)->setCallBack(nodeCallBack);
            }
        }
    }

    field_0x5a8->setUserArea((u32)this);
    name = field_0x5a8->getModelData()->getMaterialTable().getMaterialName();
    for (u16 i = 0; i < field_0x5a8->getModelData()->getMaterialNum(); i++) {
        if (strcmp(name->getName(i), l_eye_matName) == 0) {
            mEyeMaterial = field_0x5a8->getModelData()->getMaterialNodePointer(i);
        }
    }

    #ifdef DEBUG
    if (mEyeMaterial == NULL) {
        OS_REPORT("Lv6ビーモス：目のマテリアル<%s>がありません\n", l_eye_matName) // Lv6 Beamos: Eye material <%s> is not available.
        return 0;
    }
    #endif



    field_0xa19 = 1;
    if (fopAcM_isSwitch(this, getSwNo2())) {
        field_0xa1b = 0;
        initActionEnd();
    } else if (getSwNo() != 0xFF) {
        if (!fopAcM_isSwitch(this, getSwNo())) {
            field_0xa1b = 0;
            initActionSwWait();
        }
    } else {
        field_0xa1b = 1;
        mpBrkAnm->init(field_0x5a8->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 0x15), 1, 2, 1.0f, 0, -1);
        mpBckAnm->setFrame(mpBckAnm->getEndFrame());
        initActionWarning();
    }

    initBaseMtx();
    field_0x5a8->calc();

    return 1;
}

/* 80C81EE4-80C81EFC 0001E0 0018+00 0/1 0/0 0/0 .data            l_eff_func$4561 */
static daObjLv6Bm_c::eventFunc l_eff_func[2] = {
    &daObjLv6Bm_c::effectWait,
    &daObjLv6Bm_c::effectSet0,
};

/* 80C81EFC-80C81F18 -00001 001C+00 1/1 0/0 0/0 .data            @5281 */
SECTION_DATA static void* lit_5281[7] = {
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0x44),
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0x60),
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0xE4),
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0x174),
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0x188),
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0x1B0),
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0x274),
};

/* 80C81F68-80C81F74 000264 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C81F74-80C81F80 000270 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C81F80-80C81F8C 00027C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C81F8C-80C81F98 000288 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C81F98-80C81FA4 000294 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C81FA4-80C81FB0 0002A0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80C81FB0-80C81FBC 0002AC 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C7E764-80C7EB34 000624 03D0+00 1/0 0/0 0/0 .text            CreateHeap__12daObjLv6Bm_cFv */
int daObjLv6Bm_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 0xD);
    JUT_ASSERT(620, modelData != 0);

    field_0x5a8 = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
    if (field_0x5a8 == NULL) {
        return 0;
    }

    J3DAnmTevRegKey* pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 0x14);
    JUT_ASSERT(633, pbrk != 0);
    mpBrkAnm = new mDoExt_brkAnm();
    if (mpBrkAnm == NULL || mpBrkAnm->init(modelData, pbrk, 1, 0, 1.0f, 0, -1) == 0) {
        return 0;
    }

    #ifdef DEBUG
    pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 0x15);
    JUT_ASSERT(644, pbrk != 0);
    #endif
    
    J3DAnmTransform* pbck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 9);
    JUT_ASSERT(651, pbck != 0);
    mpBckAnm = new mDoExt_bckAnm();
    if (mpBckAnm == NULL || mpBckAnm->init(pbck, 1, 0, 1.0f, 0, -1, false) == 0) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 0x10);
    JUT_ASSERT(666, modelData != 0);
    field_0x5b4 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (field_0x5b4 == NULL) {
        return 0;
    }

    J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 0x1A);
    JUT_ASSERT(680, pbtk != 0);
    mpBtkAnm = new mDoExt_btkAnm();
    if (mpBtkAnm == NULL || mpBtkAnm->init(modelData, pbtk, 1, 0, 1.0f, 0, -1) == 0) {
        return 0;
    }
    mpBtkAnm->setFrame(mpBtkAnm->getEndFrame());

    #ifdef DEBUG
    pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 0x1B);
    JUT_ASSERT(693, pbtk != 0);
    #endif

    pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 0x19);
    JUT_ASSERT(699, pbtk != 0);
    mpBtkAnm2 = new mDoExt_btkAnm();
    if (mpBtkAnm2 == NULL || mpBtkAnm2->init(modelData, pbtk, 1, 2, 1.0f, 0, -1) == 0) {
        return 0;
    }

    J3DAnmTransform* pbck2 = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 10);
    JUT_ASSERT(711, pbck != 0);
    mpBckAnm2 = new mDoExt_bckAnm();
    if (mpBckAnm2 == NULL || mpBckAnm2->init(pbck2, 1, 2, 1.0f, 0, -1, false) == 0) {
        return 0;
    }

    return 1;
}

/* 80C7EB7C-80C7EC6C 000A3C 00F0+00 1/1 0/0 0/0 .text            create1st__12daObjLv6Bm_cFv */
cPhs__Step daObjLv6Bm_c::create1st() {
    if (fopAcM_isSwitch(this, (u8)getSwNo3())) {
        OS_REPORT("Lv6ビーモス：既に破壊！<%d>\n", getSwNo3()); // Lv6 Beamos: Already destroyed! <%d>
        return cPhs_ERROR_e;
    }

    if (field_0xa36 == 0) {
        field_0xa32 = home.angle.x;
        field_0xa34 = home.angle.z;
        home.angle.z = 0;
        home.angle.x = 0;
        current.angle.z = 0;
        current.angle.x = 0;
        shape_angle.z = 0;
        shape_angle.x = 0;
        field_0xa36 = 1;
    }

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        phase = (cPhs__Step)MoveBGCreate(l_arcName, 0x1E, dBgS_MoveBGProc_TypicalRotY, 0x2FA0, NULL);

        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }

    return phase;
}

/* 80C7EC6C-80C7EE50 000B2C 01E4+00 1/0 0/0 0/0 .text            Execute__12daObjLv6Bm_cFPPA3_A4_f */
int daObjLv6Bm_c::Execute(f32 (**param_1)[3][4]) {
    field_0xa20++;

    if (field_0x9c2 != field_0x9c4 && field_0x9d6 == 0) {
        field_0x9d6 = 0xFA;
    }

    cLib_chaseAngleS(&field_0x9c2, field_0x9c4, field_0x9d6);
    cLib_chaseAngleS(&field_0x9c6, field_0x9c8, field_0x9da);
    cLib_chaseAngleS(&field_0x9ca, field_0x9cc, field_0x9da);
    cLib_chaseAngleS(&field_0x9ce, field_0x9d0, field_0x9da);
    cLib_chaseAngleS(&field_0x9d2, field_0x9d4, field_0x9da);
    
    action();

    eyePos.x = l_eye_offset[0];
    eyePos.y = l_eye_offset[1];
    eyePos.z = l_eye_offset[2];
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(home.angle.y + field_0x9c2);
    mDoMtx_stack_c::multVec(&eyePos, &eyePos);
    attention_info.position = eyePos;

    *param_1 = &mBgMtx;
    setBaseMtx();

    cLib_addCalcAngleS(&field_0x9d6, field_0x9d8, 0x1E, 0x14, 10);
    cLib_addCalcAngleS(&field_0x9da, field_0x9dc, 0x1E, 0x14, 10);
    cLib_addCalc(&field_0xa28, 0.0f, 0.2f, 50.0f, 10.0f);
    field_0x9de = field_0x9c2;

    field_0xa7c.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    field_0xa9c.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    return 1;
}

/* 80C7EE50-80C7F2A4 000D10 0454+00 1/1 0/0 0/0 .text            action__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::action() {
    // NONMATCHING
    static daObjLv6Bm_c::actionFunc l_func[6] = {
        &daObjLv6Bm_c::actionSwWait,
        &daObjLv6Bm_c::actionWarning,
        &daObjLv6Bm_c::actionFindPlayer,
        &daObjLv6Bm_c::actionAttack,
        &daObjLv6Bm_c::actionDead,
        &daObjLv6Bm_c::actionEnd
    };

    static u16 const l_particle_id[3] = {
        0x88DB,
        0x88DC,
        0x88DD,
    };

    if (field_0x600.ChkTgHit()) {
        cCcD_Obj* hitObj = field_0x600.GetTgHitObj();
        if (hitObj != NULL && (hitObj->ChkAtType(AT_TYPE_ARROW) || hitObj->ChkAtType(AT_TYPE_BOMB) || hitObj->ChkAtType(AT_TYPE_IRON_BALL))) {
            mDoAud_seStart(Z2SE_EN_BM_EYE_BREAK, &eyePos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            initEffectSet0();
            fopAcM_onSwitch(this, getSwNo2());
            initActionDead();
            OS_REPORT("Lv6ビーモス：目破壊されました！<%d>\n", getSwNo2()); // Lv6 Beamos: Eye destroyed! <%d>
        }

        field_0x600.ClrTgHit();

        if (field_0x87c.ChkTgHit()) {
            hitObj = field_0x87c.GetTgHitObj();
            if (hitObj != NULL && hitObj->ChkAtType(AT_TYPE_CSTATUE_SWING)) {
                if (fopAcM_GetName(field_0x87c.GetTgHitAc()) == PROC_CSTATUE) {
                    for (int i = 0; i < 3; i++) {
                        dComIfGp_particle_set(l_particle_id[i], &current.pos, NULL, &scale, 0xFF, NULL, -1, NULL, NULL, NULL);
                    }

                    fopAcM_seStart(this, Z2SE_EN_BM_BREAK, 0);
                    fopAcM_delete(this);
                    fopAcM_onSwitch(this, getSwNo3());
                    OS_REPORT_ERROR("Lv6ビーモス：本体破壊されました！<%d>\n", getSwNo2()); // Lv6 Beamos: The main body has been destroyed! <%d>
                }
            }
        }

        effect_proc();
        calcBeam();

        if (field_0xa10 == 3) {
            dComIfG_Ccsp()->Set(&field_0x738);
            if (mpBtkAnm != NULL && mpBtkAnm->getFrame() != 0.0f) {
                field_0xa7c.startLevelSound(Z2SE_EN_BM_BEAM2, 0, -1);
            }
        }

        (this->*l_func[field_0xa10])();

        mpBckAnm2->play();
        mpBtkAnm->play();
        mpBtkAnm2->play();
        mpBrkAnm->play();
        mpBckAnm->play();

        if (field_0x9d6 != 0) {
            fopAcM_seStartLevel(this, Z2SE_EN_BM_TURN, 0);
        }

        if (field_0xa10 != 0) {
            field_0x600.SetC(eyePos);
            dComIfG_Ccsp()->Set(&field_0x600);
        }

        cXyz sp2c(current.pos);
        sp2c.y += 300.0f;
        field_0x87c.SetC(sp2c);
        dComIfG_Ccsp()->Set(&field_0x87c);
    }
}

/* 80C7F2A4-80C7F8BC 001164 0618+00 1/1 0/0 0/0 .text            calcBeam__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::calcBeam() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    fopAcM_searchPlayerDistanceXZ(this);

    mDoMtx_stack_c::copy(field_0x5a8->getAnmMtx(getHeadJoint()));
    mDoMtx_stack_c::multVecZero(&field_0x9e4);
    mDoMtx_stack_c::transS(field_0x9e4);
    mDoMtx_stack_c::YrotM(shape_angle.y + field_0x9c2);
    mDoMtx_stack_c::transM(cXyz(l_beam_offsetPos[0], l_beam_offsetPos[1], l_beam_offsetPos[2]));
    mDoMtx_stack_c::multVecZero(&field_0x9e4);

    cXyz sp6c(0.0f, 0.0f, field_0xa2c);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y + field_0x9c2);
    mDoMtx_stack_c::multVec(&sp6c, &field_0x9f8);
    field_0x9f8.y += player->current.pos.y - current.pos.y;

    cXyz sp78(field_0x9e4 - field_0x9f8);
    field_0x9f0.x = cM_atan2s(sp78.y, field_0x9f8.absXZ(field_0x9e4));
    if (field_0x9f0.x < cM_deg2s(20.0f)) {
        field_0x9f0.x = cM_deg2s(20.0f);
    }
    field_0x9f0.y = field_0x9c2 + current.angle.y;
    field_0x9f0.z = 0;

    sp6c = field_0x9f8 - field_0x9e4;
    sp6c.normalizeZP();

    f32 fVar1 = mpBtkAnm->getFrame();

    if ((fVar1 + 0.5f) * 360.0f > 1200.0f) {
        fVar1 = 1200.0f;
    }

    field_0x9f8 = field_0x9e4 + (sp6c * fVar1);
    if (fopAcM_lc_c::lineCheck(&field_0x9e4, &field_0x9f8, this)) {
        field_0xa0c = field_0x9e4.abs(fopAcM_lc_c::getCross());
    } else {
        field_0xa0c = 1.0f;
    }

    field_0xa0c += 0.01f;
    field_0x9f8 = field_0x9e4 + (sp6c * (fVar1 * field_0xa0c));
    field_0x738.cCcD_CpsAttr::Set(field_0x9e4, field_0x9f8, 20.0f);
    field_0x738.CalcAtVec();

    if (field_0xa19 > 0) {
        cXyz sp84(field_0x9f8);
        if (fopAcM_lc_c::lineCheck(&field_0x9e4, &field_0x9f8, this) != NULL && fopAcM_lc_c::checkGroundHit()) {
            sp84 = fopAcM_lc_c::getCross();
        }

        if (cLib_chasePos(&field_0xa64, sp84, 60.0f)) {
            field_0xa19 = -1;
        }
    } else if (cLib_chasePos(&field_0xa64, field_0x9e4, 60.0f)) {
        field_0xa19 = 1;
    }

}

/* 80C7F904-80C7FA54 0017C4 0150+00 1/1 0/0 0/0 .text            checkFindPlayer__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::checkFindPlayer() {
    // NONMATCHING
}

/* 80C7FA54-80C7FBA4 001914 0150+00 1/1 0/0 0/0 .text            checkSearchPlayer__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::checkSearchPlayer() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81CA0-80C81CA4 000074 0004+00 2/2 0/0 0/0 .rodata          @4543 */
SECTION_RODATA static f32 const lit_4543 = 1000.0f;
COMPILER_STRIP_GATE(0x80C81CA0, &lit_4543);

/* 80C81CA4-80C81CAC 000078 0008+00 2/2 0/0 0/0 .rodata          @4545 */
SECTION_RODATA static u8 const lit_4545[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C81CA4, &lit_4545);

/* 80C7FBA4-80C7FBFC 001A64 0058+00 2/2 0/0 0/0 .text            getSearchDistance__12daObjLv6Bm_cFv
 */
void daObjLv6Bm_c::getSearchDistance() {
    // NONMATCHING
}

/* 80C7FBFC-80C7FC54 001ABC 0058+00 1/1 0/0 0/0 .text getBeamSearchDistance__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::getBeamSearchDistance() {
    // NONMATCHING
}

/* 80C7FC54-80C7FD8C 001B14 0138+00 1/1 0/0 0/0 .text            effect_proc__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::effect_proc() {
    // NONMATCHING
}

/* 80C7FD8C-80C7FD90 001C4C 0004+00 1/0 0/0 0/0 .text            effectWait__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::effectWait() {
    /* empty function */
}

/* ############################################################################################## */
/* 80C81CAC-80C81CB0 000080 0004+00 1/1 0/0 0/0 .rodata          eff_id$4596 */
SECTION_RODATA static u8 const eff_id_4596[4] = {
    0x88,
    0xD9,
    0x88,
    0xDA,
};
COMPILER_STRIP_GATE(0x80C81CAC, &eff_id_4596);

/* 80C7FD90-80C7FEC4 001C50 0134+00 1/1 0/0 0/0 .text            initEffectSet0__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initEffectSet0() {
    // NONMATCHING
}

/* 80C7FEC4-80C7FF78 001D84 00B4+00 1/0 0/0 0/0 .text            effectSet0__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::effectSet0() {
    // NONMATCHING
}

/* 80C7FF78-80C7FFB8 001E38 0040+00 1/1 0/0 0/0 .text            initActionSwWait__12daObjLv6Bm_cFv
 */
void daObjLv6Bm_c::initActionSwWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81CB0-80C81CB4 000084 0004+00 0/1 0/0 0/0 .rodata          @4764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4764 = 200.0f;
COMPILER_STRIP_GATE(0x80C81CB0, &lit_4764);
#pragma pop

/* 80C7FFB8-80C802AC 001E78 02F4+00 1/0 0/0 0/0 .text            actionSwWait__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionSwWait() {
    // NONMATCHING
}

/* 80C802AC-80C802C0 00216C 0014+00 3/3 0/0 0/0 .text            initActionWarning__12daObjLv6Bm_cFv
 */
void daObjLv6Bm_c::initActionWarning() {
    // NONMATCHING
}

/* 80C802C0-80C803D8 002180 0118+00 1/0 0/0 0/0 .text            actionWarning__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionWarning() {
    // NONMATCHING
}

/* 80C803D8-80C80538 002298 0160+00 1/1 0/0 0/0 .text initActionFindPlayer__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initActionFindPlayer() {
    // NONMATCHING
}

/* 80C80538-80C80684 0023F8 014C+00 1/0 0/0 0/0 .text            actionFindPlayer__12daObjLv6Bm_cFv
 */
void daObjLv6Bm_c::actionFindPlayer() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81CB4-80C81CBC 000088 0008+00 0/1 0/0 0/0 .rodata          eff_id$4844 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const eff_id_4844[8] = {
    0x88, 0xD5, 0x88, 0xD6, 0x88, 0xD7, 0x88, 0xD8,
};
COMPILER_STRIP_GATE(0x80C81CB4, &eff_id_4844);
#pragma pop

/* 80C80684-80C8082C 002544 01A8+00 1/1 0/0 0/0 .text            initActionAttack__12daObjLv6Bm_cFv
 */
void daObjLv6Bm_c::initActionAttack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81CBC-80C81CC0 000090 0004+00 0/1 0/0 0/0 .rodata          l_eff_id$4949 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_eff_id[4] = {
    0x88,
    0xD3,
    0x88,
    0xD4,
};
COMPILER_STRIP_GATE(0x80C81CBC, &l_eff_id);
#pragma pop

/* 80C81CC0-80C81CC4 000094 0004+00 0/1 0/0 0/0 .rodata          @5133 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5133 = 5.0f;
COMPILER_STRIP_GATE(0x80C81CC0, &lit_5133);
#pragma pop

/* 80C81CC4-80C81CC8 000098 0004+00 0/1 0/0 0/0 .rodata          @5134 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5134 = 15.0f;
COMPILER_STRIP_GATE(0x80C81CC4, &lit_5134);
#pragma pop

/* 80C8082C-80C80F48 0026EC 071C+00 1/0 0/0 0/0 .text            actionAttack__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionAttack() {
    // NONMATCHING
}

/* 80C80F48-80C81154 002E08 020C+00 1/1 0/0 0/0 .text            initActionDead__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initActionDead() {
    // NONMATCHING
}

/* 80C81154-80C81428 003014 02D4+00 2/0 0/0 0/0 .text            actionDead__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionDead() {
    // NONMATCHING
}

/* 80C81428-80C814FC 0032E8 00D4+00 1/1 0/0 0/0 .text            initActionEnd__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initActionEnd() {
    // NONMATCHING
}

/* 80C814FC-80C81500 0033BC 0004+00 1/0 0/0 0/0 .text            actionEnd__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionEnd() {
    /* empty function */
}

/* 80C81500-80C816A8 0033C0 01A8+00 1/0 0/0 0/0 .text            Draw__12daObjLv6Bm_cFv */
int daObjLv6Bm_c::Draw() {
    // NONMATCHING
}

/* 80C816A8-80C81808 003568 0160+00 1/0 0/0 0/0 .text            Delete__12daObjLv6Bm_cFv */
int daObjLv6Bm_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81FBC-80C81FE4 0002B8 0028+00 1/1 0/0 0/0 .data            __vt__12daObjLv6Bm_c */
SECTION_DATA extern void* __vt__12daObjLv6Bm_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daObjLv6Bm_cFv,
    (void*)Create__12daObjLv6Bm_cFv,
    (void*)Execute__12daObjLv6Bm_cFPPA3_A4_f,
    (void*)Draw__12daObjLv6Bm_cFv,
    (void*)Delete__12daObjLv6Bm_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C81808-80C819C8 0036C8 01C0+00 1/0 0/0 0/0 .text daObjLv6Bm_create1st__FP12daObjLv6Bm_c */
static void daObjLv6Bm_create1st(daObjLv6Bm_c* i_this) {
    // NONMATCHING

}

/* 80C819C8-80C81A10 003888 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C81A10-80C81A58 0038D0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C81A58-80C81AA0 003918 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C81AA0-80C81AFC 003960 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C81AFC-80C81B1C 0039BC 0020+00 1/0 0/0 0/0 .text daObjLv6Bm_MoveBGDelete__FP12daObjLv6Bm_c */
static void daObjLv6Bm_MoveBGDelete(daObjLv6Bm_c* param_0) {
    // NONMATCHING
}

/* 80C81B1C-80C81B3C 0039DC 0020+00 1/0 0/0 0/0 .text daObjLv6Bm_MoveBGExecute__FP12daObjLv6Bm_c
 */
static void daObjLv6Bm_MoveBGExecute(daObjLv6Bm_c* param_0) {
    // NONMATCHING
}

/* 80C81B3C-80C81B68 0039FC 002C+00 1/0 0/0 0/0 .text daObjLv6Bm_MoveBGDraw__FP12daObjLv6Bm_c */
static void daObjLv6Bm_MoveBGDraw(daObjLv6Bm_c* param_0) {
    // NONMATCHING
}

/* 80C81B68-80C81BB0 003A28 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C81BB0-80C81BCC 003A70 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Us>__FPUs */
extern "C" void func_80C81BB0(void* _this, u16* param_0) {
    // NONMATCHING
}

/* 80C81BCC-80C81BE8 003A8C 001C+00 3/3 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80C81BCC(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80C81BE8-80C81C20 003AA8 0038+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv6bemos2_cpp */
void __sinit_d_a_obj_lv6bemos2_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C81BE8, __sinit_d_a_obj_lv6bemos2_cpp);
#pragma pop

/* ############################################################################################## */
/* 80C81CC8-80C81CCC 00009C 0004+00 0/0 0/0 0/0 .rodata          @5280 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5280 = 6.0f;
COMPILER_STRIP_GATE(0x80C81CC8, &lit_5280);
#pragma pop

/* 80C81CCC-80C81CCC 0000A0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80C81F18-80C81F38 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv6Bm_METHODS */
static actor_method_class daObjLv6Bm_METHODS = {
    (process_method_func)daObjLv6Bm_create1st,
    (process_method_func)daObjLv6Bm_MoveBGDelete,
    (process_method_func)daObjLv6Bm_MoveBGExecute,
    0,
    (process_method_func)daObjLv6Bm_MoveBGDraw,
};

/* 80C81F38-80C81F68 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6bemos2 */
extern actor_process_profile_definition g_profile_Obj_Lv6bemos2 = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv6bemos2,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLv6Bm_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  631,                    // mPriority
  &daObjLv6Bm_METHODS,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
