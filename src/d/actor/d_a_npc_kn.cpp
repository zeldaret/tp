/**
 * @file d_a_npc_kn.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_kn.h"
#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_npc_gwolf.h"
#include "d/actor/d_a_obj_knBullet.h"
#include "JSystem//J3DGraphBase/J3DMaterial.h"
#include "Z2AudioLib/Z2Instances.h"

/* ############################################################################################## */
/* 80A408C8-80A408F8 000000 0030+00 50/50 0/0 0/0 .rodata          mCcDObjData__10daNpc_Kn_c */
const u8 daNpc_Kn_c::mCcDObjData[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

#include "d/actor/d_a_npc_kn_base.inc"

/* 80A40D54-80A40D98 000020 0044+00 1/1 0/0 0/0 .data            mCcDCyl__10daNpc_Kn_c */
dCcD_SrcCyl daNpc_Kn_c::mCcDCyl = {
    {
        {0, {{0, 0, 0}, {0, 0}, {0}}},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0},
    },
    {{0.0f, 0.0f, 0.0f}, 0.0f, 0.0f},
};

/* 80A40D98-80A40DD8 000064 0040+00 1/1 0/0 0/0 .data            mCcDSph__10daNpc_Kn_c */
dCcD_SrcSph daNpc_Kn_c::mCcDSph = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x0}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},         // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},         // mGObjTg
        {0x0},                                      // mGObjCo
    },                                              // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f}  // mSphCc
    }  
};

/* 80A40DD8-80A40DF0 0000A4 0018+00 0/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[3][2] = {
    {47, 1}, 
    {48, 1},
    {49, 1}
};

/* 80A40DF0-80A40EC0 -00001 00D0+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[26] = {
    {"", 0},
    {"NONE_EQUIP_CHANGE_TALK",1},
    {"NONE_EQUIP_CHANGE_TALK_WAIT",1},
    {"NO_EQ_CHNGE_TLK_STD",1},
    {"LARGE_DAMAGE_TALK",1},
    {"FIRST_ENCOUNT",2},
    {"ATTACK_FAILED",2},
    {"FIRST_SKILL_GET",2},
    {"SECOND_ENCOUNT",1},
    {"SECOND_SKILL_EXPLAIN",3},
    {"REFLECT_EXPLAIN",3},
    {"SECOND_SKILL_GET",3},
    {"THIRD_SKILL_EXPLAIN",4},
    {"THIRD_SKILL_FIRST",1},
    {"THIRD_SKILL_GET",4},
    {"FOURTH_SKILL_EXPLAIN",5},
    {"FOURTH_SKILL_GET",5},
    {"FIFTH_SKILL_EXPLAIN",6},
    {"FIFTH_SKILL_FIRST",1},
    {"FIFTH_SKILL_GET",6},
    {"SIXTH_SKILL_EXPLAIN",7},
    {"SIXTH_SKILL_GET",7},
    {"SIXTH_SKILL_GET_STAND",7},
    {"SEVENTH_SKILL_EXPLAIN",8},
    {"SEVENTH_SKILL_GET",8},
    {"SEVENTH_SKILL_GET_STAND",8},
};

/* 80A40EC0-80A40EE4 -00001 0024+00 2/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[9] = {
    "",
    "KN_a",
    "KN_tch01D",
    "KN_tch02D",
    "KN_tch03D",
    "KN_tch04D",
    "KN_tch05D",
    "KN_tch06D",
    "KN_tch07D",
};

/* 80A40EE4-80A40EE8 0001B0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrnTeach01 */
static s8 l_loadResPtrnTeach01[3] = {
    0x01,
    0x02,
    0xFF,
};

/* 80A40EE8-80A40EEC 0001B4 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach02 */
static s8 l_loadResPtrnTeach02[4] = {
    0x01,
    0x02,
    0x03,
    0xFF,
};

/* 80A40EEC-80A40EF0 0001B8 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach03 */
static s8 l_loadResPtrnTeach03[4] = {
    0x01,
    0x03,
    0x04,
    0xFF,
};

/* 80A40EF0-80A40EF4 0001BC 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach04 */
static s8 l_loadResPtrnTeach04[4] = {
    0x01,
    0x04,
    0x05,
    0xFF,
};

/* 80A40EF4-80A40EF8 0001C0 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach05 */
static s8 l_loadResPtrnTeach05[4] = {
    0x01,
    0x05,
    0x06,
    0xFF,
};

/* 80A40EF8-80A40EFC 0001C4 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach06 */
static s8 l_loadResPtrnTeach06[4] = {
    0x01,
    0x06,
    0x07,
    0xFF,
};

/* 80A40EFC-80A40F00 0001C8 0003+01 1/0 0/0 0/0 .data            l_loadResPtrnTeach07 */
static s8 l_loadResPtrnTeach07[3] = {
    0x01,
    0x08,
    0xFF,
};

/* 80A40F00-80A40F04 0001CC 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    0x01,
    0xFF,
};

/* 80A40F04-80A40F24 -00001 0020+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[8] = {
    l_loadResPtrnTeach01, l_loadResPtrnTeach02, l_loadResPtrnTeach03,
    l_loadResPtrnTeach04, l_loadResPtrnTeach05, l_loadResPtrnTeach06,
    l_loadResPtrnTeach07, l_loadResPtrn0,
};

/* 80A40F24-80A40F5C 0001F0 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[2] = {
    {-1, 0, 0, -1, 0, 0, 0},
     {21, 0, 1, -1, 0, 0, 0}

};

/* 80A40F5C-80A41330 000228 03D4+00 0/1 0/0 0/0 .data            l_motionAnmData */
static int l_motionAnmData[245] = {
    43,2, 1, -1,0, 0, 0, 38,2, 1, -1,0, 0, 0, 39,2, 1, -1,0, 0, 
    0, 41,0, 1, -1,0, 0, 0, 16,0, 1, -1,0, 0, 0, 11,0, 1, -1,0, 
    0, 0, 7, 0, 1, -1,0, 0, 0, 8, 0, 1, -1,0, 0, 0, 9, 2, 1, -1,
    0,0,0, 14,0, 1, -1,0, 0, 0, 13,2, 1, -1,0, 0, 0, 12,0, 1, 
    -1,0, 0, 0, 30,0, 1, -1,0, 0, 0, 17,2, 1, -1,0, 0, 0, 26,0, 
    1, -1,0, 0, 0, 28,2, 1, -1,0, 0, 0, 35,0, 1, -1,0, 0, 0, 36,
    2, 1, -1,0, 0, 0, 10,0, 1, -1,0, 0, 0, 19,0, 1, -1,0, 0, 0, 
    40,0, 1, -1,0, 0, 0, 37,0, 1, -1,0, 0, 0, 5, 0, 1, -1,0, 0, 
    0, 18,2, 1, -1,0, 0, 0, 27,0, 1, -1,0, 0, 0, 29,2, 1, -1,0, 
    0, 0, 20,0, 1, -1,0, 0, 0, 15,0, 1, -1,0, 0, 0, 24,0, 1, -1,
    0, 0, 0, 25,2, 1, -1,0, 0, 0, 44,2, 1, -1,0, 0, 0, 42,0, 1, 
    -1,0, 0, 0, 22,0, 1, -1,0, 0, 0, 23,2, 1, -1,0, 0, 0, 6, 0, 
    1, -1,0, 0, 0
};

/* 80A41330-80A41358 0005FC 0028+00 1/2 0/0 0/0 .data            l_podBckData */
static s32 l_podBckData[5][2] = {
    {-1, 1},
    {34, 1},
    {33, 1},
    {31, 1},
    {32, 1},
};

/* 80A41358-80A41378 000624 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[8] = {
    {1, -1, 0},
    {-1, 0, 0}, 
    {-1, 0, 0}, 
    {-1, 0, 0},
    {0, -1, 0}, 
    {-1, 0, 0}, 
    {-1, 0, 0}, 
    {-1, 0, 0},
};

/* 80A41378-80A41588 000644 0210+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[132] = {
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {3, -1, 1},
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {15, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {30, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {31, -1, 1},
    {30, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {29, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {33, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {5, 0, 1}, 
    {4, 3, 1}, 
    {0, -1, 0},
    {-1, 0, 0},
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {34, 3, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {7, 0, 1}, 
    {8, 0, 0}, 
    {-1, 0, 0},
    {-1, 0, 0},
    {32, 3, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {28, 3, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {23, 6, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {24, 3, 1},
    {25, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {26, -1, 1},
    {0, 0, 0}, 
    {-1, 0, 0},
    {-1, 0, 0},
    {20, 3, 1},
    {21, 3, 1},
    {22, 3, 1},
    {0, 3, 0}, 
    {13, 6, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {14, 3, 1},
    {15, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {16, -1, 1},
    {17, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {18, -1, 1},
    {15, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {19, -1, 1},
    {0, 0, 0}, 
    {-1, 0, 0},
    {-1, 0, 0},
    {5, 0, 1}, 
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {27, -1, 1},
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {12, 3, 1},
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {4, 3, 1}, 
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {5, 0, 1}, 
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {6, 0, 1}, 
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {7,  0, 1},
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {7, 0, 1}, 
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {7, 0, 1}, 
    {1, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {1, 3, 0}, 
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0}
};

/* 80A41588-80A415DC -00001 0054+00 1/1 0/0 0/0 .data            mCutNameList__10daNpc_Kn_c */
char* daNpc_Kn_c::mCutNameList[21] = {
    "",
    "NONE_EQUIP_CHANGE_TALK",
    "NO_EQ_CHNGE_TLK_STD",
    "LARGE_DAMAGE_TALK",
    "FIRST_ENCOUNT",
    "ATTACK_FAILED",
    "FIRST_SKILL_GET",
    "SECOND_ENCOUNT",
    "SECOND_SKILL_EXPLAIN",
    "REFLECT_EXPLAIN",
    "SECOND_SKILL_GET",
    "THIRD_SKILL_EXPLAIN",
    "THIRD_SKILL_GET",
    "FOURTH_SKILL_EXPLAIN",
    "FOURTH_SKILL_GET",
    "FIFTH_SKILL_EXPLAIN",
    "FIFTH_SKILL_GET",
    "SIXTH_SKILL_EXPLAIN",
    "SIXTH_SKILL_GET",
    "SEVENTH_SKILL_EXPLAIN",
    "SEVENTH_SKILL_GET",
};

/* 80A416CC-80A417C8 000998 00FC+00 1/2 0/0 0/0 .data            mCutList__10daNpc_Kn_c */
daNpc_Kn_c::cutFunc daNpc_Kn_c::mCutList[21] = {
    &daNpc_Kn_c::ECut_noneEquipChangeTalk,
    &daNpc_Kn_c::ECut_noneEquipChangeTalkStand,
    &daNpc_Kn_c::ECut_largeDamageTalk,
    &daNpc_Kn_c::ECut_firstEncount,
    &daNpc_Kn_c::ECut_attackFailed,
    &daNpc_Kn_c::ECut_firstSkillGet,
    &daNpc_Kn_c::ECut_secondEncount,
    &daNpc_Kn_c::ECut_secondSkillExplain,
    &daNpc_Kn_c::ECut_reflectExplain,
    &daNpc_Kn_c::ECut_secondSkillGet,
    &daNpc_Kn_c::ECut_thirdSkillExplain,
    &daNpc_Kn_c::ECut_thirdSkillGet,
    &daNpc_Kn_c::ECut_fourthSkillExplain,
    &daNpc_Kn_c::ECut_fourthSkillGet,
    &daNpc_Kn_c::ECut_fifthSkillExplain,
    &daNpc_Kn_c::ECut_fifthSkillGet,
    &daNpc_Kn_c::ECut_sixthSkillExplain,
    &daNpc_Kn_c::ECut_sixthSkillGet,
    &daNpc_Kn_c::ECut_seventhSkillExplain,
    &daNpc_Kn_c::ECut_seventhSkillGet,
    NULL
};

/* 80A2AA0C-80A2AECC 0000EC 04C0+00 1/0 0/0 0/0 .text            __dt__10daNpc_Kn_cFv */
daNpc_Kn_c::~daNpc_Kn_c() {
    if (heap) {
        mpMorf[0]->stopZelAnime();
        mpMorf[1]->stopZelAnime();
    }
    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 80A40970-80A40A24 0000A8 00B4+00 8/29 0/0 0/0 .rodata          m__16daNpc_Kn_Param_c */
const daNpc_Kn_HIOParam daNpc_Kn_Param_c::m = {
    50.0f,
    -5.0f,
    1.0f,
    1250.0f,
    245.0f,
    270.0f,
    0.0f,
    55.0f,
    0.0f,
    0.0f,
    40.0f,
    -40.0f,
    30.0f,
    -30.0f,
    60.0f,
    -60.0f,
    0.6f,
    12.0f,
    6,
    6,
    8,
    6,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    60,
    8,
    0,
    0,
    0,
    0,
    0,
    4.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    // kn-specific:
    255,
    300,
    90,
    0,
    100.0f,
    240.0f,
    1100.0f,
    27.0f,
    50.0f,
    0x00100200,
    120,
    90,
    2.0f,
};

/* 80A2AFD4-80A2B278 0006B4 02A4+00 1/1 0/0 0/0 .text            create__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::create() {
    static int const heapSize[8] = {
        0x4B10, 
        0x4B20, 
        0x4B10, 
        0x4B10,
        0x5A00, 
        0x4B10, 
        0x4B20, 
        0x0000,
    };

    cPhs__Step step;
    fopAcM_SetupActor2(this, daNpc_Kn_c, l_faceMotionAnmData, (daNpcT_motionAnmData_c*)l_motionAnmData, l_faceMotionSequenceData, 4, l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = getType();
    mDivideNo = getDivideNo();
    mFlowNodeNo = getFlowNodeNo();
    field_0xABD = 0;

    if (isDelete()) {
        return cPhs_ERROR_e;
    } else {
        step = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);

        if (step == cPhs_COMPLEATE_e) {
            if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
                return cPhs_ERROR_e;
            } else {
                J3DModelData* model_data = mpMorf[0]->getModel()->getModelData();
                fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
                fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
                fopAcM_OnStatus(this, fopAcM_STATUS_UNK_80000000);
                mCreature.init(&current.pos,&eyePos,3,1);
                dKy_tevstr_init(&mTevStr, fopAcM_GetRoomNo(this), 0xFF);
                mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
                mAcch.CrrPos(dComIfG_Bgsp());
                mGndChk = mAcch.m_gnd;
                mGroundHeight = mAcch.GetGroundH();
                setEnvTevColor();
                setRoomNo();
                mCcStts.Init(daNpc_Kn_Param_c::m.common.weight, 0, this);
                resetCol();
                reset();
                field_0xABC = 1;
                Execute();
                field_0xABC = 0;
            }
        }
    }

    return step;
}

/* 80A2B278-80A2B620 000958 03A8+00 1/1 0/0 0/0 .text            CreateHeap__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::CreateHeap() {
    // NONMATCHING - regalloc
    J3DModelData* mdlData_p = NULL;
    J3DModel* model = NULL;
    int bmd_offset = 1;
    int arc_idx = l_bmdData[bmd_offset][1];
    int res_idx = l_bmdData[bmd_offset][0];
    mdlData_p = (J3DModelData*) dComIfG_getObjectRes(l_resNameList[arc_idx], res_idx);
    JUT_ASSERT(0x4EB, 0 != mdlData_p);

    u32 big_bits = 0x11020284;
    mpMorf[0] = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mCreature, 0x80000, big_bits);

    if (mpMorf[0] != NULL && mpMorf[0]->getModel() == NULL) {
        mpMorf[0]->stopZelAnime();
        mpMorf[0] = NULL;
    }

    if (mpMorf[0] == NULL) {
        return 0;
    } else {
        model = mpMorf[0]->getModel();

        for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
            mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
        }

        model->setUserArea((u32)this);

        if (!mInvisModel.create(mpMorf[0]->getModel(), 1)) {
            return 0;
        } else {
            bmd_offset = 0;
            arc_idx = l_bmdData[bmd_offset][1];
            res_idx = l_bmdData[bmd_offset][0];
            mdlData_p = (J3DModelData*) dComIfG_getObjectRes(l_resNameList[arc_idx], res_idx);
            JUT_ASSERT(0x51E, 0 != mdlData_p);
            big_bits = 0x11020284;
            mpMorf[1] = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mCreature, 0x80000, big_bits);

            if (mpMorf[1] != NULL && mpMorf[1]->getModel() == NULL) {
                mpMorf[1] = NULL;
            }

            if (mpMorf[1] == NULL) {
                if (mpMorf[0] != NULL) {
                    mpMorf[0]->stopZelAnime();
                }
                return 0;
            } else {
                model = mpMorf[1]->getModel();

                for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
                    mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
                }

                model->setUserArea((u32)this);

                if (mType == 4) {
                    J3DModelData* modelData = NULL;
                    bmd_offset = 2;
                    arc_idx = l_bmdData[bmd_offset][1];
                    res_idx = l_bmdData[bmd_offset][0];
                    modelData = (J3DModelData*) dComIfG_getObjectRes(l_resNameList[arc_idx], res_idx);

                    if (modelData != NULL) {
                        mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
                        if (mpModel == NULL) {
                            return 0;
                        }
                    } else {
                        return 0;
                    }
                }

                if (setFaceMotionAnm(1, false)) {
                    if (mType == 4) {
                        J3DAnmTransform* anm_transform = NULL;
                        anm_transform = (J3DAnmTransform*) getTrnsfrmKeyAnmP(l_resNameList[l_podBckData[1][1]],l_podBckData[1][0]);

                        if (anm_transform != NULL && field_0x1588.init(anm_transform, 1, 2, 1.0f, 0, -1,false)) {
                            field_0x15a4 |= 0x41;
                            return 1;
                        }

                        if (anm_transform == NULL && l_podBckData[1][0] != -1) {
                            return 0;
                        }
                    }

                    if (setMotionAnm(0,0.0f,0)) {
                        return 1;
                    }
                }
            }
        }
    }

    return 0;
}

/* 80A2B620-80A2B654 000D00 0034+00 1/1 0/0 0/0 .text            Delete__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::Delete() {
    this->~daNpc_Kn_c();
    return 1;
}

/* 80A2B654-80A2B6B0 000D34 005C+00 2/2 0/0 0/0 .text            Execute__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::Execute() {
    s32 ret = execute();
    setPrtcl();
    calcMagicBallPos();
    setSwordChargePtcl();
    setSe();
    return ret;
}

/* 80A2B6B0-80A2B764 000D90 00B4+00 1/1 0/0 0/0 .text            Draw__10daNpc_Kn_cFv */
void daNpc_Kn_c::Draw() {
    if (mpMatAnm) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm);
    }

    _GXColorS10 local_28;
    local_28.r = 0;
    local_28.g = 0;
    local_28.b = 0;
    local_28.a = daNpc_Kn_Param_c::m.field_0x8c;
    // debug ROM has chkAction here.
    draw(0, 0, daNpc_Kn_Param_c::m.common.real_shadow_size, &local_28, 0.0f, 1, 0, 0);
}

