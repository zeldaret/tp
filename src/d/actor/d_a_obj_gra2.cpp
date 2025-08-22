/**
 * @file d_a_obj_gra2.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_gra2.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/actor/d_a_tag_gra.h"
#include "d/d_bg_w.h"
#include "d/d_cc_uty.h"
#include "d/d_com_inf_game.h"
#include "d/d_com_inf_actor.h"
#ifdef DEBUG
#include "d/d_debug_viewer.h"
#endif
#include "dol2asm.h"
#include "d/d_msg_object.h"
#include "d/d_attention.h"
#include <cmath.h>

/* 80BFFF0C-80BFFF58 0000EC 004C+00 2/2 0/0 0/0 .text            jointCtrlCallBack__FP8J3DJointi */
static int jointCtrlCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daObj_GrA_c* i_this = (daObj_GrA_c*)model->getUserArea();
        if (i_this != NULL) {
            i_this->jointCtrl(i_joint, model);
        }
    }

    return 1;
}

/* 80BFFF58-80BFFF70 000138 0018+00 1/1 0/0 0/0 .text            rideCallBack__11daObj_GrA_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
void daObj_GrA_c::rideCallBack(dBgW* param_1, fopAc_ac_c* aActor_p, fopAc_ac_c* param_3) {
    ((daObj_GrA_c*)aActor_p)->field_0x10c4 = fopAcM_GetProfName(param_3) == PROC_ALINK;
}

#if VERSION != VERSION_SHIELD_DEBUG
#endif

/* 80C0FE88-80C0FE98 -00001 0010+00 1/1 0/0 0/0 .data            l_resFileNameList */
static char* l_resFileNameList[4] = {
    "grA",
    "grA",
    "grA",
    "grA",
};

/* 80C0FE98-80C0FEA8 000030 0010+00 1/0 0/0 0/0 .data            l_exLoadRes_GRAa */
static int l_exLoadRes_GRAa[4] = {
    1, 2, -1, -1,
};

/* 80C0FEA8-80C0FEB8 000040 0010+00 1/0 0/0 0/0 .data            l_exLoadRes_GRA_jump */
static int l_exLoadRes_GRA_jump[4] = {
    1, 2, 4, -1,
};

/* 80C0FEB8-80C0FEC8 000050 0010+00 1/0 0/0 0/0 .data            l_exLoadRes_GRA_demo */
static int l_exLoadRes_GRA_demo[4] = {
    1, 2, 3, -1,
};

/* 80C0FEC8-80C0FED8 -00001 0010+00 2/2 0/0 0/0 .data            l_exloadRes_list */
static int* l_exloadRes_list[4] = {
    l_exLoadRes_GRAa,
    l_exLoadRes_GRA_jump,
    l_exLoadRes_GRAa,
    l_exLoadRes_GRA_demo,
};

/* 80C0FED8-80C0FEEC -00001 0014+00 5/6 0/0 0/0 .data            l_resNames */
static char* l_resNames[5] = {
    "grA",
    "grA_base",
    "grA_mdl",
    "grA_demo",
    "grA_Look",
};

/* 80C0FEEC-80C0FEF4 000084 0008+00 0/1 0/0 0/0 .data            l_bmdGetParamList */
static int l_bmdGetParamList[2] = {
    3, 2,
};

/* 80C0FEF4-80C1000C 00008C 0118+00 2/2 0/0 0/0 .data            l_bckGetParamList */
static int l_bckGetParamList[35][2] = {
    {21, 1}, {18, 0},
    {22, 1}, {11, 0},
    {18, 1}, {19, 1},
    {16, 0}, {-1, 0},
    {15, 1}, {16, 1},
    {6, 0}, {12, 0},
    {13, 0}, {14, 0},
    {17, 0}, {3, 3},
    {5, 3}, {15, 0},
    {6, 3}, {17, 1},
    {20, 1}, {3, 4},
    {14, 1}, {10, 0},
    {9, 1}, {7, 1},
    {8, 0}, {12, 1},
    {13, 1}, {10, 1},
    {8, 1}, {11, 1},
    {6, 0}, {4, 3},
    {9, 0},
};

/* 80C1000C-80C1002C 0001A4 0020+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static int l_btpGetParamList[4][2] = {
    {28, 1}, {32, 1},
    {31, 1}, {21, 0},
};

/* 80C1002C-80C10044 0001C4 0016+02 1/2 0/0 0/0 .data            l_eventMotionChangeTable */
static u16 l_eventMotionChangeTable[11] = {
    0, 1, 0, 2,
    3, 0, 0, 0,
    0, 0, 0,
};

/* 80C10044-80C1004C 0001DC 0008+00 1/2 0/0 0/0 .data            l_eventFaceChangeTable */
static u16 l_eventFaceChangeTable[4] = {
    1, 2, 6, 7,
};

/* 80C1004C-80C10054 -00001 0008+00 1/1 0/0 0/0 .data            l_evtNameList */
static char* l_evtNameList[2] = {
    NULL,
    "GRA_THROWN",
};

/* 80C10054-80C1005C 0001EC 0008+00 0/1 0/0 0/0 .data            l_entryJntNoList */
static u16 l_entryJntNoList[4] = {
    5, 6, 7, -1,
};

/* 80BFFF70-80C0011C 000150 01AC+00 1/1 0/0 0/0 .text            __ct__11daObj_GrA_cFv */
daObj_GrA_c::daObj_GrA_c() {}

/* 80C0011C-80C003CC 0002FC 02B0+00 1/0 0/0 0/0 .text            __dt__11daObj_GrA_cFv */
daObj_GrA_c::~daObj_GrA_c() {
    dComIfG_resDelete(&mPhase, getResName());
    for (int i = 0; l_exloadRes_list[mMode][i] >= 0; i++) {
        dComIfG_resDelete(&mPhases[i], l_resNames[l_exloadRes_list[mMode][i]]);
    }

    if (heap != NULL) {
        mpModelMorf->stopZelAnime();
    }

    if (mpBgw != NULL && mpBgw->ChkUsed()) {
        if (dComIfG_Bgsp().Release(mpBgw)) {
            OS_REPORT("Release Error\n");
        }
    }
}

/* 80C003CC-80C00614 0005AC 0248+00 1/1 0/0 0/0 .text            create__11daObj_GrA_cFv */
cPhs__Step daObj_GrA_c::create() {
    int uVar1 = 0;
    fopAcM_SetupActor(this, daObj_GrA_c);

    mMode = getMode();
    int i;
    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, getResName());
    if (phase == cPhs_ERROR_e || phase == cPhs_UNK3_e) {
        return cPhs_ERROR_e;
    }

    if (phase == cPhs_COMPLEATE_e) {
        uVar1 += 1;
    }

    for (i = 0; l_exloadRes_list[mMode][i] >= 0; i++) {
        phase = (cPhs__Step)dComIfG_resLoad(&mPhases[i], l_resNames[l_exloadRes_list[mMode][i]]);
        if (phase == cPhs_ERROR_e || phase == cPhs_UNK3_e) {
            return cPhs_ERROR_e;
        }

        if (phase == cPhs_COMPLEATE_e) {
            uVar1++;
        }
    }

    field_0x848 = ((int)home.angle.x == 0xFFFF) ? -1 : home.angle.x;

    field_0x1fe8 = (fopAcM_GetParam(this) & 0xC0000000) >> 30;
    field_0xa7f = home.angle.z & 0xFF;
    field_0x200c = (home.angle.z >> 8) & 0x7F;
    field_0x2030 = (home.angle.z >> 15) & 1;

    if (uVar1 == (i + 1) && (uVar1 == 3 || uVar1 == 4)) {
        int dzb_id = dComIfG_getObjctResName2Index(getResName(), "grA_stone_col.dzb");
        u32 heap_size = 0x3B10;
        if (MoveBGCreate(getResName(), dzb_id, NULL, heap_size) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        mpBgw->SetRideCallback(rideCallBack);
        if (isDelete()) {
            return cPhs_ERROR_e;
        } else {
            init();
        }
    } else {
        return cPhs_INIT_e;
    }

    return phase;
}

/* 80C0FA7C-80C0FB3C 000000 00C0+00 54/54 0/0 0/0 .rodata          m__17daObj_GrA_Param_c */
daObj_GrA_Param_c::Data const daObj_GrA_Param_c::m = {
    85.0f,
    -4.0f,
    1.0f,
    12.0f,
    1,
    0,
    280.0f,
    40.0f,
    100.0f,
    255.0f,
    0.0f,
    0.0f,
    20.0f,
    -20.0f,
    40.0f,
    0.0f,
    40.0f,
    -40.0f,
    0.4f,
    85.0f,
    85.0f,
    50.0f,
    3,
    16,
    60,
    4,
    30,
    0,
    140.0f,
    150.0f,
    100,
    0,
    100.0f,
    15.0f,
    20.0f,
    1000.0f,
    3000.0f,
    15.0f,
    40.0f,
    2048,
    0,
    45.0f,
    10.0f,
    230.0f,
    60,
    1,
    0.0f,
    25.0f,
    100,
    0,
    0.5f,
    10,
    10,
    30,
    40,
    20,
    0,
    60.0f,
    30.0f,
};

/* 80C0FB3C-80C0FB8C 0000C0 0050+00 0/0 0/0 0/0 .rodata          l_bgcParam */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_bgcParam[80] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xBF, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0xBF, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C0FB3C, &l_bgcParam);
#pragma pop

