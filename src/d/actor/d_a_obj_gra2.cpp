/**
 * @file d_a_obj_gra2.cpp
 * 
*/

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
#include "d/d_camera.h"
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

UNK_REL_DATA;

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
static int l_bckGetParamList[70] = {
    21, 1, 18, 0,
    22, 1, 11, 0,
    18, 1, 19, 1,
    16, 0, -1, 0,
    15, 1, 16, 1,
    6, 0, 12, 0,
    13, 0, 14, 0,
    17, 0, 3, 3,
    5, 3, 15, 0,
    6, 3, 17, 1,
    20, 1, 3, 4,
    14, 1, 10, 0,
    9, 1, 7, 1,
    8, 0, 12, 1,
    13, 1, 10, 1,
    8, 1, 11, 1,
    6, 0, 4, 3,
    9, 0,
};

/* 80C1000C-80C1002C 0001A4 0020+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static int l_btpGetParamList[8] = {
    28, 1, 32, 1,
    31, 1, 21, 0,
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

/* 80BFFF70-80C0011C 000150 01AC+00 1/1 0/0 0/0 .text            __ct__11daObj_GrA_cFv */
daObj_GrA_c::daObj_GrA_c() {}

/* 80C0011C-80C003CC 0002FC 02B0+00 1/0 0/0 0/0 .text            __dt__11daObj_GrA_cFv */
daObj_GrA_c::~daObj_GrA_c() {
    // NONMATCHING
    dComIfG_resDelete(&mPhase, getResName());
    for (int i = 0; *l_exloadRes_list[mMode + i] >= 0; i++) {
        dComIfG_resDelete(field_0xa5c[i], l_resNames[*l_exloadRes_list[mMode + i]]);
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
    // NONMATCHING
    fopAcM_SetupActor(this, daObj_GrA_c);

    mMode = getMode();
    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, getResName());
    if (phase == cPhs_ERROR_e || phase == cPhs_UNK3_e) {
        return cPhs_ERROR_e;
    }

    int uVar1;
    if (phase == cPhs_COMPLEATE_e) {
        uVar1 = 1;
    }

    int i = 0;
    for (; *l_exloadRes_list[mMode] >= 0; i++) {
        phase = (cPhs__Step)dComIfG_resLoad(field_0xa5c[i], l_resNames[*l_exloadRes_list[mMode]]);
        if (phase == cPhs_ERROR_e || phase == cPhs_UNK3_e) {
            return cPhs_ERROR_e;
        }

        if (phase == cPhs_COMPLEATE_e) {
            uVar1++;
        }
    }

    int iVar1;
    if ((int)home.angle.x == 0xFFFF) {
        iVar1 = -1;
    } else {
        iVar1 = home.angle.x;
    }
    field_0x848 = iVar1;

    field_0x1fe8 = fopAcM_GetParam(this) >> 30;
    field_0x200c = (home.angle.z >> 8) & 0x7F;
    field_0x2030 = (home.angle.z >> 15) & 1;

    if (uVar1 == (i + 1) && (uVar1 == 3 || uVar1 == 4)) {
        if (MoveBGCreate(getResName(), 
                         dComIfG_getObjctResName2Index(getResName(), "grA_stone_col.dzb"), NULL, 0x3B10) == 5) {
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
    // NONMATCHING
    Mtx MStack_78, MStack_a8;
    int jointNo = i_joint->getJntNo();
    cXyz spb4;
    MtxP anmMtx = param_2->getAnmMtx(jointNo);
    mDoMtx_stack_c::copy(anmMtx);

    if (jointNo != 2) {
        switch (jointNo) {
            case 1:
            case 3:
            case 4:
                anmMtx = mDoMtx_stack_c::get();
                cMtx_copy(anmMtx, MStack_78);
                spb4.set(MStack_78[0][3], MStack_78[1][3], MStack_78[2][3]);
                MStack_78[2][3] = 0.0f;
                MStack_78[1][3] = 0.0f;
                MStack_78[0][3] = 0.0f;
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
    }

    param_2->setAnmMtx(jointNo, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    if ((jointNo == 4 || jointNo == 7) && cLib_checkBit<u16>(field_0x840, 0x20)) {
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
    // NONMATCHING
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
    // NONMATCHING
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

UNK_REL_BSS;

/* 80C108EC-80C108F8 000054 000C+00 0/2 0/0 0/0 .bss             l_centerOfst */
static cXyz l_centerOfst(0.0f, 67.0f, 26.0f);

/* 80C10904-80C10908 00006C 0004+00 1/2 0/0 0/0 .bss             l_HIO */
static daObj_GrA_Param_c l_HIO;

/* 80C010D4-80C013B0 0012B4 02DC+00 1/1 0/0 0/0 .text            init__11daObj_GrA_cFv */
int daObj_GrA_c::init() {
    // NONMATCHING
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
        field_0xab8[0].field_0x24[i]->init(&mAcch, 0.0f, 0.0f);
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
    // NONMATCHING
    J3DAnmTransformKey* transformKey = NULL;
    int i_mode = 3;

    if (l_bckGetParamList[param_1] >= 0) {
        transformKey = (J3DAnmTransformKey*)getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[param_1 + 1]], l_bckGetParamList[param_1]);
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
    // NONMATCHING
    J3DAnmTransform* transform = NULL;
    int i_mode = 0;

    if (l_bckGetParamList[param_1] >= 0) {
        transform = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[param_1 + 1]], l_bckGetParamList[param_1]);
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
    // NONMATCHING
    J3DAnmTexPattern* texPattern = NULL;
    int i_mode = 0;

    cLib_offBit<u16>(field_0x840, 0x44);

    if (l_btpGetParamList[param_1] >= 0) {
        texPattern = (J3DAnmTexPattern*)getTexPtrnAnmP(l_resNames[l_btpGetParamList[param_1 + 1]], l_btpGetParamList[param_1]);
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
    // NONMATCHING
    if (mMode == 0) {
        if (!checkProcess(&daObj_GrA_c::standWait)) {
            if (checkProcess(&daObj_GrA_c::wait)) {
                if (field_0x150c != 0) {
                    if (!checkProcess(&daObj_GrA_c::rollReturn)) {
                        if (checkProcess(&daObj_GrA_c::toStone)) {
                            attnSttsOn(0, 0);
                        } else {
                            attention_info.flags = 0x200004;
                        }
                    }
                }
            }
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
    // NONMATCHING
    BOOL rv = TRUE;
    if (dComIfGp_event_runCheck()) {
        rv = FALSE;
        if (eventInfo.checkCommandTalk()) {
            if (checkProcess(&daObj_GrA_c::talk)) {
                rv = (this->*field_0xa50)(NULL);
            } else if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                setProcess(&daObj_GrA_c::talk);
            }
        } else if (eventInfo.checkCommandDemoAccrpt()) {
            if (dComIfGp_getEventManager().endCheck(mEvtIdx) != 0) {
                dComIfGp_event_reset();
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
    // NONMATCHING
    fopAcM_setCullSizeBox(this, -160.0f, -100.0f, -160.0f, 160.0f, 240.0f, 160.0f);

    if (checkEvent()) {
        hitChk();
        if (field_0xa50) {
            (this->*field_0xa50)(NULL);
            if (mMode == 0) {
                if (getSrchCircleR() < (home.pos - current.pos).absXZ()) {
                    cXyz sp3c(0.0f, 0.0f, getSrchCircleR());
                    cLib_offsetPos(&current.pos, &home.pos, 
                                   cLib_targetAngleY(&home.pos, &current.pos), &sp3c);
                }
            }
        }

        orderEvent(field_0x1508, l_evtNameList[field_0x1520]);
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
    // NONMATCHING
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
    // NONMATCHING
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

            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(11));
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
    // NONMATCHING
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

/* 80C02AE8-80C0308C 002CC8 05A4+00 1/1 0/0 0/0 .text            lookat__11daObj_GrA_cFv */
int daObj_GrA_c::lookat() {
    // NONMATCHING
    J3DModel* model = mpModelMorf->getModel();
    s16 sVar1 = current.angle.y - old.angle.y;
    s8 sVar2 = 0;
    cXyz* pcVar11 = NULL;

    if (field_0x1500 != 0) {
        field_0x14f8.entry(NULL);
        switch (mLookMode) {
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
        mLookat.setMaxJntLmt(acStack_60[i], sVar1);
        mLookat.setMinJntLmt(acStack_78[i], sVar1);
        mLookat.setJntPos(sp48[i], i);
    }
    mLookat.calc(this, model->getBaseTRMtx(), sVar1);

    csXyz* local_ac[3] = { &field_0x9bc, &field_0x9c2, &field_0x9c8 };
    int iVar2 = 0;
    for (int i = 2, iVar1 = 1; i >= 0; i--) {
        if (sVar1 == 0) {
            cLib_addCalcAngleS2(&local_ac[i]->x, mLookat.getRot(i).x, 8, 0x800 / iVar1);
            cLib_addCalcAngleS2(&local_ac[i]->y, mLookat.getRot(i).y, 8, 0x800 / iVar1);
            cLib_addCalcAngleS2(&local_ac[i]->z, mLookat.getRot(i).y, 8, 0x800 / iVar1);
        } else {
            local_ac[i]->x = mLookat.getRot(i).x;
            local_ac[i]->y = mLookat.getRot(i).y;
            local_ac[i]->z = mLookat.getRot(i).z;
        }

        iVar2 = 0;
        if (local_ac[i]->x == 0 && local_ac[i]->y == 0) {
            if (local_ac[i]->z != 0) {
                iVar2 = 1;
            }
        }
        iVar1++;
    }

    if (iVar2 != 0 && field_0x109c == 0) {
        setMtx(1);
    }

    return 1;
}

/* 80C0308C-80C031E4 00326C 0158+00 1/1 0/0 0/0 .text            hitChk__11daObj_GrA_cFv */
int daObj_GrA_c::hitChk() {
    // NONMATCHING
    if (field_0xaa4 != 0) {
        cLib_calcTimer(&field_0xaa4);
    } else {
        mCcStts.Move();
        if (mMode == 0 && field_0xf50.ChkTgHit() != 0) {
            field_0xab0.entry(field_0xf50.GetAc());

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
    // NONMATCHING
    if (field_0xa7c == 0 && field_0x844 == false) {
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

    return 1;
}

/* 80C0335C-80C035B8 00353C 025C+00 2/0 0/0 0/0 .text            talk__11daObj_GrA_cFPv */
int daObj_GrA_c::talk(void* param_1) {
    // NONMATCHING
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

                if (mMsgFlow.getChoiceNo() != 0) {
                    setProcess(&daObj_GrA_c::wait);
                } else {
                    setProcess(&daObj_GrA_c::rollReturn);
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
    // NONMATCHING
    daTagGra_c* i_this = (daTagGra_c*)a_this;
    return (getTagNo() & 0xFFFF) == i_this->getGraNo();
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

/* 80C03830-80C03B14 003A10 02E4+00 1/1 0/0 0/0 .text            setPrtcl__11daObj_GrA_cFv */
int daObj_GrA_c::setPrtcl() {
    // NONMATCHING
    static u16 const l_prticles_id[3] = {
        0x83B5,
        0x83B6,
        0x83B7,
    };

    csXyz* pcVar8;
    cXyz* pcVar7;
    int iVar1;

    for (int i = 0; i < 6; i++) {
        if (i == 2 || i == 3 || i == 5) {
            iVar1 = 1;
        } else {
            iVar1 = 0;
        }

        // if (field_0xab8[i].field_0x0 == 1) {
        //     pcVar8 = &field_0xab8[i].field_0x10;
        // }

        // if (field_0xab8[i].field_0x0 == 1) {
        //     pcVar7 = &field_0xab8[i].field_0x4;
        // }

        field_0xab8[i].field_0x24[i]->setEffectCenter(&tevStr, &field_0xab8[i].field_0x4, iVar1, 0, &field_0xab8[i].field_0x4, &field_0xab8[i].field_0x10, NULL, fopAcM_GetRoomNo(this), 0.0f, speedF);

        if (field_0xab8[i].field_0x0 != 0) {
            JPABaseEmitter* centerEmitter = field_0xab8[i].field_0x24[i]->getCenterEmitter(0, 0);
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

            field_0xab8[i].field_0x0 = 0;
        }
    }

    if (field_0x201d == 1) {
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

            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x2020[i]);
            if (emitter != NULL) {
                emitter->setGlobalTranslation(sp28.x, sp28.y, sp28.z);
            }
        }
    }

    field_0x201d = 0;

    return 1;
}

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
    // NONMATCHING
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
    // NONMATCHING
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
    // NONMATCHING
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
    // NONMATCHING
    if (param_1 != 0) {
        setBaseAnm(3, field_0xa94);
    }

    if (mpModelMorf->getFrame() == 4.0f || ( mpModelMorf->getFrame() >= 18.5 && mpModelMorf->getFrame() <= 19.5)) {
        mSound.startCreatureVoice(Z2SE_GORON_V_PUNCH, -1);
    }

    return 1;
}

/* 80C03FC0-80C04118 0041A0 0158+00 1/0 0/0 0/0 .text            base013__11daObj_GrA_cFi */
int daObj_GrA_c::base013(int param_1) {
    // NONMATCHING
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
    // NONMATCHING
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

/* 80C0536C-80C053C4 00554C 0058+00 4/4 0/0 0/0 .text            getSrchCircleR__11daObj_GrA_cFv */
f32 daObj_GrA_c::getSrchCircleR() {
    // NONMATCHING
    f32 srchCircleR;
    u8 uVar1 = fopAcM_GetParam(this) & 0x7F;
    if (uVar1 == 0) {
        srchCircleR = daObj_GrA_Param_c::m.field_0x6c * 10.0f;
    } else {
        srchCircleR = uVar1 * 10;
    }

    return srchCircleR;
}

/* 80C053C4-80C05920 0055A4 055C+00 2/0 0/0 0/0 .text            standWait__11daObj_GrA_cFPv */
int daObj_GrA_c::standWait(void* param_1) {
    // NONMATCHING
    cXyz sp5c;

    switch (field_0xa7c) {
        case 0:
            field_0xf50.OffAtSetBit();
            field_0x1518 = 0;
            break;

        case 1:
            cLib_calcTimer(&field_0x1fdc);
            if (cLib_calcTimer(&field_0x1528.field_0xa18) != 0) {
                if (field_0xa90 != 8) {
                    cXyz sp68(0.0f, 0.0f, 0.0f);
                    if (field_0xa90 == 11) {
                        if (mpModelMorf->getFrame() >= 4.0f) {
                            sp68.z = -0.44806668;
                        }
                    } else if (field_0xa90 == 12) {
                        sp68.z = -0.6734286;
                    } else if (field_0xa90 == 13) {
                        sp68.z = 1.7936944;
                        sp68.x = -0.9048056;
                    }

                    cLib_offsetPos(&current.pos, &current.pos, shape_angle.y, &sp68);

                    if (mpModelMorf->isStop()) {
                        setBaseMotion(8, daObj_GrA_Param_c::m.field_0x0c);
                        setFaceMotion(13, -1.0f);
                        setLookMode(1);
                    }
                }
            } else {
                sp5c = daPy_getPlayerActorClass()->current.pos;
                sp5c.y = daPy_py_c::getAttentionOffsetY();
                f32 fVar1 = (sp5c - current.pos).absXZ();
                cLib_targetAngleY(&attention_info.position, &sp5c);
                cLib_targetAngleY(&current.pos, &eyePos);

                if (field_0x1fdc == 0 && dComIfGp_checkPlayerStatus0(0, 0x100) == 0) {
                    if ((home.pos - current.pos).absXZ() <= getSrchCircleR() && getSrchCircleR() <= fVar1) {
                        if (std::abs(sp5c.y - current.pos.y) < 300.0f) {
                            field_0x150c = 1;
                        }

                        if (field_0x150c != 0) {
                            setProcess(&daObj_GrA_c::walk);
                            setBaseMotion(1, daObj_GrA_Param_c::m.field_0x0c);
                            setFaceMotion(13, -1.0f);
                        } else {
                            cLib_addCalcAngleS2(&current.angle.y, home.angle.y, 1, daObj_GrA_Param_c::m.field_0x88);
                            shape_angle.y = current.angle.y;
                            field_0x91a.y = current.angle.y;

                            if (current.angle.y == home.angle.y) {
                                setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
                                setFaceMotion(13, -1.0f);
                            }
                        }
                    }
                }
            }
    }

    return 1;
}

/* 80C05920-80C05F64 005B00 0644+00 3/0 0/0 0/0 .text            walk__11daObj_GrA_cFPv */
int daObj_GrA_c::walk(void* param_1) {
    // NONMATCHING
    cXyz sp60;

    switch (field_0xa7c) {
        case 0:
            setBaseMotion(1, daObj_GrA_Param_c::m.field_0x0c);
            setFaceMotion(13, -1.0f);
            break;

        case 1:
            daPy_py_c* player = daPy_getPlayerActorClass();
            sp60 = player->current.pos;
            f32 fVar1 = (sp60 - current.pos).absXZ();
            s16 sVar1 = cLib_targetAngleY(&current.pos, &sp60);
            cLib_targetAngleY(&current.pos, &eyePos);
            s16 sVar2 = shape_angle.y;
            cXyz sp6c(home.pos);
            cLib_calcTimer(&field_0x1fdc);

            if (field_0x1fdc == 0 && dComIfGp_checkPlayerStatus0(0, 0x100) == 0) {
                if ((sp6c - sp60).absXZ() <= (getSrchCircleR() + 100.0f) && fVar1 <= getSrchCircleR() + 100.0f) {
                    if (std::abs(sp60.y - current.pos.y) < 300.0f) {
                        field_0x150c = 1;
                    }
                }
            } else {
                field_0x150c = 0;
            }

            if (field_0x150c == 0) {
                setLookMode(1);
                sp6c = sp60;
                if (fVar1 < daObj_GrA_Param_c::m.field_0x94) {
                    if ((sVar1 - sVar2) < cM_deg2s(daObj_GrA_Param_c::m.field_0x80)) {
                        setProcess(&daObj_GrA_c::step);
                        field_0x1098 = daObj_GrA_Param_c::m.field_0x50;
                        field_0x108c = current.pos;
                        return 1;
                    }
                }
            } else if ((sp6c - current.pos).absXZ() < 50.0f) {
                setLookMode(1);
                setProcess(&daObj_GrA_c::wait);
                speedF = 0.0f;
                return 1;
            }

            cLib_addCalc2(&speedF, daObj_GrA_Param_c::m.field_0x90, 0.25f, 3.5f);
            sVar1 = cLib_targetAngleY(&current.pos, &sp6c);
            cLib_addCalcAngleS2(&current.angle.y, sVar1, 1, daObj_GrA_Param_c::m.field_0x88);
            shape_angle.y = current.angle.y;
            field_0x91a.y = current.angle.y;
            break;
    }

    return 1;
}

/* 80C05F64-80C061F4 006144 0290+00 1/0 0/0 0/0 .text            defence__11daObj_GrA_cFPv */
int daObj_GrA_c::defence(void* param_1) {
    // NONMATCHING
    fopAc_ac_c* aTgHitActor_p;
    s16 sVar1;
    switch (field_0xa7c) {
        case 0:
            setBaseMotion(7, 0.0f);
            setFaceMotion(10, 0.0f);
            calcMotion();

            aTgHitActor_p = field_0xab0.getActor();
            JUT_ASSERT(309, 0 != aTgHitActor_p);

            sVar1 = cLib_targetAngleY(&current.pos, &aTgHitActor_p->current.pos);
            current.angle.y = sVar1;
            sVar1 = current.angle.y;
            field_0x91a.y = sVar1;
            shape_angle.y = sVar1;
            field_0x108c = current.pos;
            field_0x1098 = 0.0f;
            break;

        case 1:
            if (field_0x842 != 0) {
                setProcess(&daObj_GrA_c::walk);
            } else {
                cLib_addCalc2(&field_0x1098, daObj_GrA_Param_c::m.field_0x50, 0.25f, 20.0f);
                cXyz sp2c(field_0x108c);
                sp2c.x -= field_0x1098 * cM_ssin(current.angle.y);
                sp2c.z -= field_0x1098 * cM_scos(current.angle.y);
                cLib_addCalcPos2(&current.pos, sp2c, 0.8f, 45.0f);

                mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(26));
                mDoMtx_stack_c::multVecZero(&field_0xab8[0].field_0x4);
                field_0xab8[0].field_0x4.y -= 20.0f;
                field_0xab8[0].field_0x10 = current.angle;
                field_0xab8[0].field_0x10.y -= 0x8000;
                field_0xab8[0].field_0x0 = 1;

                mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(23));
                mDoMtx_stack_c::multVecZero(&field_0xab8[1].field_0x4);
                field_0xab8[1].field_0x4.y -= 20.0f;
                field_0xab8[1].field_0x10 = current.angle;
                field_0xab8[1].field_0x10.y -= 0x8000;
                field_0xab8[1].field_0x0 = 1;
                field_0xaa4 = daObj_GrA_Param_c::m.field_0x54;
            }
            break;

        case 2:
            field_0xab0.entry(NULL);
    }

    return 1;
}

/* 80C061F4-80C067D8 0063D4 05E4+00 5/0 0/0 0/0 .text            toStone__11daObj_GrA_cFPv */
int daObj_GrA_c::toStone(void* param_1) {
    // NONMATCHING
    s16 sVar1;
    f32 fVar1;
    
    switch (field_0xa7c) {
        case 0:
            field_0xaac = 1;
            ppMoveInit();
            field_0xaa8 = 0;
            current.angle.y = shape_angle.y;
            field_0x202c = field_0x842;

            if (mMode != 1 && !dComIfGs_isSaveDunSwitch(0x1D)) {
                dComIfGs_onSaveDunSwitch(0x1D);
            }
            break;

        case 1:
            switch (field_0xaac) {
                case 1:
                    if (field_0x109c != 0) {
                        cXyz sp70(daPy_getPlayerActorClass()->current.pos);
                        fVar1 = (sp70 - current.pos).absXZ();
                        if (field_0xaa8 != 0) {
                            field_0xaa8--;
                            if (field_0xaa8 <= 0) {
                                field_0x10a0 = 90;
                                field_0xaac = 2;
                            }
                        } else if ((fVar1 > getSrchCircleR() || std::abs(sp70.y - current.pos.y) > 300.0f) || field_0x10c4 != 0) {
                            field_0xaa8 = 30;
                        }
                    } else if (mpModelMorf->checkFrame(0.0f)) {
                        setBaseMotion(4, daObj_GrA_Param_c::m.field_0x0c * 0.5f);
                        setFaceMotion(13, daObj_GrA_Param_c::m.field_0x0c * 0.5f);
                        calcMotion();
                        mpModelMorf->setFrame(mpModelMorf->getEndFrame());
                        mpModelMorf->setPlaySpeed(1.0f);
                        field_0x109c = 1;
                    }
                    break;

                case 2:
                    if (field_0x10a0 != 0) {
                        cXyz sp7c(0.0f, 0.0f, 20.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(field_0x91a.y);
                        mDoMtx_stack_c::multVec(&sp7c, &field_0xab8[4].field_0x4);
                        field_0xab8[4].field_0x0 = 1;
                        mSound.startCreatureSoundLevel(Z2SE_GORON_TREMBLE, 0, -1);
                        field_0x10a0--;
                    } else {
                        if (field_0x10c4 != 0 && daPy_py_c::checkNowWolf() == 0) {
                            sVar1 = cM_deg2s(daObj_GrA_Param_c::m.field_0x4c);

                            if (strcmp(dComIfGp_getStartStageName(), "F_SP109") == 0) {
                                fVar1 = 95.0f;
                            } else {
                                fVar1 = daObj_GrA_Param_c::m.field_0x48;
                            }

                            daPy_getPlayerActorClass()->setRollJump(fVar1 * cM_scos(sVar1), fVar1 * cM_ssin(sVar1), daPy_getPlayerActorClass()->shape_angle.y);
                        } else {
                            field_0xf50.OnAtSetBit();
                            field_0x109c = 0;
                        }

                        setBaseMotion(6, 0.0f);
                        setFaceMotion(3, 0.0f);
                        mpModelMorf->setPlaySpeed(1.0f);
                        field_0x10a0 = 0;
                        field_0xaac = 3;
                    }
                    break;

                case 3:
                    if (field_0x842 != 0) {
                        field_0xf50.OffAtSetBit();
                        setProcess(&daObj_GrA_c::wait);
                        setLookMode(1);
                        field_0x1528.field_0xa18 = 0;
                        field_0xaac = 0;
                        health = daObj_GrA_Param_c::m.field_0x10;
                        field_0x109c = 0;
                    } else if (mpModelMorf->checkFrame(12.0f)) {
                        field_0xab8[3].field_0x4 = current.pos;
                        field_0xab8[3].field_0x10 = field_0x91a;
                        field_0xab8[3].field_0x0 = 1;
                    }
            }
    }

    field_0x10c4 = 0;
    
    return 1;
}

/* 80C067D8-80C06CDC 0069B8 0504+00 2/0 0/0 0/0 .text            step__11daObj_GrA_cFPv */
int daObj_GrA_c::step(void* param_1) {
    // NONMATCHING
    switch (field_0xa7c) {
        case 0:
            setBaseMotion(9, daObj_GrA_Param_c::m.field_0x0c);
            setFaceMotion(9, -1.0f);
            field_0x1098 = 0.0f;
            field_0x1fe0 = 0;
            field_0x1fdc = 0;
            break;

        case 1:
            if (field_0x842 != 0) {
                field_0x1528.field_0xa18 = daObj_GrA_Param_c::m.field_0x98;
                setProcess(&daObj_GrA_c::wait);
                setBaseMotion(8, daObj_GrA_Param_c::m.field_0x0c);
                setFaceMotion(8, -1.0f);
            } else if (mpModelMorf->getFrame() >= 25.0f && field_0x1fe0 == 0) {
                field_0x1528.field_0xa18 = daObj_GrA_Param_c::m.field_0x98;
                setProcess(&daObj_GrA_c::wait);
                setBaseMotion(13, daObj_GrA_Param_c::m.field_0x0c);
                setFaceMotion(8, -1.0f);
                setLookMode(0);
                field_0xce0[0].OffAtSetBit();
                field_0xce0[0].ClrAtHit();
                field_0xce0[1].OffAtSetBit();
                field_0xce0[1].ClrAtHit();
            } else {
                cLib_addCalc2(&speedF, daObj_GrA_Param_c::m.field_0x90 / 3.0f, 0.25f, 3.5f);
                cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &daPy_getPlayerActorClass()->current.pos),
                                    4, daObj_GrA_Param_c::m.field_0x88);
                shape_angle.y = current.angle.y;
                field_0x91a.y = current.angle.y;

                if (mpModelMorf->getFrame() == 9.0f) {
                    field_0xce0[1].OnAtSetBit();
                } else {
                    if (mpModelMorf->getFrame() == 15.0f) {
                        field_0xce0[1].OffAtSetBit();
                    } else {
                        if (mpModelMorf->getFrame() == 20.0f) {
                            field_0xce0[0].OnAtSetBit();
                        } else {
                            if (mpModelMorf->getFrame() >= 24.0f) {
                                field_0xce0[0].OffAtSetBit();
                            }
                        }
                    }
                }

                if (field_0xce0[1].ChkAtShieldHit()) {
                    field_0xce0[1].ClrAtHit();
                    field_0xab0.entry(field_0xce0[1].GetAtHitAc());
                    field_0x1528.field_0xa18 = daObj_GrA_Param_c::m.field_0x98;

                    setProcess(&daObj_GrA_c::wait);
                    setBaseMotion(11, daObj_GrA_Param_c::m.field_0x0c);
                    setFaceMotion(8, -1.0f);
                    setLookMode(0);

                    if (!dComIfGs_isSaveDunSwitch(0x1C)) {
                        dComIfGs_onSaveDunSwitch(0x1C);
                    }
                } else if (field_0xce0[1].ChkAtHit() != 0) {
                    field_0x1fe0 = 1;
                    field_0x1fdc = 60;
                    if (!dComIfGs_isSaveDunSwitch(0x1C)) {
                        dComIfGs_onSaveDunSwitch(0x1C);
                    }
                }

                if (field_0xce0[0].ChkAtShieldHit()) {
                    field_0xab0.entry(field_0xce0[0].GetAtHitAc());
                    field_0x1528.field_0xa18 = daObj_GrA_Param_c::m.field_0x98;

                    setProcess(&daObj_GrA_c::wait);
                    setBaseMotion(12, daObj_GrA_Param_c::m.field_0x0c);
                    setFaceMotion(8, -1.0f);
                    setLookMode(0);

                    if (!dComIfGs_isSaveDunSwitch(0x1C)) {
                        dComIfGs_onSaveDunSwitch(0x1C);
                    }
                } else if (field_0xce0[0].ChkAtHit() != 0) {
                    field_0x1fe0 = 1;
                    field_0x1fdc = 60;

                    if (!dComIfGs_isSaveDunSwitch(0x1C)) {
                        dComIfGs_onSaveDunSwitch(0x1C);
                    }
                }
            }
            break;

        case 2:
            field_0xce0[0].OffAtSetBit();
            field_0xce0[0].ClrAtHit();
            field_0xce0[1].OffAtSetBit();
            field_0xce0[1].ClrAtHit();
            speedF = 0.0f;
    }

    return 1;
}

/* 80C06CDC-80C0780C 006EBC 0B30+00 3/0 0/0 0/0 .text            rollReturn__11daObj_GrA_cFPv */
int daObj_GrA_c::rollReturn(void* param_1) {
    // NONMATCHING
    cXyz sp48;
    f32 fVar1;
    s16 sVar1, sVar2;

    switch (field_0xa7c) {
        case 0:
            setLookMode(0);
            field_0x1fe4 = 0;
            field_0x2008 = 0.0f;
            speedF = 0.0f;

            if (mMode == 1) {
                setBaseMotion(20, daObj_GrA_Param_c::m.field_0x0c * 0.5f);
                setFaceMotion(13, daObj_GrA_Param_c::m.field_0x0c * 0.5f);
            } else {
                if ((home.pos - current.pos).absXZ() < 150.0f) {
                    setBaseMotion(4, 0.0f);
                    setFaceMotion(13, 0.0f);
                } else {
                    if (abs(cLib_targetAngleY(&current.pos, &home.pos) - current.angle.y) < 0x4000) {
                        current.angle.y = cLib_targetAngleY(&current.pos, &home.pos);
                        sVar1 = current.angle.y;
                        field_0x91a.y = current.angle.y;
                        shape_angle.y = current.angle.y;
                        setBaseMotion(4, 0.0f);
                        setFaceMotion(13, 0.0f);
                    } else {
                        current.angle.y = cLib_targetAngleY(&current.pos, &home.pos);
                        sVar1 = current.angle.y + 0x8000;
                        field_0x91a.y = sVar1;
                        shape_angle.y = sVar1;
                        setBaseMotion(14, 0.0f);
                        setFaceMotion(13, 0.0f);
                    }
                }
            }

            calcMotion();
            break;

        case 1:
            switch (field_0x1fe4) {
                case 0:
                    if (field_0xa90 != 4 && field_0xa90 != 20) {
                        if (!mpModelMorf->isStop()) {
                            if (mMode != 1) {
                                if ((home.pos - current.pos).absXZ() < 150.0f) {
                                    field_0x1fe4 = 1;
                                    setBaseMotion(10, 0.0f);
                                    setFaceMotion(13, 0.0f);
                                    calcMotion();

                                    if (abs(current.angle.y - field_0x91a.y) >= 0x4000) {
                                        mpModelMorf->setFrame(mpModelMorf->getEndFrame());
                                        mpModelMorf->setLoopFrame(mpModelMorf->getEndFrame());
                                    }

                                    mpModelMorf->setPlaySpeed(0.0f);

                                    return 1;
                                }

                                setProcess(&daObj_GrA_c::toStone);
                                field_0x109c = 1;
                            }
                        } else if (mpModelMorf->checkFrame(14.0f)) {
                            cXyz sp54(0.0f, 0.0f, 20.0f);
                            mDoMtx_stack_c::transS(current.pos);
                            mDoMtx_stack_c::YrotM(field_0x91a.y);
                            mDoMtx_stack_c::multVec(&sp54, &field_0xab8[2].field_0x4);
                            field_0xab8[2].field_0x10 = field_0x91a;
                            field_0xab8[2].field_0x0 = 1;
                        }
                    } else {
                        cXyz sp60(home.pos);
                        cLib_addCalc2(&field_0x2008, daObj_GrA_Param_c::m.field_0xa0, 0.05f, 1.0f);
                        cLib_chasePos(&current.pos, sp60, field_0x2008);

                        fVar1 = field_0x2008 * 0.1f;
                        if (cM3d_IsZero(field_0x2008)) {
                            fVar1 = 0.0f;
                        }

                        sVar1 = current.angle.y + 0x8000;
                        field_0x91a.y = sVar1;
                        shape_angle.y = sVar1;

                        if (mpModelMorf->isStop()) {
                            if ((home.pos - current.pos).absXZ() < 40.0f) {
                                setProcess(&daObj_GrA_c::toStone);
                                setBaseMotion(4, daObj_GrA_Param_c::m.field_0x0c * 0.5f);
                                setFaceMotion(13, daObj_GrA_Param_c::m.field_0x0c * 0.5f);
                                calcMotion();
                                mpModelMorf->setFrame(mpModelMorf->getEndFrame());
                                mpModelMorf->setPlaySpeed(1.0f);
                                field_0x109c = 1;
                            } else {
                                field_0x1fe4 = 1;
                                setBaseMotion(10, 0.0f);
                                setFaceMotion(13, 0.0f);
                                calcMotion();

                                mpModelMorf->setFrame(mpModelMorf->getEndFrame());
                                mpModelMorf->setLoopFrame(mpModelMorf->getEndFrame());
                                mpModelMorf->setPlaySpeed(-fVar1);
                            }
                        }
                    }
                    break;

                case 1:
                    cXyz sp6c(home.pos);
                    cLib_addCalc2(&field_0x2008, daObj_GrA_Param_c::m.field_0xa0, 0.25f, 3.5f);
                    cLib_chasePos(&current.pos, sp6c, field_0x2008);

                    fVar1 = field_0x2008 * 0.1f;
                    if (cM3d_IsZero(field_0x2008)) {
                        fVar1 = 0.0f;
                    }

                    if (abs(current.angle.y - field_0x91a.y) < 0x4000) {
                        mpModelMorf->setPlaySpeed(fVar1);
                        sVar1 = current.angle.y;
                        field_0x91a.y = sVar1;
                        shape_angle.y = sVar1;
                    } else {
                        mpModelMorf->setPlaySpeed(-fVar1);
                        sVar2 = current.angle.y + 0x8000;
                        field_0x91a.y = sVar2;
                        shape_angle.y = sVar2;
                    }

                    fVar1 = (home.pos - current.pos).absXZ();
                    if (fVar1 < 40.0f) {
                        setProcess(&daObj_GrA_c::toStone);
                    }
                    break;
            }

        case 2:
            field_0x2008 = 0.0f;
            field_0x1fe4 = -1;
    }

    return 1;
}

/* 80C0780C-80C078A8 0079EC 009C+00 1/1 0/0 0/0 .text            soldierDemoSkip__11daObj_GrA_cFv */
int daObj_GrA_c::soldierDemoSkip() {
    // NONMATCHING
    setLookMode(1);
    setBaseMotion(0, 0.0f);
    setFaceMotion(13, 0.0f);
    field_0x109c = 0;
    setProcess(&daObj_GrA_c::wait);
    mDemoCamMode = 0;
    field_0x209c = 0;
    return 1;
}

/* 80C078A8-80C07C40 007A88 0398+00 1/0 0/0 0/0 .text            soldierDemo__11daObj_GrA_cFPv */
int daObj_GrA_c::soldierDemo(void* param_1) {
    // NONMATCHING
    cXyz sp1c;

    switch (field_0xa7c) {
        case 0:
            setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
            setFaceMotion(13, -1.0f);
            setLookMode(2);
            mDemoCamMode = 0;
            field_0x209c = 1;
            break;

        case 1:
            switch (mDemoCamMode) {
                case 1:
                    if (field_0xa90 == 17) {
                        setBaseMotion(20, daObj_GrA_Param_c::m.field_0x0c * 0.5f);
                        setFaceMotion(13, daObj_GrA_Param_c::m.field_0x0c * 0.5f);
                        setLookMode(0);
                    } else if (mpModelMorf->isStop()) {
                        field_0x109c = 1;
                    } else if (mpModelMorf->checkFrame(14.0f)) {
                        cXyz sp28(0.0f, 0.0f, 20.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(field_0x91a.y);
                        mDoMtx_stack_c::multVec(&sp28, &field_0xab8[2].field_0x4);
                        field_0xab8[2].field_0x10 = field_0x91a;
                        field_0xab8[2].field_0x0 = 1;
                    }
                    break;

                case 3:
                    if (field_0x10a0 != 0) {
                        cXyz sp34(0.0f, 0.0f, 20.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(field_0x91a.y);
                        mDoMtx_stack_c::multVec(&sp34, &field_0xab8[4].field_0x4);
                        field_0xab8[4].field_0x10 = field_0x91a;
                        field_0xab8[4].field_0x0 = 1;

                        mSound.startCreatureSoundLevel(Z2SE_GORON_TREMBLE, 0, -1);

                        field_0x10a0--;
                        if (field_0x10a0 == 0) {
                            setBaseMotion(6, 0.0f);
                            setFaceMotion(3, 0.0f);
                            mpModelMorf->setPlaySpeed(1.0f);
                            field_0x10a0 = 0;
                            field_0x109c = 0;
                            mDemoCamMode = 4;
                        }
                    } else {
                        field_0x10a0 = 90;
                    }
                    break;

                case 4:
                    if (mpModelMorf->isStop() && field_0xa90 != 0) {
                        setLookMode(1);
                        setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
                        setFaceMotion(13, -1.0f);
                    } else if (mpModelMorf->checkFrame(12.0f)) {
                        field_0xab8[3].field_0x4 = current.pos;
                        field_0xab8[3].field_0x10 = field_0x91a;
                        field_0xab8[3].field_0x0 = 1;
                    }
            }
            break;

        case 2:
            mDemoCamMode = 0;
            field_0x209c = 0;
    }

    return 1;
}

/* 80C07C40-80C07C98 007E20 0058+00 1/1 0/0 0/0 .text            getSrchLinkR__11daObj_GrA_cFv */
f32 daObj_GrA_c::getSrchLinkR() {
    // NONMATCHING
    int iVar1 = fopAcM_GetParam(this) & 0x7F;
    if (iVar1 == 0) {
        return daObj_GrA_Param_c::m.field_0x70 * 100.0f;
    }

    return iVar1 * 100;
}

/* 80C07C98-80C07CF0 007E78 0058+00 1/1 0/0 0/0 .text            getSrchGraR__11daObj_GrA_cFv */
f32 daObj_GrA_c::getSrchGraR() {
    // NONMATCHING
    if (field_0x200c == 0) {
        return daObj_GrA_Param_c::m.field_0x74 * 100.0f;
    }

    return field_0x200c * 100;
}

/* 80C07CF0-80C07D38 007ED0 0048+00 3/3 0/0 0/0 .text            getSpeed__11daObj_GrA_cFv */
f32 daObj_GrA_c::getSpeed() {
    // NONMATCHING
    u32 uVar1 = fopAcM_GetParam(this) >> 14 & 63;
    if (uVar1 == 63) {
        return daObj_GrA_Param_c::m.field_0x84;
    }

    return uVar1;
}

/* 80C07D38-80C083F0 007F18 06B8+00 1/0 0/0 0/0 .text            standRoll__11daObj_GrA_cFPv */
int daObj_GrA_c::standRoll(void* param_1) {
    // NONMATCHING
    cXyz sp38;
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xa7c) {
        case 0:
            setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
            setFaceMotion(13, -1.0f);
            setLookMode(1);
            field_0x2014 = 0;
            break;

        case 1:
            if (field_0x2031 == 0 && player != NULL) {
                if (player->current.pos.y > current.pos.y) {
                    fopAcM_delete(this);
                } else {
                    field_0x2031 = 1;
                }
            }

            if (getTagNo() != 0) {
                if (field_0x2032 == 0) {
                    daTagGra_c* graTag_p = (daTagGra_c*)fpcM_Search(s_sub, this);
                    if (graTag_p != NULL) {
                        mGraPos = graTag_p->getGraPos();
                        mGraExtent = graTag_p->getGraExtent();
                        mGraHeight = graTag_p->getGraHeight();
                        fopAcM_delete(graTag_p);
                        mGraMode = graTag_p->getMode();
                        field_0x2032 = 1;
                    }
                } else if (mGraMode == 1) {
                    sp38 = player->current.pos - current.pos;
                    sp38.y *= 2.0f;
                    if (sp38.abs() < getSrchLinkR() && player->checkPlayerFly() == 0 && !player->checkClimbMove() &&
                        dComIfGp_checkPlayerStatus0(0, 8) == 0) {
                        setProcess(&daObj_GrA_c::rollDemo);
                        dComIfGoat_SetThrow(this);
                    }
                } else {
                    sp38 = player->current.pos - mGraPos;
                    if (sp38.absXZ() < mGraExtent && player->checkPlayerFly() == 0 && sp38.y > -30.0f && sp38.y < mGraHeight &&
                        !player->checkClimbMove() && dComIfGp_checkPlayerStatus0(0, 8) == 0) {
                        setProcess(&daObj_GrA_c::rollDemo);
                        dComIfGoat_SetThrow(this);
                    }
                }
            } else {
                sp38 = player->current.pos - current.pos;
                sp38.y = sp38.y * 2.0f;
                if (sp38.abs() < getSrchLinkR() && player->checkPlayerFly() == 0 && !player->checkClimbMove() &&
                    dComIfGp_checkPlayerStatus0(0, 8) == 0) {
                    setProcess(&daObj_GrA_c::rollDemo);
                    dComIfGoat_SetThrow(this);
                }
            }
            break;

        case 2:
            break;
    }

    return 1;
}

/* 80C083F0-80C08804 0085D0 0414+00 3/0 0/0 0/0 .text            rollDemo__11daObj_GrA_cFPv */
int daObj_GrA_c::rollDemo(void* param_1) {
    // NONMATCHING
    switch (field_0xa7c) {
        case 0:
            if (isFirstGra()) {
                mDemoCamMode = 1;
            }

            field_0x209c = 1;
            break;

        case 1:
            if (isFirstGra()) {
                switch (field_0x2000) {
                    case -1:
                        cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &daPy_getPlayerActorClass()->current.pos),
                                            4, daObj_GrA_Param_c::m.field_0x88);
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;

                        if (mDemoCamMode >= 5) {
                            field_0x848 = 4;
                            evtcutTalk(-1, 1);
                            field_0x2000 = 0;
                        }
                        break;

                    case 0:
                        if (evtcutTalk(-1, 0) != 0) {
                            setBaseMotion(20, daObj_GrA_Param_c::m.field_0x0c);
                            setFaceMotion(13, -1.0f);
                            setLookMode(0);
                            field_0x2000 = 1;
                        }

                        field_0x2056 = 0;
                        break;

                    case 1:
                        if (mpModelMorf->checkFrame(14.0f)) {
                            cXyz sp30(0.0f, 0.0f, 20.0f);
                            mDoMtx_stack_c::transS(current.pos);
                            mDoMtx_stack_c::YrotM(field_0x91a.y);
                            mDoMtx_stack_c::multVec(&sp30, &field_0xab8[2].field_0x4);
                            field_0xab8[2].field_0x10 = field_0x91a;
                            field_0xab8[2].field_0x0 = 1;

                            setLookMode(0);
                            setBaseMotion(10, daObj_GrA_Param_c::m.field_0x0c);
                            setFaceMotion(13, -1.0f);
                            calcMotion();

                            mpModelMorf->setEndFrame(29.0f);
                            mpModelMorf->setPlaySpeed(0.0f);

                            field_0x2000 = 2;
                        }
                        break;

                    case 2:
                        f32 playSpeed = mpModelMorf->getPlaySpeed();
                        if (playSpeed < 1.0f) {
                            cLib_addCalc2(&playSpeed, 1.0f, 0.25f, 3.5f);
                            mpModelMorf->setPlaySpeed(playSpeed);
                        }

                        if (mDemoCamMode == 0) {
                            setProcess(&daObj_GrA_c::rollAttack);
                        }
                }
            } else if (field_0xa90 == 4) {
                setBaseMotion(4, daObj_GrA_Param_c::m.field_0x0c);
                setFaceMotion(13, -1.0f);
                setLookMode(1);
            } else if (mpModelMorf->checkFrame(14.0f)) {
                cXyz sp3c(0.0f, 0.0f, 20.0f);
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::YrotM(field_0x91a.y);
                mDoMtx_stack_c::multVec(&sp3c, &field_0xab8[2].field_0x4);
                field_0xab8[2].field_0x10 = field_0x91a;
                field_0xab8[2].field_0x0 = 1;

                setLookMode(0);
                setBaseMotion(10, daObj_GrA_Param_c::m.field_0x0c);
                setFaceMotion(13, -1.0f);
                calcMotion();

                mpModelMorf->setEndFrame(29.0f);
                mpModelMorf->setPlaySpeed(0.0f);

                setProcess(&daObj_GrA_c::rollAttack);
            }
            break;

        case 2:
            field_0x2000 = -1;
            field_0x209c = 0;
    }

    demo_camera();
    return 1;
}

/* 80C08804-80C09298 0089E4 0A94+00 4/0 0/0 0/0 .text            rollAttack__11daObj_GrA_cFPv */
int daObj_GrA_c::rollAttack(void* param_1) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp3c;
    s16 sVar1;
    f32 fVar1, fVar2;
    BOOL bVar1;
    cXyz sp48;

    switch (field_0xa7c) {
        case 0:
            field_0x1fe9 = 0;
            setLookMode(0);
            field_0x2005 = 0;
            field_0x209c = 1;
            break;

        case 1:
            if (fallAbyssCheck()) {
                break;
            }

            sp48 = player->current.pos;
            fVar1 = (sp48 - current.pos).abs();

            if (fVar1 <= 1800.0f) {
                if (field_0x2005 != 2) {
                    dComIfGp_getVibration().StartQuake(2, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0x2005 = 2;
                }
            } else if (fVar1 <= 2000.0f) {
                if (field_0x2005 != 1) {
                    dComIfGp_getVibration().StartQuake(1, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0x2005 = 1;
                }
            } else  {
                if (dComIfGp_getVibration().CheckQuake()) {
                    dComIfGp_getVibration().StopQuake(31);
                }

                field_0x2005 = 0;
            }

            rollLanding();

            bVar1 = false;
            if (field_0x201c < 10 && field_0x1fe9 == 0 && fVar1 < getSrchGraR()) {
                cXyz sp54(current.pos);
                sp54.y += 100.0f;
                field_0x1f4c.Set(&sp54, &player->eyePos, this);
                field_0x1f4c.SetActorPid(parentActorID);

                s16 sVar1 = cLib_targetAngleX(&sp54, &player->eyePos);
                if (!isFirstGra()) {
                    if (!dComIfG_Bgsp().LineCross(&field_0x1f4c)) {
                        if (!player->checkClimbMove() && dComIfGp_checkPlayerStatus0(0, 8) == 0 && sVar1 > -0x2000 && sVar1 < 0x2000) {
                            field_0x150c = 1;
                            bVar1 = true;

                            if ((field_0x2014 == 0 && isFirstGra()) || player->checkEquipHeavyBoots() != 0) {
                                player->setGoronSideMove(this);
                                field_0x2014 = 1;
                            }
                        }
                    }
                }
            }

            if (isFirstGra()) {
                if (player->current.pos.y < -4500.0f) {
                    setProcess(&daObj_GrA_c::rollAttacked);
                    return 1;
                }
            } else {
                cXyz sp60(current.pos);
                sp60.y += 100.0f;
                field_0x1f4c.Set(&sp60, &player->eyePos, this);
                field_0x1f4c.SetActorPid(parentActorID);

                if (player->checkPlayerFly() == 0 && (player->current.pos.y - current.pos.y) > 50.0f) {
                    player->offGoronSideMove();
                    field_0x2014 = 1;
                    field_0x1fe9 = 1;
                }
            }

            if (!bVar1) {
                field_0x150c = 0;
                if (field_0x2014 == 0 && (player->current.pos.y - current.pos.y) > 0.0f) {
                    field_0x1fe9 = 1;
                    player->offGoronSideMove();
                    field_0x2014 = 1;
                }
            }
            
            if (field_0x150c != 0 && field_0x1fe9 == 0) {
                setCarryStatus();
                if (checkThrow()) {
                    return 1;
                }

                if (field_0x1fe9 == 0) {
                    cXyz sp6c(sp48);
                    cLib_chaseF(&speedF, getSpeed(), daObj_GrA_Param_c::m.field_0xa8);

                    if (field_0x201c < 10) {
                        cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &sp6c), 
                                            1, daObj_GrA_Param_c::m.field_0x88);
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                    }
                }

                    BOOL bVar2 = FALSE;
                if (field_0x1528.isPath()) {
                    while (!bVar2) {
                        if (field_0x1528.chkPnt(current.pos) == 0) break;

                        if (field_0x1528.setNextPnt()) {
                            bVar2 = TRUE;
                            field_0x1fe9 = 1;
                            field_0x2014 = 1;
                        }
                    }
                }
            } else {
                if (field_0x1fe9 == 1 && !dComIfGp_event_runCheck() && mDemoCamMode == 0) {
                    if (dComIfGoat_GetThrow() == this) {
                        dComIfGoat_SetThrow(NULL);
                    }

                    if (field_0x2030 == 1 && field_0x2005 == 0 && fopAcM_otherBgCheck(this, dComIfGp_getPlayer(0))) {
                        fopAcM_delete(this);
                        if (dComIfGp_getVibration().CheckQuake()) {
                            dComIfGp_getVibration().StopQuake(31);
                        }
                        
                        return 1;
                    }
                }

                bVar1 = false;
                if (field_0x1528.isPath()) {
                    while (!bVar1) {
                        if (field_0x1528.chkPnt(current.pos) == 0) break;

                        if (field_0x1528.setNextPnt()) {
                            bVar1 = true;
                        }
                    }
                } else {
                    bVar1 = true;
                }

                if (!bVar1) {
                    cXyz sp78(field_0x1528.getPntPos(field_0x1528.getIdx()));
                    sVar1 = current.angle.y;
                    cLib_chaseF(&speedF, getSpeed(), daObj_GrA_Param_c::m.field_0xa8);

                    if (field_0x201c < 10) {
                        s16 sVar2 = cLib_targetAngleY(&current.pos, &sp78);
                        cLib_addCalcAngleS2(&current.angle.y, sVar2, 8, field_0x1528.field_0xa14);
                        field_0x1528.field_0xa14 = abs(current.angle.y - sVar2);

                        cLib_addCalcAngleS2(&field_0x1528.field_0xa14, daObj_GrA_Param_c::m.field_0x88, 8, 0x40);
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                    }
                } else if (cM3d_IsZero(speedF)) {
                    speedF = 0.0f;
                    if (mAcch.ChkGroundHit()) {
                        if (modeChangeCheck() == 0) {
                            cLib_addCalc2(&speedF, 0.0f, 0.25f, 3.5f);
                            if (mpModelMorf->isLoop()) {
                                speedF = 0.0f;
                            } else if (speedF < 1.0f) {
                                speedF = 1.0f;
                            }

                            if (mpModelMorf->getFrame() < 2.0f) {
                                speedF = 0.0f;
                                if (mAcch.ChkGroundHit()) {
                                    if (modeChangeCheck() == 0) {
                                        fVar2 = speedF * 0.1f;
                                        if (fVar2 < 0.5f) {
                                            mpModelMorf->setPlaySpeed(0.5f);
                                        } else {
                                            mpModelMorf->setPlaySpeed(fVar2);
                                        }

                                        if (field_0x1fe9 == 0 && field_0xf50.ChkCoHit() != 0) {
                                            if (fopAcM_GetName(dCc_GetAc(field_0xf50.GetCoHitObj()->GetAc())) == PROC_ALINK) {
                                                field_0x1fe9 = 1;
                                                player->offGoronSideMove();
                                                player->offGoronUpStopCancel();

                                                if (isFirstGra()) {
                                                    sVar1 = home.angle.y;
                                                    if (player->checkEquipHeavyBoots() != 0) {
                                                        player->setThrowDamage(sVar1, 30.0f, 40.0f, 1, 0, 0);
                                                    } else {
                                                        player->setThrowDamage(sVar1, daObj_GrA_Param_c::m.field_0xb8, daObj_GrA_Param_c::m.field_0xbc, 2, 0, 0);
                                                    }

                                                    setProcess(&daObj_GrA_c::rollAttacked);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            break;

        case 2:
            dComIfGp_getVibration().StopQuake(31);
            field_0x209c = 1;
            break;
    }

    return 1;
}

/* 80C09298-80C09918 009478 0680+00 4/0 0/0 0/0 .text            rollAttacked__11daObj_GrA_cFPv */
int daObj_GrA_c::rollAttacked(void* param_1) {
    // NONMATCHING
    BOOL bVar1;
    cXyz sp3c;
    s16 sVar1;
    daPy_py_c* player = daPy_getPlayerActorClass();
    attention_info.flags = 0;

    switch (field_0xa7c) {
        case 0:
            speedF = 0.0f;
            field_0x2018 = -1;
            mDemoCamMode = 1;
            field_0x209c = 1;
            break;

        case 1:
            switch (field_0x2018) {
            case -1:
                if (mpModelMorf->checkFrame(0.0f)) {
                    mpModelMorf->setPlaySpeed(0.0f);
                    field_0x2018 = 0;
                }
                // fallthrough
            case 0:
                if (player->checkPlayerFly() == 0) {
                    if (player->current.pos.y < -4500.0f) {
                        field_0x2018 = 1;
                        current.pos = mGraPos;
                        old.pos = current.pos;
                        current.angle.y = cLib_targetAngleY(&current.pos, &player->current.pos);
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                        field_0x1fec = 0;
                        setBaseMotion(0, 0.0f);
                        setFaceMotion(13, 0.0f);
                        setLookMode(1);
                        mpModelMorf->setPlaySpeed(1.0f);
                        player->offGoronSideMove();

                        if (dComIfGoat_GetThrow() == this) {
                            dComIfGoat_SetThrow(NULL);
                        }
                    } else {
                        field_0x1fec = 60;
                        field_0x2018 = 5;
                        field_0x1528.reverseDir();
                        current.angle.y += 0x8000;
                        mpModelMorf->setLoopFrame(mpModelMorf->getEndFrame());
                        player->setGoronSideMove(this);
                        field_0x2014 = 1;
                        mDemoCamMode = 7;
                    }
                }

                field_0x2056 = 0;
                break;

                case 1:
                    if (cLib_calcTimer(&field_0x1fec) == 0) {
                        if (dComIfGs_getLife() == 0) {
                            setProcess(&daObj_GrA_c::wait);
                            speedF = 0.0f;
                            current.pos = home.pos;
                            old.pos = home.pos;
                            current.angle.y = home.angle.y;
                            shape_angle.y = current.angle.y;
                            field_0x91a.y = current.angle.y;
                            mDemoCamMode = 7;
                        } else {
                            field_0x2018 = 2;
                        }
                    }
                    break;

                case 2:
                    if (mDemoCamMode >= 5) {
                        field_0x848 = 5;
                        evtcutTalk(-1, 1);
                        field_0x2018 = 3;
                    }
                    break;

                case 3:
                    if (evtcutTalk(-1, 0) != 0) {
                        setLookMode(0);
                        field_0x2018 = 4;
                        setBaseMotion(1, 0.0f);
                        setFaceMotion(13, 0.0f);
                    }

                    field_0x2056 = 0;
                    break;

                case 4:
                    if (mDemoCamMode != 0) {
                        cLib_addCalc2(&speedF, daObj_GrA_Param_c::m.field_0x90 * 0.5f, 0.25f, 3.5f);
                        cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &home.pos),
                                            1, daObj_GrA_Param_c::m.field_0x88);
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                    } else {
                        setProcess(&daObj_GrA_c::wait);
                        speedF = 0.0f;
                        current.pos = home.pos;
                        old.pos = home.pos;
                        current.angle.y = home.angle.y;
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                    }
                    break;

                case 5:
                    if (cLib_calcTimer(&field_0x1fec) == 0) {
                        current.angle.y += 0x8000;
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                        setProcess(&daObj_GrA_c::rollAttack);
                        field_0x1528.reverseDir();
                        mpModelMorf->setLoopFrame(mpModelMorf->getStartFrame());
                    } else {
                        bVar1 = false;
                        if (field_0x1528.isPath()) {
                            while (!bVar1) {
                                if (field_0x1528.chkPnt(current.pos) == 0) break;

                                if (field_0x1528.setNextPnt()) {
                                    bVar1 = true;
                                }
                            }
                        } else {
                            bVar1 = true;
                        }

                    if (!bVar1) {
                        sp3c = field_0x1528.getPntPos(field_0x1528.getIdx());
                        sVar1 = current.angle.y;
                        cLib_chaseF(&speedF, getSpeed(), daObj_GrA_Param_c::m.field_0xa8);
                        cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &sp3c), 
                                            8, field_0x1528.field_0xa14);
                        field_0x1528.field_0xa14 = abs(current.angle.y - sVar1);
                        cLib_addCalcAngleS2(&field_0x1528.field_0xa14, daObj_GrA_Param_c::m.field_0x88,
                                            8, 0x40);
                        shape_angle.y = current.angle.y + 0x8000;
                        field_0x91a.y = current.angle.y + 0x8000;
                    } else {
                        cLib_addCalc2(&speedF, 0.0f, 0.25f, 3.5f);
                    }

                    mpModelMorf->setPlaySpeed(-(speedF * 0.1f));
                }
            }
            break;

        case 2:
            field_0x2014 = 0;
            field_0x209c = 0;
    }

    rollAttackedDemo();
    return 1;
}

/* 80C09918-80C09F08 009AF8 05F0+00 2/0 0/0 0/0 .text            rollEscape__11daObj_GrA_cFPv */
int daObj_GrA_c::rollEscape(void* param_1) {
    // NONMATCHING
    cXyz sp50;
    f32 fVar1;
    BOOL bVar1;
    cXyz sp68;
    s16 sVar1;
    daPy_py_c* player;

    switch (field_0xa7c) {
        case 0:
            field_0x2005 = 0;
            mpModelMorf->setLoopFrame(mpModelMorf->getEndFrame());
            field_0x209c = 1;
            break;

        case 1:
            player = daPy_getPlayerActorClass();
            fVar1 = (player->current.pos - current.pos).absXZ();
            if (fVar1 <= 1800.0f) {
                if (field_0x2005 != 2) {
                    dComIfGp_getVibration().StartQuake(2, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0x2005 = 2;
                }
            } else if (fVar1 <= 2000.0f) {
                if (field_0x2005 != 1) {
                    dComIfGp_getVibration().StartQuake(1, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0x2005 = 1;
                }
            } else {
                if (dComIfGp_getVibration().CheckQuake()) {
                    dComIfGp_getVibration().StopQuake(31);
                }

                field_0x2005 = 0;
            }

            rollLanding();
            if (dComIfGp_event_runCheck()) {
                if (dComIfGp_getEvent().isOrderOK()) {
                    if (dComIfGoat_GetThrow() == this) {
                        dComIfGoat_SetThrow(0);
                        if (isFirstGra()) {
                            mDemoCamMode = 3;
                            graThrowDemo();
                            daNpcF_onEvtBit(0x52);
                        }
                    }

                    if (field_0x2030 == 1 && field_0x2005 == 0 && 
                        (fopAcM_otherBgCheck(this, dComIfGp_getPlayer(0)) || fopAcM_CheckCondition(this, 4) != 0)) {
                        if (dComIfGp_getVibration().CheckQuake()) {
                            dComIfGp_getVibration().StopQuake(31);
                        }

                        fopAcM_delete(this);
                        return 1;
                    }
                }
            }

            bVar1 = FALSE;
            if (field_0x1528.isPath()) {
                while (!bVar1) {
                    if (field_0x1528.chkPnt(current.pos) == 0) break;

                    if (field_0x1528.setNextPnt()) {
                        bVar1 = TRUE;
                    }
                }
            } else {
                bVar1 = TRUE;
            }

            int iVar2;
            if (!bVar1) {
                sp68 = field_0x1528.getPntPos(field_0x1528.getIdx());
                sVar1 = current.angle.y;
                cLib_chaseF(&speedF, getSpeed(), daObj_GrA_Param_c::m.field_0xa8);
                cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &sp68), 
                                    8, field_0x1528.field_0xa14);
                field_0x1528.field_0xa14 = abs(current.angle.y - sVar1);
                cLib_addCalcAngleS2(&field_0x1528.field_0xa14, daObj_GrA_Param_c::m.field_0x88, 8, 0x40);
                cLib_addCalcAngleS2(&shape_angle.y, current.angle.y + 0x8000, 8, 0x1000);
                field_0x91a.y = shape_angle.y;
            } else if (cM3d_IsZero(speedF)) {
                speedF = 0.0f;
                if (mAcch.ChkGroundHit()) {
                    if (modeChangeCheck()) {
                        break;
                    }
                }

                cLib_addCalc2(&speedF, 0.0f, 0.25f, 3.5f);
                if (mpModelMorf->isLoop()) {
                    speedF = 0.0f;
                } else if (speedF < 1.0f) {
                    speedF = 1.0f;
                }

                if (mpModelMorf->getFrame() < 2.0f) {
                    speedF = 0.0f;
                    if (mAcch.ChkGroundHit()) {
                        if (modeChangeCheck()) {
                            break;
                        }
                    }
                }
            }

            fVar1 = speedF * 0.1f;
            if (cM3d_IsZero(speedF)) {
                fVar1 = 0.0f;
            }

            mpModelMorf->setPlaySpeed(-fVar1);
            break;

        case 2:
            dComIfGp_getVibration().StopQuake(31);
            field_0x209c = 0;
    }

    graThrowDemo();
    return 1;
}

/* 80C09F08-80C0A018 00A0E8 0110+00 2/2 0/0 0/0 .text            rollLanding__11daObj_GrA_cFv */
void daObj_GrA_c::rollLanding() {
    if (mAcch.ChkGroundLanding() && field_0x201c >= 10) {
        cXyz sp28(0.0f, 0.0f, 20.0f);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(field_0x91a.y);
        mDoMtx_stack_c::multVec(&sp28, &field_0xab8[5].field_0x4);
        field_0xab8[5].field_0x10 = field_0x91a;
        field_0xab8[5].field_0x0 = 1;

        dComIfGp_getVibration().StartShock(8, 15, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_GORON_ROLL_BOUND, 0, -1);
    }
}

/* 80C0A018-80C0A120 00A1F8 0108+00 3/0 0/0 0/0 .text            thrown__11daObj_GrA_cFPv */
int daObj_GrA_c::thrown(void* param_1) {
    int rv = 0;

    switch (field_0xa7c) {
        case 0:
            fopAcM_OnStatus(this, fopAcM_STATUS_UNK_004000);
            field_0x1ff0 = 1;
            mDemoCamMode = 0;
            field_0x209c = 1;
            break;

        case 1:
            if (field_0x1ff8 != 0) {
                field_0x1ff8--;
            }

            switch (field_0x1ff0) {
                case 1:
                    executeCrazyBeforeCatch();
                    break;

                case 2:
                    executeCrazyCatch();
                    break;

                case 3:
                    executeCrazyThrow();
                    break;

                case 4:
                    executeCrazyJumping();
            }

            rv = 1;
            break;

        case 2:
            field_0x209c = 0;
    }

    graThrowDemo();
    return rv;
}

/* 80C0A120-80C0AF94 00A300 0E74+00 2/1 0/0 0/0 .text            demo_camera__11daObj_GrA_cFv */
void daObj_GrA_c::demo_camera() {
    // NONMATCHING
    f32 fVar1;
    cXyz sp40, sp4c, sp58, sp64, sp70, sp7c, sp88, sp94;
    csXyz cStack_144;
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    dCamera_c* camBody = dCam_getBody();

    if (mDemoCamMode <= 6) {
            if (!eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(this, 0, 0xFFEF, 0);
                eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            camera->mCamera.Stop();
            mDemoCamMode = 2;
            field_0x2056 = 0;
            fVar1 = camBody->Fovy();
            field_0x208c = fVar1;
            mDemoCamFovy = fVar1;
            field_0x2080 = camBody->Center();
            mDemoCamCenter = field_0x2080;
            field_0x2074 = camBody->Eye();
            mDemoCamEye = field_0x2074;
            camera->mCamera.SetTrimSize(2);

            if (daObj_GrA_Param_c::m.field_0xac >= field_0x2056) {
                mDemoCamMode++;
                field_0x2056 = 0;
            } else {
                sp40 = current.pos;
                sp40.y += 150.0f;
                cLib_addCalcPos2(&mDemoCamCenter, sp40, 0.1f, (field_0x2080 - sp40).abs() / 25.0f);
            }

            if (daObj_GrA_Param_c::m.field_0xae >= field_0x2056) {
                mDemoCamMode++;
                field_0x2056 = 0;
            } else {
                sp4c = current.pos;
                sp4c.y += 150.0f;
                cLib_addCalcPos2(&mDemoCamCenter, sp4c, 0.1f, (field_0x2080 - sp4c).abs() / 25.0f);

            }

            if (daObj_GrA_Param_c::m.field_0xb0 >= field_0x2056) {
                mDemoCamMode++;
                field_0x2056 = 0;
            } else {
                mDoMtx_stack_c::YrotS(shape_angle.y);
                sp58.x = 0.0f;
                sp58.y = 250.0f;
                sp58.z = 500.0f;
                mDoMtx_stack_c::multVec(&sp58, &sp58);
                sp58 += current.pos;
                cLib_addCalcPos2(&mDemoCamEye, sp58, 0.1f, (field_0x2074 - sp58).abs() / 25.0f);

                sp64 = current.pos;
                sp64.y += 150.0f;
                cLib_addCalcPos2(&mDemoCamCenter, sp64, 0.1f, (field_0x2080 - sp64).abs() / 25.0f);

                mDemoCamFovy += (55.0f - field_0x208c) / 0.0f;
            }

            if (daObj_GrA_Param_c::m.field_0xb2 >= field_0x2056) {
                mDemoCamMode++;
                field_0x2056 = 0;
                cStack_144 = player->current.angle;
                cStack_144.y = cLib_targetAngleY(&player->current.pos, &current.pos);
                player->setPlayerPosAndAngle(&player->current.pos, &cStack_144);
                field_0x2074 = mDemoCamEye;
                field_0x2080 = mDemoCamCenter;
            } else {
                mDoMtx_stack_c::YrotS(shape_angle.y);
                sp70.x = 0.0f;
                sp70.y = 250.0f;
                sp70.z = 500.0f;
                mDoMtx_stack_c::multVec(&sp70, &sp70);
                sp70 += current.pos;
                cLib_addCalcPos2(&mDemoCamEye, sp70, 0.1f, (field_0x2074 - sp70).abs() / 25.0f);

                sp7c = current.pos;
                sp7c.y += 150.0f;
                cLib_addCalcPos2(&mDemoCamCenter, sp7c, 0.1f, (field_0x2080 - sp7c).abs() / 25.0f);
            }

            if (daObj_GrA_Param_c::m.field_0xb4 >= field_0x2056) {
                camera->mCamera.Reset(mDemoCamCenter, mDemoCamEye);
                camera->mCamera.Start();
                camera->mCamera.SetTrimSize(0);
                dComIfGp_event_reset();
                mDemoCamMode = 0;
                field_0x2056 = 0;
            } else {
                sp88 = player->current.pos;
                sp88.y += 150.0f;
                cLib_chasePos(&mDemoCamCenter, sp88, (field_0x2080 - sp88).abs() / 0.0f);

                mDoMtx_stack_c::YrotS(player->current.angle.y);
                sp94.x = 0.0f;
                sp94.y = 210.0f;
                sp94.z = -335.0f;
                mDoMtx_stack_c::multVec(&sp94, &sp94);
                sp94 += player->current.pos;
                cLib_chasePos(&mDemoCamEye, sp94, (field_0x2074 - sp94).abs() / 0.0f);
                mDemoCamFovy += INFINITY;
            }
    } else if (mDemoCamMode != 0) {
        camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mDemoCamFovy, 0);
        field_0x2056++;
    }
}

/* 80C0AF94-80C0B9AC 00B174 0A18+00 2/1 0/0 0/0 .text            rollAttackedDemo__11daObj_GrA_cFv */
void daObj_GrA_c::rollAttackedDemo() {
    // NONMATCHING
    csXyz cStack_118;
    cXyz spa4, spb0, sp98;
    cXyz sp80;
    cXyz sp74;
    cXyz sp68;
    cXyz sp5c;
    cXyz sp50;
    cXyz sp44;
    cXyz sp38;
    cXyz sp2c;
    f32 fVar1;

    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    dCamera_c* camBody = dCam_getBody();

    switch (mDemoCamMode) {
        case 1:
            if (!eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(this, 0, 0xFFEF, 0);
                eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            camera->mCamera.Stop();
            mDemoCamMode = 2;
            field_0x2056 = 0;
            fVar1 = camBody->Fovy();
            field_0x208c = fVar1;
            mDemoCamFovy = fVar1;
            sp74 = camBody->Center();
            field_0x2080 = sp74;
            mDemoCamCenter = field_0x2080;

            sp80 = camBody->Eye();
            field_0x2074 = sp80;
            mDemoCamEye = field_0x2074;
            // fallthrough
        case 2:
            if (!dComIfGp_event_runCheck() && !eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(this, 0, 0xFFEF, 0);
                eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            if (field_0x2056 >= 20) {
                mDemoCamMode = 4;
                field_0x2056 = 0;
                field_0x2080 = camBody->Center();
                mDemoCamCenter = field_0x2080;

                field_0x2074 = camBody->Eye();
                mDemoCamEye = field_0x2074;

                camera->mCamera.SetTrimSize(2);
                break;
            } else {
                mDemoCamCenter += player->current.pos - player->old.pos;
                mDemoCamCenter.y -= 2.0f;
                mDemoCamEye += player->current.pos - player->old.pos;
            }
            // fallthrough
        case 4:
            if (field_0x2056 >= 30) {
                mDoMtx_stack_c::YrotS(player->current.angle.y);
                sp44.set(0.0f, 150.0f, 250.0f);
                mDoMtx_stack_c::multVec(&sp44, &sp44);
                sp44 += player->current.pos;
                sp50 = current.pos;
                sp50.y += 150.0f;
                cLib_addCalcPos2(&mDemoCamCenter, sp50, 0.1f, (sp44 - sp50).abs() / 60.0f);
                break;
            } else if (field_0x2056 >= daObj_GrA_Param_c::m.field_0xb2){
                mDemoCamMode += 1;
                field_0x2056 = 0;
                field_0x2074 = mDemoCamEye;
                field_0x2080 = mDemoCamCenter;
                cStack_118 = player->current.angle;
                cStack_118.y = cLib_targetAngleY(&player->current.pos, &current.pos);
                player->setPlayerPosAndAngle(&player->current.pos, &cStack_118);
            }
            break;
            
        case 5:
            mDoMtx_stack_c::YrotS(player->current.angle.y);
            sp2c.set(0.0f, 150.0f, 250.0f);
            mDoMtx_stack_c::multVec(&sp2c, &sp2c);
            sp2c += player->current.pos;
            sp38 = current.pos;
            sp38.y += 150.0f;
            cLib_addCalcPos2(&mDemoCamCenter, sp38, 0.15f, (sp2c - sp38).abs() / 60.0f);
            break;

        case 6:
            if (field_0x2056 >= 60) {
                mDemoCamMode = 7;
            } else {
                mDoMtx_stack_c::YrotS(player->current.angle.y);
                sp5c.set(0.0f, 100.0f, -300.0f);
                mDoMtx_stack_c::multVec(&sp5c, &sp5c);
                sp5c += player->current.pos;
                cLib_addCalcPos2(&mDemoCamEye, sp5c, 0.1f, (field_0x2074 - sp5c).abs() / 30.0f);

                sp68 = player->current.pos;
                sp68.y += 90.0f;
                cLib_addCalcPos2(&mDemoCamCenter, sp68, 0.1f, (sp68 - field_0x2080).abs() / 30.0f);
                break;
            }
            // fallthrough
        case 7:
            camera->mCamera.Reset(mDemoCamCenter, mDemoCamEye, mDemoCamFovy, 0);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            mDemoCamMode = 0;
            field_0x2056 = 0;
            return;

        default:
            break;
    }

    if (mDemoCamMode != 0) {
        camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mDemoCamFovy, 0);
        field_0x2056 += 1;
    }
    return;
}

/* 80C0B9AC-80C0BD90 00BB8C 03E4+00 2/2 0/0 0/0 .text            graThrowDemo__11daObj_GrA_cFv */
void daObj_GrA_c::graThrowDemo() {
    // NONMATCHING
    cXyz sp2c;
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    dCamera_c* camBody = dCam_getBody();

    switch (mDemoCamMode) {
        case 0:
            break;
            
        case 1:
            if (dComIfGp_event_runCheck()) {
                if (checkProcess(&daObj_GrA_c::thrown)) {
                    camera->mCamera.Stop();
                    mDemoCamMode = 2;
                    mDemoCamFovy = camBody->Fovy();
                    mDemoCamCenter = camBody->Center();
                    mDemoCamEye = camBody->Eye();
                    mDoMtx_stack_c::YrotS(player->current.angle.y);

                    if (field_0x1ffc != 0) {
                        field_0x2090.x = -300.0f;
                    } else {
                        field_0x2090.x = 300.0f;
                    }
                    field_0x2090.y = 500.0f;
                    field_0x2090.z = 0.0f;

                    mDoMtx_stack_c::multVec(&field_0x2090, &field_0x2090);
                    field_0x2090 += current.pos;

                    if (fopAcM_lc_c::lineCheck(&mDemoCamEye, &field_0x2090, this)) {
                        if (field_0x1ffc != 0) {
                            field_0x2090.x = 300.0f;
                        } else {
                            field_0x2090.x = -300.0f;
                        }

                        field_0x20a0 = 1;
                    } else {
                        if (field_0x1ffc != 0) {
                            field_0x2090.x = -200.0f;
                        } else {
                            field_0x2090.x = 200.0f;
                        }

                        field_0x20a0 = 0;
                    }

                    mDoMtx_stack_c::YrotS(player->current.angle.y);
                    field_0x2090.y = 500.0f;
                    field_0x2090.z = 0.0f;
                    mDoMtx_stack_c::multVec(&field_0x2090, &field_0x2090);
                    field_0x2090 += current.pos;
                }
            } else {
                return;
            }
            // fallthrough
        case 2:
            sp2c.set(0.0f ,150.0f, -200.0f);
            if (field_0x1ff8 != 0) {
                mDoMtx_stack_c::YrotS(cLib_targetAngleY(&player->current.pos, &current.pos));
                mDoMtx_stack_c::multVec(&sp2c, &sp2c);
                sp2c += player->current.pos;

                if (fopAcM_lc_c::lineCheck(&mDemoCamEye, &sp2c, this)) {
                    field_0x20a0 = 1;
                }
            }

            if (field_0x1ff8 != 0 && field_0x20a0 == 0) {
                cLib_addCalcPos2(&mDemoCamEye, sp2c, 0.2f, 100.0f);
                cLib_addCalcPos2(&mDemoCamCenter, current.pos, 0.2f, 200.0f);
            } else {
                cLib_addCalcPos2(&mDemoCamEye, field_0x2090, 0.1f, 15.0f);
                cLib_addCalcPos2(&mDemoCamCenter, (current.pos + player->current.pos) / 2.0f, 0.1f, 15.0f);
            }
            break;

        case 3:
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            field_0x1520 = 1;
            mDemoCamMode = 0;
            break;
    }

    if (mDemoCamMode != 0) {
        camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mDemoCamFovy, 0);
    }
}

/* 80C0BD90-80C0BE5C 00BF70 00CC+00 1/1 0/0 0/0 .text            setCarryStatus__11daObj_GrA_cFv */
void daObj_GrA_c::setCarryStatus() {
    // NONMATCHING
    cXyz sp38;
    mDoMtx_stack_c::YrotS(-shape_angle.y);
    mDoMtx_stack_c::transM(-current.pos.x, -current.pos.y, -current.pos.z);
    mDoMtx_stack_c::multVec(&daPy_getPlayerActorClass()->current.pos, &sp38);
    if (fabsf(sp38.x) < 100.0f && sp38.z > 0.0f && sp38.z < 800.0f) {
        attention_info.flags |= 0x10;
    }
}

/* 80C0BE5C-80C0BF34 00C03C 00D8+00 1/1 0/0 0/0 .text            checkThrow__11daObj_GrA_cFv */
bool daObj_GrA_c::checkThrow() {
    // NONMATCHING
    if (field_0xa48 != 0) {
        if ((field_0xa48 & 1) != 0) {
            setProcess(&daObj_GrA_c::thrown);
            initCrazyBeforeCatch(0);
            field_0xa48 &= 0xFFFE;
            return true;
        }

        if ((field_0xa48 & 2) != 0) {
            setProcess(&daObj_GrA_c::thrown);
            initCrazyCatch(0);
            field_0xa48 &= 0xFFFD;
            return true;
        }
    }

    return false;
}

/* 80C0BF34-80C0C348 00C114 0414+00 5/5 0/0 0/0 .text            calcCatchPos__11daObj_GrA_cFfi */
void daObj_GrA_c::calcCatchPos(f32 param_1, int param_2) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 fVar1 = player->current.pos.y - mGroundY;
    s16 HandsHeight = cM_atan2s(current.pos.absXZ(player->current.pos), fVar1);
    cXyz sp6c(0.0f, param_1 * (cM_scos(HandsHeight)), param_1 * cM_ssin(HandsHeight));
    cXyz sp78(player->current.pos);
    cXyz sp84, sp90, sp9c, spa8;

    mDoMtx_stack_c::copy(player->getLeftHandMatrix());
    mDoMtx_stack_c::multVecZero(&sp84);
    mDoMtx_stack_c::copy(player->getRightHandMatrix());
    mDoMtx_stack_c::multVecZero(&sp90);

    sp9c = (sp84 + sp90) / 2.0f;

    mDoMtx_stack_c::copy(player->getHeadMtx());
    mDoMtx_stack_c::multVecZero(&spa8);

    spa8.y = sp78.y;
    HandsHeight = cLib_targetAngleY(&sp9c, &spa8);

    if (param_2 != 0) {
        cXyz spb4;
        sp9c.y -= daObj_GrA_Param_c::m.field_0x60 * 0.5f;
        cLib_offsetPos(&spb4, &sp9c, player->shape_angle.y + 0x8000, &sp6c);

        if (param_2 == 1) {
            cLib_chasePos(&current.pos, spb4, 100.0f);
        } else if (param_2 == 2) {
            cLib_chasePos(&current.pos, spb4, 5.0f);
            cLib_addCalcAngleS2(&shape_angle.y, HandsHeight, 8, 0x400);
            field_0x91a.y = shape_angle.y;
        }
    } else {
        #ifdef DEBUG
        dDbVw_Report(100, 100, "pos.y = %f", sp9c.y - player->current.pos.y);
        #endif

        cXyz spc0;
        sp9c.y -= daObj_GrA_Param_c::m.field_0x60 * 0.5f;
        cXyz spcc(0.0f, 0.0f, param_1);
        cLib_offsetPos(&spc0, &sp9c, HandsHeight, &spcc);

        OS_REPORT("angle = %d, HandsHeight = %f\n", sp9c.y, HandsHeight);

        current.pos = spc0;

        if (field_0x1ffc != 0) {
            current.angle.y = HandsHeight + 0x5000;
        } else {
            current.angle.y = HandsHeight + -0x5000;
        }

        cLib_addCalcAngleS2(&shape_angle.y, HandsHeight, 2, 0x2000);
        field_0x91a.y = shape_angle.y;
    }
}

/* 80C0C348-80C0C364 00C528 001C+00 1/1 0/0 0/0 .text initCrazyBeforeCatch__11daObj_GrA_cFi */
void daObj_GrA_c::initCrazyBeforeCatch(int param_1) {
    field_0x1ff0 = 1;
    speedF = 0.0f;
    gravity = 0.0f;
}

/* 80C0C364-80C0C3E0 00C544 007C+00 1/1 0/0 0/0 .text executeCrazyBeforeCatch__11daObj_GrA_cFv */
void daObj_GrA_c::executeCrazyBeforeCatch() {
    // NONMATCHING
    calcCatchPos(-120.0f, 1);
    if ((field_0xa48 & 2) != 0) {
        initCrazyCatch(0);
        field_0xa48 &= ~2;
    } else if ((field_0xa48 & 4) != 0) {
        initCrazyAttack();
        field_0xa48 &= ~4;
    }
}

/* 80C0C3E0-80C0C478 00C5C0 0098+00 2/2 0/0 0/0 .text            initCrazyCatch__11daObj_GrA_cFi */
void daObj_GrA_c::initCrazyCatch(int param_1) {
    // NONMATCHING
    dComIfGp_getVibration().StartQuake(8, 15, cXyz(0.0f, 1.0f, 0.0f));
    field_0x1ff0 = 2;
    speedF = 0.0f;
    field_0x1ff4 = 0;
    calcCatchPos(-120.0f, 1);
    gravity = 0.0f;
}

/* 80C0C478-80C0C5F0 00C658 0178+00 1/1 0/0 0/0 .text            executeCrazyCatch__11daObj_GrA_cFv */
void daObj_GrA_c::executeCrazyCatch() {
    // NONMATCHING
    switch (field_0x1ff4) {
        case 0:
            if (daPy_getPlayerActorClass()->speedF == 0.0f) {
                field_0x1ff4 = 1;
                calcCatchPos(-110.0f, 2);
                dComIfGp_getVibration().StartQuake(1, 15, cXyz(0.0f, 1.0f, 0.0f));
            } else {
                calcCatchPos(-110.0f, 2);
            }
            break;

        case 1:
            calcCatchPos(-1120.0f, 2);
            break;
    }

    f32 fVar1 = mpModelMorf->getPlaySpeed();
    if (fVar1 > 0.2f) {
        mpModelMorf->setPlaySpeed(fVar1 - 0.2f);
    } else {
        mpModelMorf->setPlaySpeed(0.0f);
    }

    if (field_0xa48 != 0) {
        if ((field_0xa48 & 8) != 0) {
            initCrazyThrow(0);
        } else if ((field_0xa48 & 16) != 0) {
            initCrazyThrow(1);
        } else if ((field_0xa48 & 4) != 0) {
            if (daPy_getPlayerActorClass()->speedF == 0.0f) {
                initCrazyAttack();
            } else {
                initCrazyAttack();
            }
        }

        field_0xa48 = 0;
    }
}

/* 80C0C5F0-80C0C690 00C7D0 00A0+00 1/1 0/0 0/0 .text            initCrazyThrow__11daObj_GrA_cFi */
void daObj_GrA_c::initCrazyThrow(int param_1) {
    // NONMATCHING
    field_0x1ffc = 1 - ((param_1 & 0xFF) << 31);
    field_0x1ff4 = 0;
    field_0x1ff0 = 3;
    gravity = 0.0f;
    speedF = 0.0f;
    speed.y = 0.0f;

    if (field_0x1fe8 == 0) {
        mDemoCamMode = 1;
    }

    field_0x1ff8 = 34;
    calcCatchPos(-110.0f, 2);
    field_0x2004 = 0;
    gravity = 0.0f;
}

/* 80C0C690-80C0C84C 00C870 01BC+00 1/1 0/0 0/0 .text            executeCrazyThrow__11daObj_GrA_cFv */
void daObj_GrA_c::executeCrazyThrow() {
    // NONMATCHING
    f32 fVar1;
    cXyz spa0;
    dBgS_LinChk dStack_90;

    switch (field_0x1ff4) {
        case 0:
            fVar1 = mpModelMorf->getPlaySpeed();
            if (fVar1 > 0.2f) {
                mpModelMorf->setPlaySpeed(fVar1 - 0.2f);
            } else {
                mpModelMorf->setPlaySpeed(0.0f);
            }

            if (field_0x1ff8 == 0) {
                field_0x1ff0 = 4;
                gravity = -0.7f;
                speedF = 25.0f;
                speed.y = 15.0f;
                cLib_addCalcAngleS2(&shape_angle.y, current.angle.y + 0x8000, 4, 0x1000);
                field_0x91a.y = shape_angle.y;
            } else if (field_0x1ff8 <= 10) {
                if (field_0x1ff8 == 10) {
                    if (isFirstGra()) {
                        mSound.startCreatureVoice(Z2SE_GORON_V_THROWN_FIRST, -1);
                    } else {
                        mSound.startCreatureVoice(Z2SE_GORON_V_THROWN, -1);
                    }
                }

                calcCatchPos(-110.0f, 0);
            } else {
                calcCatchPos(-110.0f, 2);
            }
            break;

        case 1:
            executeCrazyJumping();
    }

    if (field_0xa48 != 0) {
        if ((field_0xa48 & 4) != 0) {
            initCrazyAttack();
        }

        field_0xa48 = 0;

        return;
    }
}

/* 80C0C84C-80C0CA64 00CA2C 0218+00 3/3 0/0 0/0 .text            initCrazyAttack__11daObj_GrA_cFv */
void daObj_GrA_c::initCrazyAttack() {
    // NONMATCHING
    camera_class* camera;

    if (field_0x1ff0 == 3 && field_0x1ff8 == 0) {
        field_0x1ff0 = 4;
        field_0x1fe9 = 1;

        daPy_getPlayerActorClass()->offGoronSideMove();
        daPy_getPlayerActorClass()->offGoronUpStopCancel();

        if (isFirstGra()) {
            camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
            mDemoCamMode = 0;
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            daNpcF_onEvtBit(0x52);
            gravity = -0.7f;
            speedF = 25.0f;
            speed.y = 15.0f;
            cLib_addCalcAngleS2(&shape_angle.y, current.angle.y + 0x8000, 4, 0x1000);
            field_0x91a.y = shape_angle.y;
        }
    } else {
        daPy_getPlayerActorClass()->offGoronSideMove();

        if (isFirstGra()) {
            if (mDemoCamMode != 0) {
                camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
                camera->mCamera.Start();
                camera->mCamera.SetTrimSize(0);
                mDemoCamMode = 0;
            }

            setProcess(&daObj_GrA_c::rollAttacked);
        } else {
            setProcess(&daObj_GrA_c::rollAttack);
            field_0x1fe9 = 1;
            field_0x1fd8 = 60;
        }

        gravity = -4.0f;
        current.angle.y = cLib_targetAngleY(&current.pos, &daPy_getPlayerActorClass()->current.pos);
    }
}

/* 80C0CA64-80C0CDBC 00CC44 0358+00 2/2 0/0 0/0 .text executeCrazyJumping__11daObj_GrA_cFv */
void daObj_GrA_c::executeCrazyJumping() {
    // NONMATCHING
    cLib_addCalcAngleS2(&shape_angle.y, current.angle.y + 0x8000, 4, 0x1000);
    field_0x91a.y = shape_angle.y;

    if (mAcch.ChkGroundLanding()) {
        cXyz sp28(0.0f, 0.0f, 20.0f);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(field_0x91a.y);
        mDoMtx_stack_c::multVec(&sp28, &field_0xab8[2].field_0x4);
        field_0xab8[2].field_0x10 = field_0x91a;
        field_0xab8[2].field_0x0 = 1;

        mSound.startCreatureSound(Z2SE_GORON_ROLL_BOUND, 0, -1);

        if (field_0x2004 != 0) {
            dComIfGp_getVibration().StartShock(5, 15, cXyz(0.0f, 1.0f, 0.0f));
            speed.y = 0.0f;
            setProcess(&daObj_GrA_c::rollEscape);
            field_0x1fe9 = 1;
            daPy_getPlayerActorClass()->offGoronSideMove();
            field_0x2004 = 0;
            gravity = -4.0f;
        } else {
            dComIfGp_getVibration().StartShock(8, 15, cXyz(0.0f, 1.0f, 0.0f));
            speed.y = 15.0f;
            field_0x2004 = 1;
            mpModelMorf->setLoopFrame(mpModelMorf->getEndFrame());
            mpModelMorf->setPlaySpeed(-0.1f);
        }
    } else if (mAcch.ChkWallHit() != 0) {
        cXyz sp34(0.0f, 0.0f, 20.0f);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(field_0x91a.y);
        mDoMtx_stack_c::multVec(&sp34, &field_0xab8[2].field_0x4);
        field_0xab8[2].field_0x10 = field_0x91a;
        field_0xab8[2].field_0x0 = 1;

        mSound.startCreatureSound(Z2SE_GORON_ROLL_BOUND, 0, -1);
        dComIfGp_getVibration().StartShock(5, 15, cXyz(0.0f, 1.0f, 0.0f));
        speed.y = 0.0f;

        setProcess(&daObj_GrA_c::rollEscape);
        field_0x1fe9 = 1;
        daPy_getPlayerActorClass()->offGoronSideMove();
        field_0x2004 = 0;
        gravity = -4.0f;
    }
}

/* 80C0CDBC-80C0CF10 00CF9C 0154+00 2/2 0/0 0/0 .text            modeChangeCheck__11daObj_GrA_cFv */
BOOL daObj_GrA_c::modeChangeCheck() {
    // NONMATCHING
    BOOL rv = (field_0x2030 == 0);

    if (rv != FALSE) {
        mMode = 0;
        home.angle.y = cLib_targetAngleY(&current.pos, &home.pos);
        home.pos = current.pos;
        field_0xf50.OffAtSetBit();
        setProcess(&daObj_GrA_c::toStone);
        field_0x109c = 1;
        setBaseMotion(4, daObj_GrA_Param_c::m.field_0x0c * 0.5f);
        setFaceMotion(13, daObj_GrA_Param_c::m.field_0x0c * 0.5f);
        calcMotion();
        mpModelMorf->setFrame(mpModelMorf->getEndFrame());
        mpModelMorf->setPlaySpeed(1.0f);
        return TRUE;
    }

    return FALSE;
}

/* 80C0CF2C-80C0CF98 00D10C 006C+00 1/1 0/0 0/0 .text            s_sub2__FPvPv */
static void* s_sub2(void* i_actor, void* i_data) {
    daObj_GrA_c* i_this = (daObj_GrA_c*)i_data;
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_OBJ_GRA && (u8)i_this->checkGraSub((fopAc_ac_c*)i_actor)) {
        return i_actor;
    }
    return NULL;
}

/* 80C0CF98-80C0D000 00D178 0068+00 1/1 0/0 0/0 .text checkGraSub__11daObj_GrA_cFP10fopAc_ac_c */
BOOL daObj_GrA_c::checkGraSub(fopAc_ac_c* a_this) {
    daObj_GrA_c* i_this = (daObj_GrA_c*)a_this;

    if (i_this->mMode != 0) {
        return FALSE;
    }

    if (getTagNo() == i_this->getTagNo()) {
        return TRUE;
    }

    return FALSE;
}

/* 80C0D000-80C0D2FC 00D1E0 02FC+00 1/0 0/0 0/0 .text            waitDemo__11daObj_GrA_cFPv */
int daObj_GrA_c::waitDemo(void* param_1) {
    // NONMATCHING
    fopAc_ac_c* actor_p;
    cXyz sp34;
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xa7c) {
        case 0:
            setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
            setFaceMotion(13, -1.0f);
            setLookMode(0);
            break;

        case 1:
            if (getTagNo() != 0) {
                actor_p = field_0x204c.getActor();

                if (field_0x2032 == 0 || actor_p != NULL) {
                    if (field_0x2032 == 0) {
                        daTagGra_c* graTag_p = (daTagGra_c*)fpcM_Search(s_sub, this);
                        if (graTag_p != NULL && graTag_p->getMode() == 2) {
                            mGraPos = graTag_p->getGraPos();
                            mGraExtent = graTag_p->getGraExtent();
                            mGraHeight = graTag_p->getGraHeight();
                            mGraMode = graTag_p->getMode();
                            field_0x2032 = 1;
                            fopAcM_delete(graTag_p);
                        }

                        if (actor_p != NULL) {
                            actor_p = (fopAc_ac_c*)fpcM_Search(s_sub2, this);
                            if (actor_p != NULL) {
                                field_0x204c.entry(actor_p);
                            }
                        }
                    }
                } else {
                    #ifdef DEBUG
                    if (daObj_GrA_Param_c::m.field_0x8a == 0) {
                        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_000100);
                    } else {
                        fopAcM_OffStatus(this, fopAcM_STATUS_UNK_000100);
                    }
                    #endif

                    sp34 = player->current.pos - mGraPos;
                    if (sp34.absXZ() < mGraExtent && sp34.z > -30.0f && sp34.z < mGraHeight) {
                        setProcess(&daObj_GrA_c::startDemo);
                    }
                }
            }
            break;

        case 2:
            #ifdef DEBUG
            fopAcM_OnStatus(this, fopAcM_STATUS_UNK_000100);
            #endif
            break;
    }

    return 1;
}

/* 80C0D2FC-80C0D3A8 00D4DC 00AC+00 1/1 0/0 0/0 .text            skipDemoGra__11daObj_GrA_cFv */
int daObj_GrA_c::skipDemoGra() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    daObj_GrA_c* gra_p = (daObj_GrA_c*)field_0x204c.getActor();
    camera->mCamera.Start();
    camera->mCamera.SetTrimSize(0);
    dComIfGp_event_reset();
    gra_p->soldierDemoSkip();
    gra_p->field_0x204c.entry(NULL);
    dComIfGs_onSwitch(field_0xa7f, fopAcM_GetRoomNo(this));
    return 1;
}

/* 80C0D3A8-80C0D3E0 00D588 0038+00 1/1 0/0 0/0 .text            skipCallBack__FPvi */
static int skipCallBack(void* param_1, int param_2) {
    daObj_GrA_c* i_this = (daObj_GrA_c*)param_1;
    i_this->skipDemoGra();
    fopAcM_delete(i_this);
    return 1;
}

/* 80C0D3E0-80C0EFC4 00D5C0 1BE4+00 2/0 0/0 0/0 .text            startDemo__11daObj_GrA_cFPv */
int daObj_GrA_c::startDemo(void* param_1) {
    // NONMATCHING
    f32 fVar1;
    cXyz sp30, sp3c, sp48, sp54, sp60, sp6c, sp78, sp84, sp90, sp9c, spa8, spb4, spcc, spd8, spe4;
    s16 sVar1;
    csXyz cStack_1b8, cStack_1c0, cStack_1c8;
    daPy_py_c* player = daPy_getPlayerActorClass();
    daObj_GrA_c* gra_p = (daObj_GrA_c *)field_0x204c.getActor();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    dCamera_c* camBody = dCam_getBody();

    switch (field_0xa7c) {
        case 0:
            setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
            setFaceMotion(13, -1.0f);
            setLookMode(0);
            mDemoCamMode = 1;
            field_0x209c = 1;
            break;

        case 1:
            switch (mDemoCamMode) {
                case 1:
                    if (!eventInfo.checkCommandDemoAccrpt()) {
                        fopAcM_orderPotentialEvent(this, 2, 0xFFEF, 0);
                        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                        return 1;
                    }

                    camera->mCamera.Stop();
                    mDemoCamMode = 2;
                    field_0x2056 = 0;
                    fVar1 = camBody->Fovy();
                    field_0x208c = fVar1;
                    mDemoCamFovy = fVar1;
                    mDemoCamCenter = mGraPos;
                    mDemoCamCenter.y += 150.0f;
                    mDemoCamEye = mDemoCamCenter;
                    mDemoCamEye.z += 700.0f;
                    mDemoCamCenter.x += 50.0f;
                    field_0x2080 = mDemoCamCenter;
                    field_0x2074 = mDemoCamEye;

                    camera->mCamera.SetTrimSize(2);
                    player->changeOriginalDemo();
                    gra_p->field_0x204c.entry(this);
                    setProcess(&daObj_GrA_c::soldierDemo);
                    fopAcM_OnStatus(gra_p, fopAcM_STATUS_UNK_008000);
                    field_0x2056 = 0;
                    dComIfGp_getEvent().setSkipProc(this, skipCallBack, 0);
                    dComIfGp_getEvent().onSkipFade();
                    // fallthrough
                case 2:
                    sp30 = player->current.pos;
                    if ((sp30 - mGraPos).abs() < 50.0f) {
                        mDemoCamMode = 3;
                        field_0x2056 = 0;
                        break;
                    }

                    if (field_0x2056 >= 60) {
                        cStack_1b8 = player->current.angle;
                        cLib_addCalcAngleS2(&cStack_1b8.y, cLib_targetAngleY(&player->current.pos, &current.pos) + 0x800, 
                                            2, field_0x1528.field_0xa14);
                        player->setPlayerPosAndAngle(&player->current.pos, &cStack_1b8);
                        field_0x2056++;
                    } else {
                        player->changeDemoMode(3, 0, 0, 0);
                        player->changeDemoPos0(&mGraPos);
                    }
                    // fallthrough
                case 3:
                    if (field_0x2056 >= 180) {
                        mDemoCamMode = 4;
                        field_0x2056 = 0;
                        field_0x2080 = mDemoCamCenter;
                        field_0x2074 = mDemoCamEye;
                        break;
                    }

                    cStack_1c0 = player->current.angle;
                    sVar1 = cLib_targetAngleY(&player->current.pos, &current.pos) + 0x2800;
                    cLib_addCalcAngleS2(&cStack_1c0.y, sVar1, 4, field_0x1528.field_0xa14);
                    player->setPlayerPosAndAngle(&player->current.pos, &cStack_1c0);

                    mDoMtx_stack_c::YrotS(sVar1);
                    sp3c.set(0.0f, 150.0f, 100.0f);
                    mDoMtx_stack_c::multVec(&sp3c, &sp3c);
                    sp3c += player->current.pos;
                    cLib_addCalcPos2(&mDemoCamEye, sp3c, 0.05f, (field_0x2074 - sp3c).abs() / 40.0f);

                    mDoMtx_stack_c::YrotS(sVar1);
                    sp48.set(0.0f, 100.0f, 300.0f);
                    mDoMtx_stack_c::multVec(&sp48, &sp48);
                    sp48 += player->current.pos;
                    cLib_addCalcPos2(&mDemoCamCenter, sp48, 0.05f, (sp48 - field_0x2080).abs() / 25.0f);
                    field_0x2056++;
                    // fallthrough
                case 4:
                    if (field_0x2056 >= 180) {
                        mDemoCamMode = 5;
                        field_0x2056 = 0;
                        field_0x2080 = mDemoCamCenter;
                        field_0x2074 = mDemoCamEye;
                        break;
                    }

                    cStack_1c8 = player->current.angle;
                    sVar1 = cLib_targetAngleY(&player->current.pos, &current.pos) + 0x800;
                    cLib_addCalcAngleS2(&cStack_1c8.y, sVar1, 1, field_0x1528.field_0xa14);
                    player->setPlayerPosAndAngle(&player->current.pos, &cStack_1c8);

                    mDoMtx_stack_c::YrotS(sVar1);
                    sp54.set(0.0f, 150.0f, 100.0f);
                    mDoMtx_stack_c::multVec(&sp54, &sp54);
                    sp54 += player->current.pos;
                    cLib_addCalcPos2(&mDemoCamEye, sp54, 0.06f, (field_0x2074 - sp54).abs() / 70.0f);

                    mDoMtx_stack_c::YrotS(sVar1);
                    sp60.set(0.0f, 230.0f, 300.0f);
                    mDoMtx_stack_c::multVec(&sp60, &sp60);
                    sp60 += player->current.pos;
                    cLib_addCalcPos2(&mDemoCamCenter, sp60, 0.06f, (sp60 - field_0x2080).abs() / 70.0f);

                    if (field_0x2056 == 150) {
                        setBaseMotion(16, 0.0f);
                        setFaceMotion(11, 0.0f);
                        setLookMode(0);
                        gra_p->setBaseMotion(17, daObj_GrA_Param_c::m.field_0x0c);
                        gra_p->setFaceMotion(12, -1.0f);
                        gra_p->setLookMode(0);

                        current.angle.y += 0x4000;
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                    }

                    field_0x2056++;
                    // fallthrough
                case 5:
                    if (field_0x2056 >= 40) {
                        mDemoCamMode = 6;
                        field_0x2056 = 0;
                        break;
                    }

                    mDoMtx_stack_c::YrotS(cLib_targetAngleY(&player->current.pos, &current.pos));
                    sp6c.set(0.0f, 150.0f, 100.0f);
                    mDoMtx_stack_c::multVec(&sp6c, &sp6c);
                    sp6c += player->current.pos;
                    cLib_addCalcPos2(&mDemoCamEye, sp6c, 0.01f, (field_0x2074 - sp6c).abs() / 60.0f);

                    sp78 = current.pos;
                    sp78.y += 280.0f;
                    cLib_addCalcPos2(&mDemoCamCenter, sp78, 0.5f, (sp78 - field_0x2080).abs() / (200.0f - field_0x2056 * 3));
                    field_0x2056++;
                    // fallthrough
                case 6:
                    if (field_0x2056 >= 90) {
                        mDemoCamMode = 7;
                        field_0x2056 = 0;
                        break;
                    }

                    mDoMtx_stack_c::YrotS(cLib_targetAngleY(&player->current.pos, &current.pos));
                    sp84.set(100.0f, -50.0f, -800.0f);
                    mDoMtx_stack_c::multVec(&sp84, &sp84);
                    sp84 += current.pos;
                    cLib_addCalcPos2(&mDemoCamEye, sp84, 0.5f, (field_0x2074 - sp84).abs() / 35.0f);

                    sp90 = current.pos;
                    sp90.y += 280.0f;
                    cLib_addCalcPos2(&mDemoCamCenter, sp90, 0.35f, (sp90 - field_0x2080).abs() / 20.0f);
                    field_0x2056++;
                    // fallthrough
                case 7:
                    if (mpModelMorf->isStop()) {
                        gra_p->setDemoMode(1);
                        setDemoMode(8);
                        field_0x2056 = 0;
                        setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
                        setFaceMotion(13, -1.0f);
                        setLookMode(2);
                    }
                    break;

                case 8:
                    if (gra_p->field_0xa90 != 20 || !gra_p->mpModelMorf->isStop()) break;

                    setDemoMode(9);
                    setBaseMotion(1, daObj_GrA_Param_c::m.field_0x0c);
                    setFaceMotion(13, -1.0f);
                    field_0x2080 = mDemoCamCenter;
                    // fallthrough
                case 9:
                    sp9c.set(0.0f, 0.0f, 80.0f);
                    mDoMtx_stack_c::YrotS(gra_p->current.angle.y);
                    mDoMtx_stack_c::multVec(&sp9c, &sp9c);
                    sp9c += gra_p->current.pos;
                    
                case 10:
                    if (mAcchCir.ChkWallHit() && gra_p == dComIfG_Bgsp().GetActorPointer(mAcchCir)) {
                        if (field_0xa90 != 15) {
                            setBaseMotion(15, daObj_GrA_Param_c::m.field_0x0c);
                            setFaceMotion(13, -1.0f);
                            setLookMode(0);
                            current.angle.y = cLib_targetAngleY(&current.pos, &sp9c);
                            shape_angle.y = current.angle.y;
                            field_0x91a.y = current.angle.y;
                            mAcch.SetGrndNone();
                            mAcch.SetWallNone();
                            gravity = 0.0f;
                            speed.setall(0.0f);
                            speedF = 0.0f;
                        }
                    } else {
                        cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &sp9c), 4, daObj_GrA_Param_c::m.field_0x88);
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                        cLib_chasePosXZ(&current.pos, sp9c, daObj_GrA_Param_c::m.field_0x90);
                    }

                    if (field_0xa90 != 15) {
                        if (mpModelMorf->isStop()) {
                            mAcch.SetGrndNone();
                            mAcch.SetWallNone();
                            gravity = 0.0f;
                        } else {
                            spa8.set(0.0f, 146.09f, 161.97f);
                            mDoMtx_stack_c::YrotS(field_0x91a.y);
                            mDoMtx_stack_c::multVec(&spa8, &spa8);
                            current.pos += spa8;
                            old.pos = current.pos;
                            gravity = 0.0f;
                            setLookMode(0);
                            setDemoMode(10);
                            gra_p->setDemoMode(3);
                            setBaseMotion(18, 0.0f);
                            setFaceMotion(13, 0.0f);
                        }

                        spb4 = gra_p->current.pos;
                        cLib_addCalcPosXZ2(&mDemoCamCenter, spb4, 0.1f, (spb4 - field_0x2080).abs() / 30.0f);
                        break;
                    }

                case 11:
                    if (field_0x2056 >= 250) {
                        camera->mCamera.Start();
                        camera->mCamera.SetTrimSize(0);
                        dComIfGp_event_reset();
                        fopAcM_OffStatus(gra_p, 0x8000);
                        setProcess(&daObj_GrA_c::wait);
                        dComIfGs_onSwitch(field_0xa7f, fopAcM_GetRoomNo(this));
                        fopAcM_delete(this);
                        break;
                    }

                    if (mAcch.ChkGroundLanding()) {
                        spcc.set(0.0f, 0.0f, 20.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(field_0x91a.y);
                        mDoMtx_stack_c::multVec(&spcc, &field_0xab8[2].field_0x4);
                        field_0xab8[2].field_0x10 = field_0x91a;
                        field_0xab8[2].field_0x0 = 1;

                        mSound.startCreatureSound(Z2SE_GORON_ROLL_BOUND, 0, -1);
                        speedF = 0.0f;
                    } else if (mAcch.ChkGroundHit()) {
                        spd8.set(-1428.0f, 3650.0f, -4459.0f);
                        if ((current.pos - spd8).absXZ() > 50.0f) {
                            cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &spd8), 
                                                24, daObj_GrA_Param_c::m.field_0x88);
                            shape_angle.y = current.angle.y;
                            field_0x91a.y = current.angle.y;
                        }

                        field_0x2056++;
                    }

                    if (speed.y > 0.0f) {
                        spe4 = mDemoCamCenter;
                        mDemoCamEye += (current.pos - spe4);
                    }

                    mDemoCamCenter = current.pos;

            }
            break;

        case 2:
            break;

        default:
            if (mDemoCamMode != 0) {
                camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mDemoCamFovy, 0);
                field_0x2056++;
            }
            break;
    }

    return 1;
}

/* 80C0EFC4-80C0F17C 00F1A4 01B8+00 1/1 0/0 0/0 .text            turn__11daObj_GrA_cFsfi */
BOOL daObj_GrA_c::turn(s16 param_1, f32 param_2, int param_3) {
    // NONMATCHING
    if (field_0x1fc8 == 0) {
        field_0x1fd0 = fabsf(cM_sht2d((s16)(current.angle.y - param_1)));
        field_0x1fd0 = field_0x1fd0 / 180.0f * param_2;
        field_0x1fd0 = (int)field_0x1fd0 + 1;

        if (field_0x1fd0 < 8.0f) {
            field_0x1fd0 = 8.0f;
        }

        field_0x1fd4 = current.angle.y;
    }

    s16 sVar1 = field_0x1fd4;
    if (param_3 == 0) {
        if ((s16)(param_1 - sVar1) >= 0) {
            param_3 = -1;
        } else {
            param_3 = 1;
        }
    }
    
    u16 sVar2 = param_1 - sVar1;
    if (param_3 < 0) {
        sVar2 = -(u16)(0xFFFF - sVar2);
    }

    f32 fVar1 = cM_ssin(field_0x1fc8);
    field_0x1fc8 = field_0x1fc8 + 16384.0f / field_0x1fd0;
    if ((u16)field_0x1fc8 >= 0x4000) {
        current.angle.y = param_1;
        field_0x1fc8 = 0x4000;
    } else {
        current.angle.y = field_0x1fd4 + (int)(sVar2 * fVar1);
    }

    return param_1 == current.angle.y;
}

/* 80C0F17C-80C0F330 00F35C 01B4+00 2/2 0/0 0/0 .text            turn_step__11daObj_GrA_cFsiii */
BOOL daObj_GrA_c::turn_step(s16 param_1, int param_2, int param_3, int param_4) {
    // NONMATCHING
    if (field_0x1fcc == 0) {
        if ((int)fabsf(cM_sht2d((s16)(param_1 - field_0x91a.y))) > 20) {
            if (param_2 >= 0 && field_0xa92 != param_2) {
                setFaceMotion(param_2, 3.0f);
            }

            if (param_3 >= 0 && field_0xa90 != param_3) {
                setBaseMotion(param_3, 3.0f);
            }
        }

        field_0x1fd6 = param_1;
        field_0x1fc8 = 0;

        if (field_0x91a.y == field_0x1fd6) {
            field_0x1fcc++;
        }

        current.angle.y = field_0x91a.y;
        shape_angle.y = current.angle.y;
        field_0x1fcc++;
    } else if (field_0x1fcc == 1) {
        if (turn(field_0x1fd6, param_4, 0) != 0) {
            shape_angle.y = current.angle.y;
            field_0x91a.y = current.angle.y;
            field_0x1fcc++;
        } else {
            shape_angle.y = current.angle.y;
            field_0x91a.y = current.angle.y;
        }
    }

    u32 rv = field_0x1fcc ^ 1;
    return ((rv >> 1) - (rv & field_0x1fcc)) >> 0x1F;
}

/* 80C0F330-80C0F590 00F510 0260+00 1/1 0/0 0/0 .text            chkFindPlayer2__11daObj_GrA_cFis */
BOOL daObj_GrA_c::chkFindPlayer2(int param_1, s16 param_2) {
    // NONMATCHING
    cXyz sp80 = getAttentionPos(this);
    s16 playerAngleY = fopAcM_searchPlayerAngleY(this);
    int iVar1 = abs((s16)(playerAngleY - current.angle.y));
    u8 uVar1;

    if (iVar1 < 0x3C00) {
        if (param_1 == 0) {
            uVar1 = getDistTableIdx(10, 6);
        } else {
            uVar1 = getDistTableIdx(12, 6);
        }
    } else if (param_1 == 0) {
        uVar1 = getDistTableIdx(4, 6);
    } else {
        uVar1 = getDistTableIdx(6, 6);
    }
    iVar1 = uVar1;

    f32 fVar1, fVar2, fVar3;
    if (param_1 == 0) {
        dComIfGp_getAttention();
        fVar1 = dComIfGp_getAttention()->getDistTable(iVar1).mDistMax;
    } else {
        dComIfGp_getAttention();
        fVar1 = dComIfGp_getAttention()->getDistTable(iVar1).mDistMaxRelease;
    }

    fVar2 = dComIfGp_getAttention()->getDistTable(iVar1).mLowerY * -1.0f;
    fVar3 = dComIfGp_getAttention()->getDistTable(iVar1).mUpperY * -1.0f;
    u32 uVar2 = dComIfGp_getAttention()->getDistTable(iVar1).mAngleSelect;
    
    f32 fVar4 = 180.0f;
    if ((uVar2 & 8) != 0) {
        fVar4 = 30.0f;
    } else if ((uVar2 & 16) != 0) {
        fVar4 = 45.0f;
    } else if ((uVar2 & 32) != 0) {
        fVar4 = 60.0f;
    } else if ((uVar2 & 64) != 0) {
        fVar4 = 90.0f;
    } else if ((uVar2 & 128) != 0) {
        fVar4 = 110.0f;
    } else if ((uVar2 & 256) != 0) {
        fVar4 = 135.0f;
    }

    if (chkPointInArea(sp80, attention_info.position, fVar1, fVar2, fVar3, 0)) {
        if (chkActorInSight2(daPy_getPlayerActorClass(), fVar4, param_2)) {
            return TRUE;
        }
    }

    return FALSE;
}

/* 80C0F5A4-80C0F668 00F784 00C4+00 1/1 0/0 0/0 .text            chkPointInArea__11daObj_GrA_cF4cXyz4cXyzfffs */
BOOL daObj_GrA_c::chkPointInArea(cXyz param_1, cXyz param_2, f32 param_3, f32 param_4, f32 param_5, s16 param_6) {
    // NONMATCHING
    f32 fVar1 = param_4;
    f32 fVar2 = param_5;
    f32 fVar3 = param_3;
    cXyz sp68, sp74;
    f32 fVar4 = fVar1;

    if (fVar1 < fVar2) {
        fVar4 = fVar2;
        fVar2 = fVar1;
    }

    sp68.set(fVar3, fabsf(fVar4 - fVar2) * 0.5f, fVar3);
    sp74 = param_2;
    sp74.y = (sp74.y + fVar2) + sp68.y;

    return chkPointInArea(param_1, sp74, sp68, param_6); 
}

/* 80C0F668-80C0F6E0 00F848 0078+00 1/1 0/0 0/0 .text            chkPointInArea__11daObj_GrA_cF4cXyz4cXyz4cXyzs */
BOOL daObj_GrA_c::chkPointInArea(cXyz param_1, cXyz param_2, cXyz param_3, s16 param_4) {
    return daNpcF_chkPointInArea(param_1, param_2, param_3, param_4);
}

/* 80C0F6E0-80C0F7EC 00F8C0 010C+00 1/1 0/0 0/0 .text            chkActorInSight2__11daObj_GrA_cFP10fopAc_ac_cfs */
BOOL daObj_GrA_c::chkActorInSight2(fopAc_ac_c* actor, f32 param_2, s16 param_3) {
    // NONMATCHING
    if (param_2 < 180.0f) {
        s16 sVar1 = cM_deg2s(param_2);
        cXyz sp34 = getAttentionPos(actor);
        cSGlobe cStack_48(attention_info.position - sp34);
        cSAngle acStack_4c(cSAngle(cStack_48.U().Inv()) - param_3);
        s16 sVar2 = acStack_4c.Val();
        if (sVar2 < 0) {
            sVar2 = -sVar2;
        }

        return sVar2 ^ sVar1;
    }
        
    return 1;
}

/* 80C0F7EC-80C0F860 00F9CC 0074+00 2/2 0/0 0/0 .text getAttentionPos__11daObj_GrA_cFP10fopAc_ac_c */
cXyz daObj_GrA_c::getAttentionPos(fopAc_ac_c* i_actor_p) {
    cXyz pos = i_actor_p->attention_info.position;

    if (fopAcM_GetName(i_actor_p) == PROC_ALINK) {
        pos.y -= daPy_py_c::getAttentionOffsetY();
    }

    return pos;
}

/* 80C0F860-80C0FA68 00FA40 0208+00 2/0 0/0 0/0 .text            standWaitJump__11daObj_GrA_cFPv */
int daObj_GrA_c::standWaitJump(void* param_1) {
    switch (field_0xa7c) {
        case 0:
            field_0x1fcc = 0;
            break;

        case 1:
            if (getJumpType() == 1) {
                setLookMode(0);
                if (home.angle.y != field_0x91a.y) {
                    if (turn_step(home.angle.y, 0, 19, 20) != 0) {
                        field_0x1fcc = 0;
                        setBaseMotion(21, daObj_GrA_Param_c::m.field_0x0c);
                        setFaceMotion(0, -1.0f);
                    }
                } else if (field_0xa90 != 21) {
                    setBaseMotion(21, daObj_GrA_Param_c::m.field_0x0c);
                    setFaceMotion(0, -1.0f);
                }
            } else {
                BOOL bVar1 = field_0x14f8.getActor() != NULL;
                if (chkFindPlayer2(bVar1, shape_angle.y) != 0) {
                    if (!bVar1) {
                        field_0x14f8.entry(daPy_getPlayerActorClass());
                    }
                } else if (bVar1) {
                    field_0x14f8.entry(NULL);
                }

                if (field_0x14f8.getActor() != NULL) {
                    setLookMode(1);
                } else {
                    setLookMode(0);
                    if ((home.angle.y != field_0x91a.y) && (turn_step(home.angle.y, 0, 19, 20) != 0)) {
                        field_0x1fcc = 0;
                        setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
                        setFaceMotion(0, -1.0f);
                    }
                }
            }
            break;

        case 2:
            break;
    }

    return 1;
}

/* 80C10AE0-80C10B10 000248 0030+00 0/0 0/0 0/0 .bss             aVec$5647 */
#pragma push
#pragma force_active on
static u8 aVec[48];
#pragma pop

AUDIO_INSTANCES;

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