/* 80A2B764-80A2B784 000E44 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daNpc_Kn_cFP10fopAc_ac_c               */
int daNpc_Kn_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Kn_c*>(i_this)->CreateHeap();
}

/* 80A2B784-80A2B7DC 000E64 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__10daNpc_Kn_cFP8J3DJointi
 */
int daNpc_Kn_c::ctrlJointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Kn_c* _this = reinterpret_cast<daNpc_Kn_c*>(model->getUserArea());

        if (_this) {
            _this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80A2B7DC-80A2B844 000EBC 0068+00 2/1 0/0 0/0 .text            getType__10daNpc_Kn_cFv */
u8 daNpc_Kn_c::getType() {
    switch (fopAcM_GetParam(this) & 0xFF) {
    case 1:
        return 0;
    case 2:
        return 1;
    case 3:
        return 2;
    case 4:
        return 3;
    case 5:
        return 4;
    case 6:
        return 5;
    case 7:
        return 6;
    default:
        return 7;
    };
}

/* 80A2B844-80A2B850 000F24 000C+00 1/1 0/0 0/0 .text            getDivideNo__10daNpc_Kn_cFv */
u8 daNpc_Kn_c::getDivideNo() {
    return (fopAcM_GetParam(this) & 0xFF00) >> 8;
}

/* 80A2B850-80A2B86C 000F30 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::getFlowNodeNo() {
    u16 node_no = home.angle.x;

    if (node_no == 0xFFFF) {
        return 0xFFFFFFFF;
    }

    return node_no;
}

/* 80A2B86C-80A2B878 000F4C 000C+00 1/1 0/0 0/0 .text            getPath__10daNpc_Kn_cFv */
u8 daNpc_Kn_c::getPath() {
    return (fopAcM_GetParam(this) & 0xFF00) >> 8;
}

/* 80A2B878-80A2B91C 000F58 00A4+00 1/1 0/0 0/0 .text            isDelete__10daNpc_Kn_cFv */
BOOL daNpc_Kn_c::isDelete() {
    static s16 l_appearFlag[7] = {
        0xFFFF,
        0x0153,
        0x0152,
        0x0154,
        0x0155,
        0x0156,
        0x0157,
    };
    static s16 l_delFlag[7] = {
        0x0153,
        0x0152,
        0x0154,
        0x0155,
        0x0156,
        0x0157,
        0x0158,
    };

    switch (mType) {
    case 0:
        if (daNpcT_chkEvtBit(0x153) ==  FALSE) {
            return 0;
        } 
        break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
        if (daNpcT_chkEvtBit(l_appearFlag[mType*1]) && !daNpcT_chkEvtBit(l_delFlag[mType])) {
            return 0;
        }
    }

    return 1;
}

/* 80A2B91C-80A2B9E0 000FFC 00C4+00 1/1 0/0 0/0 .text            resetCol__10daNpc_Kn_cFv */
void daNpc_Kn_c::resetCol() {

    mCylCc.Set(mCcDCyl);
    mCylCc.SetStts(&mCcStts);
    mCylCc.SetTgHitCallback(tgHitCallBack);

    for (int i = 0; i < 2; i++) {
        mSphCc[i].Set(mCcDSph);
        mSphCc[i].SetStts(&mCcStts);
        mSphCc[i].SetAtSe(dCcD_SE_HARD_BODY);
        mSphCc[i].SetAtSpl(dCcG_At_Spl_UNK_1);
        mSphCc[i].SetAtType(AT_TYPE_800);
        mSphCc[i].OnAtSPrmBit(0xc);
        mSphCc[i].OffAtNoConHit();
        mSphCc[i].OffCoSetBit();
    }
}

/* 80A2B9E0-80A2BC5C 0010C0 027C+00 1/1 0/0 0/0 .text            reset__10daNpc_Kn_cFv */
void daNpc_Kn_c::reset() {
    initialize();
    memset(&mpTeachAction, 0, (int)&field_0x1754 - (int)&mpTeachAction);

    if (mpMatAnm) {
        mpMatAnm->initialize();
    }

    if (getPath() != 0xFF) {
        mPath.initialize();
        mPath.setPathInfo(getPath(), fopAcM_GetRoomNo(this), 0);
    }

    mStaffId = -1;
    setAngle(home.angle.y);
    field_0x15bd = 0;
    field_0x15be = 0;
    field_0x15cc = 0;
    field_0x15cd = 0;
    field_0x15ce = 0;
    field_0x15bc = 0;
    field_0x15af = 1;

    for (int i = 0; i < 3; i++) {
        mParticleMngr[i].mManager.init(&mAcch, 0.0f, 0.0f);
    }

    for (int i = 0; i < 3; i++) {
        field_0x15d4[i] = -1;
    }

    field_0x170c = 0;
    field_0x16f4.set(1.0f,1.0f,1.0f);
    field_0x170d = 1;
    field_0x170e = 0;

    field_0x15c0 = current.pos;

    if (mType <= 6 && (mDivideNo == 0 || mDivideNo > 2)) {
        field_0xe2c = 1;
        parentActorID = fopAcM_createChild(PROC_NPC_GWOLF, fopAcM_GetID(this), 0xffffff02, &current.pos, fopAcM_GetRoomNo(this), &current.angle, 0, -1, 0);
    }

    resetType();
}

/* 80A2BC5C-80A2BD30 00133C 00D4+00 2/1 0/0 0/0 .text            resetType__10daNpc_Kn_cFv */
void daNpc_Kn_c::resetType() {
    switch (mType) {
    case 0:
        mActionMode = 0;
        return;
    case 1:
        mActionMode = 4;
        return;
    case 2:
        mActionMode = 4;
        return;
    case 3:
        mActionMode = 4;
        return;
    case 4:
        mActionMode = 4;
        return;
    case 5:
        if (mDivideNo != 0 && mDivideNo <= 2) {
            mActionMode = 0xe;
            field_0x15af = 0;
        } else {
            mActionMode = 0x4;
        }
        break;
    case 6:
        if (mDivideNo != 0 && mDivideNo <= 2) {
            mActionMode = 0x14;
            field_0x15af = 0;
            return;
        }
        mActionMode = 4;
        return;
    default:
        mActionMode = -1;
    }
}

/* 80A2BD30-80A2BFB0 001410 0280+00 2/1 0/0 0/0 .text            setParam__10daNpc_Kn_cFv */
void daNpc_Kn_c::setParam() {
    selectAction();
    srchActors();

    s16 field48 = daNpc_Kn_Param_c::m.common.talk_distance;
    s16 field4a = daNpc_Kn_Param_c::m.common.talk_angle;
    s16 field4c = daNpc_Kn_Param_c::m.common.attention_distance;
    s16 field4e = daNpc_Kn_Param_c::m.common.attention_angle;
    f32 radius = daNpc_Kn_Param_c::m.common.attention_offset;
    f32 height = daNpc_Kn_Param_c::m.common.attention_offset;

    switch (mType) {
    case 0:
        attention_info.flags = setParamTeach01();
        mAcchCir.SetWallR(135.0f);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.common.knee_length);
        break;
    case 1:
        if (mActionMode < 4) {
            attention_info.flags = setParamTeach01();
            mAcchCir.SetWallR(135.0f);
            mAcchCir.SetWallH(daNpc_Kn_Param_c::m.common.knee_length);
        } else {
            attention_info.flags = setParamTeach02();
        }
        break;
    case 2:
        if (mActionMode < 8) {
            attention_info.flags = setParamTeach02();
        } else {
            attention_info.flags = setParamTeach03();
        }
        break;
    case 3:
        if (mActionMode < 9) {
            attention_info.flags = setParamTeach03();
        } else {
            attention_info.flags = setParamTeach04();
        }
        break;
    case 4:
        if (mActionMode < 12) {
            attention_info.flags = setParamTeach04();
        } else {
            attention_info.flags = setParamTeach05();
        }
        break;
    case 5:
        attention_info.flags = setParamTeach06();
        break;
    case 6:
        attention_info.flags = setParamTeach07();
        break;
    default:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        attention_info.flags = 10;
        mAcchCir.SetWallR(daNpc_Kn_Param_c::m.common.width);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.common.knee_length);
    }

    scale.set(daNpc_Kn_Param_c::m.common.scale * field_0x16f4.x,
              daNpc_Kn_Param_c::m.common.scale * field_0x16f4.y,
              daNpc_Kn_Param_c::m.common.scale * field_0x16f4.z);
    mCcStts.SetWeight(daNpc_Kn_Param_c::m.common.weight);
    field_0xe0c = daNpc_Kn_Param_c::m.common.height;
    mRadius = daNpc_Kn_Param_c::m.common.width;
    gravity = daNpc_Kn_Param_c::m.common.gravity;
    field_0xab4 = daNpc_Kn_Param_c::m.common.expression_morf_frame;
    field_0xab8 = daNpc_Kn_Param_c::m.common.morf_frame;
};

/* 80A2BFB0-80A2C044 001690 0094+00 1/1 0/0 0/0 .text            setParamTeach03__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach03() {
    s16 field48 = daNpc_Kn_Param_c::m.common.talk_distance;
    s16 field4a = daNpc_Kn_Param_c::m.common.talk_angle;
    s16 field4c = daNpc_Kn_Param_c::m.common.attention_distance;
    s16 field4e = daNpc_Kn_Param_c::m.common.attention_angle;
    attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
    attention_info.distances[2] = 0xe4;
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
    mAcchCir.SetWallR(135.0f);
    mAcchCir.SetWallH(daNpc_Kn_Param_c::m.common.knee_length);
    return 4;
}

/* 80A2C044-80A2C0FC 001724 00B8+00 1/1 0/0 0/0 .text            setParamTeach04__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach04() {
    s16 field48 = daNpc_Kn_Param_c::m.common.talk_distance;
    s16 field4a = daNpc_Kn_Param_c::m.common.talk_angle;
    s16 field4c = daNpc_Kn_Param_c::m.common.attention_distance;
    s16 field4e = daNpc_Kn_Param_c::m.common.attention_angle;
    attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
    attention_info.distances[2] = 0xe4;
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
    if (mActionMode == 10 || mActionMode == 11) {
        mAcchCir.SetWallR(135.0f);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.common.knee_length);
        return 4;
    }

    return 0x200004;
}

/* 80A2C0FC-80A2C190 0017DC 0094+00 3/3 0/0 0/0 .text            setParamTeach05__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach05() {
    s16 field48 = daNpc_Kn_Param_c::m.common.talk_distance;
    s16 field4a = daNpc_Kn_Param_c::m.common.talk_angle;
    s16 field4c = daNpc_Kn_Param_c::m.common.attention_distance;
    s16 field4e = daNpc_Kn_Param_c::m.common.attention_angle;
    attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
    attention_info.distances[2] = 0xe4;
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
    mAcchCir.SetWallR(135.0f);
    mAcchCir.SetWallH(daNpc_Kn_Param_c::m.common.knee_length);
    return 4;
}

/* 80A2C190-80A2C1B0 001870 0020+00 1/1 0/0 0/0 .text            setParamTeach06__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach06() {
    setParamTeach05();
}

/* 80A2C1B0-80A2C1D0 001890 0020+00 1/1 0/0 0/0 .text            setParamTeach07__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach07() {
    setParamTeach05();
}

/* 80A2C1D0-80A2C230 0018B0 0060+00 1/1 0/0 0/0 .text            setAfterTalkMotion__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setAfterTalkMotion() {
    mMotionSeqMngr1.getNo();
    mMotionSeqMngr1.setNo(1, -1.0, 0, 0);
}

/* 80A2C230-80A2C234 001910 0004+00 1/1 0/0 0/0 .text            srchActors__10daNpc_Kn_cFv */
void daNpc_Kn_c::srchActors() {}

/* 80A2C234-80A2C318 001914 00E4+00 1/1 0/0 0/0 .text            evtTalk__10daNpc_Kn_cFv */
bool daNpc_Kn_c::evtTalk() {
    if (chkAction(&daNpc_Kn_c::talk)) {
        (this->*mpActionFunc)(0);
    } else {
        if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
            setAction(&daNpc_Kn_c::talk);
        }
    }

    return true;
}

/* 80A2C318-80A2C3FC 0019F8 00E4+00 1/1 0/0 0/0 .text            evtCutProc__10daNpc_Kn_cFv */
bool daNpc_Kn_c::evtCutProc() {
    bool ret;
    if (mDivideNo != 0 && mDivideNo <= 2) {
        return false;
    } else {
        ret = false;
        int staff_id = dComIfGp_getEventManager().getMyStaffId("Kn", this, -1);
        if (staff_id != -1) {
            mStaffId = staff_id;
            int act_idx = dComIfGp_getEventManager().getMyActIdx(mStaffId, &mCutNameList[0], 21, 0, 0);
            if ((this->*mCutList[act_idx])(mStaffId)) {
                dComIfGp_getEventManager().cutEnd(mStaffId);    
            }

            ret = true;
        }
    }

    return ret;
}