/* 80C0FB8C-80C0FB94 000110 0008+00 0/0 0/0 0/0 .rodata          l_dirToAngleTBL */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_dirToAngleTBL[8] = {
    0x00, 0x00, 0x40, 0x00, 0x80, 0x00, 0xC0, 0x00,
};
COMPILER_STRIP_GATE(0x80C0FB8C, &l_dirToAngleTBL);
#pragma pop

/* 80C00614-80C00790 0007F4 017C+00 1/0 0/0 0/0 .text            CreateHeap__11daObj_GrA_cFv */
int daObj_GrA_c::CreateHeap() {
    field_0x844 = dKy_darkworld_check();

    J3DModelData* aMdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNames[l_bmdGetParamList[1]], l_bmdGetParamList[0]);
    JUT_ASSERT(854, 0 != aMdlData_p);
    mpModelMorf = new mDoExt_McaMorfSO(aMdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mpModelMorf != NULL && mpModelMorf->getModel() == NULL) {
        mpModelMorf->stopZelAnime();
        mpModelMorf = NULL;
    }

    if (mpModelMorf == NULL) {
        return 0;
    }

    J3DModel* aMdl_p = mpModelMorf->getModel();
    for (u16 i = 0; i < aMdlData_p->getJointNum(); i++) {
        aMdlData_p->getJointNodePointer(i)->setCallBack(jointCtrlCallBack);
    }
    aMdl_p->setUserArea((u32)this);

    field_0x83c = l_entryJntNoList;
    setFaceAnm(22, false, 0.0f);
    setBaseAnm(17, 0.0f);
    
    return 1;
}

/* 80C00790-80C00804 000970 0074+00 1/0 0/0 0/0 .text            Delete__11daObj_GrA_cFv */
int daObj_GrA_c::Delete() {
    if (dComIfGp_getVibration().CheckQuake()) {
        dComIfGp_getVibration().StopQuake(31);
    }
    this->~daObj_GrA_c();
    return 1;
}

/* 80C00804-80C00A44 0009E4 0240+00 1/0 0/0 0/0 .text            Execute__11daObj_GrA_cFPPA3_A4_f */
int daObj_GrA_c::Execute(Mtx** param_1) {
    int rv = 1;
    *param_1 = &mBgMtx;
    setParam();
    mainProc();

    if (field_0x109c == 0) {
        fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
        mAcch.CrrPos(dComIfG_Bgsp());
        field_0x9d4 = mAcch.m_gnd;
        mGroundY = mAcch.GetGroundH();

        if (mMode == 0 && !mAcch.ChkGroundHit()) {
            current.pos = old.pos;
        }
    }

    if (mGroundY != -1000000000.0f) {
        setEnvTevColor();
        setRoomNo();
    }

    allAnmPlay();
    adjustShapeAngle();
    setMtx(0);
    setCollisions();
    setAttnPos();
    setPrtcl();

    if (mpBgw != NULL && field_0x1fbc != field_0x109c) {
        field_0x1fbc = field_0x109c;
        if (field_0x1fbc != 0) {
            if (dComIfG_Bgsp().Regist(mpBgw, this)) {
                rv = 0;
            }
        } else if (dComIfG_Bgsp().Release(mpBgw)) {
            rv = 0;
        }
    }

    return rv;
}

/* 80C00A44-80C00ACC 000C24 0088+00 1/0 0/0 0/0 .text            Draw__11daObj_GrA_cFv */
int daObj_GrA_c::Draw() {
    f32 fVar1 = 800.0f;
    if (mMode == 3) {
        fVar1 = 900.0f;
    }

    if (field_0x844 == 0 || dComIfGs_wolfeye_effect_check()) {
        draw(fVar1);
    }

    return 1;
}

/* 80C00ACC-80C00D5C 000CAC 0290+00 1/1 0/0 0/0 .text            jointCtrl__11daObj_GrA_cFP8J3DJointP8J3DModel */
int daObj_GrA_c::jointCtrl(J3DJoint* i_joint, J3DModel* param_2) {
    Mtx MStack_78, MStack_a8;
    int jointNo = i_joint->getJntNo();
    cXyz spb4;
    mDoMtx_stack_c::copy(param_2->getAnmMtx(jointNo));

    switch (jointNo) {
        case 1:
        case 3:
        case 4:
            cMtx_copy(mDoMtx_stack_c::get(), MStack_78);
            spb4.set(MStack_78[0][3], MStack_78[1][3], MStack_78[2][3]);
            MStack_78[0][3] = MStack_78[1][3] = MStack_78[2][3] = 0.0f;
            mDoMtx_stack_c::ZXYrotS(shape_angle);
            field_0x9c2.x = field_0x9c8.x * daObj_GrA_Param_c::m.field_0x44;
            field_0x9c2.y = field_0x9c8.y * daObj_GrA_Param_c::m.field_0x44;
            field_0x9c2.z = field_0x9c8.z * daObj_GrA_Param_c::m.field_0x44;

            switch (jointNo) {
                case 1:
                    break;
                    
                case 3:
                    mDoMtx_stack_c::ZXYrotM(field_0x9bc);
                    break;

                case 4:
                    mDoMtx_stack_c::ZXYrotM(field_0x9c2);
            }

            mDoMtx_stack_c::inverse();
            cMtx_copy(mDoMtx_stack_c::get(), MStack_a8);
            mDoMtx_stack_c::transS(spb4);
            mDoMtx_stack_c::ZXYrotM(field_0x91a);

            switch (jointNo) {
                case 1:
                    mDoMtx_stack_c::ZXYrotM(field_0x9bc);
                    break;

                case 3:
                    mDoMtx_stack_c::ZXYrotM(field_0x9c2);
                    break;

                case 4:
                    mDoMtx_stack_c::ZXYrotM(field_0x9c8);
                    break;
            }

            mDoMtx_stack_c::concat(MStack_a8);
            mDoMtx_stack_c::concat(MStack_78);
    }

    param_2->setAnmMtx(jointNo, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    if ((jointNo == 4 || jointNo == 7) && cLib_checkBit<u16>(field_0x840 & 0xFFFF, 0x20)) {
        J3DAnmTransform* anm = mBck.getBckAnm();
        mBck.changeBckOnly(mpModelMorf->getAnm());
        mpModelMorf->changeAnm(anm);
    }

    return 1;
}

/* 80C00D5C-80C00D74 000F3C 0018+00 1/0 0/0 0/0 .text            getResName__11daObj_GrA_cFv */
const char* daObj_GrA_c::getResName() {
    return l_resFileNameList[mMode];
}

/* 80C00D74-80C00DF8 000F54 0084+00 1/1 0/0 0/0 .text            getMode__11daObj_GrA_cFv */
u8 daObj_GrA_c::getMode() {
    u32 uVar1 = fopAcM_GetParam(this) >> 28 & 3;
    strcpy(&field_0x744, "Obj_grA");

    switch (uVar1) {
        case 1:
            return 1;

        case 2:
            return 2;

        case 3:
            return 3;

        case 0:
        default:
            return 0;
    }
}

/* 80C00DF8-80C00E04 000FD8 000C+00 1/1 0/0 0/0 .text            getPathNo__11daObj_GrA_cFv */
u8 daObj_GrA_c::getPathNo() {
    return fopAcM_GetParam(this) >> 20 & 0xFF;
}

/* 80C00E04-80C00E10 000FE4 000C+00 4/4 0/0 0/0 .text            getTagNo__11daObj_GrA_cFv */
u16 daObj_GrA_c::getTagNo() {
    return fopAcM_GetParam(this) >> 7 & 0x7F;
}

/* 80C00E10-80C00E1C 000FF0 000C+00 1/1 0/0 0/0 .text            getJumpType__11daObj_GrA_cFv */
u16 daObj_GrA_c::getJumpType() {
    return fopAcM_GetParam(this) >> 7 & 0x7F;
}

/* 80C00E1C-80C00EFC 000FFC 00E0+00 1/1 0/0 0/0 .text            isDelete__11daObj_GrA_cFv */
BOOL daObj_GrA_c::isDelete() {
    if (mMode == 3) {
        if (!dComIfGs_isSwitch(field_0xa7f, fopAcM_GetRoomNo(this))) {
            return FALSE;
        }
    } else if (mMode == 2) {
        if (!isFirstGra() || !daNpcF_chkEvtBit(0x52)) {
            if (daPy_getPlayerActorClass() != NULL) {
                if (daPy_getPlayerActorClass()->current.pos.y < current.pos.y) {
                    return FALSE;
                }
            } else {
                return FALSE;
            }
        }
    } else {
        if (mMode == 1) {
            if (daNpcF_chkEvtBit(0x40)) {
                return FALSE;
            }
        } else {
            return FALSE;
        }
    }

    return TRUE;
}

/* 80C00EFC-80C010D4 0010DC 01D8+00 1/1 0/0 0/0 .text            restart__11daObj_GrA_cFv */
void daObj_GrA_c::restart() {
    current.angle.set(0, home.angle.y, 0);
    shape_angle = current.angle;
    field_0x91a = current.angle;
    speedF = 0.0f;
    speed.set(0.0f, 0.0f, 0.0f);
    mEvtIdx = -1;
    field_0xa9c = -1;
    field_0xaa0 = 0;
    field_0xa8c = 1;

    if (field_0x844) {
        setLookMode(0);
    } else {
        setLookMode(1);
    }

    setProcess(&daObj_GrA_c::wait);
    field_0xa94 = 0.0f;
    field_0xa98 = 0.0f;
    health = daObj_GrA_Param_c::m.field_0x10;
    ppMoveInit();
    field_0x1fbc = ~field_0x109c;
    field_0xaac = 0;
    field_0x1fe9 = 0;
    field_0x1fec = 0;
    field_0x1fe4 = -1;
    field_0x1ff0 = 0;
    field_0x1ff4 = 0;
    field_0x2000 = -1;
    mDemoCamMode = 0;
    field_0x2056 = 0;
    field_0x2004 = 0;
    field_0x2005 = 0;
    field_0x2008 = 0.0f;
    field_0x1fc4 = 0;
    field_0x1fd8 = 0;
    field_0x2031 = 0;
    field_0x1520 = 0;

    for (int i = 0; i < 3; i++) {
        field_0x2020[i] = -1;
    }

    field_0x201d = 0;
    field_0x201c = 0;
    field_0x2014 = 0;
    field_0x1fdc = 0;
    field_0x2032 = 0;
    mGraMode = 0;

    setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
    setFaceMotion(0, -1.0f);
    field_0x204c.entry(NULL);
    field_0x209c = 0;
}

/* 80C108EC-80C108F8 000054 000C+00 0/2 0/0 0/0 .bss             l_centerOfst */
static cXyz l_centerOfst(0.0f, 67.0f, 26.0f);

/* 80C10904-80C10908 00006C 0004+00 1/2 0/0 0/0 .bss             l_HIO */
static daObj_GrA_Param_c l_HIO;

/* 80C010D4-80C013B0 0012B4 02DC+00 1/1 0/0 0/0 .text            init__11daObj_GrA_cFv */
int daObj_GrA_c::init() {
    fopAcM_SetMtx(this, mpModelMorf->getModel()->getBaseTRMtx());
    mSound.init(&current.pos, &eyePos, 3, 1);
    eventInfo.setArchiveName((char*)getResName());
    field_0xa4c = &l_HIO;
    attention_info.distances[4] = 40;
    attention_info.distances[2] = 22;
    mAcchCir.SetWall(daObj_GrA_Param_c::m.mWallH, daObj_GrA_Param_c::m.mWallR);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, 
              fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
    mCcStts.Init(daObj_GrA_Param_c::m.mWeight, 0, this);
    field_0xf50.Set(mCcDCyl);
    field_0xf50.SetStts(&mCcStts);
    field_0xce0[0].Set(mCcDSph);
    field_0xce0[0].SetStts(&mCcStts);
    field_0xce0[0].SetAtSe(11);
    field_0xce0[0].SetAtSpl((dCcG_At_Spl)1);
    field_0xce0[0].SetAtType(AT_TYPE_800);
    field_0xce0[0].OnAtSPrmBit(12);
    field_0xce0[0].SetAtAtp(1);
    field_0xce0[0].OffTgNoConHit();
    field_0xce0[0].OffCoSetBit();

    field_0xce0[1].Set(mCcDSph);
    field_0xce0[1].SetStts(&mCcStts);
    field_0xce0[1].SetAtSe(11);
    field_0xce0[1].SetAtSpl((dCcG_At_Spl)1);
    field_0xce0[1].SetAtType(AT_TYPE_800);
    field_0xce0[1].OnAtSPrmBit(12);
    field_0xce0[1].SetAtAtp(1);
    field_0xce0[1].OffTgNoConHit();
    field_0xce0[1].OffCoSetBit();

    mAcch.CrrPos(dComIfG_Bgsp());
    field_0x9d4 = mAcch.m_gnd;
    mGroundY = mAcch.GetGroundH();

    for (int i = 0; i < 6; i++) {
        field_0xab8[i].field_0x24.init(&mAcch, 0.0f, 0.0f);
    }

    setEnvTevColor();
    setRoomNo();

    if (mMode == 2) {
        fopAcM_OffStatus(this, fopAcM_STATUS_UNK_004000);
    }

    field_0x1528.setPathInfo(getPathNo(), fopAcM_GetRoomNo(this), 1);
    restart();
    return MoveBGExecute();
}

/* 80C013B0-80C014F4 001590 0144+00 24/23 0/0 0/0 .text            setBaseAnm__11daObj_GrA_cFif */
void daObj_GrA_c::setBaseAnm(int param_1, f32 i_morf) {
    J3DAnmTransformKey* transformKey = NULL;
    int i_mode = 2;
    int var_27 = 0;
    (void) var_27;

    if (l_bckGetParamList[param_1][0] >= 0) {
        transformKey = (J3DAnmTransformKey*)getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[param_1][1]], l_bckGetParamList[param_1][0]);
    }

    cLib_offBit<u16>(field_0x840, 0x11);

    switch (param_1) {
        case 0:
        case 1:
        case 2:
        case 7:
        case 9:
        case 18:
        case 19:
        case 21:
            break;

        case 3:
            i_mode = 0;
            break;

        case 4:
        case 5:
            i_mode = 0;
            break;

        case 6:
        case 14:
        case 20:
            i_mode = 0;
            break;

        case 8:
            i_mode = 0;
            break;

        case 10:
        case 11:
        case 12:
        case 13:
            i_mode = 0;
            break;

        case 15:
            i_mode = 0;
            break;

        case 16:
        case 17:
            i_mode = 0;
            break;

        default:
            transformKey = NULL;
    }

    if (transformKey != NULL && setMcaMorfAnm(transformKey, 1.0f, i_morf, i_mode, 0, -1) != 0) {
        field_0x842 = 0;
        cLib_onBit<u16>(field_0x840, 0x11);
        mpModelMorf->setMorf(i_morf);
    }
}