/* 80A2C3FC-80A2C484 001ADC 0088+00 1/1 0/0 0/0 .text            action__10daNpc_Kn_cFv */
void daNpc_Kn_c::action() {
    if (mpTeachAction) {
        if (mpActionFunc == mpTeachAction) {
            (this->*mpActionFunc)(0);
            
        } else {
            setAction(mpTeachAction);
        }
    }
}

/* 80A2C484-80A2C4FC 001B64 0078+00 1/1 0/0 0/0 .text            beforeMove__10daNpc_Kn_cFv */
void daNpc_Kn_c::beforeMove() {
    if (checkHide() || field_0xe32 != 0) {
        attention_info.flags = 0;
    }
}

/* 80A2C4FC-80A2C56C 001BDC 0070+00 1/1 0/0 0/0 .text            afterMoved__10daNpc_Kn_cFv */
void daNpc_Kn_c::afterMoved() {
    if (mGroundHeight != -1e9f) {
        mTevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
        mTevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
    }
}

/* 80A2C56C-80A2C77C 001C4C 0210+00 1/1 0/0 0/0 .text            setAttnPos__10daNpc_Kn_cFv */
void daNpc_Kn_c::setAttnPos() {
    cXyz pos(30.0f, 0.0f, 0.0f);
    int head_joint_no = getHeadJointNo();
    int neck_joint_no = getNeckJointNo();
    int backbone_joint_no = getBackboneJointNo();
    J3DModel* model = mpMorf[0]->getModel();

    mJntAnm.setParam(this, model, &pos, backbone_joint_no, neck_joint_no, head_joint_no, 
        daNpc_Kn_Param_c::m.common.body_angleX_min, daNpc_Kn_Param_c::m.common.body_angleX_max, 
        daNpc_Kn_Param_c::m.common.body_angleY_min, daNpc_Kn_Param_c::m.common.body_angleY_max, 
        daNpc_Kn_Param_c::m.common.head_angleX_min, daNpc_Kn_Param_c::m.common.head_angleX_max,
        daNpc_Kn_Param_c::m.common.head_angleY_min, daNpc_Kn_Param_c::m.common.head_angleY_max,
        daNpc_Kn_Param_c::m.common.neck_rotation_ratio, 0.0f, 0);

    f32 rad_val = cM_s2rad(mTargetAngle.y - field_0xDB2.y);
    mJntAnm.calcJntRad(0.2f, 1.0f, rad_val);
    setMtx();
    model = mpMorf[1]->getModel();
    J3DModelData* modelData = model->getModelData();
    (void) modelData;
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mTargetAngle);
    mDoMtx_stack_c::scaleM(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    model->setUserArea((u32)this);
    mpMorf[1]->modelCalc();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&pos, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mTargetAngle.y, 1, 1.0f, 0);
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVecZero(&attention_info.position);
    attention_info.position.y += daNpc_Kn_Param_c::m.common.attention_offset;
}

/* 80A2C77C-80A2C984 001E5C 0208+00 2/1 0/0 0/0 .text            setCollision__10daNpc_Kn_cFv */
void daNpc_Kn_c::setCollision() {
    cXyz centerPos;

    if (field_0xe2c == 0 && field_0x15af != 0) {
        u32 param;

        if (field_0xABD == 1) {
            param = 0x69;
        } else {
            param = 0x79;
        }

        mCylCc.SetCoSPrm(param);

        switch (mType) {
        case 0:
            setCollisionTeach01();
            break;
        case 1:
            if (mActionMode < 4) {
                setCollisionTeach01();
            } else {
                setCollisionTeach02();
            }
            break;
        case 2:
            if (mActionMode < 8) {
                setCollisionTeach02();
            } else {
                setCollisionTeach03();
            }
            break;
        case 3:
            if (mActionMode < 9) {
                setCollisionTeach03();
            } else {
                setCollisionTeach04();
            }
            break;
        case 4:
            if (mActionMode < 12) {
                setCollisionTeach04();
            } else {
                setCollisionTeach05();
            }
            break;
        case 5:
            setCollisionTeach06();
            break;
        case 6:
            setCollisionTeach07();
        }

        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getBackboneJointNo()));
        mDoMtx_stack_c::multVecZero(&centerPos);
        centerPos.y = current.pos.y;
        f32 radius = daNpc_Kn_Param_c::m.common.width;
        mCylCc.SetH(daNpc_Kn_Param_c::m.common.height);
        mCylCc.SetR(radius);
        mCylCc.SetC(centerPos);
        dComIfG_Ccsp()->Set(&mCylCc);
    }

    mCylCc.ClrCoHit();
    mCylCc.ClrTgHit();
    setCollisionSword();
}

/* 80A2C984-80A2CB30 002064 01AC+00 1/1 0/0 0/0 .text            setCollisionSword__10daNpc_Kn_cFv */
void daNpc_Kn_c::setCollisionSword() {
    static f32 l_swordOffset[2] = {
        60.0f,
        120.0f
    };

    if (mMotionSeqMngr2.getNo() == 0x19 && mMotionSeqMngr2.getStepNo() == 0 && mMotionSeqMngr2.checkEntryNewMotion() == 0) {
        field_0x15ce = 1;
    } else {
        field_0x15ce = 0;
    }

    for (s32 i = 0; i < 2; i++) {
        if (field_0xe2c == 0) {
            if (field_0x15ce && mpMorf[0]->getFrame() >= 30.0f && mpMorf[0]->getFrame() <= 40.0f) {
                    cXyz pos(l_swordOffset[i], 0.0f, 0.0f);
                    mSphCc[i].OnAtSetBit();
                    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0xd));
                    mDoMtx_stack_c::scaleM(scale);
                    mDoMtx_stack_c::multVec(&pos,&pos);
                    mSphCc[i].SetC(pos);
                    mSphCc[i].SetR(30.0f);
                    dComIfG_Ccsp()->Set(&mSphCc[i]);
            } else {
                mSphCc[i].OffAtSetBit();
            }
        }

        mSphCc[i].ClrAtHit();
    }
}

/* 80A2CB30-80A2CBEC 002210 00BC+00 9/9 0/0 0/0 .text            checkCollisionSword__10daNpc_Kn_cFv
 */
BOOL daNpc_Kn_c::checkCollisionSword() {
    int iVar2 = false;  // Status variable
    
    // Main collision check loop
    for (int iVar3 = 0; iVar3 < 2; iVar3++) {
        // Check shield hit
        
        if (mSphCc[iVar3].ChkAtShieldHit()) {
            iVar2 = 1;
            break;
        }
        
        // Check regular hit
        if (mSphCc[iVar3].ChkAtHit()) {
            iVar2 = 2;
        }
    }
    
    // If shield was hit, clear hit
    if (iVar2 == 1) {
        for (int iVar3 = 0; iVar3 < 2; iVar3++) {
            mSphCc[iVar3].ClrAtHit();
        }
    }
    
    return iVar2 == 2;
}

/* 80A2CBEC-80A2CC24 0022CC 0038+00 1/1 0/0 0/0 .text            setCollisionTeach03__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach03() {
    mCylCc.SetTgType(-1);
    mCylCc.SetTgSPrm(19);
    mCylCc.OffTgNoAtHitInfSet();
    mCylCc.OnTgNoConHit();
    mCylCc.OnCoSetBit();
}

/* 80A2CC24-80A2CD00 002304 00DC+00 1/1 0/0 0/0 .text            setCollisionTeach04__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach04() {
    switch (mActionMode) {
    case 9:
        if (dComIfGp_event_runCheck() && eventInfo.checkCommandDemoAccrpt()) {
            mCylCc.OffTgSetBit();
            mCylCc.OffCoSetBit();
        } else {
            mCylCc.SetTgType(-1);
            mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
            mCylCc.SetTgSPrm(19);
            mCylCc.OnTgShield();
            mCylCc.OffTgNoAtHitInfSet();
            mCylCc.OnTgNoConHit();
        }
        break;
    case 11:
    case 10:
       mCylCc.SetTgType(-1);
       mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_1);
       mCylCc.SetTgSPrm(19);
       mCylCc.OffTgShield();
       mCylCc.OffTgNoAtHitInfSet();
       mCylCc.OnTgNoConHit();
    }
}

/* 80A2CD00-80A2CD38 0023E0 0038+00 3/3 0/0 0/0 .text            setCollisionTeach05__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach05() {
    mCylCc.SetTgType(-1);
    mCylCc.SetTgSPrm(19);
    mCylCc.OffTgNoAtHitInfSet();
    mCylCc.OnTgNoConHit();
    mCylCc.OnCoSetBit();
}

/* 80A2CD38-80A2CD58 002418 0020+00 1/1 0/0 0/0 .text            setCollisionTeach06__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach06() {
    setCollisionTeach05();
}

/* 80A2CD58-80A2CD78 002438 0020+00 1/1 0/0 0/0 .text            setCollisionTeach07__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach07() {
    setCollisionTeach05();
}

/* 80A2CD78-80A2CD80 002458 0008+00 1/1 0/0 0/0 .text            drawDbgInfo__10daNpc_Kn_cFv */
int daNpc_Kn_c::drawDbgInfo() {
    return false;
}

/* 80A2CD80-80A2CF9C 002460 021C+00 1/1 0/0 0/0 .text            drawOtherMdl__10daNpc_Kn_cFv */
void daNpc_Kn_c::drawOtherMdl() {
    J3DModel* model = mpMorf[1]->getModel();

    mTevStr.TevColor.r = 0;
    mTevStr.TevColor.g = 0;
    mTevStr.TevColor.b = 0;
    mTevStr.TevColor.a = 0;

    if (field_0xde0 && mTimer) {
        f32 fval = (f32)mTimer / (f32)field_0xde0;

        if (cM3d_IsZero(fval) == 0) {
            mTevStr.TevColor.r = fval * 20.0f;
        }
    }

    g_env_light.settingTevStruct(0, &current.pos, &mTevStr);
    g_env_light.setLightTevColorType_MAJI(model->getModelData(), &mTevStr);
    mpMorf[1]->entryDL();

    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &current.pos,
        daNpc_Kn_Param_c::m.common.real_shadow_size, 20.0f, current.pos.y, mGroundHeight,
        mGndChk, &mTevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

    if (field_0x15cd && mpModel) {
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(22));
        mDoMtx_stack_c::scaleM(scale);
        mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
        g_env_light.setLightTevColorType_MAJI(mpModel, &mTevStr);
        J3DModelData* modelData2 = mpModel->getModelData();

        if (field_0x15a4 & 0x40) {
            field_0x1588.entry(modelData2);
        }

        mDoExt_modelUpdateDL(mpModel);

        if (field_0x15a4 & 0x40) {
            field_0x1588.remove(modelData2);
        }

        dComIfGd_addRealShadow(mShadowKey,mpModel);
    }
}

/* 80A2CF9C-80A2D060 00267C 00C4+00 1/1 0/0 0/0 .text            drawGhost__10daNpc_Kn_cFv */
void daNpc_Kn_c::drawGhost() {
    J3DModel* model = mpMorf[0]->getModel();
    g_env_light.settingTevStruct(7, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);

    if (dKy_darkworld_check()) {
        dComIfGd_setListDark();
        mInvisModel.entryDL(0);
        dComIfGd_setList();
    } else {
        mInvisModel.entryDL(0);
    }
}

/* 80A2D060-80A2D198 002740 0138+00 1/0 0/0 0/0 .text afterSetMotionAnm__10daNpc_Kn_cFiifi */
bool daNpc_Kn_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    field_0x15a4 &= 0xfffffc30;
    J3DAnmTransform* anm_tranform = NULL;
    int i = 0;

    switch (param_0) {
    case 30:
        i = 1;
        break;
    case 31:
        i = 2;
        break;
    case 32:
        i = 3;
        break;
    case 33:
        i = 4;
        break;
    }

    if (l_podBckData[i][0] != -1) {
        anm_tranform = static_cast<J3DAnmTransform*>(getTrnsfrmKeyAnmP(l_resNameList[l_podBckData[i][1]], l_podBckData[i][0]));
    }

    if (anm_tranform && field_0x1588.init(anm_tranform, 1, param_1, 1.0f, 0, -1, true)) {
        field_0x15a4 |= 0x41;
        return true;
    } else {
        if (anm_tranform == NULL && l_podBckData[i][0] != -1) {
            return false;
        } else {
            return true;
        }
    }
}

/* 80A2D198-80A2D3A4 002878 020C+00 2/1 0/0 0/0 .text            selectAction__10daNpc_Kn_cFv */
int daNpc_Kn_c::selectAction() {
    mpTeachAction = NULL;

    if (daNpc_Kn_Param_c::m.common.debug_mode_ON) {
        mpTeachAction = &daNpc_Kn_c::test;
    } else {
        switch (mType) {
        case 0:
            teach01_selectAction();
            break;
        case 1:
            if (mActionMode < 4) {
                teach01_selectAction();
            } else {
                teach02_selectAction();
            }
            break;
        case 2:
            if (mActionMode < 8) {
                teach02_selectAction();
            } else {
                teach03_selectAction();
            }
            break;
        case 3:
            if (mActionMode == 4) {
                mpTeachAction = &daNpc_Kn_c::teach02_start;
            } else if (mActionMode < 9) {
                teach03_selectAction();
            } else {
                teach04_selectAction();
            }
            break;
        case 4:
            if (mActionMode == 4) {
                mpTeachAction = &daNpc_Kn_c::teach02_start;
            } else if (mActionMode < 12) {
                teach04_selectAction();
            } else {
                teach05_selectAction();
            }
            break;
        case 5:
            if (mActionMode == 4) {
                mpTeachAction = &daNpc_Kn_c::teach02_start;
            } else if (mActionMode < 13) {
                teach05_selectAction();
            } else {
                teach06_selectAction();
            }
            break;
        case 6:
            if (mActionMode == 4) {
                mpTeachAction = &daNpc_Kn_c::teach02_start;
            } else if (mActionMode < 19) {
                teach06_selectAction();
            } else {
                teach07_selectAction();
            }
            break;
        default:
            mpTeachAction = &daNpc_Kn_c::wait;
        }
    }

    return 1;
}

/* 80A2D3A4-80A2D3FC 002A84 0058+00 1/1 0/0 0/0 .text teach03_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach03_selectAction() {
    switch(mActionMode) {
    case 8:
        mpTeachAction = &daNpc_Kn_c::teach03_attackWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D3FC-80A2D4A0 002ADC 00A4+00 1/1 0/0 0/0 .text teach04_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach04_selectAction() {
    switch (mActionMode) {
    case 9:
        mpTeachAction = &daNpc_Kn_c::teach04_headBreakWait;
        return;
    case 10:
        mpTeachAction = &daNpc_Kn_c::teach04_attackWait;
        return;
    case 11: 
        mpTeachAction = &daNpc_Kn_c::teach04_finishWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D4A0-80A2D4F8 002B80 0058+00 1/1 0/0 0/0 .text teach05_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach05_selectAction() {
    switch (mActionMode) {
    case 12:
        mpTeachAction = &daNpc_Kn_c::teach05_surpriseAttackWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D4F8-80A2D600 002BD8 0108+00 1/1 0/0 0/0 .text teach06_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach06_selectAction() {
    switch (mActionMode) {
    case 13:
        mpTeachAction = &daNpc_Kn_c::teach06_superJumpedDivide;
        return;
    case 14:
        mpTeachAction = &daNpc_Kn_c::teach06_divideMove;
        return;
    case 15:
        mpTeachAction = &daNpc_Kn_c::teach06_superJumpWaitDivide;
        return;
    case 16:
        mpTeachAction = &daNpc_Kn_c::teach06_superJumpWait;
        return;
    case 17:
        mpTeachAction = &daNpc_Kn_c::teach06_waitDivide;
        return;
    case 18:
        mpTeachAction = &daNpc_Kn_c::teach06_warpDelete;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D600-80A2D708 002CE0 0108+00 1/1 0/0 0/0 .text teach07_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach07_selectAction() {
    switch (mActionMode) {
    case 19:
        mpTeachAction = &daNpc_Kn_c::teach07_superTurnAttackedDivide;
        return;
    case 20:
        mpTeachAction = &daNpc_Kn_c::teach07_divideMove;
        return;
    case 21:
        mpTeachAction = &daNpc_Kn_c::teach07_superTurnAttackWaitDivide;
        return;
    case 22:
        mpTeachAction = &daNpc_Kn_c::teach07_superTurnAttackWait;
        return;
    case 23:
        mpTeachAction = &daNpc_Kn_c::teach07_waitDivide;
        return;
    case 24:
        mpTeachAction = &daNpc_Kn_c::teach07_warpDelete;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D708-80A2D734 002DE8 002C+00 1/1 0/0 0/0 .text
 * chkAction__10daNpc_Kn_cFM10daNpc_Kn_cFPCvPvPv_i              */
BOOL daNpc_Kn_c::chkAction(daNpc_Kn_c::actionFunc i_action) {
    return mpActionFunc == i_action;
}

/* 80A2D734-80A2D7DC 002E14 00A8+00 2/2 0/0 0/0 .text
 * setAction__10daNpc_Kn_cFM10daNpc_Kn_cFPCvPvPv_i              */
BOOL daNpc_Kn_c::setAction(daNpc_Kn_c::actionFunc i_action) {
    field_0xe2a = 3;
    if (mpActionFunc) {
        (this->*mpActionFunc)(0);
    }

    field_0xe2a = 0;
    mpActionFunc = i_action;

    if (mpActionFunc) {
        (this->*mpActionFunc)(0);
    }

    return TRUE;
}

/* 80A2D7DC-80A2D9C4 002EBC 01E8+00 8/0 0/0 0/0 .text            wait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::wait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0,-1.0f,0,0);
        field_0xe2a = 2;
    case 2:
        if (field_0xABD == 0 && srchPlayerActor()) {
            mJntAnm.lookPlayer(0);
        } else {
            if (home.angle.y != mTargetAngle.y && step(home.angle.y, 1, 0x20, 0x14, 0) != 0) {
                field_0xe2a = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            }
            mJntAnm.lookNone(0);
        };
    case 3:
    default:
        return 1;
    }
}

/* 80A2D9C4-80A2DB94 0030A4 01D0+00 2/0 0/0 0/0 .text            talk__10daNpc_Kn_cFPv */
int daNpc_Kn_c::talk(void* param_0) {
    int bVar = 0;

    switch(field_0xe2a) {
    case 0:
    case 1:
        initTalk(mFlowNodeNo, 0);
        field_0xe2a = 2;
    case 2:
        if (field_0xABD == 0) {
            mJntAnm.lookPlayer(0);

            if (mTargetAngle.y == fopAcM_searchPlayerAngleY(this)) {
                bVar = 1;
            } else {
                if (step(fopAcM_searchPlayerAngleY(this), 1, 0x20, 0x14, 0) != 0) {
                    bVar = true;
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0,-1.0f,0,0);
                }
            }
        } else {
            bVar = 1;
        }

        if (bVar != 0 && talkProc(0,0,NULL,0)) {
            mActorMngr1.entry(daPy_getPlayerActorClass());
            dComIfGp_event_reset();
            field_0xe2a = 3;
        };
    
    case 3:
    default:
        return 0;
    }
}

/* 80A2DB94-80A2DCB4 003274 0120+00 1/0 0/0 0/0 .text            test__10daNpc_Kn_cFPv */
int daNpc_Kn_c::test(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        speedF = 0.0f;
        speed.setall(0.0f);
        field_0xe2a = 2;
    case 2:
        mMotionSeqMngr1.setNo(daNpc_Kn_Param_c::m.common.face_expression,-1.0f,0,0);
        mMotionSeqMngr2.setNo(daNpc_Kn_Param_c::m.common.motion,-1.0f,0,0);
        mJntAnm.lookNone(0);
        attention_info.flags = 0;
    case 3:
    default:
        return 0;
    }
}

/* 80A2DCB4-80A2DD70 003394 00BC+00 7/7 0/0 0/0 .text            setSceneChange__10daNpc_Kn_cFi */
void daNpc_Kn_c::setSceneChange(int param_0) {
    for (int i = 2; i <= 7; i++) {
        if (daNpcT_chkTmpBit(i + 0x5a)) {
            dStage_changeScene(i,0.0,0,fopAcM_GetRoomNo(this),0,-1);

            if (param_0 == 0) return;

            daNpcT_offTmpBit(i + 0x5a);
            daNpcT_onEvtBit(i + 0x1ea);
            return;
        }
    }

    dStage_changeScene(1,0.0,0,fopAcM_GetRoomNo(this),0,-1);
}

/* 80A2DD70-80A2DF84 003450 0214+00 1/0 0/0 0/0 .text ECut_noneEquipChangeTalk__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_noneEquipChangeTalk(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();
    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            mJntAnm.lookPlayer(0);
            speed.zero();
            speedF = 0.0f;
            break;
        case 10:
            field_0xdfe = 2;
            initTalk(mFlowNodeNo,NULL);
            break;
        }
    }

    switch (intP) {
    case 0:
        if (mTargetAngle.y != fopAcM_searchPlayerAngleY(this)) {
            if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                ret = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            }
        } else {
            ret = 1;
        }
        break;
    case 10:
        intP = talkProc(NULL,0,NULL,0);
        if (intP != 0) {
            ret = 1;
        }
        break;
    default:
        ret = 1;
    }

    return ret;
}

/* 80A2DF84-80A2E26C 003664 02E8+00 1/0 0/0 0/0 .text
 * ECut_noneEquipChangeTalkStand__10daNpc_Kn_cFi                */
int daNpc_Kn_c::ECut_noneEquipChangeTalkStand(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();
    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            mJntAnm.lookNone(0);
            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(22,-1.0f,0,0);
            speed.zero();
            speedF = 0.0f;
            break;
        case 10:
            mJntAnm.lookPlayer(0);
            break;
        case 20:
            field_0xdfe = 2;
            initTalk(mFlowNodeNo,NULL);
            break;
        }
    }

    switch (intP) {
    case 0:
        if (mMotionSeqMngr2.getNo() != 22) {
            break;
        }

        if (mMotionSeqMngr2.getStepNo() > 0) {
            ret = 1;
        }

        break;
    case 10:
        if (mTargetAngle.y != fopAcM_searchPlayerAngleY(this)) {
            if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                ret = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            }
        } else {
            ret = 1;
        }
        break;
    case 20:
        intP = talkProc(NULL,0,NULL,0);
        if (intP != 0) {
            ret = 1;
        }
        break;
    default:
        ret = 1;
    }

    return ret;
}

/* 80A2E26C-80A2E528 00394C 02BC+00 1/0 0/0 0/0 .text ECut_largeDamageTalk__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_largeDamageTalk(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();
    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            mJntAnm.lookPlayer(0);
            speed.zero();
            speedF = 0.0f;
            break;
        case 10:
            break;
        case 20:
            field_0xdfe = 2;
            initTalk(mFlowNodeNo,NULL);
            break;
        }
    }

    switch (intP) {
    case 0:
        if (!daPy_getPlayerActorClass()->checkPlayerFly()) {
           ret = 1;
        }

        daPy_getPlayerActorClass()->onLargeDamageUpStop();
        break;
    case 10:
        if (mTargetAngle.y != fopAcM_searchPlayerAngleY(this)) {
            if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                ret = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            } 

        } else {
            ret = 1;
        }

        daPy_getPlayerActorClass()->onLargeDamageUpStop();
        
        break;
    case 20:
        intP = talkProc(NULL,0,NULL,0);
        
        if (intP != 0) {
            ret = 1;
        }
        
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this),2,0x800);
        setAngle(mTargetAngle.y);
        daPy_getPlayerActorClass()->onLargeDamageUpStop();

        break;
    default:
        ret = 1;
    }

    return ret;
}

/* 80A2E528-80A2E664 003C08 013C+00 5/0 0/0 0/0 .text            teach02_start__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach02_start(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xe2a = 2;
    case 2:
        mEvtIdx = 8;
        field_0xe39 = 1;
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this),2,0x800);
        setAngle(mTargetAngle.y);
    case 3:
    default:
        return 1;
    }
}

/* 80A2E664-80A2EC04 003D44 05A0+00 1/0 0/0 0/0 .text            teach03_attackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach03_attackWait(void* param_0) {
    switch (field_0xe2a) {
        case 0:
        case 1: {
            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(9,-1.0f,0,0);
            mJntAnm.lookPlayer(0);
            field_0xdec = daNpc_Kn_Param_c::m.field_0x8e;
            mTargetPos = current.pos;
            field_0x15bc = 0;
            field_0x15d0 = cLib_getRndValue(daNpc_Kn_Param_c::m.field_0xac,
                                            daNpc_Kn_Param_c::m.field_0xae);
            speedF = 0;
            speed.zero();
            field_0x15cc = 0;
            field_0xe2a = 2;
        }
        // fallthrough
        case 2: {
            mCcStts.Move();

            int cut_type = daPy_getPlayerActorClass()->getCutType();
            if (cut_type == daPy_py_c::CUT_TYPE_TWIRL) { // backslice
                mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_1);
                mCylCc.OffTgShield();
            } else {
                mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
                mCylCc.OnTgShield();
            }

            if (mCylCc.ChkTgHit()) {
                if (cut_type == daPy_py_c::CUT_TYPE_TWIRL) {
                    if (mType == 2) {
                            mEvtIdx = 14;
                        } else if (mType == 3) {
                            mEvtIdx = 15;
                        }

                        s16 angle = fopAcM_searchPlayerAngleY(this) - current.angle.y;
                        int absAngle = angle < 0 ? -angle : angle;

                        if (absAngle < 0x4000) {
                            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                            mMotionSeqMngr2.setNo(0x12,-1.0f,0,0);

                            setAngle(fopAcM_searchPlayerAngleY(this));
                            speedF = -daNpc_Kn_Param_c::m.field_0xa0;
                            mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L,-1);
                        } else {
                            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                            mMotionSeqMngr2.setNo(0xe,-1.0f,0,0);

                            setAngle(fopAcM_searchPlayerAngleY(this) + 0x8000);
                            speedF = daNpc_Kn_Param_c::m.field_0xa0;
                            mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L,-1);
                        }

                        mJntAnm.lookNone(0);
                        speed.y = daNpc_Kn_Param_c::m.field_0xa4;
                        mCreature.startCollisionSE(Z2SE_HIT_SWORD, 0x1f);
                } else {
                    setAngle(fopAcM_searchPlayerAngleY(this));
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0x1b,-1.0f,1,0);

                    if (cut_type == daPy_py_c::CUT_TYPE_GUARD_ATTACK) {
                        mCreature.startCollisionSE(Z2SE_HIT_SHIELD_ATTACK,0x28);
                    } else {
                        mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x28);
                    }
                }
            } else {

                if (daPy_getPlayerActorClass()->checkSideStep()) {
                    field_0x15cc = 1;
                }

                if (!cLib_calcTimer(&field_0xdec) || checkCollisionSword()) {
                    mTargetPos = current.pos;
                    field_0x15bc = 0;

                    BOOL truth = FALSE;
                    if (dComIfGp_getAttention()->LockonTruth()) {
                        truth = TRUE;
                    }

                    if (checkCollisionSword()) {
                        mEvtIdx = 4;
                    } else {
                        mEvtIdx = 1;
                    }

                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0,-1.0f,1,0);

                    if (field_0x15cc) {
                        mFlowNodeNo = 0x2e4;
                    } else {
                        if (truth) {
                            mFlowNodeNo = 0x2e2;
                        } else {
                            mFlowNodeNo = 0x2e3;
                        }
                    }
                } else {
                    calcSwordAttackMove(0);
                }
            }
        }
        // fallthrough
        case 3:
        default: {
            return 1;
        }
    }
}

/* 80A2EC04-80A2EF8C 0042E4 0388+00 1/0 0/0 0/0 .text            teach04_attackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach04_attackWait(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(9,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x8e;
        mTargetPos = current.pos;
        field_0x15bc = 0;
        field_0x15d0 = cLib_getRndValue(daNpc_Kn_Param_c::m.field_0xac,
                                        daNpc_Kn_Param_c::m.field_0xae);
        speedF = 0;
        speed.zero();
        field_0xe2a = 2;
    case 2:
          calcSlip();
          mCcStts.Move();
          if (mCylCc.ChkTgShieldHit()) {
            u8 cut_type = daPy_getPlayerActorClass()->getCutType();

            if (cut_type == daPy_py_c::CUT_TYPE_GUARD_ATTACK) {
                s16 angle = cLib_targetAngleY(&mCylCc.GetTgHitAc()->current.pos, &current.pos);
                cXyz pos(0.0f,0.0f, daNpc_Kn_Param_c::m.field_0x94);
                mDoMtx_stack_c::YrotS(angle);
                mDoMtx_stack_c::multVec(&pos, &mTargetPos);
                mTargetPos += current.pos;
                field_0x15bc = 1;
                mCylCc.ClrTgHit();
                mCreature.startCollisionSE(Z2SE_HIT_SHIELD_ATTACK, 0x28);
                mActionMode = 10;
                break;
            }
        }

        if (cLib_calcTimer(&field_0xdec) == 0 || checkCollisionSword()) {
            BOOL truth = FALSE;
            
            if (dComIfGp_getAttention()->LockonTruth()) {
                truth = TRUE;
            }

            if (checkCollisionSword()) {
                mEvtIdx = 4;
            } else {
                mEvtIdx = 1;
            }

            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(0,-1.0f,1,0);

            if (truth) {
                mFlowNodeNo = 0x2f3;
            } else {
                mFlowNodeNo = 0x2f4;
            }

        } else {
            if (mCylCc.ChkTgHit()) {
                if (mCylCc.GetTgHitObj()->ChkAtType(AT_TYPE_SHIELD_ATTACK) == 0) {
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0x1b,-1.0f,1,0);
                    mCreature.startCollisionSE(Z2SE_HIT_SWORD, 0x28);
                    break;
                }
            }
            calcSwordAttackMove(1);
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A2EF8C-80A2F24C 00466C 02C0+00 1/0 0/0 0/0 .text teach04_headBreakWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach04_headBreakWait(void* param_0) {
    switch (field_0xe2a) {
        case 0:
        case 1: {
            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(0xb,-1.0f,1,0);
            mJntAnm.lookNone(0);
            field_0xdec = daNpc_Kn_Param_c::m.field_0x90;
            onHeadLockFlg();
            field_0xe2a = 2;
        }
        // fallthrough
        case 2: {
            calcSlip();
            field_0x15c0.set(10.0f,-10.0f,0.0f);
            int head_joint_no = getHeadJointNo();
            mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(head_joint_no));
            mDoMtx_stack_c::multVec(&field_0x15c0, &field_0x15c0);
            setHeadLockPos(&field_0x15c0);
            mCcStts.Move();

            if (mCylCc.ChkTgHit() && daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_HEAD_JUMP) {
                s16 angle = cLib_targetAngleY(&daPy_getPlayerActorClass()->current.pos, &attention_info.position);
                cXyz pos(0.0f,0.0f,daNpc_Kn_Param_c::m.field_0x94);
                mDoMtx_stack_c::YrotS(angle);
                mDoMtx_stack_c::multVec(&pos,&mTargetPos);
                mTargetPos += current.pos;
                field_0x15bc = 1;
                mCylCc.ClrTgHit();
                mCreature.startCollisionSE(Z2SE_HIT_SWORD, 0x1e);
                mActionMode = 11;
                break;
            } else {
                if (!cLib_calcTimer(&field_0xdec)) {
                    mEvtIdx = 1;
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0,-1.0f,1,0);
                    mFlowNodeNo = 0x2f2;
                    mActionMode = 9;
                }
            }
            break;
        }
        // fallthrough
        case 3:
            offHeadLockFlg();
        // fallthrough
        default:
            break;
    }

    return 1;
}

/* 80A2F24C-80A2F600 00492C 03B4+00 1/0 0/0 0/0 .text            teach04_finishWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach04_finishWait(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0xb,-1.0f,1,0);
        mJntAnm.lookNone(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x90;
        field_0xe2a = 2;
    case 2:
        calcSlip();
        mCcStts.Move();

        if (mCylCc.ChkTgHit() && daPy_getPlayerActorClass()->getCutType() != daPy_py_c::CUT_TYPE_GUARD_ATTACK) {
            if (mType == 3) {
                mEvtIdx = 16;
            } else {
                mEvtIdx = 17;
            }

            cXyz* pos_p = mCylCc.GetTgHitPosP();
            s16 angle = (pos_p ? cLib_targetAngleY(&current.pos, pos_p) : fopAcM_searchPlayerAngleY(this)) - current.angle.y;
            int absAngle = angle < 0 ? -angle : angle;
            

            if (absAngle < 0x4000) {
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0x12,-1.0f,0,0);

                setAngle(fopAcM_searchPlayerAngleY(this));
                speedF = -daNpc_Kn_Param_c::m.field_0xa0;
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L, -1);
            } else {
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0xe,-1.0f,0,0);
                setAngle(fopAcM_searchPlayerAngleY(this) + 0x8000);
                speedF = daNpc_Kn_Param_c::m.field_0xa0;
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L, -1);
            }
            mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x1f);
            mJntAnm.lookNone(0);
            speed.y = daNpc_Kn_Param_c::m.field_0xa4;
            break;
        } else {
            if (!cLib_calcTimer(&field_0xdec)) {
                mEvtIdx = 1;
                mFlowNodeNo = 0x306;
                mActionMode = 9;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,1,0);
            }
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A2F600-80A2FBB4 004CE0 05B4+00 1/0 0/0 0/0 .text teach05_surpriseAttackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach05_surpriseAttackWait(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(9,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x8e;
        mTargetPos = current.pos;
        field_0x15bc = 0;
        field_0x15d0 = cLib_getRndValue(daNpc_Kn_Param_c::m.field_0xac,
                                        daNpc_Kn_Param_c::m.field_0xae);
        speedF = 0.0f;
        speed.zero();
        field_0xe2a = 2;
    case 2:
        calcSlip();
        mCcStts.Move();

        int cut_type = daPy_getPlayerActorClass()->getCutType();

        if (cut_type == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B || cut_type == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A) {
            mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_1);
            mCylCc.OffTgShield();
        } else {
            mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
            mCylCc.OnTgShield();
        }

        if (mCylCc.ChkTgHit()){
            if (cut_type == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B || cut_type == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A) {
                if (mType == 4) {
                    mEvtIdx = 0x13;
                } else {
                    mEvtIdx = 0x14;
                }

                s16 angle = fopAcM_searchPlayerAngleY(this) - current.angle.y;
                int absAngle = angle < 0 ? -angle : angle;

                if (absAngle < 0x4000) {
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0x12,-1.0f,0,0);
                    setAngle(fopAcM_searchPlayerAngleY(this));

                    speedF = -daNpc_Kn_Param_c::m.field_0xa0;
                    mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L,-1);
                } else {
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(14,-1.0f,0,0);
                    setAngle(fopAcM_searchPlayerAngleY(this) + 0x8000);

                    speedF = daNpc_Kn_Param_c::m.field_0xa0;
                    mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L,-1);
                }

                mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x1f);
                mJntAnm.lookNone(0);
                speed.y = daNpc_Kn_Param_c::m.field_0xa4;
            } else {
                setAngle(fopAcM_searchPlayerAngleY(this));
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0x1b,-1.0f,1,0);
            
                if (cut_type == daPy_py_c::CUT_TYPE_GUARD_ATTACK) {
                    mCreature.startCollisionSE(Z2SE_HIT_SHIELD_ATTACK,0x28);
                } else {
                    mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x28);
                }
                break;
            }

        } else {
            if (daPy_getPlayerActorClass()->checkSideStep()) {
                field_0x15cc = 1;
            }

            calcSwordAttackMove(1);

            if (cLib_calcTimer(&field_0xdec) == 0 || checkCollisionSword()) {
                mTargetPos = current.pos;
                field_0x15bc = 0;
            
                BOOL check = FALSE;
                
                if (dComIfGp_getAttention()->LockonTruth()) {
                    check = TRUE;
                }

                if (checkCollisionSword()) {
                    mEvtIdx = 4;
                } else {
                    mEvtIdx = 1;
                }

                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,1,0);
            
                if (check != FALSE) {
                    mFlowNodeNo = 0x2ec;
                    
                } else {
                    if (!daPy_getPlayerActorClass()->checkItemSwordEquip()) {
                        mFlowNodeNo = 0x2ea;
                    } else {
                        mFlowNodeNo = 0x2eb;
                    }
                }
            }
        }

    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A2FBB4-80A2FC14 005294 0060+00 1/1 0/0 0/0 .text            s_sub6__FPvPv */