/* 80C014F4-80C01698 0016D4 01A4+00 15/14 0/0 0/0 .text            setFaceAnm__11daObj_GrA_cFibf */
void daObj_GrA_c::setFaceAnm(int param_1, bool i_modify, f32 i_morf) {
    J3DAnmTransform* transform = NULL;
    int i_mode = 0;

    if (l_bckGetParamList[param_1][0] >= 0) {
        transform = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[param_1][1]], l_bckGetParamList[param_1][0]);
    }

    cLib_offBit<u16>(field_0x840, 0x44);
    cLib_offBit<u16>(field_0x840, 0x22);

    switch (param_1) {
        case 22:
        case 23:
        case 24:
        case 25:
            i_mode = 2;
            setFaceBtp(0);
            break;

        case 26:
        case 27:
        case 28:
            setFaceBtp(0);
            break;

        case 29:
            setFaceBtp(1);
            break;

        case 30:
            setFaceBtp(2);
            break;

        case 31:
            setFaceBtp(0);
            break;

        case 32:
            setFaceBtp(3);
            break;

        case 33:
            setFaceBtp(0);
            break;

        case 34:
            setFaceBtp(0);
            break;

        default:
            transform = NULL;
    }

    if (transform != NULL && setBckAnm(transform, 1.0f, i_mode, 0, -1, i_modify) != 0) {
        cLib_onBit<u16>(field_0x840, 0x22);
        mpModelMorf->setMorf(i_morf);
    }
}

/* 80C01698-80C0178C 001878 00F4+00 2/2 0/0 0/0 .text            setFaceBtp__11daObj_GrA_cFi */
void daObj_GrA_c::setFaceBtp(int param_1) {
    J3DAnmTexPattern* texPattern = NULL;
    int i_mode = 0;

    cLib_offBit<u16>(field_0x840, 0x44);

    if (l_btpGetParamList[param_1][0] >= 0) {
        texPattern = (J3DAnmTexPattern*)getTexPtrnAnmP(l_resNames[l_btpGetParamList[param_1][1]], l_btpGetParamList[param_1][0]);
    }

    switch (param_1) {
        case 0:
            i_mode = 2;
            break;

        case 1:
        case 2:
        case 3:
            break;

        default:
            texPattern = NULL;
    }

    if (field_0x844 != false) {
        texPattern = NULL;
    }

    if (texPattern != NULL && setBtpAnm(texPattern, mpModelMorf->getModel()->getModelData(), 1.0f, i_mode) != 0) {
        cLib_onBit<u16>(field_0x840, 0x44);
    }
}

/* 80C0178C-80C017AC 00196C 0020+00 22/22 0/0 0/0 .text            setBaseMotion__11daObj_GrA_cFif */
void daObj_GrA_c::setBaseMotion(int param_1, f32 param_2) {
    if (field_0xa90 >= 22) {
        return;
    }

    field_0xa90 = param_1;
    field_0xa94 = param_2;
    field_0xa8d = 1;
}

/* 80C017AC-80C017F0 00198C 0044+00 25/25 0/0 0/0 .text            setFaceMotion__11daObj_GrA_cFif */
void daObj_GrA_c::setFaceMotion(int param_1, f32 param_2) {
    if (field_0xa92 >= 14) {
        return;
    }

    field_0xa92 = param_1;
    field_0xa8e = 1;

    if (param_2 < 0.0f) {
        field_0xa98 = daObj_GrA_Param_c::m.field_0x0c;
        return;
    }

    field_0xa98 = param_2;
}

/* 80C017F0-80C018C0 0019D0 00D0+00 7/7 0/0 0/0 .text            calcMotion__11daObj_GrA_cFv */
void daObj_GrA_c::calcMotion() {
    if (field_0xa90 < 22 && mBaseMotionList[field_0xa90]) {
        field_0xa88 = (this->*mBaseMotionList[field_0xa90])(field_0xa8d);
    }

    if (field_0xa92 < 14 && mFaceMotionList[field_0xa92]) {
        (this->*mFaceMotionList[field_0xa92])(field_0xa8e);
    }

    field_0xa8d = 0;
    field_0xa8e = 0;
}