static void* s_sub6(void* i_this, void* param_1) {
    if (fopAcM_IsActor(i_this) && fopAcM_GetName(i_this) == PROC_NPC_KN && i_this != param_1) {
        static_cast<daNpc_Kn_c*>(i_this)->setActionMode(18);
    }
    
    return 0;
}

/* 80A2FC14-80A2FC80 0052F4 006C+00 2/2 0/0 0/0 .text            s_subEnd6__FPvPv */
static void* s_subEnd6(void* i_this, void* param_1) {
    if (fopAcM_IsActor(i_this) && fopAcM_GetName(i_this) == PROC_NPC_KN && i_this != param_1 && static_cast<daNpc_Kn_c*>(i_this)->getActionMode() != 17) {
        static_cast<daNpc_Kn_c*>(i_this)->setActionMode(17);
    }
    
    return 0;
}

/* 80A2FC80-80A30398 005360 0718+00 1/0 0/0 0/0 .text teach06_superJumpWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach06_superJumpWait(void* param_0) {
    // NONMATCHING
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(9,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x90;
        mTargetPos = current.pos;
        field_0x15bc = 0;
        field_0x15d0 = cLib_getRndValue(daNpc_Kn_Param_c::m.field_0xac,
                                        daNpc_Kn_Param_c::m.field_0xae);
        speedF = 0.0f;
        speed.zero();
        field_0x15bd = 0;
        field_0xe2a = 2;
    case 2:
        calcSlip();
        mCcStts.Move();

        int cut_type = daPy_getPlayerActorClass()->getCutType();

        if (cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP_INIT || cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP || cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP_FINISH) {
            mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_1);
            mCylCc.OffTgShield();
        } else {
            mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
            mCylCc.OnTgShield();
        }

        if (mCylCc.ChkTgHit()) {
            if (field_0x15bd == 2 && cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP || cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP_FINISH) {
                mEvtIdx = 22;
                fpcM_Search(s_subEnd6,this);
            } else {
                calcSwordAttackMove(1);
                if (field_0x15bd == 2 || cLib_calcTimer(&field_0xdec) && checkCollisionSword() && field_0x15bd != 1) {
                    if (daPy_getPlayerActorClass()->checkDamageImpact()) {
                        BOOL check = FALSE;
                        
                        if (dComIfGp_getAttention()->LockonTruth()) {
                            check = TRUE;
                        }

                        if (daPy_getPlayerActorClass()->checkSideStep()) {
                            mFlowNodeNo = 0x2fb;
                            
                        } else {
                            if (check == FALSE) {
                                mFlowNodeNo = 0x2fc;
                            } else {
                                mFlowNodeNo = 0x2fd;
                            }
                        }
                    }
                } else {
                    mTargetPos = current.pos;
                    field_0x15bc = 9;

                    BOOL check = FALSE;
                        
                    if (dComIfGp_getAttention()->LockonTruth()) {
                        check = TRUE;
                    }

                    if (checkCollisionSword() && field_0x15bd == 1) {
                        mEvtIdx = 4;
                    } else {
                        mEvtIdx = 1;
                    }

                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0,-1.0f,1,0);
                    fpcM_Search(s_sub6,this);
                }
            }
        } else if (cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP || cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP_FINISH) {
            if (mType == 5) {
                mEvtIdx = 0x15;
            } else {
                mEvtIdx = 0x17;
            }

            s16 angle = fopAcM_searchPlayerAngleY(this) - current.angle.y;
            int absAngle = angle < 0 ? -angle : angle;

            if (absAngle < 0x4000) {
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0x12,-1.0f,0,0);

                setAngle(fopAcM_searchPlayerAngleY(this));
                speedF = -daNpc_Kn_Param_c::m.field_0xa0;
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L, -1);
            } else {
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0xe,-1.0f,0,0);
                setAngle(fopAcM_searchPlayerAngleY(this) + 0x8000);
                speedF = daNpc_Kn_Param_c::m.field_0xa0;
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L, -1);
            }
            mJntAnm.lookNone(0);
            speed.y = daNpc_Kn_Param_c::m.field_0xa4;
            mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x1f);
            break;

        } else if (cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP_INIT) {
            fopAc_ac_c* hit_ac = mCylCc.GetTgHitAc();
            s16 angle = cLib_targetAngleY(&hit_ac->current.pos, &current.pos);
            cXyz pos(0.0f,0.0f,daNpc_Kn_Param_c::m.common.face_expression);
            mDoMtx_stack_c::YrotS(angle);
            mDoMtx_stack_c::multVec(&pos, &pos);
        }
    //             iVar2 = ::dCcD_GObjInf::GetTgHitAc((dCcD_GObjInf *)(this + 0x122c));
    // if (iVar2 == 0) {
    //   uVar4 = JUTAssertion::getSDevice();
    //   JUTAssertion::showAssert(uVar4,d_a_npc_kn::@126361,0x10be,d_a_npc_kn::@127478);
    //   m_Do_printf::OSPanic(d_a_npc_kn::@126361,0x10be,&d_a_npc_kn::@124961);
    // }
    // sVar8 = SComponentD::(iVar2 + 0x4d4,this + 0x4d4);
    // ::cXyz::cXyz(&cStack_2c,0.0,0.0,*(float *)(*(int *)(this + 0x1228) + 0x9c));
    // mDoMtx_stack_c::YrotS(sVar8);
    // mDoMtx_stack_c::multVec(&cStack_2c,(cXyz *)(this + 0x1600));
    // ::cXyz::operator_+=((cXyz *)(this + 0x1600),(Vec *)(this + 0x4d4));
    // this[0x160c] = (daNpc_Kn_c)0x1;
    // (**(code **)(*(int *)(this + 0x1268) + 0x24))();
    // ::daNpcT_MotionSeqMngr_c::setNo((daNpcT_MotionSeqMngr_c *)(this + 0xbd4),1,-1.0,0,0);
    // ::daNpcT_MotionSeqMngr_c::setNo((daNpcT_MotionSeqMngr_c *)(this + 0xbf8),0x1e,-1.0,1,0);
    // (**(code **)(*(int *)(this + 0x5cc) + 0x2c))(this + 0x5cc,0x40000,0x1e);
    //     } else {

    //     }
        
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A30398-80A305A8 005A78 0210+00 1/0 0/0 0/0 .text            teach06_divideMove__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_divideMove(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(9,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        cXyz pos(0.0f,0.0f,180.0f);

        s16 angle;
        if (mDivideNo == 1) {
            angle = home.angle.y - 0x1555;
        } else {
            angle = home.angle.y + 0x1555;
        }

        mDoMtx_stack_c::transS(home.pos);
        mDoMtx_stack_c::YrotM(angle);
        mDoMtx_stack_c::multVec(&pos,&pos);
        mTargetPos = pos;
        field_0xe2a = 2;
    case 2:
        cXyz pos2(current.pos);
        cLib_chasePos(&pos2, mTargetPos, 6.0f);
        setPos(pos2);
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this), 2, 0x800);
        setAngle(mTargetAngle.y);
        if (!dComIfGp_event_runCheck()) {
            mActionMode = 15;
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A305A8-80A30708 005C88 0160+00 1/0 0/0 0/0 .text            teach06_waitDivide__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_waitDivide(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        speedF = 0.0f;
        speed.zero();
        field_0xe2a = 2;
        break;
    case 2:
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this), 2, 0x800);
        setAngle(mTargetAngle.y);
        if (!dComIfGp_event_runCheck()) {
            mActionMode = 15;
        }
    case 3:
    default:
        break;
    }

    return 1;
}

// FIXME: Remove once teach06_superJump functions get decompiled.
f32 dummy_lits_8270_8271(int sel) {
    switch (sel) {
        case 0: return 13.0f;
        default: return 14.0f;
    }
}

/* 80A30708-80A30D44 005DE8 063C+00 1/0 0/0 0/0 .text teach06_superJumpWaitDivide__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_superJumpWaitDivide(void* param_0) {
    // NONMATCHING
}

/* 80A30D44-80A30EDC 006424 0198+00 1/0 0/0 0/0 .text teach06_superJumpedDivide__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_superJumpedDivide(void* param_0) {
    // NONMATCHING
}

/* 80A30EDC-80A30F5C 0065BC 0080+00 1/0 0/0 0/0 .text            teach06_warpDelete__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_warpDelete(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        field_0x170c = 1;
        field_0xe2a = 2;
    case 2:
        field_0x170c = 1;
        ctrlWarp();
        if (this->field_0x170c == 2) {
            fopAcM_delete(this);
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A30F5C-80A30FBC 00663C 0060+00 1/1 0/0 0/0 .text            s_sub7__FPvPv */
static void* s_sub7(void* i_this, void* param_1) {
    if (fopAcM_IsActor(i_this) && fopAcM_GetName(i_this) == PROC_NPC_KN && i_this != param_1) {
        static_cast<daNpc_Kn_c*>(i_this)->setActionMode(24);
    }
    
    return 0;
}

/* 80A30FBC-80A31028 00669C 006C+00 2/2 0/0 0/0 .text            s_subEnd7__FPvPv */
static void* s_subEnd7(void* i_this, void* param_1) {
    if (fopAcM_IsActor(i_this) && fopAcM_GetName(i_this) == PROC_NPC_KN && i_this != param_1 && static_cast<daNpc_Kn_c*>(i_this)->getActionMode() != 23) {
        static_cast<daNpc_Kn_c*>(i_this)->setActionMode(23);
    }
    
    return 0;
}

/* 80A31028-80A315D0 006708 05A8+00 1/0 0/0 0/0 .text teach07_superTurnAttackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach07_superTurnAttackWait(void* param_0) {
    // NONMATCHING
}

/* 80A315D0-80A317F8 006CB0 0228+00 1/0 0/0 0/0 .text            teach07_divideMove__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach07_divideMove(void* param_0) {
    // NONMATCHING
}

/* 80A317F8-80A31958 006ED8 0160+00 1/0 0/0 0/0 .text            teach07_waitDivide__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach07_waitDivide(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        speedF = 0.0f;
        speed.zero();
        field_0xe2a = 2;
        break;
    case 2:
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this), 2, 0x800);
        setAngle(mTargetAngle.y);
        if (!dComIfGp_event_runCheck()) {
            mActionMode = 21;
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A31958-80A31E24 007038 04CC+00 1/0 0/0 0/0 .text
 * teach07_superTurnAttackWaitDivide__10daNpc_Kn_cFPv           */
int daNpc_Kn_c::teach07_superTurnAttackWaitDivide(void* param_0) {
    // NONMATCHING
}

/* 80A31E24-80A31FBC 007504 0198+00 1/0 0/0 0/0 .text
 * teach07_superTurnAttackedDivide__10daNpc_Kn_cFPv             */
int daNpc_Kn_c::teach07_superTurnAttackedDivide(void* param_0) {
    // NONMATCHING
}

/* 80A31FBC-80A3203C 00769C 0080+00 1/0 0/0 0/0 .text            teach07_warpDelete__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach07_warpDelete(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        field_0x170c = 1;
        field_0xe2a = 2;
    case 2:
        field_0x170c = 1;
        ctrlWarp();
        if (this->field_0x170c == 2) {
            fopAcM_delete(this);
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A3203C-80A324C4 00771C 0488+00 3/0 0/0 0/0 .text            ECut_secondEncount__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_secondEncount(int i_idx) {
    // NONMATCHING - need to finish second switch under case 10
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();
    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            break;
        case 2:
            daNpc_GWolf_c* pGWolf = (daNpc_GWolf_c*)fpcM_SearchByID(parentActorID);

            if (fopAcM_GetName(pGWolf) == PROC_NPC_GWOLF) {
                pGWolf->setMotion(4,-1.0f,FALSE);
            }

            break;
        case 5:
            daNpc_GWolf_c* pProc = (daNpc_GWolf_c*)fpcM_SearchByID(parentActorID);

            if (pProc) {
                fopAcM_delete(pProc);
            };

            field_0xe2c = 0;
            break;
        case 10:
            switch (mType) {
            case 1:
                initTalk(0x2bd,0);
                break;
            case 2:
                initTalk(0x2de,0);
                break;
            case 3:
                initTalk(0x2ee,0);
                break;
            case 4:
                initTalk(0x2e6,0);
                break;
            case 5:
                initTalk(0x2f7,0);
                break;
            case 6:
                initTalk(0x2ff,0);
                break;
            }

            break;
        case 20:
            field_0xdec = 30;
            break;
        }
    }

    switch (intP) {
    case 0:
        ret = 1;
        break;
    case 2:
        ret = 1;
        break;
    case 5:
        ret = 1;
        break;
    case 10:
        if (talkProc(0,0,NULL,0)) {
            if (mFlow.getChoiceNo() == 0) {
                int local_38 = 0;

                switch (mType) {
                case 1:
                    break;
                case 2:
                    break;
                case 3:
                    break;
                case 4:
                    break;
                }
            } else {
                break;
            }
        }

        break;
    case 20:
        if (cLib_calcTimer(&field_0xdec) == 0) {
            ret = 1;

            switch (mType) {
            case 1:
                mActionMode = 2;
                break;
            case 2:
                mActionMode = 5;
                break;
            case 3:
                mActionMode = 8;
                break;
            case 4:
                mActionMode = 9;
                break;
            case 5:
                mActionMode = 12;
                break;
            case 6:
                mActionMode = 13;
                break;
            }
        }

        break;
    default:
        ret = 1;
    }

    return ret;
}

/* 80A324C4-80A32D30 007BA4 086C+00 3/0 0/0 0/0 .text ECut_thirdSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_thirdSkillExplain(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();

    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
            case 0:
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(28,-1.0f,1,0);
                mJntAnm.lookPlayer(0);
                field_0xdec = 0x1e;
                break;
            case 10:
                field_0xdfe = 2;
                initTalk(0x2df,0);
                break;
            case 20:
                Z2GetAudioMgr()->bgmStart(Z2BGM_OUGI_TRAINING,0,0);
            case 65:
                setPos(home.pos);
                setAngle(home.angle.y);
                cXyz pos(0.0f,0.0f,375.0f);
                mDoMtx_stack_c::transS(home.pos);
                mDoMtx_stack_c::YrotM(home.angle.y);
                mDoMtx_stack_c::multVec(&pos,&pos);
                cXyz pos2 = pos;
                pos2.y += 500.0f;
                
                if (fopAcM_gc_c::gndCheck(&pos2)) {
                    pos.y = fopAcM_gc_c::getGroundY();
                }

                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&pos,fopAcM_searchPlayerAngleY(this) + 0x8000,0);
                daPy_getPlayerActorClass()->onTraningCutBack();
                break;
            case 30:
                initTalk(0x2e0,0);
                break;
            case 40:
                daNpcT_offTmpBit(0xb);
                initTalk(0x2e1,0);
                break;
            case 50:
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(17,-1.0f,1,0);
                break;
            case 55:
                field_0xdec = 0x1e;
                break;
            case 60:
                initTalk(0x2e1,0);
                break;
            case 70:
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(24,-1.0f,1,0);
                mJntAnm.lookNone(0);
                break;
        }
    }

    switch (intP) {
        case 0:
            if (cLib_calcTimer(&field_0xdec) == 0) {
                if (mTargetAngle.y == fopAcM_searchPlayerAngleY(this)) {
                    ret = 1;
                    mTargetPos = current.pos;
                    field_0x15bc = 0;
                    speedF = 0.0f;
                    speed.zero();
                } else {
                
                if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0,-1.0f,0,0);
                }
                }
                
            } else {
                calcSlip();
            }

            break;
        case 6:
            if (mTargetAngle.y == fopAcM_searchPlayerAngleY(this)) {
                ret = 1;
            } else {
                if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                    ret = 1;
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0,-1.0f,0,0);
                }
                break;
            }
            ret = 1;
            break;
        case 10:
            if (talkProc(0,0,NULL,0) != 0) {
                ret = 1;
            }
            break;
        case 20:
        case 65:
            ret = 1;
            setPos(home.pos);
            setAngle(home.angle.y);
            cXyz pos(0.0f,0.0f,375.0f);
            mDoMtx_stack_c::transS(home.pos);
            mDoMtx_stack_c::YrotM(home.angle.y);
            mDoMtx_stack_c::multVec(&pos,&pos);
            cXyz pos2(pos);
            pos2.y += 500.0f;
            
            if (fopAcM_gc_c::gndCheck(&pos2)) {
                pos.y = fopAcM_gc_c::getGroundY();
            }

            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&pos,fopAcM_searchPlayerAngleY(this) + 0x8000,0);
            // daPy_getPlayerActorClass()->onTraningCutBack();
            break;
        case 30:
        case 40:
            if (talkProc(0,0,NULL,0) != 0) {
                ret = 1;
            }
            break;
        case 50:
            if (mMotionSeqMngr2.getNo() == 17) {
                if (mMotionSeqMngr2.getStepNo() >= 3) {
                    ret = 1;
                } else {
                    cXyz pos(0.0f,0.0f,0.0f);
                    s16 local_98 = 0;

                    if (mMotionSeqMngr2.getStepNo() == 0 && !(mpMorf[0]->getFrame() <= 4) && mpMorf[0]->getFrame() <= 14) {
                        pos.set(13.0f,0.0f,20.0f);

                        local_98 = cM_deg2s(-3.8f);
                    }

                    if (mMotionSeqMngr2.getStepNo() == 1) {
                        if (mpMorf[0]->getFrame() <= 10) {
                            pos.set(3.77f, 0.0f, 19.05f);
                            local_98 = cM_deg2s(-6.76f);
                        } else {
                            pos.set(-13.66f, 0.0f, 19.05f);
                            local_98 = cM_deg2s(-6.76f);
                        }
                    }

                    mDoMtx_stack_c::YrotS(home.angle.y);
                    mDoMtx_stack_c::multVec(&pos,&pos);
                    pos += current.pos;
                    setPos(pos);
                    setAngle(current.angle.y + local_98);
                }
            }
            break;
        case 60:
            if (talkProc(0,0,NULL,0) != 0) {
                ret = 1;
            }
            break;
        case 70:
            if (mMotionSeqMngr2.getNo() == 0x18 && mMotionSeqMngr2.getStepNo() > 0) {
                ret = 1;
                mActionMode = 8;
            }
            break;
        default:
            ret = 1;
    }

    return ret;

}

// FIXME: Remove once ECut_sixthSkillExplain is decompiled:
f32 dummy_lits_9982(int sel) {
    switch (sel) {
        case 0: return 700.0f;
        case 1: return 594.0f;
        case 2: return 165.0f;
        case 3: return 9.0f;
        default: return 138.64f;
    }
}

/* 80A32D30-80A33358 008410 0628+00 3/0 0/0 0/0 .text            ECut_thirdSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_thirdSkillGet(int i_idx) {
    // NONMATCHING
}

/* 80A33358-80A33D80 008A38 0A28+00 3/0 0/0 0/0 .text ECut_fourthSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_fourthSkillExplain(int i_idx) {
    // NONMATCHING
}

/* 80A33D80-80A343A8 009460 0628+00 3/0 0/0 0/0 .text            ECut_fourthSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_fourthSkillGet(int i_idx) {
    // NONMATCHING
}

/* 80A343A8-80A34DB8 009A88 0A10+00 3/0 0/0 0/0 .text ECut_fifthSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_fifthSkillExplain(int i_idx) {
    // NONMATCHING
}

/* 80A34DB8-80A353E0 00A498 0628+00 3/0 0/0 0/0 .text            ECut_fifthSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_fifthSkillGet(int i_idx) {
    // NONMATCHING
}

/* 80A353E0-80A35D88 00AAC0 09A8+00 3/0 0/0 0/0 .text ECut_sixthSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_sixthSkillExplain(int i_idx) {
    // NONMATCHING
}

/* 80A35D88-80A363C0 00B468 0638+00 3/0 0/0 0/0 .text            ECut_sixthSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_sixthSkillGet(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();

    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            daNpcT_offTmpBit(0xb);
            daNpcT_offTmpBit(0xc);
            break;
        case 4:
            mMotionSeqMngr1.setNo(1,-1.0f,0,0);

            if (mMotionSeqMngr2.getNo() == 0x13) {
                mMotionSeqMngr2.setNo(22,-1.0f,0,0);
            } else {
                mMotionSeqMngr2.setNo(16,-1.0f,0,0);
            }
            fpcM_Search(s_subEnd6,this);
            break;
        case 6:
            mJntAnm.lookNone(0);
            break;
        case 10:
            field_0xdfe = 2;
            cXyz pos(0.0f,0.0f,1000.0f);
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(cLib_targetAngleY(&current.pos,&home.pos));
            mDoMtx_stack_c::multVec(&pos,&pos);
            cXyz pos2 = pos;
            pos2.y += 500.0f;

            if (fopAcM_gc_c::gndCheck(&pos2)) {
                pos.y = fopAcM_gc_c::getGroundY();
            }

            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&pos, (s16)cLib_targetAngleY(&home.pos, &current.pos), 0);
            initTalk(0x2fe,NULL);
            break;
        case 12:
            setAngle(fopAcM_searchPlayerAngleY(this));
            break;
        case 15:
            Z2GetAudioMgr()->bgmStreamPrepare(0x2000038);
            Z2GetAudioMgr()->bgmStreamPlay();
            break;
        case 20:
            initTalk(0x2fe,0);
            break;
        case 30:
            initTalk(0x2fe,0);
        }
    }

    switch (intP) {
    case 0:
        if (speed.y <= 0.0f && mAcch.ChkGroundHit()) {
            speedF = 0.0f;
            speed.zero();

            if (mMotionSeqMngr2.getNo() == 0x12) {
                mMotionSeqMngr2.setNo(0x13, -1.0f, 0, 0);
            } else {
                mMotionSeqMngr2.setNo(15, -1.0f, 0, 0);
            }

            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            setLandingPrtcl();
            ret = 1;
        }
        break;
    case 2:
        if (mMotionSeqMngr2.getNo() == 0x13 || mMotionSeqMngr2.getNo() == 15) {
            if (mMotionSeqMngr2.getStepNo() > 0) {
                ret = 1;
            } else {
                if (mpMorf[0]->getFrame() >= 13.0f && mpMorf[0]->getFrame() < 14.0f) {
                    setLandingPrtcl();
                }
            }
        }
        break;
    case 4:
        if (mMotionSeqMngr2.getNo() == 22 || mMotionSeqMngr2.getNo() == 16) {
            if (mMotionSeqMngr2.getStepNo() > 0) {
                ret = 1;
            }
        }
        break;
    case 6:
        if (mTargetAngle.y != fopAcM_searchPlayerAngleY(this)) {
            if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0)) {
                ret = 1;
                mMotionSeqMngr1.setNo(1, -1.0f, 0, 0);
                mMotionSeqMngr2.setNo(0, -1.0f, 0, 0);
            }
            
        } else {
            ret = 1;
        }
        break;
    case 10:
        if (talkProc(NULL,0,NULL,0)) {
            ret = 1;

            if (field_0x170e == 0) {
                field_0x170e = 1;
                Z2GetAudioMgr()->bgmStop(0x32,0);
            } 
        }
        break;
    case 20:
        if (talkProc(NULL, 0, NULL, 0)) {
            ret = 1;
        }
        cLib_addCalcAngleS2(&mTargetAngle.y, fopAcM_searchPlayerAngleY(this), 2, 0x800);
        setAngle(mTargetAngle.y);
        break;
    case 30:
        if (talkProc(NULL, 0, NULL, 0)) {
            setSceneChange(1);
        }
        cLib_addCalcAngleS2(&mTargetAngle.y, fopAcM_searchPlayerAngleY(this), 2, 0x800);
        setAngle(mTargetAngle.y);
        break;
    default:
        ret = 1;
    }

    return ret;
}

// FIXME: remove when next func is decompiled
f32 dummy_lit_11516(u8 val) {
    return f32(val);
}

/* 80A363C0-80A36C20 00BAA0 0860+00 3/0 0/0 0/0 .text ECut_seventhSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_seventhSkillExplain(int i_idx) {
    // NONMATCHING
}

/* 80A36C20-80A372D0 00C300 06B0+00 3/0 0/0 0/0 .text ECut_seventhSkillGet__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_seventhSkillGet(int i_idx) {
    // NONMATCHING
}

/* 80A372D0-80A37430 00C9B0 0160+00 1/1 0/0 0/0 .text            setPrtcl__10daNpc_Kn_cFv */
int daNpc_Kn_c::setPrtcl() {
    for (int i = 0; i < 3; i++) {
        BOOL check = i == 2 ? TRUE : FALSE;
        s8 room_no = fopAcM_GetRoomNo(this);

        csXyz* angle = mParticleMngr[i].mpModel == 1 ? &mParticleMngr[i].mAngle : NULL;
        cXyz* pos = mParticleMngr[i].mpModel == 1 ? &mParticleMngr[i].mPos : NULL;

        
        mParticleMngr[i].mManager.setEffectCenter(&tevStr, &mParticleMngr[i].mPos, check, 0, pos, angle, 0, room_no, 0.0f, speedF);

        if (mParticleMngr[i].mpModel) {
            JPABaseEmitter* emitter = mParticleMngr[i].mManager.getCenterEmitter(0,0);

            if (emitter) {
                switch (i) {
                case 0:
                case 1:
                    mParticleMngr[i].mScale.set(1.0f,1.0f,1.0f);
                    emitter->setAwayFromCenterSpeed(0.0f);
                    emitter->setRandomDirectionSpeed(0.0f);
                    emitter->setSpread(1.0f);
                    emitter->setGlobalParticleScale(mParticleMngr[i].mScale);
                    break;
                case 2:
                    mParticleMngr[i].mScale.set(2.0f,2.0f,2.0f);
                    break;
                }
            }
        }

        mParticleMngr[i].mpModel = NULL;
    }

    return 1;
}

/* 80A37430-80A37558 00CB10 0128+00 1/1 0/0 0/0 .text            setSlipPrtcl__10daNpc_Kn_cFv */
int daNpc_Kn_c::setSlipPrtcl() {
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0x1f));
    mDoMtx_stack_c::multVecZero(&mParticleMngr[0].mPos);
    mParticleMngr[0].mPos.y -= 20.0f;
    mParticleMngr[0].mAngle = current.angle;
    mParticleMngr[0].mAngle.y -= 0x8000;
    mParticleMngr[0].mpModel = true;
    
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0x1b));
    mDoMtx_stack_c::multVecZero(&mParticleMngr[1].mPos);
    mParticleMngr[1].mPos.y -= 20.0f;
    mParticleMngr[1].mAngle = current.angle;
    mParticleMngr[1].mAngle.y -= 0x8000;
    mParticleMngr[1].mpModel = true;

    return 1;
}