/* 80C018C0-80C018F4 001AA0 0034+00 4/4 0/0 0/0 .text            checkProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i */
BOOL daObj_GrA_c::checkProcess(int (daObj_GrA_c::*process)(void*)) {
    return process == field_0xa50;
}

/* 80C018F4-80C019A4 001AD4 00B0+00 22/22 0/0 0/0 .text          setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i */
int daObj_GrA_c::setProcess(int (daObj_GrA_c::*process)(void*)) {
    field_0xa7c = 2;

    if (field_0xa50) {
        (this->*field_0xa50)(NULL);
    }

    field_0xa7c = 0;
    field_0xa50 = process;

    if (field_0xa50) {
        (this->*field_0xa50)(NULL);
    }

    field_0xa7c = 1;

    return 1;
}

/* 80C019A4-80C019B8 001B84 0014+00 2/2 0/0 0/0 .text            getDistTableIdx__Fii */
static u8 getDistTableIdx(int param_1, int param_2) {
    return param_1 + param_2 * 20 + 94;
}

/* 80C019B8-80C01C18 001B98 0260+00 1/0 0/0 0/0 .text            setParam__11daObj_GrA_cFv */
void daObj_GrA_c::setParam() {
    if (mMode == 0) {
        if ((( checkProcess(&daObj_GrA_c::standWait)
            || checkProcess(&daObj_GrA_c::walk))
            && field_0x150c == 0)
            || checkProcess(&daObj_GrA_c::rollReturn)
            || checkProcess(&daObj_GrA_c::toStone)) {
                attnSttsOn(0, 0);
        } else {
            attention_info.flags = 0x200004;
        }
    } else if (mMode == 1) {
        if (checkProcess(&daObj_GrA_c::standWaitJump)) {
            attnSttsOn(1, 1);
            attention_info.distances[0] = getDistTableIdx(6, 6);
            attention_info.distances[1] = attention_info.distances[0];
            attention_info.distances[3] = getDistTableIdx(4, 6);
        } else {
            attention_info.flags = 0;
        }

        if (field_0x844 == false && daPy_py_c::checkNowWolf() != 0) {
            attention_info.flags = 0;
        }
    } else if (mMode == 2) {
        attention_info.flags &= ~0x10;
        attention_info.flags = 0x200000;
    } else {
        attention_info.flags &= ~0x10;
        if (field_0x1508 == 0) {
            attnSttsOn(0, 0);
        }
    }

    scale.set(daObj_GrA_Param_c::m.field_0x08, daObj_GrA_Param_c::m.field_0x08, daObj_GrA_Param_c::m.field_0x08);
    mCcStts.SetWeight(daObj_GrA_Param_c::m.mWeight);
    gravity = daObj_GrA_Param_c::m.mGravity;
}

/* 80C01C18-80C01D7C 001DF8 0164+00 1/1 0/0 0/0 .text            checkEvent__11daObj_GrA_cFv */
BOOL daObj_GrA_c::checkEvent() {
    BOOL rv = TRUE;
    // TODO: fake match to force reuse of pointer
    dComIfG_play_c* play = &g_dComIfG_gameInfo.play;
    if (dComIfGp_event_runCheck()) {
        rv = FALSE;
        if (eventInfo.checkCommandTalk()) {
            if (checkProcess(&daObj_GrA_c::talk)) {
                rv = (this->*field_0xa50)(NULL);
            } else if (!g_dComIfG_gameInfo.play.mEvent.chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                // FIXME: Condition uses fakematch to get GCN to match...
                setProcess(&daObj_GrA_c::talk);
            }
        } else if (eventInfo.checkCommandDemoAccrpt()) {
            if (dComIfGp_getEventManager().endCheck(mEvtIdx) != 0) {
                play->getEvent().reset();
                field_0x1520 = 0;
                mEvtIdx = -1;
                rv = TRUE;
            }

            if (field_0x209c == 1) {
                rv = TRUE;
            }
        } else {
            rv = TRUE;
        }
    }

    return rv;
}

/* 80C01D7C-80C01FE4 001F5C 0268+00 1/0 0/0 0/0 .text            mainProc__11daObj_GrA_cFv */
void daObj_GrA_c::mainProc() {
    fopAcM_setCullSizeBox(this, -160.0f, -100.0f, -160.0f, 160.0f, 240.0f, 160.0f);

    int chk_event = checkEvent();
    if (chk_event) {
        hitChk();
        if (field_0xa50) {
            (this->*field_0xa50)(NULL);
            if (mMode == 0) {
                if ((home.pos - current.pos).absXZ() > getSrchCircleR()) {
                    cXyz sp3c(0.0f, 0.0f, getSrchCircleR());
                    cLib_offsetPos(&current.pos, &home.pos, 
                                   cLib_targetAngleY(&home.pos, &current.pos), &sp3c);
                }
            }
        }

        if (chk_event) {
            orderEvent(field_0x1508, l_evtNameList[field_0x1520]);
        }
    }

    if (field_0xa8c != 0) {
        field_0xa94 = 0.0f;
        field_0xa98 = 0.0f;
        field_0xa8c = 0;
    }

    calcMotion();
}

/* 80C01FE4-80C01FE8 0021C4 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daObj_GrA_cFv */
void daObj_GrA_c::adjustShapeAngle() {
    /* empty function */
}

/* 80C01FE8-80C02614 0021C8 062C+00 1/0 0/0 0/0 .text            setMtx__11daObj_GrA_cFi */
void daObj_GrA_c::setMtx(int param_1) {
    static cXyz aTrembleTrans[15] = {
        cXyz(0.0f, 0.0f, 0.0f),
        cXyz(1.154554f, -0.052719f, 1.018953f),
        cXyz(0.722208f, -0.14003f, 1.333208f),
        cXyz(-1.36857f, -0.249424f, 0.091892f),
        cXyz(0.492355f, -0.368397f, -1.149426f),
        cXyz(0.439399, -0.484451f, 1.838846f),
        cXyz(-1.57283f, -0.585079f, 0.435947f),
        cXyz(1.174968f, -0.657772f, -1.155991f),
        cXyz(1.337504f, -0.690033f, 1.076126f),
        cXyz(-0.945907f, -0.669357f, -0.03023f),
        cXyz(0.065675f, -0.583237f, -1.136583f),
        cXyz(1.077258f, -0.43885f, 0.185038f),
        cXyz(-0.006088f, -0.274368f, 1.459019f),
        cXyz(-1.227272f, -0.123749f, 0.182495f),
        cXyz(-0.767045f, -0.020973f, -1.134783f),
    };

    J3DModel* model = mpModelMorf->getModel();
    J3DModelData* modelData = model->getModelData();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(jointCtrlCallBack);
    }

    if (field_0x109c != 0) {
        cXyz sp30(l_centerOfst);
        mDoMtx_stack_c::transS(0.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::ZXYrotM(field_0x91a);
        sp30.x += aTrembleTrans[field_0x10a0 % 15].x;
        sp30.y += aTrembleTrans[field_0x10a0 % 15].y;
        sp30.z += aTrembleTrans[field_0x10a0 % 15].z;
        mDoMtx_stack_c::transM(sp30);
        mDoMtx_stack_c::multVecZero(&sp30);
        mDoMtx_stack_c::transS(current.pos.x + sp30.x, current.pos.y + sp30.y, current.pos.z + sp30.z);
        mDoMtx_stack_c::ZXYrotM(field_0x91a);

        cXyz sp3c(scale);
        mDoMtx_stack_c::scaleM(sp3c);
        cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
    }

    if (field_0x109c != 0) {
        cXyz sp48;
        mDoMtx_stack_c::transS(0.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::ZXYrotM(field_0x91a);
        mDoMtx_stack_c::transM(aTrembleTrans[field_0x10a0 % 15].x, aTrembleTrans[field_0x10a0 % 15].y, aTrembleTrans[field_0x10a0 % 15].z);
        mDoMtx_stack_c::multVecZero(&sp48);
        mDoMtx_stack_c::transS(current.pos.x + sp48.x, current.pos.y + sp48.y, current.pos.z + sp48.z);
    } else {
        mDoMtx_stack_c::transS(current.pos);
    }

    mDoMtx_stack_c::ZXYrotM(field_0x91a);
    mDoMtx_stack_c::scaleM(scale);

    model->setBaseTRMtx(mDoMtx_stack_c::get());

    if (param_1 != 0) {
        model->setUserArea((u32)this);
    } else {
        model->setUserArea(0);
    }

    if (cLib_checkBit<u16>(field_0x840, 0x20) != 0) {
        mBck.getBckAnm()->setFrame(mBck.getFrame());
        mpModelMorf->modelCalc();
    } else {
        mpModelMorf->modelCalc();
    }
}

/* 80C02614-80C02970 0027F4 035C+00 1/0 0/0 0/0 .text            setCollisions__11daObj_GrA_cFv */
void daObj_GrA_c::setCollisions() {
    cXyz sp1c;

    if (field_0x1fc4 != 0 || field_0x844 != false) {
        field_0xf50.ClrTgHit();
    } else {
        if (field_0x109c == 0) {
            field_0xf50.SetAtType(AT_TYPE_800);
            if (mMode == 2) {
                field_0xf50.OnAtSetBit();
                field_0xf50.OffAtSPrmBit(12);
                field_0xf50.OnAtSPrmBit(16);
            } else {
                field_0xf50.OnAtSPrmBit(12);
            }

            field_0xf50.SetAtSe(10);
            field_0xf50.SetAtSpl((dCcG_At_Spl)13);
            field_0xf50.SetAtType(AT_TYPE_CSTATUE_SWING);

            if (mMode == 1) {
                field_0xf50.ClrTgHit();
            } else {
                field_0xf50.SetTgType(-1);
                field_0xf50.SetTgHitMark((CcG_Tg_HitMark)2);
                field_0xf50.SetTgSPrm(19);
                field_0xf50.OnTgShield();
                field_0xf50.OnTgNoConHit();
            }

            static cXyz aOfst(0.0f, 0.0f, 20.0f);

            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(field_0x91a.y);
            mDoMtx_stack_c::multVec(&aOfst, &sp1c);
            field_0xf50.SetC(sp1c);

            if (field_0xa90 == 10 || field_0xa90 == 4) {
                field_0xf50.SetH(200.0f);
            } else {
                field_0xf50.SetH(daObj_GrA_Param_c::m.field_0x14);
            }

            field_0xf50.SetR(daObj_GrA_Param_c::m.mWallH);

            if (field_0xf50.ChkAtSet()) {
                field_0xf50.SetR(daObj_GrA_Param_c::m.mWallH + 40.0f);
            }

            if (cLib_calcTimer(&field_0x1fd8) == 0) {
                field_0xf50.OnCoSetBit();
            } else {
                field_0xf50.OffCoSetBit();
            }

            dComIfG_Ccsp()->Set(&field_0xf50);
        }

        if (checkProcess(&daObj_GrA_c::step)) {
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(11));
            mDoMtx_stack_c::scaleM(scale);
            mDoMtx_stack_c::multVecZero(&sp1c);
            field_0xce0[1].SetC(sp1c);
            field_0xce0[1].SetR(daObj_GrA_Param_c::m.field_0x8c);
            dComIfG_Ccsp()->Set(&field_0xce0[1]);

            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(17));
            mDoMtx_stack_c::scaleM(scale);
            mDoMtx_stack_c::multVecZero(&sp1c);
            field_0xce0[0].SetC(sp1c);
            field_0xce0[0].SetR(daObj_GrA_Param_c::m.field_0x8c);
            dComIfG_Ccsp()->Set(&field_0xce0[0]);
        }
    }
}

/* 80C02970-80C02A5C 002B50 00EC+00 1/0 0/0 0/0 .text            setAttnPos__11daObj_GrA_cFv */
void daObj_GrA_c::setAttnPos() {
    lookat();

    static cXyz aEyeOfst(15.0f, 25.0f, 0.0f);

    cXyz sp18;
    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVec(&aEyeOfst, &eyePos);
    mDoMtx_stack_c::multVecZero(&sp18);
    attention_info.position.set(sp18.x, sp18.y + daObj_GrA_Param_c::m.field_0x00, sp18.z);
}

/* 80C02A5C-80C02A60 002C3C 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__11daObj_GrA_cFv */
void daObj_GrA_c::drawOtherMdls() {
    /* empty function */
}

/* 80C02A60-80C02A68 002C40 0008+00 1/0 0/0 0/0 .text            dbgDraw__11daObj_GrA_cFv */
bool daObj_GrA_c::dbgDraw() {
    return true;
}

/* 80C02A68-80C02AD4 002C48 006C+00 2/2 0/0 0/0 .text            ppMoveInit__11daObj_GrA_cFv */
int daObj_GrA_c::ppMoveInit() {
    memset(&field_0x10ac, 0, 16);

    field_0x109c = 0;
    field_0x10a4 = 0;
    field_0x10a8 = 0;
    field_0x10bc = -1;
    field_0x10c4 = 0;
    field_0x14b0 = -1;
    field_0x14f0 = FLT_MAX;
    field_0x14f4 = -1;

    return 1;
}

/* 80C02AD4-80C02AE8 002CB4 0014+00 17/17 0/0 0/0 .text            setLookMode__11daObj_GrA_cFi */
int daObj_GrA_c::setLookMode(int iNo) {
    JUT_ASSERT(2656, 0 <= iNo && iNo < NUMLOOKMODES_e);
    mLookMode = iNo;
    field_0x1500 = 1;
    return 1;
}

static f32 dummy_lits(int sel) {
    if (sel == 0) {
        return 0.5f;
    } else if (sel == 1) {
        return 149.0f;
    } else if (sel == 2) {
        return 74.0f;
    } else if (sel == 3) {
        return 75.0f;
    } else {
        return 100.0f;
    }
}

/* 80C02AE8-80C0308C 002CC8 05A4+00 1/1 0/0 0/0 .text            lookat__11daObj_GrA_cFv */
int daObj_GrA_c::lookat() {
    J3DModel* model = mpModelMorf->getModel();
    s16 sVar1 = current.angle.y - old.angle.y;
    cXyz* pcVar11 = NULL;

    if (field_0x1500 != 0) {
        field_0x14f8.entry(NULL);
        switch (mLookMode) {
            case 0:
                break;

            case 1:
                field_0x14f8.entry(daPy_getPlayerActorClass());
                break;

            case 2:
                field_0x14f8.entry(field_0x204c.getActor());
                break;

            case 3:
                break;
        }
    }

    field_0x1500 = 0;

    csXyz acStack_60[4];
    csXyz acStack_78[4];
    acStack_60[0].set(cM_deg2s(-daObj_GrA_Param_c::m.field_0x28) - 0x4000, cM_deg2s(daObj_GrA_Param_c::m.field_0x2c), 0);
    acStack_60[1].set(-0x4000, 0, 0);
    acStack_60[2].set(cM_deg2s(-daObj_GrA_Param_c::m.field_0x38), cM_deg2s(daObj_GrA_Param_c::m.field_0x3c), 0);
    acStack_60[3].set(0, 0, 0);
    acStack_78[0].set(cM_deg2s(-daObj_GrA_Param_c::m.field_0x24) - 0x4000, cM_deg2s(daObj_GrA_Param_c::m.field_0x30), 0);
    acStack_78[1].set(-0x4000, 0, 0);
    acStack_78[2].set(cM_deg2s(-daObj_GrA_Param_c::m.field_0x34), cM_deg2s(daObj_GrA_Param_c::m.field_0x40), 0);
    acStack_78[3].set(0, 0, 0);
    cXyz sp48[4];

    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(1));
    mDoMtx_stack_c::multVecZero(&sp48[0]);

    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(3));
    mDoMtx_stack_c::multVecZero(&sp48[1]);

    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&sp48[2]);

    cXyz sp88(0.0f, 0.0f, 32.0f);
    mDoMtx_stack_c::transS(sp48[2]);
    mDoMtx_stack_c::YrotM(field_0x91a.y);
    mDoMtx_stack_c::multVec(&sp88, &sp48[3]);

    cXyz sp94, spa0;
    fopAc_ac_c* actor_p;
    switch (mLookMode) {
        case 1:
        case 2:
            actor_p = field_0x14f8.getActor();
            if (actor_p != NULL) {
                pcVar11 = &actor_p->eyePos;
            }
            break;

        case 3:
            spa0.set(0.0f, 0.0f, 200.0f);
            mDoMtx_stack_c::YrotS(field_0x91a.y);
            mDoMtx_stack_c::multVec(&spa0, &spa0);
            spa0 += current.pos;
            pcVar11 = &spa0;
            break;

        case 0:
            break;
    }
    mLookat.setAttnPos(pcVar11);

    for (int i = 0; i < 4; i++) {
        mLookat.setMaxJntLmt(acStack_60[i], i);
        mLookat.setMinJntLmt(acStack_78[i], i);
        mLookat.setJntPos(sp48[i], i);
    }
    mLookat.calc(this, model->getBaseTRMtx(), sVar1);

    csXyz* local_ac[3] = { &field_0x9bc, &field_0x9c2, &field_0x9c8 };
    int iVar2 = 0;
    for (int i = 2, iVar1 = 1; i >= 0; i--, iVar1++) {
        if (sVar1 == 0) {
            cLib_addCalcAngleS2(&local_ac[i]->x, mLookat.getRot(i).x, 8, 0x800 / iVar1);
            cLib_addCalcAngleS2(&local_ac[i]->y, mLookat.getRot(i).y, 8, 0x800 / iVar1);
            cLib_addCalcAngleS2(&local_ac[i]->z, mLookat.getRot(i).z, 8, 0x800 / iVar1);
        } else {
            local_ac[i]->x = mLookat.getRot(i).x;
            local_ac[i]->y = mLookat.getRot(i).y;
            local_ac[i]->z = mLookat.getRot(i).z;
        }

        iVar2 = (local_ac[i]->x != 0 || local_ac[i]->y != 0 || local_ac[i]->z != 0);
    }

    if (iVar2 != 0 && field_0x109c == 0) {
        setMtx(1);
    }

    return 1;
}