/* 80A37558-80A37598 00CC38 0040+00 12/12 0/0 0/0 .text            setLandingPrtcl__10daNpc_Kn_cFv
 */
int daNpc_Kn_c::setLandingPrtcl() {
    mParticleMngr[2].mPos = current.pos;
    mParticleMngr[2].mAngle = mTargetAngle;
    mParticleMngr[2].mpModel = true;
    return 1;
}

/* 80A37598-80A37670 00CC78 00D8+00 1/1 0/0 0/0 .text            calcMagicBallPos__10daNpc_Kn_cFv */
void daNpc_Kn_c::calcMagicBallPos() {
    fopAc_ac_c* actor;

    if (mType == 1 && fopAcM_SearchByID(parentActorID, &actor) && actor && fopAcM_GetName(actor) == PROC_KN_BULLET && ((daObjKnBullet_c*)actor)->getActionMode() == 0) {
        cXyz pos(150.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(13));
        mDoMtx_stack_c::multVec(&pos,&pos);
        actor->current.pos = pos;
    }
}

s16 daNpc_Kn_c::mSrchName;

/* 80A43300-80A433C8 000048 00C8+00 0/0 0/0 0/0 .bss             mFindActorPtrs__10daNpc_Kn_c */
fopAc_ac_c* daNpc_Kn_c::mFindActorPtrs[50];

/* 80A433C8-80A433CC 000110 0004+00 0/0 0/0 0/0 .bss             mFindCount__10daNpc_Kn_c */
u8 daNpc_Kn_c::mFindCount[4];

/* 80A433D8-80A433DC 000120 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Kn_Param_c l_HIO;

/* 80A37670-80A37B08 00CD50 0498+00 1/1 0/0 0/0 .text            setSwordChargePtcl__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setSwordChargePtcl() {
    // NONMATCHING
    if (mMotionSeqMngr2.getNo() == 10 && mMotionSeqMngr2.getStepNo() == 0 && !mMotionSeqMngr2.checkEntryNewMotion()) {
        f32 frame = mpMorf[0]->getFrame();
        if (frame >= 17.0f || frame < 37.0f) {
            static cXyz lightAParticleScale(1.5223,1.3f,1.3f);
            static cXyz lightALocalTrans(88.399994f, 0.0f, 0.0f);

            field_0x15d4[0] = dComIfGp_particle_set(field_0x15d4[0],0x368, &current.pos, &tevStr);
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x15d4[0]);

            if (emitter) {
                emitter->setGlobalRTMatrix(mpMorf[0]->getModel()->getAnmMtx(0xd));
                emitter->setGlobalParticleScale(lightAParticleScale); // may need a tvec cast here
                emitter->setLocalTranslation(lightALocalTrans);
            }

            cXyz pos1;
            cXyz pos2;

            mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0xd));
            mDoMtx_stack_c::multVecSR(&pos1.BaseX,&pos1);
            mDoMtx_stack_c::multVecZero(&pos2);

            f32 frame_copy = frame;
            if (frame >= 31.0f)
                frame_copy = 31.0f;

            pos1 *= (frame_copy + 1.0f) - 17.0f;
            pos1 += 10.4;
            pos1 += pos2;

            field_0x15d4[1] = dComIfGp_particle_set(field_0x15d4[1],0x36a, &pos1, &tevStr);

            if (frame >= 31.0f) {
                field_0x15d4[2] = dComIfGp_particle_set(field_0x15d4[2],0x36b, &pos1, &tevStr);
            }
            
        } else {
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x15d4[0]);

            if (emitter) {
                if (emitter->getGlobalAlpha() < 0x12) {
                    emitter->setGlobalAlpha(0);
                } else {
                    field_0x15d4[0] = dComIfGp_particle_set(field_0x15d4[0],0x368, &current.pos, &tevStr);
                    emitter = dComIfGp_particle_getEmitter(field_0x15d4[0]);

                    if (emitter) {
                        emitter->setGlobalRTMatrix(mpMorf[0]->getModel()->getAnmMtx(0xd));
                        emitter->setGlobalAlpha(emitter->getGlobalAlpha() - 0x11);

                    }
                }
            }

            emitter = dComIfGp_particle_getEmitter(field_0x15d4[1]);

            if (emitter) {
                emitter->stopDrawParticle();
            }

            emitter = dComIfGp_particle_getEmitter(field_0x15d4[2]);

            if (emitter) {
                emitter->stopDrawParticle();
            }
        }
    }
}

/* 80A37B08-80A37D20 00D1E8 0218+00 13/13 0/0 0/0 .text            calcSlip__10daNpc_Kn_cFv */
void daNpc_Kn_c::calcSlip() {
    if (field_0x15bc) {
        if (mAcch.ChkWallHit()) {
            mTargetPos = current.pos;
            field_0x15bc = 0;
            speed.x = 0.0f;
            speed.z = 0.0f;
        } else {
            cXyz pos(current.pos);

            cLib_addCalcPos2(&pos, mTargetPos, 0.25f, 20.0f);
            pos -= current.pos;
            speed.x = pos.x;
            speed.z = pos.z;
            f32 absxz = (mTargetPos - current.pos).absXZ();

            if (absxz > 25.0f) {
                setSlipPrtcl();
            } else {
                if (absxz < 5.0f) {
                    field_0x15bc = 0;
                    speed.x = 0.0f;
                    speed.z = 0.0f;
                }
            }
        }
    }
}

// FIXME: Remove when following func is decompiled:
f32 dummy_lit_12656() {
    return 250.0f;
}

/* 80A37D20-80A3805C 00D400 033C+00 9/9 0/0 0/0 .text            calcSwordAttackMove__10daNpc_Kn_cFi
 */
void daNpc_Kn_c::calcSwordAttackMove(int param_0) {
    // NONMATCHING
}

/* 80A3805C-80A38450 00D73C 03F4+00 2/1 0/0 0/0 .text            setSe__10daNpc_Kn_cFv */
// NONMATCHING - case 12 is wrong
void daNpc_Kn_c::setSe() {
    if (field_0xe2c == 0) {
        switch (field_0x15A8) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 25:
        case 26:
        case 27:
        case 29:
        case 30:
        case 31:
        case 33:
            mCreature.startCreatureVoiceLevel(Z2SE_KN_V_BREATH,-1);
            break;
        case 4:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_GUARD,-1);
            }
            break;
        case 5:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_S,-1);
            }
            break;
        case 6:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_M,-1);
            }
            break;
        case 7:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L,-1);
            }
            break;
        case 12:
            if (mpMorf[0]->getFrame() >= 4.0f && mpMorf[0]->getFrame() < 5.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_BALL_READY,-1);
            } else if (mpMorf[1]->getFrame() >= 27.0f && mpMorf[1]->getFrame() < 28.0f) {
                    if (mActionMode == 7) {
                        mCreature.startCreatureVoice(Z2SE_KN_V_BALL_READY,-1);
                    } else {
                        mCreature.startCreatureVoice(Z2SE_KN_V_BALL_THROW,-1);
                    }
            }
            break;
        case 16:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L,-1);
            }
            break;
        case 20:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_SOTOMOGIRI,-1);
            }
            break;
        case 28:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_KABUTOWARI,-1);
            }
            break;
        case 32:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_IAIGIRI,-1);
            }
            break;
        case 34:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_JUMP_ATTACK_L,-1);
            }
            break;
        }
    }
}

/* 80A38450-80A38470 00DB30 0020+00 1/0 0/0 0/0 .text            daNpc_Kn_Create__FPv */
static void daNpc_Kn_Create(void* i_actor) {
    static_cast<daNpc_Kn_c*>(i_actor)->create();
}

/* 80A38470-80A38490 00DB50 0020+00 1/0 0/0 0/0 .text            daNpc_Kn_Delete__FPv */
static void daNpc_Kn_Delete(void* i_actor) {
    static_cast<daNpc_Kn_c*>(i_actor)->Delete();
}

/* 80A38490-80A384B0 00DB70 0020+00 1/0 0/0 0/0 .text            daNpc_Kn_Execute__FPv */
static void daNpc_Kn_Execute(void* i_actor) {
    static_cast<daNpc_Kn_c*>(i_actor)->Execute();
}

/* 80A384B0-80A384D0 00DB90 0020+00 1/0 0/0 0/0 .text            daNpc_Kn_Draw__FPv */
static void daNpc_Kn_Draw(void* i_actor) {
    static_cast<daNpc_Kn_c*>(i_actor)->Draw();
}

/* 80A384D0-80A384D8 00DBB0 0008+00 1/0 0/0 0/0 .text            daNpc_Kn_IsDelete__FPv */
static bool daNpc_Kn_IsDelete(void* param_0) {
    return true;
}

/* 80A3B720-80A3B724 010E00 0004+00 1/0 0/0 0/0 .text            afterJntAnm__10daNpc_Kn_cFi */
void daNpc_Kn_c::afterJntAnm(int param_0) {
    /* empty function */
}

/* 80A3B79C-80A3B7A4 010E7C 0008+00 1/0 0/0 0/0 .text            evtEndProc__10daNpc_Kn_cFv */
BOOL daNpc_Kn_c::evtEndProc() {
    return TRUE;
}

/* 80A3B7A4-80A3B7AC 010E84 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__10daNpc_Kn_cFv */
BOOL daNpc_Kn_c::checkChangeEvt() {
    return FALSE;
}

/* 80A3B7AC-80A3B7B4 010E8C 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::getFootRJointNo() {
    return -1;
}

/* 80A3B7B4-80A3B7BC 010E94 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::getFootLJointNo() {
    return -1;
}

/* 80A3B7BC-80A3B7C4 010E9C 0008+00 1/0 0/0 0/0 .text            chkXYItems__10daNpc_Kn_cFv */
BOOL daNpc_Kn_c::chkXYItems() {
    return false;
}

/* 80A3B7C4-80A3B7CC 010EA4 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__10daNpc_Kn_cFiifi */
bool daNpc_Kn_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    return true;
}

/* 80A3B82C-80A3BD14 010F0C 04E8+00 1/1 0/0 0/0 .text
 * __ct__10daNpc_Kn_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
 // NONMATCHING - missing something instructions / regalloc
daNpc_Kn_c::daNpc_Kn_c(daNpcT_faceMotionAnmData_c const* param_0,
                           daNpcT_motionAnmData_c const* param_1,
                           daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                           daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                           daNpcT_evtData_c const* param_6, char** param_7) :
                            // daNpcT_c(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7) { 
                           mpFaceMotionAnmData(param_0), 
                           mpMotionAnmData(param_1), mMotionSeqMngr1(param_2, param_3), 
                           mMotionSeqMngr2(param_4, param_5), 
                           mpEventData(param_6),
                           field_0x5B8(param_7) {
    initialize();
}

/* 80A3BD14-80A3BD1C 0113F4 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__10daNpc_Kn_cFv */
u16 daNpc_Kn_c::getEyeballMaterialNo() {
    return false;
}

/* 80A3BD1C-80A3BD24 0113FC 0008+00 1/0 0/0 0/0 .text getEyeballLMaterialNo__10daNpc_Kn_cFv */
u16 daNpc_Kn_c::getEyeballLMaterialNo() {
    return false;
}

/* 80A3BD24-80A3BD2C 011404 0008+00 1/0 0/0 0/0 .text getEyeballRMaterialNo__10daNpc_Kn_cFv */
u16 daNpc_Kn_c::getEyeballRMaterialNo() {
    return false;
}

/* 80A3C124-80A3C16C 011804 0048+00 2/1 0/0 0/0 .text            __dt__16daNpc_Kn_Param_cFv */
// daNpc_Kn_Param_c::~daNpc_Kn_Param_c() {}

// FIXME: The following funcs may be in their own inc file?