/* 80C0308C-80C031E4 00326C 0158+00 1/1 0/0 0/0 .text            hitChk__11daObj_GrA_cFv */
int daObj_GrA_c::hitChk() {
    if (field_0xaa4 != 0) {
        cLib_calcTimer(&field_0xaa4);
    } else {
        mCcStts.Move();
        if (mMode == 0 && field_0xf50.ChkTgHit() != 0) {
            field_0xab0.entry(field_0xf50.GetTgHitAc());

            if (field_0x1528.field_0xa18 != 0) {
                field_0xaa4 = daObj_GrA_Param_c::m.field_0x54;
                def_se_set(&mSound, field_0xf50.GetTgHitObj(), 0x2C, NULL);
                setProcess(&daObj_GrA_c::rollReturn);
                health = 0;
                field_0x1528.field_0xa18 = 0;
            } else {
                def_se_set(&mSound, field_0xf50.GetTgHitObj(), 0x2C, NULL);
                if (health != 0) {
                    setProcess(&daObj_GrA_c::defence);
                }
            }

            field_0xf50.ClrTgHit();
        }
    }

    return 1;
}

/* 80C031E4-80C0335C 0033C4 0178+00 12/0 0/0 0/0 .text            wait__11daObj_GrA_cFPv */
int daObj_GrA_c::wait(void* param_1) {
    switch (field_0xa7c) {
        case 0: {
            if (field_0x844) {
                break;
            }

            switch (mMode) {
                case 0:
                    setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
                    setFaceMotion(0, -1.0f);
                    setProcess(&daObj_GrA_c::standWait);
                    break;

                case 1:
                    setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
                    setFaceMotion(0, -1.0f);
                    setProcess(&daObj_GrA_c::standWaitJump);
                    setLookMode(1);
                    break;

                case 2:
                    setProcess(&daObj_GrA_c::standRoll);
                    break;

                case 3:
                    setProcess(&daObj_GrA_c::waitDemo);
            }
        }

        case 1:
        case 2:
            break;
    }

    return 1;
}

/* 80C0335C-80C035B8 00353C 025C+00 2/0 0/0 0/0 .text            talk__11daObj_GrA_cFPv */
int daObj_GrA_c::talk(void* param_1) {
    int iVar1, iVar2;
    int rv = 0;
    int iVar3;
    int iVar4 = field_0x848;
    s16 sVar1;
    switch (field_0xa7c) {
        case 0:
            field_0x1fcc = 0;
            mMsgFlow.init(this, iVar4, 0, NULL);
            setLookMode(1);
            field_0xaa0 = 0;
            break;

        case 1:
            sVar1 = cLib_targetAngleY(&current.pos, &daPy_getPlayerActorClass()->current.pos);
            if (sVar1 != field_0x91a.y) {
                if (field_0x1fcc < 2) {
                    if (turn_step(sVar1, 0, 19, 20)) {
                        setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
                        setFaceMotion(0, -1.0f);
                    }
                    
                    return 0;
                }

                turn_step(sVar1, -1, -1, 20);
            }

            if (mMsgFlow.doFlow(this, NULL, 0) != 0) {
                #ifdef DEBUG
                char* cVar1;
                int choiceNo = mMsgFlow.getChoiceNo();
                if (choiceNo != 0) {
                    cVar1 = "はい"; // Yes
                } else {
                    cVar1 = "いいえ"; // No
                }
                OS_REPORT("二択分岐 %s %d\n", cVar1, choiceNo);
                #endif

                if (mMsgFlow.getChoiceNo() == 0) {
                    setProcess(&daObj_GrA_c::rollReturn);
                } else {
                    setProcess(&daObj_GrA_c::wait);
                }

                rv = 1;
            }

            iVar3 = field_0xaa0;
            if (ctrlMsgAnm(iVar1, iVar2, this) != 0) {
                if (iVar2 != -1) {
                    setBaseMotion(l_eventMotionChangeTable[iVar2], daObj_GrA_Param_c::m.field_0x0c);
                }

                if (iVar1 != -1) {
                    setFaceMotion(l_eventFaceChangeTable[iVar1], -1.0f);
                }
            } else if (iVar3 != 0) {
                setFaceTalkAfter();
            }
            break;

        case 2:
            dComIfGp_event_reset();
            rv = 1;
            field_0x1fcc = 0;
    }

    return rv;
}

/* 80C035B8-80C036B4 003798 00FC+00 2/2 0/0 0/0 .text ctrlMsgAnm__11daObj_GrA_cFRiRiP10fopAc_ac_c */
int daObj_GrA_c::ctrlMsgAnm(int& param_1, int& param_2, fopAc_ac_c* param_3) {
    param_1 = -1;
    param_2 = -1;

    dMsgObject_c* msg_p = (dMsgObject_c*)dMsgObject_c::getActor();
    JUT_ASSERT(3163, 0 != msg_p);

    if (msg_p->mode == 2 || msg_p->mode == 3) {
        field_0xa9c = -1;
    } else if (msg_p->mode == 6) {
        if (msg_p->msg_idx != field_0xa9c) {
            param_1 = dComIfGp_getMesgFaceAnimeAttrInfo();
            param_2 = dComIfGp_getMesgAnimeAttrInfo();
            field_0xa9c = msg_p->msg_idx;
        }

        if (dMsgObject_isMouthCheck()) {
            cLib_offBit<u16>(field_0x840, 0x100);
        } else {
            cLib_onBit<u16>(field_0x840, 0x100);
        }

        field_0xaa0 = 20;
    } else {
        if (cLib_checkBit<u16>(field_0x840, 0x100) != 0) {
            cLib_offBit<u16>(field_0x840, 0x100);
        }

        field_0xa9c = -1;
    }

    cLib_calcTimer(&field_0xaa0);

    return field_0xaa0;
}

/* 80C036B4-80C03720 003894 006C+00 2/2 0/0 0/0 .text            s_sub__FPvPv */
static void* s_sub(void* i_actor, void* i_data) {
    daObj_GrA_c* i_this = (daObj_GrA_c*)i_data;
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_TAG_GRA && i_this->checkTagGraSub((fopAc_ac_c*)i_actor)) {
        return i_actor;
    }
    return NULL;
}

/* 80C03720-80C03764 003900 0044+00 1/1 0/0 0/0 .text checkTagGraSub__11daObj_GrA_cFP10fopAc_ac_c */
bool daObj_GrA_c::checkTagGraSub(fopAc_ac_c* a_this) {
    daTagGra_c* i_this = (daTagGra_c*)a_this;
    if (getTagNo() == i_this->getGraNo()) {
        return 1;
    } else {
        return 0;
    }
}

/* 80C03764-80C03830 003944 00CC+00 1/1 0/0 0/0 .text            fallAbyssCheck__11daObj_GrA_cFv */
bool daObj_GrA_c::fallAbyssCheck() {
    if (mGroundY == -1000000000.0f && field_0x1528.isPath()) {
        field_0x1fc0++;
        if (field_0x1fc0 == 30) {
            current.pos = field_0x1528.getPntPos(0);
            old.pos = current.pos;
            field_0x1528.setIdx(0);
            field_0x1fc0 = 0;

            return true;
        }
    } else {
        field_0x1fc0 = 0;
    }

    return false;
}

static f32 dummy_lits_01(int sel) {
    if (sel == 0) {
        return 0.25f;
    } else {
        return 3.5f;
    }
}

/* 80C03830-80C03B14 003A10 02E4+00 1/1 0/0 0/0 .text            setPrtcl__11daObj_GrA_cFv */
int daObj_GrA_c::setPrtcl() {
    static u16 const l_prticles_id[3] = {
        0x83B5,
        0x83B6,
        0x83B7,
    };

    JPABaseEmitter* centerEmitter = NULL;
    int iVar1 = 0;
    int simply_zero = 0;

    for (int i = 0; i < 6; i++) {
        if (i == 2 || i == 3 || i == 5) {
            iVar1 = 1;
        } else {
            iVar1 = 0;
        }

        field_0xab8[i].field_0x24.setEffectCenter(&tevStr, &field_0xab8[i].field_0x4, iVar1, simply_zero,
                                                  (field_0xab8[i].field_0x0 == true) ? &field_0xab8[i].field_0x4 : NULL,
                                                  (field_0xab8[i].field_0x0 == true) ? &field_0xab8[i].field_0x10 : NULL,
                                                  NULL, fopAcM_GetRoomNo(this), 0.0f, speedF);

        if (field_0xab8[i].field_0x0 != 0) {
            centerEmitter = field_0xab8[i].field_0x24.getCenterEmitter(0, 0);
            if (centerEmitter != NULL) {
                switch (i) {
                    case 0:
                    case 1:
                        field_0xab8[i].field_0x18.set(0.7f, 0.7f, 0.7f);
                        centerEmitter->setAwayFromCenterSpeed(0.0f);
                        centerEmitter->setRandomDirectionSpeed(0.0f);
                        centerEmitter->setSpread(1.0f);
                        centerEmitter->setGlobalParticleScale(field_0xab8[i].field_0x18);
                        break;

                    case 5:
                        field_0xab8[i].field_0x18.set(2.0f, 2.0f, 2.0f);
                        break;

                    case 4:
                        centerEmitter->setVolumeSize(40);
                        centerEmitter->setVolumeMiniRadius(1.0f);
                        centerEmitter->setDirectionalSpeed(0.0f);
                        break;
                }
            }
        }

        field_0xab8[i].field_0x0 = 0;
    }

    if (field_0x201d == 1) {
        JPABaseEmitter* emitter = NULL;
        cXyz sp28(current.pos);
        cXyz sp34(1.0f, 1.0f, 1.0f);

        for (int i = 0; i < 3; i++) {
            if (i == 0) {
                field_0x2020[i] = dComIfGp_particle_set(field_0x2020[i], l_prticles_id[i], &sp28, &tevStr, &current.angle, 
                                                        &sp34, 0xFF, NULL, -1, NULL, NULL, NULL);
            } else {
                field_0x2020[i] = dComIfGp_particle_setPolyColor(field_0x2020[i], l_prticles_id[i], mAcch.m_gnd, &sp28, 
                                                                    &tevStr, &current.angle, &sp34, 0, NULL, -1, NULL);
            }

            emitter = dComIfGp_particle_getEmitter(field_0x2020[i]);
            if (emitter != NULL) {
                emitter->setGlobalTranslation(sp28.x, sp28.y, sp28.z);
            }
        }
    }

    field_0x201d = 0;

    return 1;
}

#include "d/actor/d_a_obj_gra2_soldier.inc"

/* 80C03B14-80C03B48 003CF4 0034+00 1/0 0/0 0/0 .text            base000__11daObj_GrA_cFi */
int daObj_GrA_c::base000(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(0, field_0xa94);
    }

    return 1;
}

/* 80C03B48-80C03B7C 003D28 0034+00 1/0 0/0 0/0 .text            base001__11daObj_GrA_cFi */
int daObj_GrA_c::base001(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(2, field_0xa94);
    }

    return 1;
}

/* 80C03B7C-80C03C1C 003D5C 00A0+00 1/0 0/0 0/0 .text            base003__11daObj_GrA_cFi */
int daObj_GrA_c::base003(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(4, field_0xa94);
    } else if (mpModelMorf->isStop()) {
        setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
        setBaseAnm(0, field_0xa94);
    }

    return 1;
}

/* 80C03C1C-80C03CBC 003DFC 00A0+00 1/0 0/0 0/0 .text            base004__11daObj_GrA_cFi */
int daObj_GrA_c::base004(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(5, field_0xa94);
    } else if (mpModelMorf->isStop()) {
        setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
        setBaseAnm(0, field_0xa94);
    }

    return 1;
}

/* 80C03CBC-80C03D54 003E9C 0098+00 1/0 0/0 0/0 .text            base005__11daObj_GrA_cFi */
int daObj_GrA_c::base005(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(6, field_0xa94);
    }

    if (mpModelMorf->getFrame() >= 4.5f && mpModelMorf->getFrame() <= 5.5f) {
        mSound.startCreatureVoice(Z2SE_GORON_V_TO_STONE, -1);
    }

    return 1;
}

/* 80C03D54-80C03D88 003F34 0034+00 1/0 0/0 0/0 .text            base006__11daObj_GrA_cFi */
int daObj_GrA_c::base006(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(7, field_0xa94);
    }

    return 1;
}

/* 80C03D88-80C03DF0 003F68 0068+00 1/0 0/0 0/0 .text            base007__11daObj_GrA_cFi */
int daObj_GrA_c::base007(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(8, field_0xa94);
        mSound.startCreatureVoice(Z2SE_GORON_V_RECOVER, -1);
    }

    return 1;
}

/* 80C03DF0-80C03E74 003FD0 0084+00 1/0 0/0 0/0 .text            base008__11daObj_GrA_cFi */
int daObj_GrA_c::base008(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(10, field_0xa94);
    }

    if (mpModelMorf->checkFrame(2.0f)) {
        mSound.startCreatureVoice(Z2SE_GORON_V_GUARD, -1);
    }

    return 1;
}

/* 80C03E74-80C03F14 004054 00A0+00 1/0 0/0 0/0 .text            base009__11daObj_GrA_cFi */
int daObj_GrA_c::base009(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(1, field_0xa94);
    }

    if (mpModelMorf->checkFrame(12.0f) || mpModelMorf->checkFrame(30.0f)) {
        mSound.startCreatureVoice(Z2SE_GORON_V_FIGHTING_WAIT, -1);
    }

    return 1;
}

/* 80C03F14-80C03FC0 0040F4 00AC+00 1/0 0/0 0/0 .text            base010__11daObj_GrA_cFi */
int daObj_GrA_c::base010(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(3, field_0xa94);
    }

    if (mpModelMorf->getFrame() == 4.0f || ( mpModelMorf->getFrame() >= 18.5f && mpModelMorf->getFrame() <= 19.5f)) {
        mSound.startCreatureVoice(Z2SE_GORON_V_PUNCH, -1);
    }

    return 1;
}

/* 80C03FC0-80C04118 0041A0 0158+00 1/0 0/0 0/0 .text            base013__11daObj_GrA_cFi */
int daObj_GrA_c::base013(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(9, field_0xa94);
        mpModelMorf->setEndFrame(30.0f);
        field_0x2010 = 0;
    }

    if (mAcch.ChkGroundHit()) {
        if (mpModelMorf->getPlaySpeed() >= 1.0f || mpModelMorf->getPlaySpeed() <= -1.0f) {
            field_0x201d = 1;
        }

        field_0x201c = 0;
    } else if (field_0x201c < 10) {
        field_0x201c++;
    }
    
    if (field_0x2010 != field_0x842 && field_0x201c < 10) {
        mSound.startCreatureSound(Z2SE_GORON_ROLLING, cLib_minMaxLimit(fabsf(mpModelMorf->getPlaySpeed()) * 20.0f, 1.0f, 127.0f), -1);
        field_0x2010 = field_0x842;
    }

    return 1;
}

/* 80C04118-80C04180 0042F8 0068+00 1/0 0/0 0/0 .text            base016__11daObj_GrA_cFi */
int daObj_GrA_c::base016(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(11, field_0xa94);
        mSound.startCreatureVoice(Z2SE_GORON_V_HEAD_BACK, -1);
    }

    return 1;
}

/* 80C04180-80C041E8 004360 0068+00 1/0 0/0 0/0 .text            base017__11daObj_GrA_cFi */
int daObj_GrA_c::base017(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(12, field_0xa94);
        mSound.startCreatureVoice(Z2SE_GORON_V_HEAD_BACK, -1);
    }

    return 1;
}

/* 80C041E8-80C04260 0043C8 0078+00 1/0 0/0 0/0 .text            base018__11daObj_GrA_cFi */
int daObj_GrA_c::base018(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(13, field_0xa94);
        mpModelMorf->setFrame(6.0f);
        mSound.startCreatureVoice(Z2SE_GORON_V_TOTTER, -1);
    }

    return 1;
}

/* 80C04260-80C042D4 004440 0074+00 1/0 0/0 0/0 .text            base019__11daObj_GrA_cFi */
int daObj_GrA_c::base019(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(14, field_0xa94);
        mpModelMorf->setEndFrame(20.0f);
        mSound.startCreatureVoice(Z2SE_GORON_V_HIT_TO_STONE, -1);
    }

    return 1;
}

/* 80C042D4-80C04308 0044B4 0034+00 1/0 0/0 0/0 .text            base020__11daObj_GrA_cFi */
int daObj_GrA_c::base020(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(15, field_0xa94);
    }

    return 1;
}

/* 80C04308-80C0433C 0044E8 0034+00 1/0 0/0 0/0 .text            base021__11daObj_GrA_cFi */
int daObj_GrA_c::base021(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(16, field_0xa94);
    }

    return 1;
}

/* 80C0433C-80C04370 00451C 0034+00 1/0 0/0 0/0 .text            base022__11daObj_GrA_cFi */
int daObj_GrA_c::base022(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(17, field_0xa94);
    }

    return 1;
}

/* 80C04370-80C043A4 004550 0034+00 1/0 0/0 0/0 .text            base023__11daObj_GrA_cFi */
int daObj_GrA_c::base023(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(18, field_0xa94);
    }

    return 1;
}

/* 80C043A4-80C043D8 004584 0034+00 1/0 0/0 0/0 .text            base024__11daObj_GrA_cFi */
int daObj_GrA_c::base024(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(19, field_0xa94);
    }

    return 1;
}

/* 80C043D8-80C0440C 0045B8 0034+00 1/0 0/0 0/0 .text            base025__11daObj_GrA_cFi */
int daObj_GrA_c::base025(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(20, field_0xa94);
    }

    return 1;
}

/* 80C0440C-80C04440 0045EC 0034+00 1/0 0/0 0/0 .text            base026__11daObj_GrA_cFi */
int daObj_GrA_c::base026(int param_1) {
    if (param_1 != 0) {
        setBaseAnm(21, field_0xa94);
    }

    return 1;
}

/* 80C04440-80C04478 004620 0038+00 1/0 0/0 0/0 .text            face000__11daObj_GrA_cFi */
int daObj_GrA_c::face000(int param_1) {
    if (param_1 != 0) {
        setFaceAnm(22, true, field_0xa98);
    }

    return 1;
}

/* 80C04478-80C04518 004658 00A0+00 1/0 0/0 0/0 .text            face003__11daObj_GrA_cFi */
int daObj_GrA_c::face003(int param_1) {
    if (param_1 != 0) {
        setFaceAnm(27, true, field_0xa98);
    } else if (mBck.isStop()) {
        setFaceMotion(0, -1.0f);
        setFaceAnm(22, true, field_0xa98);
    }

    return 1;
}

/* 80C04518-80C045B8 0046F8 00A0+00 1/0 0/0 0/0 .text            face004__11daObj_GrA_cFi */
int daObj_GrA_c::face004(int param_1) {
    if (param_1 != 0) {
        setFaceAnm(28, true, field_0xa98);
    } else if (mBck.isStop()) {
        setFaceMotion(0, -1.0f);
        setFaceAnm(22, true, field_0xa98);
    }

    return 1;
}