/* 80A3C998-80A3CB14 012078 017C+00 1/1 0/0 0/0 .text            setParamTeach01__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach01() {
    s16 field48 = daNpc_Kn_Param_c::m.common.talk_distance;
    s16 field4a = daNpc_Kn_Param_c::m.common.talk_angle;
    s16 field4c = daNpc_Kn_Param_c::m.common.attention_distance;
    s16 field4e = daNpc_Kn_Param_c::m.common.attention_angle;

    switch(mActionMode) {
    case 0:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = 0xe4;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        return 0;
    case 1:
        if (field_0x170c != 0) {
            return 0;
        }
    case 2:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = 0xe4;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        mAcchCir.SetWallR(daNpc_Kn_Param_c::m.common.width);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.common.knee_length);
        return 4;
    case 3:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = 0xe4;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        mAcchCir.SetWallR(135.0f);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.common.knee_length);
        return 4;
    }

    return 10;
}

/* 80A3CB14-80A3CBFC 0121F4 00E8+00 1/1 0/0 0/0 .text            setCollisionTeach01__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach01() {
    switch (mActionMode) {
    case 0:
        break;
    case 1:
        mCylCc.SetTgType(-1);
        mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
        mCylCc.SetTgSPrm(0x13);
        mCylCc.OnTgNoConHit();
        
        if (field_0x170c == 0) {
            mCylCc.OnTgShield();
        } else {
            mCylCc.OffTgShield();    
        }
        break;
    case 2:
        mCylCc.SetTgType(-1);
        mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_1);
        mCylCc.SetTgSPrm(0x13);
        mCylCc.OffTgShield();
        mCylCc.OffTgNoAtHitInfSet();
        mCylCc.OnTgNoConHit();
        mCylCc.OnCoSetBit();
        break;
    case 3:
        mCylCc.OffTgSetBit();
        mCylCc.OffCoSetBit();
        break;
    }
}

/* 80A3CBFC-80A3CCC0 0122DC 00C4+00 1/1 0/0 0/0 .text teach01_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach01_selectAction() {
    switch(mActionMode) {
    case 0:
        mpTeachAction = &daNpc_Kn_c::teach01_start;
        return;
    case 1:
        mpTeachAction = &daNpc_Kn_c::teach01_attackWait;
        return;
    case 2:
        mpTeachAction = &daNpc_Kn_c::teach01_swordAttackWait;
        return;
    case 3:
        mpTeachAction = &daNpc_Kn_c::teach01_swordFinishWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
    return;
}

/* 80A3CCC0-80A3CDFC 0123A0 013C+00 1/0 0/0 0/0 .text            teach01_start__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach01_start(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xe2a = 2;
    case 2:
        mEvtIdx = 5;
        field_0xe39 = 1;
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this),2,0x800);
        setAngle(mTargetAngle.y);
    case 3:
    default:
        return 1;
    }
}

/* 80A3CDFC-80A3CF78 0124DC 017C+00 1/0 0/0 0/0 .text            teach01_attackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach01_attackWait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr2.setNo(9,-1.0f,1,0);
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xe2a = 2;
    case 2:
    if (!ctrlWarp()) {
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this),2,0x800);
        setAngle(mTargetAngle.y);
        if (mCylCc.ChkTgHit()) {

            mEvtIdx = 6;
            field_0x16f4.set(1.0f,1.0f,1.0f);
            field_0x170c = 0;
            field_0x170d = 0;
            mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x28);
        }
    }
    case 3:
    default:
        return 1;
    }
}

/* 80A3CF78-80A3D32C 012658 03B4+00 1/0 0/0 0/0 .text teach01_swordAttackWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach01_swordAttackWait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(9,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x8e;
        mTargetPos = current.pos;
        field_0x15bc = 0;
        field_0x15d0 = cLib_getRndValue(daNpc_Kn_Param_c::m.field_0xac,
                                        daNpc_Kn_Param_c::m.field_0xae);
        speedF = 0.0f;
        speed.zero();
        field_0xe2a = 2;
    case 2:
        calcSlip();
        mCcStts.Move();
        if (mCylCc.ChkTgHit()) {
            int cut_type = daPy_getPlayerActorClass()->getCutType();
            if (cut_type == daPy_py_c::CUT_TYPE_JUMP || cut_type == daPy_py_c::CUT_TYPE_TURN_RIGHT || cut_type == daPy_py_c::CUT_TYPE_TURN_LEFT || daPy_getPlayerActorClass()->getCutCount() >= 4) {
                mActionMode = 0x3;
                setAngle(fopAcM_searchPlayerAngleY(this));
                speedF = -daNpc_Kn_Param_c::m.field_0xa0;
                speed.y = daNpc_Kn_Param_c::m.field_0xa4;
                mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x1f);
            } else {
                fopAc_ac_c* hit_ac = mCylCc.GetTgHitAc();
                s16 angle = cLib_targetAngleY(&hit_ac->current.pos,&current.pos);
                cXyz pos(0.0f,0.0f,daNpc_Kn_Param_c::m.field_0x94);
                mDoMtx_stack_c::YrotS(angle);
                mDoMtx_stack_c::multVec(&pos,&mTargetPos);
                mTargetPos += current.pos;
                field_0x15bc = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0x1f,-1.0f,1,0);
                mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x1e);
            }
        } else {
            if (cLib_calcTimer(&field_0xdec) == 0 || checkCollisionSword()) {
                mTargetPos = current.pos;
                int check = 0;
                
                if (dComIfGp_getAttention()->LockonTruth()) {
                    check = 1;
                }

                checkCollisionSword() != 0 ? mEvtIdx = 4 : mEvtIdx = 1;
                
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,1,0);

                check != 0 ?mFlowNodeNo = 0x2da: mFlowNodeNo = 0x2db;
                
            } else {
                calcSwordAttackMove(1);         
            }

            
        }
    case 3:
    default:
        return 1;
    }
}

/* 80A3D32C-80A3D6D8 012A0C 03AC+00 1/0 0/0 0/0 .text teach01_swordFinishWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach01_swordFinishWait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0x12,-1.0f,0,0);
        mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L, -1);
        mJntAnm.lookNone(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x8e;
        field_0xe2a = 2;
    case 2:
        mTargetPos = current.pos;
        int no = mMotionSeqMngr2.getNo();
        if (no == 0x12) {
            if (speed.y <= 0.0f && mAcch.ChkGroundHit()) {
                speedF = 0.0f;
                speed.zero();
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0x13,-1.0f,0,0);
                setLandingPrtcl();
            }
        } else if (no == 0x13) {
            if (mMotionSeqMngr2.getStepNo() == 0) {
                if (mpMorf[0]->getFrame() >= 13.0f && mpMorf[0]->getFrame() < 14.0f) {
                    setLandingPrtcl();
                }
            } else {
                // both downFlg inlines are generating extra instructions?
                // if (!checkDownFlg())
                if (!(mFlags & 0x1)) {
                    cXyz pos(10.0f,0.0f,0.0f);
                    mFlags |= 1;
                    // onDownFlg();
                    u8 backbone_joint = getBackboneJointNo();
                    J3DModel* model = mpMorf[0]->getModel();
                    mDoMtx_stack_c::copy(model->getAnmMtx(backbone_joint));
                    mDoMtx_stack_c::multVec(&pos,&field_0x15c0);
                    setDownPos(&field_0x15c0);
                } else {
                    if (checkCutDownHitFlg()) {
                        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                        mMotionSeqMngr2.setNo(0x14,-1.0f,0,0);
                        
                        if (mType == 0) {
                            mEvtIdx = 7;
                        } else if (mType == 1) {
                            mEvtIdx = 9;
                        }
                        
                        mCreature.startCollisionSE(Z2SE_HIT_SWORD_STAB,0x1e);
                        break;
                    }
                }   
            }
        }

        if (cLib_calcTimer(&field_0xdec) == 0) {
            if (daPy_getPlayerActorClass()->getCutType() != daPy_py_c::CUT_TYPE_DOWN) {
                offDownFlg();
                mTargetPos = current.pos;
                mEvtIdx = 3;
                mFlowNodeNo = 0x2dc;
                mActionMode = 2;
            }
        }
    case 3:
    default:
        break;
    }

    return 1;
}

// FIXME: Remove once ctrlWarp is decompiled:
f32 dummy_lits_12626(int sel) {
    switch (sel) {
        case 0: return 600.0f;
        default: return 100.0f;
    }
}

/* 80A3D6D8-80A3DCEC 012DB8 0614+00 3/3 0/0 0/0 .text            ctrlWarp__10daNpc_Kn_cFv */
int daNpc_Kn_c::ctrlWarp() {
    // NONMATCHING
}

/* 80A3DCEC-80A3DEC4 0133CC 01D8+00 1/0 0/0 0/0 .text            ECut_firstEncount__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_firstEncount(int param_0) {
    // NONMATCHING
}

/* 80A3DEC4-80A3E550 0135A4 068C+00 1/0 0/0 0/0 .text            ECut_attackFailed__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_attackFailed(int param_0) {
    // NONMATCHING
}

/* 80A3E550-80A3EB84 013C30 0634+00 3/0 0/0 0/0 .text            ECut_firstSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_firstSkillGet(int param_0) {
    // NONMATCHING
}

/* 80A3EB84-80A3EE38 014264 02B4+00 1/1 0/0 0/0 .text            setParamTeach02__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach02() {
    s16 field48 = daNpc_Kn_Param_c::m.common.talk_distance;
    s16 field4a = daNpc_Kn_Param_c::m.common.talk_angle;
    s16 field4c = daNpc_Kn_Param_c::m.common.attention_distance;
    s16 field4e = daNpc_Kn_Param_c::m.common.attention_angle;
    f32 radius = daNpc_Kn_Param_c::m.common.attention_offset;
    f32 height = daNpc_Kn_Param_c::m.common.height;

    switch(mActionMode) {
    case 7:
    case 6:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = 0xe4;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        return 4;
    case 5:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = 0xe4;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        cXyz pos;
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getBackboneJointNo()));
        mDoMtx_stack_c::multVecZero(&pos);

        f32 absxz = (daPy_getPlayerActorClass()->current.pos - pos).absXZ();

        if (absxz < 255.0f) {
            return 0x200004;
        } else {
            return 4;
        }
    case 4:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = 0xe4;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        mAcchCir.SetWallR(daNpc_Kn_Param_c::m.common.width);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.common.knee_length);
        return 0;
    }

    return 10;
}

/* 80A3EE38-80A3EF1C 014518 00E4+00 1/1 0/0 0/0 .text            setCollisionTeach02__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach02() {
    switch (mActionMode) {
    case 4:
        break;
    case 5:
        mCylCc.SetTgType(-1);
        mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
        mCylCc.SetTgSPrm(0x13);
        mCylCc.OnTgShield();
        mCylCc.OffTgNoAtHitInfSet();
        mCylCc.OnTgNoConHit();
        break;
    case 6:
        mCylCc.SetTgType(-1);
        mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_1);
        mCylCc.SetTgSPrm(0x13);
        mCylCc.OffTgShield();
        mCylCc.OffTgNoAtHitInfSet();
        mCylCc.OnTgNoConHit();
        break;
    case 7:
        mCylCc.SetTgType(-1);
        mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
        mCylCc.SetTgSPrm(0x13);
        mCylCc.OffTgShield();
        mCylCc.OnTgNoConHit();
        break;
    }
}

/* 80A3EF1C-80A3EFE0 0145FC 00C4+00 1/1 0/0 0/0 .text teach02_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach02_selectAction() {
    switch(mActionMode) {
    case 4:
        mpTeachAction = &daNpc_Kn_c::teach02_start;
        return;
    case 5:
        mpTeachAction = &daNpc_Kn_c::teach02_shieldBashWait;
        return;
    case 6:
        mpTeachAction = &daNpc_Kn_c::teach02_finishWait;
        return;
    case 7:
        mpTeachAction = &daNpc_Kn_c::teach02_shieldReflectWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
    return;
}

/* 80A3EFE0-80A3F358 0146C0 0378+00 1/0 0/0 0/0 .text teach02_shieldBashWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach02_shieldBashWait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1, -1.0f, 0, 0);
        mMotionSeqMngr2.setNo(9, -1.0f, 0, 0);
        mJntAnm.lookPlayer(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x8e;
        mTargetPos = current.pos;
        field_0x15bc = 0;
        field_0x15d0 = cLib_getRndValue(daNpc_Kn_Param_c::m.field_0xac,
                                        daNpc_Kn_Param_c::m.field_0xae);
        speedF = 0.0f;
        speed.zero();
        field_0xe2a = 2;
    case 2:
        mCcStts.Move();

        if (mCylCc.ChkTgShieldHit()) {
            u8 cut_type = daPy_getPlayerActorClass()->getCutType();

            if (cut_type == daPy_py_c::CUT_TYPE_GUARD_ATTACK) {
                s16 angle = cLib_targetAngleY(&daPy_getPlayerActorClass()->current.pos, &attention_info.position);
                cXyz pos(0.0f,0.0f,daNpc_Kn_Param_c::m.field_0x94);

                mDoMtx_stack_c::YrotS(angle);
                mDoMtx_stack_c::multVec(&pos,&mTargetPos);
                mTargetPos += current.pos;
                field_0x15bc = 1;
                mCylCc.ClrTgHit();
                mActionMode = 6;
                mCreature.startCollisionSE(Z2SE_HIT_SHIELD_ATTACK,0x28);
                break;
            }
        }

        if (!cLib_calcTimer(&field_0xdec) || checkCollisionSword()) {
            BOOL truth = FALSE;
            
            if (dComIfGp_getAttention()->LockonTruth()) {
                truth = TRUE;
            }

            if (checkCollisionSword()) {
                mEvtIdx = 4;
            } else {
                mEvtIdx = 1;
            }

            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(0,-1.0f,1,0);

            if (truth) {
                mFlowNodeNo = 0x2c0;
            } else {
                mFlowNodeNo = 0x2bf;
            }
        } else {
            if (mCylCc.ChkTgHit()) {
                if (mCylCc.GetTgHitObj()->ChkAtType(0x10) == 0) {
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0x1b,-1.0f,1,0);
                    mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x28);
                    break;
                }
            }
            
            calcSwordAttackMove(1);
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A3F358-80A3F5A4 014A38 024C+00 1/0 0/0 0/0 .text            teach02_finishWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach02_finishWait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1, -1.0f, 0, 0);
        mMotionSeqMngr2.setNo(11, -1.0f, 1, 0);
        mJntAnm.lookPlayer(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x90;
        field_0xe2a = 2;
    case 2:
        calcSlip();
        mCcStts.Move();
        
        if (mCylCc.ChkTgHit()) {
            u8 cut_type = daPy_getPlayerActorClass()->getCutType();

            if (cut_type != daPy_py_c::CUT_TYPE_GUARD_ATTACK) {
                if (mType == 1) {
                    mEvtIdx = 10;
                } else if (mType == 2) {
                    mEvtIdx = 12;
                }

                cXyz pos(0.0f,0.0f,daNpc_Kn_Param_c::m.field_0x98);
                mDoMtx_stack_c::YrotS(cLib_targetAngleY(&daPy_getPlayerActorClass()->current.pos, &attention_info.position));
                mDoMtx_stack_c::multVec(&pos,&mTargetPos);
                mTargetPos += current.pos;
                field_0x15bc = 1;
                mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x1e);
                break;
            }
        }

        if (!cLib_calcTimer(&field_0xdec)) {
            mEvtIdx = 1;
            mFlowNodeNo = 0x2c1;
            mActionMode = 5;

            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(0,-1.0f,1,0);
        }
    case 3:
    default:
        break;
    }

    return 1;
}

// FIXME: Remove when teach02_shieldReflectWait is decompiled:
f32 dummy_lits_13839(int sel) {
    switch (sel) {
        case 0: return 3.0f;
        case 1: return 34.0f;
        default: return 35.0f;
    }
}

/* 80A3F5A4-80A3F99C 014C84 03F8+00 1/0 0/0 0/0 .text teach02_shieldReflectWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach02_shieldReflectWait(void* param_0) {
    // NONMATCHING
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1, -1.0f, 0, 0);
        mMotionSeqMngr1.setNo(32, -1.0f, 1, 0);
        mJntAnm.lookPlayer(0);
        field_0xe2a = 2;
    case 2:
        mCcStts.Move();

        if (field_0x15bd == 0) {
            
        }
    case 3:
    default:
        break;
    }

    return 1;
}

// FIXME: Remove when the following func is decompiled.
f32 dummy_lit_14210(int sel) {
    return 15.0f;
}

/* 80A3F99C-80A3FFB4 01507C 0618+00 3/0 0/0 0/0 .text ECut_secondSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_secondSkillExplain(int param_0) {
    // NONMATCHING
}

/* 80A3FFB4-80A403B8 015694 0404+00 1/0 0/0 0/0 .text            ECut_reflectExplain__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_reflectExplain(int param_0) {
    // NONMATCHING
}

/* 80A403B8-80A408B4 015A98 04FC+00 2/0 0/0 0/0 .text            ECut_secondSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_secondSkillGet(int param_0) {
    // NONMATCHING
}

// FIXME: The following were temporarily moved down here.
//  These .data pieces will be inlined with their corresp functions.

/* 80A42C38-80A42C74 001F04 003C+00 0/1 0/0 0/0 .data            l_checkOffset$13216 */
static u8 l_checkOffset[60] = {
    0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x42, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0xC2, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x42, 0x48, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0xC2, 0x48, 0x00, 0x00,
};

/* 80A42C74-80A42CD4 001F40 0060+00 0/1 0/0 0/0 .data            l_WarpInScaleTable$13228 */
static u8 l_WarpInScaleTable[96] = {
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0xCC, 0x08, 0x31,
    0x3F, 0x52, 0xF1, 0xAA,
    0x3F, 0xD5, 0xC2, 0x8F,
    0x3F, 0xF4, 0x7A, 0xE1,
    0x3F, 0x38, 0x51, 0xEC,
    0x3F, 0xE5, 0x1E, 0xB8,
    0x3F, 0xCC, 0x08, 0x31,
    0x3F, 0x51, 0x26, 0xE9,
    0x3F, 0xD5, 0xC2, 0x8F,
    0x3E, 0xCC, 0xCC, 0xCD,
    0x3F, 0xC0, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x3F, 0xA6, 0x66, 0x66,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

/* 80A42CD4-80A42CDC 001FA0 0008+00 0/1 0/0 0/0 .data            l_warpInTimeTable$13229 */
static u8 l_warpInTimeTable[8] = {
    0x01,
    0x04,
    0x08,
    0x0B,
    0x0D,
    0x0E,
    0x0F,
    0x10,
};

/* 80A42CDC-80A42D0C 001FA8 0030+00 0/1 0/0 0/0 .data            l_WarpOutScaleTable$13245 */
static u8 l_WarpOutScaleTable[48] = {
    0x00, 0x00, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00,
    0x3F, 0xA8, 0xF5, 0xC3, 
    0x00, 0x00, 0x00, 0x00, 
    0x3F, 0x18, 0x10, 0x62,
    0x3F, 0xC0, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
};

/* 80A42D0C-80A42D10 001FD8 0004+00 0/1 0/0 0/0 .data            l_warpOutTimeTable$13246 */
static u8 l_warpOutTimeTable[4] = {
    0x01,
    0x03,
    0x05,
    0x06,
};

/* 80A43148-80A43168 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Kn_MethodTable */
static actor_method_class daNpc_Kn_MethodTable = {
    (process_method_func)daNpc_Kn_Create,
    (process_method_func)daNpc_Kn_Delete,
    (process_method_func)daNpc_Kn_Execute,
    (process_method_func)daNpc_Kn_IsDelete,
    (process_method_func)daNpc_Kn_Draw,
};

/* 80A43168-80A43198 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KN */
extern actor_process_profile_definition g_profile_NPC_KN = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_KN,            // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Kn_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  347,                    // mPriority
  &daNpc_Kn_MethodTable,  // sub_method
  0x00044107,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

AUDIO_INSTANCES;