/* 80C045B8-80C045F0 004798 0038+00 1/0 0/0 0/0 .text            face005__11daObj_GrA_cFi */
int daObj_GrA_c::face005(int param_1) {
    if (param_1 != 0) {
        setFaceAnm(31, true, field_0xa98);
    }

    return 1;
}

/* 80C045F0-80C04628 0047D0 0038+00 1/0 0/0 0/0 .text            face006__11daObj_GrA_cFi */
int daObj_GrA_c::face006(int param_1) {
    if (param_1 != 0) {
        setFaceAnm(24, true, field_0xa98);
    }

    return 1;
}

/* 80C04628-80C04660 004808 0038+00 1/0 0/0 0/0 .text            face007__11daObj_GrA_cFi */
int daObj_GrA_c::face007(int param_1) {
    if (param_1 != 0) {
        setFaceAnm(25, true, field_0xa98);
    }

    return 1;
}

/* 80C04660-80C04700 004840 00A0+00 1/0 0/0 0/0 .text            face008__11daObj_GrA_cFi */
int daObj_GrA_c::face008(int param_1) {
    if (param_1 != 0) {
        setFaceAnm(29, true, field_0xa98);
    } else if (mBck.isStop()) {
        setFaceMotion(4, -1.0f);
        setFaceAnm(24, true, field_0xa98);
    }

    return 1;
}

/* 80C04700-80C047A0 0048E0 00A0+00 1/0 0/0 0/0 .text            face009__11daObj_GrA_cFi */
int daObj_GrA_c::face009(int param_1) {
    if (param_1 != 0) {
        setFaceAnm(30, true, field_0xa98);
    } else if (mBck.isStop()) {
        setFaceMotion(5, -1.0f);
        setFaceAnm(25, true, field_0xa98);
    }

    return 1;
}

/* 80C047A0-80C047D8 004980 0038+00 1/0 0/0 0/0 .text            face010__11daObj_GrA_cFi */
int daObj_GrA_c::face010(int param_1) {
    if (param_1 != 0) {
        setFaceAnm(23, true, field_0xa98);
    }

    return 1;
}

/* 80C047D8-80C04810 0049B8 0038+00 1/0 0/0 0/0 .text            face011__11daObj_GrA_cFi */
int daObj_GrA_c::face011(int param_1) {
    if (param_1 != 0) {
        setFaceAnm(26, true, field_0xa98);
    }

    return 1;
}

/* 80C04810-80C04848 0049F0 0038+00 1/0 0/0 0/0 .text            face012__11daObj_GrA_cFi */
int daObj_GrA_c::face012(int param_1) {
    if (param_1 != 0) {
        setFaceAnm(32, true, field_0xa98);
    }

    return 1;
}

/* 80C04848-80C04880 004A28 0038+00 1/0 0/0 0/0 .text            face016__11daObj_GrA_cFi */
int daObj_GrA_c::face016(int param_1) {
    if (param_1 != 0) {
        setFaceAnm(33, true, field_0xa98);
    }

    return 1;
}

/* 80C04880-80C048B8 004A60 0038+00 1/0 0/0 0/0 .text            face017__11daObj_GrA_cFi */
int daObj_GrA_c::face017(int param_1) {
    if (param_1 != 0) {
        setFaceAnm(34, true, field_0xa98);
    }

    return 1;
}

/* 80C048B8-80C048F8 004A98 0040+00 1/0 0/0 0/0 .text            face999__11daObj_GrA_cFi */
int daObj_GrA_c::face999(int param_1) {
    if (param_1 != 0) {
        cLib_offBit<u16>(field_0x840, 0x22);
        setFaceBtp(0);
    }

    return 1;
}

/* 80C048F8-80C04A0C 004AD8 0114+00 2/2 0/0 0/0 .text            evtcutTalk__11daObj_GrA_cFii */
int daObj_GrA_c::evtcutTalk(int param_1, int param_2) {
    s32 sVar1 = field_0x848;
    if (param_2 != 0) {
        mMsgFlow.init(this, sVar1, 0, NULL);
        field_0xaa0 = 0;
    }

    if (mMsgFlow.doFlow(this, NULL, 0)) {
        return 1;
    }

    int iVar1, iVar2;
    int iVar3 = field_0xaa0;
    if (ctrlMsgAnm(iVar1, iVar2, this) != 0) {
        if (iVar2 != -1) {
            setBaseMotion(l_eventMotionChangeTable[iVar2], daObj_GrA_Param_c::m.field_0x0c);
        }

        if (iVar1 != -1) {
            setFaceMotion(l_eventFaceChangeTable[iVar1], -1.0f);
        }
    } else {
        if (iVar3 != 0) {
            setFaceTalkAfter();
        }
    }

    return 0;
}

/* 80C04A0C-80C04A88 004BEC 007C+00 2/2 0/0 0/0 .text            setFaceTalkAfter__11daObj_GrA_cFv */
void daObj_GrA_c::setFaceTalkAfter() {
    switch (field_0xa92) {
        case 6:
            setFaceMotion(4, daObj_GrA_Param_c::m.field_0x0c);
            break;

        case 7:
            setFaceMotion(5, daObj_GrA_Param_c::m.field_0x0c);
            break;

        default:
            setFaceMotion(0, daObj_GrA_Param_c::m.field_0x0c);
    }
}

/* 80C04A88-80C04AA8 004C68 0020+00 1/0 0/0 0/0 .text            daObj_GrA_Create__FPv */
static int daObj_GrA_Create(void* param_1) {
    daObj_GrA_c* i_this = (daObj_GrA_c*)param_1;
    return i_this->create();
}

/* 80C04AA8-80C04AC8 004C88 0020+00 1/0 0/0 0/0 .text            daObj_GrA_Delete__FPv */
static int daObj_GrA_Delete(void* param_1) {
    daObj_GrA_c* i_this = (daObj_GrA_c*)param_1;
    return i_this->MoveBGDelete();
}

/* 80C04AC8-80C04AE8 004CA8 0020+00 1/0 0/0 0/0 .text            daObj_GrA_Execute__FPv */
static int daObj_GrA_Execute(void* param_1) {
    daObj_GrA_c* i_this = (daObj_GrA_c*)param_1;
    return i_this->MoveBGExecute();
}

/* 80C04AE8-80C04B14 004CC8 002C+00 1/0 0/0 0/0 .text            daObj_GrA_Draw__FPv */
static int daObj_GrA_Draw(void* param_1) {
    daObj_GrA_c* i_this = (daObj_GrA_c*)param_1;
    return i_this->Draw();
}

/* 80C04B14-80C04B1C 004CF4 0008+00 1/0 0/0 0/0 .text            daObj_GrA_IsDelete__FPv */
static int daObj_GrA_IsDelete(void* param_1) {
    return 1;
}

AUDIO_INSTANCES;

/* 80C104DC-80C105E4 000674 0108+00 1/2 0/0 0/0 .data            mBaseMotionList__11daObj_GrA_c */
daObj_GrA_c::MotionFunc daObj_GrA_c::mBaseMotionList[22] = {
    &daObj_GrA_c::base000,
    &daObj_GrA_c::base001,
    &daObj_GrA_c::base003,
    &daObj_GrA_c::base004,
    &daObj_GrA_c::base005,
    &daObj_GrA_c::base006,
    &daObj_GrA_c::base007,
    &daObj_GrA_c::base008,
    &daObj_GrA_c::base009,
    &daObj_GrA_c::base010,
    &daObj_GrA_c::base013,
    &daObj_GrA_c::base016,
    &daObj_GrA_c::base017,
    &daObj_GrA_c::base018,
    &daObj_GrA_c::base019,
    &daObj_GrA_c::base020,
    &daObj_GrA_c::base021,
    &daObj_GrA_c::base022,
    &daObj_GrA_c::base023,
    &daObj_GrA_c::base024,
    &daObj_GrA_c::base025,
    &daObj_GrA_c::base026,
};

/* 80C1068C-80C10734 000824 00A8+00 1/2 0/0 0/0 .data            mFaceMotionList__11daObj_GrA_c */
daObj_GrA_c::MotionFunc daObj_GrA_c::mFaceMotionList[14] = {
    &daObj_GrA_c::face000,
    &daObj_GrA_c::face003,
    &daObj_GrA_c::face004,
    &daObj_GrA_c::face005,
    &daObj_GrA_c::face006,
    &daObj_GrA_c::face007,
    &daObj_GrA_c::face008,
    &daObj_GrA_c::face009,
    &daObj_GrA_c::face010,
    &daObj_GrA_c::face011,
    &daObj_GrA_c::face012,
    &daObj_GrA_c::face016,
    &daObj_GrA_c::face017,
    &daObj_GrA_c::face999,
};

/* 80C0FE14-80C0FE14 000398 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80C10734-80C10754 -00001 0020+00 1/0 0/0 0/0 .data            daObj_GrA_MethodTable */
static actor_method_class daObj_GrA_MethodTable = {
    (process_method_func)daObj_GrA_Create,
    (process_method_func)daObj_GrA_Delete,
    (process_method_func)daObj_GrA_Execute,
    (process_method_func)daObj_GrA_IsDelete,
    (process_method_func)daObj_GrA_Draw,
};

/* 80C10754-80C10784 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_GRA */
extern actor_process_profile_definition g_profile_OBJ_GRA = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_GRA,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObj_GrA_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  19,                     // mPriority
  &daObj_GrA_MethodTable, // sub_method
  0x00040100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
