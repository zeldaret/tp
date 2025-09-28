/**
 * @file d_a_npc_kasi_hana.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_kasi_hana.h"
#include "d/actor/d_a_npc_chin.h"
#include "d/actor/d_a_npc_kasi_kyu.h"
#include "d/actor/d_a_npc_kasi_mich.h"
#include "d/d_timer.h"
#include "Z2AudioLib/Z2Instances.h"

enum kasi_hana_RES_File_ID {
    /* BMDR */
    /* 0x5 */ BMDR_HANA = 0x5,

    /* BTP */
    /* 0x8 */ BTP_HANA = 0x8,

    /* EVT */
    /* 0xB */ EVT_EVENT_LIST = 0xB,
};

enum girls_RES_File_ID {
    /* BCK */
    /* 0x3 */ BCK_MICH_IYAN_WAIT = 0x3,
    /* 0x4 */ BCK_MICH_KYA_TALK,
    /* 0x5 */ BCK_MICH_OUEN_WAIT_A,
    /* 0x6 */ BCK_MICH_OUEN_WAIT_B,
};

enum Wgeneral_RES_File_ID {
    /* BCK */
    /* 0x03 */ BCK_W_2LADYTALK_A = 0x3,
    /* 0x04 */ BCK_W_2LADYTALK_B,
    /* 0x05 */ BCK_W_2NORMALTALK_A,
    /* 0x06 */ BCK_W_2NORMALTALK_B,
    /* 0x07 */ BCK_W_BROWSE_A,
    /* 0x08 */ BCK_W_BROWSE_B,
    /* 0x09 */ BCK_W_CELLME,
    /* 0x0A */ BCK_W_LOOK_A,
    /* 0x0B */ BCK_W_LOOK_B,
    /* 0x0C */ BCK_W_MARO_DANCE,
    /* 0x0D */ BCK_W_RUN_A,
    /* 0x0E */ BCK_W_RUN_B,
    /* 0x0F */ BCK_W_SING,
    /* 0x10 */ BCK_W_SIT_TO_WOLF_A,
    /* 0x11 */ BCK_W_SIT_TO_WOLF_B,
    /* 0x12 */ BCK_W_SITTALK_A,
    /* 0x13 */ BCK_W_SITTALK_A_B,
    /* 0x14 */ BCK_W_SITTALK_B,
    /* 0x15 */ BCK_W_SITTALK_B_B,
    /* 0x16 */ BCK_W_SITWAIT_A,
    /* 0x17 */ BCK_W_SITWAIT_B,
    /* 0x18 */ BCK_W_SURPRISE,
    /* 0x19 */ BCK_W_TALK_A,
    /* 0x1A */ BCK_W_TALK_B,
    /* 0x1B */ BCK_W_TALK_B_WALL,
    /* 0x1C */ BCK_W_TALK_C,
    /* 0x1D */ BCK_W_TALK_WALL,
    /* 0x1E */ BCK_W_TO_WOLF,
    /* 0x1F */ BCK_W_WAIT_A,
    /* 0x20 */ BCK_W_WAIT_B,
    /* 0x21 */ BCK_W_WAIT_WALL,
    /* 0x22 */ BCK_W_WALK_A,
    /* 0x23 */ BCK_W_WALK_B,
};

enum RES_Name {
    /* 0x0 */ KASI_HANA,
    /* 0x1 */ GIRLS,
    /* 0x2 */ WGENERAL,
};

enum Animation {
    /* 0x0 */ ANM_MICH_IYAN_WAIT,
    /* 0x1 */ ANM_MICH_KYA_TALK,
    /* 0x2 */ ANM_MICH_OUEN_WAIT_A,
    /* 0x3 */ ANM_MICH_OUEN_WAIT_B,
    /* 0x4 */ ANM_W_WAIT_A,
    /* 0x5 */ ANM_W_TALK_B,
    /* 0x6 */ ANM_W_TO_WOLF,
    /* 0x7 */ ANM_W_WALK_A,
    /* 0x8 */ ANM_W_LOOK_B,
    /* 0x9 */ ANM_W_RUN_A,
    /* 0xA */ ANM_W_SURPRISE,
    /* 0xB */ ANM_W_WAIT_A_2,
    /* 0xC */ ANM_W_TALK_A,
    /* 0xD */ ANM_W_2LADYTALK_B,
    /* 0xE */ ANM_W_2NORMALTALK_B,
};

enum Motion {
    /* 0x0 */ MOT_MICH_KYA_TALK,
    /* 0x1 */ MOT_MICH_IYAN_WAIT,
    /* 0x2 */ MOT_MICH_OUEN_WAIT_A,
    /* 0x3 */ MOT_MICH_OUEN_WAIT_B,
    /* 0x4 */ MOT_W_WAIT_A,
    /* 0x5 */ MOT_W_TALK_B,
    /* 0x6 */ MOT_W_TO_WOLF,
    /* 0x7 */ MOT_W_WALK_A,
    /* 0x8 */ MOT_W_LOOK_B,
    /* 0x9 */ MOT_W_RUN_A,
    /* 0xA */ MOT_W_SURPRISE,
    /* 0xB */ MOT_W_WAIT_A_LOOP,
};

enum Joint {
    /* 0x00 */ JNT_CENTER,
    /* 0x01 */ JNT_BACKBONE,
    /* 0x02 */ JNT_NECK,
    /* 0x03 */ JNT_HEAD,
    /* 0x04 */ JNT_SHOULDERL,
    /* 0x05 */ JNT_ARML1,
    /* 0x06 */ JNT_ARML2,
    /* 0x07 */ JNT_HANDL,
    /* 0x08 */ JNT_SHOULDERR,
    /* 0x09 */ JNT_ARMR1,
    /* 0x0A */ JNT_ARMR2,
    /* 0x0B */ JNT_HANDR,
    /* 0x0C */ JNT_WAIST,
    /* 0x0D */ JNT_LEGL1,
    /* 0x0E */ JNT_LEGL2,
    /* 0x0F */ JNT_FOOTL,
    /* 0x10 */ JNT_SKIRTL,
    /* 0x11 */ JNT_LEGR1,
    /* 0x12 */ JNT_LEGR2,
    /* 0x13 */ JNT_FOOTR,
    /* 0x14 */ JNT_SKIRTR,
};

enum Event_Names {
    /* 0x0 */ EVT_NONE,
    /* 0x1 */ EVT_APPEAR,
    /* 0x2 */ EVT_TALK,
    /* 0x3 */ EVT_HEART,
    /* 0x4 */ EVT_CHEER,
    /* 0x5 */ EVT_CHEER2,
};

enum Type {
    /* 0x0 */ TYPE_WAIT,
    /* 0x1 */ TYPE_CHEER,
};

class daNpcKasiHana_Param_c {
public:
    /* 80A2067C */ virtual ~daNpcKasiHana_Param_c() {}

    static daNpcKasiHana_HIOParam const m;
};

/* 80A21854-80A21858 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpcKasiHana_Param_c l_HIO;

/* 80A1AFAC-80A1B09C 0000EC 00F0+00 1/1 0/0 0/0 .text            calcEscapeForm__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::calcEscapeForm() {
    fopAc_ac_c* hana_p = mHanaActorMngr.getActorP();
    if (hana_p != NULL){
        cXyz sp1c(0.0f, 0.0f, -70.0f);
        cXyz sp28(0.0f, 0.0f, -140.0f);
        cXyz sp34 = fopAcM_GetPosition(hana_p);
        cXyz sp40;
        getOffsetFromLeader(sp1c, sp40);
        setKyuPos(sp34 + sp40);
        getOffsetFromLeader(sp28, sp40);
        setMichPos(sp34 + sp40);
    }
}

/* 80A1B0D8-80A1B1C8 000218 00F0+00 2/2 0/0 0/0 .text            calcCenterPos__15daNpcKasi_Mng_cFv */
BOOL daNpcKasi_Mng_c::calcCenterPos() {
    fopAc_ac_c* hana_p = mHanaActorMngr.getActorP();
    fopAc_ac_c* kyu_p = mKyuActorMngr.getActorP();
    fopAc_ac_c* mich_p = mMichActorMngr.getActorP();

    if (hana_p == NULL || kyu_p == NULL || mich_p == NULL) {
        return FALSE;
    }
    
    cXyz hana_pos(*fopAcM_GetPosition_p(hana_p));
    cXyz kyu_pos(*fopAcM_GetPosition_p(kyu_p));
    cXyz mich_pos(*fopAcM_GetPosition_p(mich_p));
    f32 pX = (hana_pos.x + kyu_pos.x + mich_pos.x) / 3.0f;
    f32 pY = (hana_pos.y + kyu_pos.y + mich_pos.y) / 3.0f;
    f32 pZ = (hana_pos.z + kyu_pos.z + mich_pos.z) / 3.0f;
    mCenterPos.set(pX, pY, pZ);

    return TRUE;
}

/* 80A1B1C8-80A1B35C 000308 0194+00 1/1 0/0 0/0 .text getDistFromCenter__15daNpcKasi_Mng_cFv */
f32 daNpcKasi_Mng_c::getDistFromCenter() {
    f32 rv;

    if (!calcCenterPos()) {
        return -1.0f;
    }

    cXyz sp1c = fopAcM_GetPosition(daPy_getPlayerActorClass());
    cXyz sp28 = sp1c - mCenterPos;
    return sp28.absXZ();
}

/* 80A1B35C-80A1B3D4 00049C 0078+00 1/1 0/0 0/0 .text            getOffsetFromLeader__15daNpcKasi_Mng_cFRC4cXyzR4cXyz */
void daNpcKasi_Mng_c::getOffsetFromLeader(cXyz const& param_1, cXyz& param_2) {
    param_2 = param_1;

    fopAc_ac_c* hana_p = mHanaActorMngr.getActorP();
    if (hana_p != NULL) {
        csXyz angle(*fopAcM_GetShapeAngle_p(hana_p));
        mDoMtx_stack_c::ZXYrotS(angle);
        mDoMtx_stack_c::multVec(&param_2, &param_2);
    }
}

/* 80A1B410-80A1B48C 000550 007C+00 1/1 0/0 0/0 .text            initPath__15daNpcKasi_Mng_cFUcUs */
void daNpcKasi_Mng_c::initPath(u8 i_pathNo, u16 i_idx) {
    if (!mIsPathInit) {
        fopAc_ac_c* hana_p = mHanaActorMngr.getActorP();
        if (hana_p != NULL) {
            mPath.initialize();
            mPath.setPathInfo(i_pathNo, fopAcM_GetRoomNo(hana_p), 0);
            mPath.setIdx(i_idx);

            OS_REPORT("---------------------dpath initialize!!\n");

            mIsPathInit = true;
        }
    }
}

/* 80A1B48C-80A1B5F0 0005CC 0164+00 1/1 0/0 0/0 .text            getPlNearPoint__15daNpcKasi_Mng_cFv */
int daNpcKasi_Mng_c::getPlNearPoint() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp58(*fopAcM_GetPosition_p(player));
    int rv = 0;
    f32 fVar1, fVar2, fVar3;
    fVar3 = 0.0f;
    cXyz sp64, sp70;

    for (int i = 0; i < 10; i++) {
        sp64 = mPath.getPntPos(i);
        sp70 = sp64 - sp58;
        fVar1 = sp70.abs2XZ();

        if (i == 0) {
            rv = 0;
            fVar3 = fVar1;
        } else if (fVar3 > fVar1) {
            rv = i;
            fVar3 = fVar1;
        } else if (fVar1 > fVar2) break;

        fVar2 = fVar1;
    }

    mPlPoint = rv;
    return rv;
}

/* 80A1B5F0-80A1B628 000730 0038+00 1/1 0/0 0/0 .text            getSygnalInfo__15daNpcKasi_Mng_cFv */
int daNpcKasi_Mng_c::getSygnalInfo() {
    int iVar1 = 1;
    for (int i = 0; i < 20; i++) {
        if (chkSygnal(iVar1)) {
            return i;
        }

        iVar1 <<= 1;
    }

    return -1;
}

/* 80A1B628-80A1B6F8 000768 00D0+00 1/1 0/0 0/0 .text            sendInfo__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::sendInfo() {
    int sygnalInfo = getSygnalInfo();
    daNpcKasiKyu_c* kyu_p = (daNpcKasiKyu_c*)mKyuActorMngr.getActorP();
    if (kyu_p != NULL) {
        kyu_p->setSygnal(sygnalInfo);
        kyu_p->setChacePos(mKyuPos);
        kyu_p->setCenterPos(mCenterPos);
        kyu_p->setPlPoint(mPlPoint);
    }

    daNpcKasiMich_c* michP = (daNpcKasiMich_c*)mMichActorMngr.getActorP();
    if (michP != NULL) {
        michP->setSygnal(sygnalInfo);
        michP->setChacePos(mMichPos);
        michP->setCenterPos(mCenterPos);
        michP->setPlPoint(mPlPoint);
    }
}

/* 80A1B6F8-80A1B774 000838 007C+00 1/1 0/0 0/0 .text            offTalk__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::offTalk() {
    daNpcKasiHana_c* hana_p = (daNpcKasiHana_c*)mHanaActorMngr.getActorP();
    daNpcKasiKyu_c* kyu_p = (daNpcKasiKyu_c*)mKyuActorMngr.getActorP();
    daNpcKasiMich_c* mich_p = (daNpcKasiMich_c*)mMichActorMngr.getActorP();

    if (hana_p != NULL) {
        hana_p->off_talked();
    }

    if (kyu_p != NULL) {
        kyu_p->off_talked();
    }

    if (mich_p != NULL) {
        mich_p->off_talked();
    }
}

/* 80A1B774-80A1B810 0008B4 009C+00 1/1 0/0 0/0 .text            chkTalk__15daNpcKasi_Mng_cFv */
BOOL daNpcKasi_Mng_c::chkTalk() {
    daNpcKasiHana_c* hana_p = (daNpcKasiHana_c*)mHanaActorMngr.getActorP();
    daNpcKasiKyu_c* kyu_p = (daNpcKasiKyu_c*)mKyuActorMngr.getActorP();
    daNpcKasiMich_c* mich_p = (daNpcKasiMich_c*)mMichActorMngr.getActorP();

    if (hana_p == NULL || kyu_p == NULL || mich_p == NULL) {
        OS_REPORT("---------------------some girl no exist!!\n");

        return FALSE;
    }

    bool rv = true;
    bool bVar1 = true;

    if (!hana_p->is_talked() && !kyu_p->is_talked()) {
        bVar1 = false;
    }

    if (!bVar1 && !mich_p->is_talked()) {
        rv = false;
    }

    return rv;
}

/* 80A1B810-80A1B884 000950 0074+00 1/1 0/0 0/0 .text            chkFear__15daNpcKasi_Mng_cFv */
BOOL daNpcKasi_Mng_c::chkFear() {
    daNpcKasiKyu_c* kyu_p = (daNpcKasiKyu_c*)mKyuActorMngr.getActorP();
    if (kyu_p != NULL && kyu_p->is_fear()) {
        return TRUE;
    }

    daNpcKasiMich_c* mich_p = (daNpcKasiMich_c*)mMichActorMngr.getActorP();
    if (mich_p != NULL && mich_p->is_fear()) {
        return TRUE;
    }

    return FALSE;
}

/* 80A1B884-80A1B920 0009C4 009C+00 1/1 0/0 0/0 .text            chkEscape__15daNpcKasi_Mng_cFv */
BOOL daNpcKasi_Mng_c::chkEscape() {
    daNpcKasiHana_c* hana_p = (daNpcKasiHana_c*)mHanaActorMngr.getActorP();
    daNpcKasiKyu_c* kyu_p = (daNpcKasiKyu_c*)mKyuActorMngr.getActorP();
    daNpcKasiMich_c* mich_p = (daNpcKasiMich_c*)mMichActorMngr.getActorP();

    if (hana_p == NULL || kyu_p == NULL || mich_p == NULL) {
        OS_REPORT("---------------------some girl no exist!!\n");

        return TRUE;
    }

    bool rv = false;
    bool bVar1 = false;

    if (hana_p->is_escape() && kyu_p->is_escape()) {
        bVar1 = true;
    }

    if (bVar1 && mich_p->is_escape()) {
        rv = true;
    }

    return rv;
}

/* 80A1B920-80A1BAAC 000A60 018C+00 1/1 0/0 0/0 .text            createHearts__15daNpcKasi_Mng_cFv */
BOOL daNpcKasi_Mng_c::createHearts() {
    fopAc_ac_c* actors[3] = {mHanaActorMngr.getActorP(), mKyuActorMngr.getActorP(), mMichActorMngr.getActorP()};
    f32 i_speedF = 0.0f;
    f32 i_speedY = 30.0f;
    cXyz i_scale(1.0f, 1.0f, 1.0f);

    for (int i = 0; i < 3; i++) {
        fopAc_ac_c* actor_p = actors[i];
        if (actor_p != NULL) {
            cXyz i_pos(*fopAcM_GetPosition_p(actor_p));
            i_pos.y += 115.0f;
            fopAc_ac_c* heart_p = NULL;
            csXyz i_angle(0, cLib_getRndValue<int>(0, 7) << 13, 0);
            heart_p = fopAcM_fastCreateItem(&i_pos, fpcNm_ITEM_HEART, fopAcM_GetRoomNo(actor_p), &i_angle,
                                           &i_scale, &i_speedF, &i_speedY, -1, 0, NULL);
            if (heart_p != NULL) {
                Z2GetAudioMgr()->seStart(Z2SE_GIRLS_HEART, &i_pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                fopAcM_OnStatus(heart_p, fopAcM_STATUS_UNK_0x4000);
            }
        }
    }

    return TRUE;
}

/* 80A1BAAC-80A1BB24 000BEC 0078+00 1/1 0/0 0/0 .text            allDemoMove__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::allDemoMove() {
    daNpcKasiHana_c* hana_p = (daNpcKasiHana_c*)mHanaActorMngr.getActorP();
    if (hana_p != NULL) {
        fopAcM_OnStatus(hana_p, fopAcM_STATUS_UNK_0x4000);
    }

    daNpcKasiKyu_c* kyu_p = (daNpcKasiKyu_c*)mKyuActorMngr.getActorP();
    if (kyu_p != NULL) {
        fopAcM_OnStatus(kyu_p, fopAcM_STATUS_UNK_0x4000);
    }

    daNpcKasiMich_c* mich_p = (daNpcKasiMich_c*)mMichActorMngr.getActorP();
    if (mich_p != NULL) {
        fopAcM_OnStatus(mich_p, fopAcM_STATUS_UNK_0x4000);
    }
}

/* 80A1BB24-80A1BB9C 000C64 0078+00 1/1 0/0 0/0 .text            allDemoNotMove__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::allDemoNotMove() {
    daNpcKasiHana_c* hana_p = (daNpcKasiHana_c*)mHanaActorMngr.getActorP();
    if (hana_p != NULL) {
        fopAcM_OffStatus(hana_p, fopAcM_STATUS_UNK_0x4000);
    }

    daNpcKasiKyu_c* kyu_p = (daNpcKasiKyu_c*)mKyuActorMngr.getActorP();
    if (kyu_p != NULL) {
        fopAcM_OffStatus(kyu_p, fopAcM_STATUS_UNK_0x4000);
    }

    daNpcKasiMich_c* mich_p = (daNpcKasiMich_c*)mMichActorMngr.getActorP();
    if (mich_p != NULL) {
        fopAcM_OffStatus(mich_p, fopAcM_STATUS_UNK_0x4000);
    }
}

/* 80A1BB9C-80A1BBE0 000CDC 0044+00 2/2 0/0 0/0 .text isMiniGamePlaying__15daNpcKasi_Mng_cFv */
BOOL daNpcKasi_Mng_c::isMiniGamePlaying() {
    BOOL rv = FALSE;
    daNpcChin_c* dancho_p = (daNpcChin_c*)mDanchoActorMngr.getActorP();

    if (dancho_p != NULL) {
        rv = dancho_p->isMiniGamePlaying();
    }

    return rv;
}

/* 80A1BBE0-80A1BC88 000D20 00A8+00 1/1 0/0 0/0 .text            schMemberActor__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::schMemberActor() {
    if (mKyuActorMngr.getPId() == fpcM_ERROR_PROCESS_ID_e) {
        fopAc_ac_c* kyu_p = NULL;

        if (fopAcM_SearchByName(PROC_NPC_KASIKYU, (fopAc_ac_c**)&kyu_p) != 0 && kyu_p != NULL) {
            mKyuActorMngr.entry(kyu_p);
        }
    }

    if (mMichActorMngr.getPId() == fpcM_ERROR_PROCESS_ID_e) {
        fopAc_ac_c* mich_p = NULL;

        if (fopAcM_SearchByName(PROC_NPC_KASIMICH, (fopAc_ac_c**)&mich_p) != 0 && mich_p != NULL) {
            mMichActorMngr.entry(mich_p);
        }
    }
}

/* 80A1BC88-80A1BCF0 000DC8 0068+00 1/1 0/0 0/0 .text            schDanchoActor__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::schDanchoActor() {
    if (mDanchoActorMngr.getPId() == fpcM_ERROR_PROCESS_ID_e) {
        fopAc_ac_c* dancho_p = NULL;

        if (fopAcM_SearchByName(PROC_NPC_CHIN, (fopAc_ac_c**)&dancho_p) != 0 && dancho_p != NULL) {
            mDanchoActorMngr.entry(dancho_p);
        }
    }
}

/* 80A1BCF0-80A1BD6C 000E30 007C+00 2/2 0/0 0/0 .text deleteAllMember__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::deleteAllMember() {
    fopAc_ac_c* kyu_p = mKyuActorMngr.getActorP();
    if (kyu_p != NULL) {
        fopAcM_delete(kyu_p);
        mKyuActorMngr.remove();
    }

    fopAc_ac_c* mich_p = mMichActorMngr.getActorP();
    if (mich_p != NULL) {
        fopAcM_delete(mich_p);
        mMichActorMngr.remove();
    }

    fopAc_ac_c* hana_p = mHanaActorMngr.getActorP();
    if (hana_p != NULL) {
        fopAcM_delete(hana_p);
        mHanaActorMngr.remove();
    }
}

/* 80A1BD6C-80A1BDD8 000EAC 006C+00 1/1 0/0 0/0 .text            chgWeightHeavy__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::chgWeightHeavy() {
    daNpcKasiHana_c* hana_p = (daNpcKasiHana_c*)mHanaActorMngr.getActorP();
    if (hana_p != NULL) {
        hana_p->chgWeightHeavy();
    }

    daNpcKasiKyu_c* kyu_p = (daNpcKasiKyu_c*)mKyuActorMngr.getActorP();
    if (kyu_p != NULL) {
        kyu_p->chgWeightHeavy();
    }

    daNpcKasiMich_c* mich_p = (daNpcKasiMich_c*)mMichActorMngr.getActorP();
    if (mich_p != NULL) {
        mich_p->chgWeightHeavy();
    }
}

/* 80A1BDD8-80A1BE44 000F18 006C+00 1/1 0/0 0/0 .text            chgWeightLight__15daNpcKasi_Mng_cFv */
void daNpcKasi_Mng_c::chgWeightLight() {
    daNpcKasiHana_c* hana_p = (daNpcKasiHana_c*)mHanaActorMngr.getActorP();
    if (hana_p != NULL) {
        hana_p->chgWeightLight();
    }

    daNpcKasiKyu_c* kyu_p = (daNpcKasiKyu_c*)mKyuActorMngr.getActorP();
    if (kyu_p != NULL) {
        kyu_p->chgWeightLight();
    }

    daNpcKasiMich_c* mich_p = (daNpcKasiMich_c*)mMichActorMngr.getActorP();
    if (mich_p != NULL) {
        mich_p->chgWeightLight();
    }
}

/* 80A213F4-80A214A8 000020 00B4+00 1/1 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam2 l_bckGetParamList[15] = {
    {BCK_MICH_IYAN_WAIT, J3DFrameCtrl::EMode_LOOP, GIRLS}, 
    {BCK_MICH_KYA_TALK, J3DFrameCtrl::EMode_LOOP, GIRLS},
    {BCK_MICH_OUEN_WAIT_A, J3DFrameCtrl::EMode_LOOP, GIRLS},
    {BCK_MICH_OUEN_WAIT_B, J3DFrameCtrl::EMode_LOOP, GIRLS},
    {BCK_W_WAIT_A, J3DFrameCtrl::EMode_LOOP, WGENERAL},
    {BCK_W_TALK_B, J3DFrameCtrl::EMode_NONE, WGENERAL},
    {BCK_W_TO_WOLF, J3DFrameCtrl::EMode_LOOP, WGENERAL},
    {BCK_W_WALK_A, J3DFrameCtrl::EMode_LOOP, WGENERAL},
    {BCK_W_LOOK_B, J3DFrameCtrl::EMode_LOOP, WGENERAL},
    {BCK_W_RUN_A, J3DFrameCtrl::EMode_LOOP, WGENERAL},
    {BCK_W_SURPRISE, J3DFrameCtrl::EMode_NONE, WGENERAL},
    {BCK_W_WAIT_A, J3DFrameCtrl::EMode_NONE, WGENERAL},
    {BCK_W_TALK_A, J3DFrameCtrl::EMode_NONE, WGENERAL},
    {BCK_W_2LADYTALK_B, J3DFrameCtrl::EMode_NONE, WGENERAL},
    {BCK_W_2NORMALTALK_B, J3DFrameCtrl::EMode_NONE, WGENERAL},
};

/* 80A214A8-80A214B4 0000D4 000C+00 0/0 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam2 l_btpGetParamList[1] = {
    {BTP_HANA, J3DFrameCtrl::EMode_LOOP, KASI_HANA},
};

/* 80A214B4-80A214C0 -00001 000C+00 5/7 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[3] = {
    "kasi_hana",
    "girls",
    "Wgeneral",
};

/* 80A214C0-80A214D8 -00001 0018+00 0/3 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[6] = {
    NULL,
    "KASIMASI_APPEAR",
    "KASIMASI_TALK",
    "KASIMASI_HEART",
    "KASIMASI_CHEER",
    "KASIMASI_CHEER2",
};

/* 80A214D8-80A214DC -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
static char* l_myName = "kasi_hana";

/* 80A21518-80A21560 000144 0048+00 0/2 0/0 0/0 .data            mEvtSeqList__15daNpcKasiHana_c */
daNpcKasiHana_c::EventFn daNpcKasiHana_c::mEvtSeqList[6] = {
    NULL,
    &daNpcKasiHana_c::_Evt_Kasi_Appear,
    &daNpcKasiHana_c::_Evt_Kasi_Talk,
    &daNpcKasiHana_c::_Evt_Kasi,
    &daNpcKasiHana_c::_Evt_Kasi_Cheer,
    &daNpcKasiHana_c::_Evt_Kasi_Cheer2,
};

/* 80A1BE44-80A1C0A4 000F84 0260+00 1/1 0/0 0/0 .text            __ct__15daNpcKasiHana_cFv */
daNpcKasiHana_c::daNpcKasiHana_c() {}

/* 80A1C0A4-80A1C334 0011E4 0290+00 1/0 0/0 0/0 .text            __dt__15daNpcKasiHana_cFv */
daNpcKasiHana_c::~daNpcKasiHana_c() {
    for (int i = 0; i < 3; i++) {
        dComIfG_resDelete(&mPhases[i], l_arcNames[i]);
    }
    
    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}

/* 80A210C8-80A21144 000048 007C+00 5/12 0/0 0/0 .rodata          m__21daNpcKasiHana_Param_c */
daNpcKasiHana_HIOParam const daNpcKasiHana_Param_c::m = {
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
    800.0f,
    400.0f,
    14.0f,
    16.0f,
};

/* 80A1C334-80A1C5B0 001474 027C+00 1/1 0/0 0/0 .text            Create__15daNpcKasiHana_cFv */
cPhs__Step daNpcKasiHana_c::Create() {
    fopAcM_SetupActor(this, daNpcKasiHana_c);

    mMessageNo = getMessageNo();
    mType = getType();

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

        mAcchCir.SetWall(daNpcKasiHana_Param_c::m.common.width, daNpcKasiHana_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.CrrPos(dComIfG_Bgsp());
        mCcStts.Init(0xFE, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgType(0);
        mCyl.SetTgSPrm(0);
        mCyl.SetH(daNpcKasiHana_Param_c::m.common.height);
        mCyl.SetR(daNpcKasiHana_Param_c::m.common.width);
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();
    }

    return phase;
}

/* 80A1C5B0-80A1C734 0016F0 0184+00 1/1 0/0 0/0 .text            CreateHeap__15daNpcKasiHana_cFv */
int daNpcKasiHana_c::CreateHeap() {
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_arcNames[0], 5);

    JUT_ASSERT(950, NULL != mdlData_p);

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
    model->setUserArea((uintptr_t)this);

    setMotion(MOT_W_WAIT_A, -1.0f, 0);

    return 1;
}

/* 80A1C734-80A1C768 001874 0034+00 1/1 0/0 0/0 .text            Delete__15daNpcKasiHana_cFv */
int daNpcKasiHana_c::Delete() {
    this->~daNpcKasiHana_c();
    return 1;
}

/* 80A1C768-80A1C78C 0018A8 0024+00 2/2 0/0 0/0 .text            Execute__15daNpcKasiHana_cFv */
int daNpcKasiHana_c::Execute() {
    execute();
    return 1;
}

/* 80A1C78C-80A1C7D8 0018CC 004C+00 1/1 0/0 0/0 .text            Draw__15daNpcKasiHana_cFv */
int daNpcKasiHana_c::Draw() {
    if (!mEscape) {
        draw(FALSE, FALSE, daNpcKasiHana_Param_c::m.common.real_shadow_size, NULL, FALSE);
    }

    return 1;
}

/* 80A1C7D8-80A1C964 001918 018C+00 1/1 0/0 0/0 .text            ctrlJoint__15daNpcKasiHana_cFP8J3DJointP8J3DModel */
int daNpcKasiHana_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    int i_jointList[3] = {JNT_BACKBONE, JNT_NECK, JNT_HEAD};

    if (jntNo == JNT_CENTER) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(JNT_BACKBONE));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(JNT_NECK));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(JNT_HEAD));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));

    switch (jntNo) {
        case JNT_BACKBONE:
        case JNT_NECK:
        case JNT_HEAD:
            setLookatMtx(jntNo, i_jointList, daNpcKasiHana_Param_c::m.common.neck_rotation_ratio);
            break;
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    return 1;
}

/* 80A1C964-80A1C984 001AA4 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__15daNpcKasiHana_cFP10fopAc_ac_c */
int daNpcKasiHana_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpcKasiHana_c* i_this = (daNpcKasiHana_c*)a_this;
    return i_this->CreateHeap();
}

/* 80A1C984-80A1C9D0 001AC4 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__15daNpcKasiHana_cFP8J3DJointi */
int daNpcKasiHana_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcKasiHana_c* i_this = (daNpcKasiHana_c*)model->getUserArea();

        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80A1C9D0-80A1CA60 001B10 0090+00 1/0 0/0 0/0 .text            setParam__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::setParam() {
    if (mType == TYPE_WAIT) {
        mKasiMng.initPath(getRailNo(), 6);
    }

    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(daNpcKasiHana_Param_c::m.common.attention_distance, daNpcKasiHana_Param_c::m.common.attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(daNpcKasiHana_Param_c::m.common.talk_distance, daNpcKasiHana_Param_c::m.common.talk_angle);
    attention_info.flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
}

/* 80A1CA60-80A1CD28 001BA0 02C8+00 1/0 0/0 0/0 .text            main__15daNpcKasiHana_cFv */
BOOL daNpcKasiHana_c::main() {
    mKasiMng.SygnalClear();
    mKasiMng.schMemberActor();

    if (mType == TYPE_CHEER) {
        mKasiMng.schDanchoActor();
    }

    if (mKasiMng.chkTalk()) {
        mKasiMng.offTalk();

        if (mType == TYPE_WAIT) {
            if (chkAction(&daNpcKasiHana_c::wait)) {
                if (fopAcM_isSwitch(this, getSwitchBitNo())) {
                    mKasiMng.chgWeightHeavy();
                    mOrderEvtNo = EVT_HEART;
                    changeEvent("kasi_hana", l_evtNames[mOrderEvtNo], 2, 0xFFFF);
                    setAction(&daNpcKasiHana_c::demo);
                } else {
                    mKasiMng.allDemoMove();
                    mOrderEvtNo = EVT_TALK;
                    changeEvent("kasi_hana", l_evtNames[mOrderEvtNo], 2, 0xFFFF);
                    setAction(&daNpcKasiHana_c::demo);
                }
            }
        } else if (mType == TYPE_CHEER) {
            if (chkAction(&daNpcKasiHana_c::cheer)) {
                /* dSv_event_flag_c::F_0293 - Castle Town - Star Game 2 cleared */
                if (daNpcF_chkEvtBit(293)) {
                    mOrderEvtNo = EVT_CHEER2;
                } else {
                    mOrderEvtNo = EVT_CHEER;
                }

                dComIfG_TimerStop(6);
                dTimer_hide();
                changeEvent("kasi_hana", l_evtNames[mOrderEvtNo], 2, 0xFFFF);
                setAction(&daNpcKasiHana_c::demo);
                mKasiMng.onSygnal(1);
            }
        }
    }

    if (mKasiMng.chkFear()) {
        setAction(&daNpcKasiHana_c::fear);
    }

    if (mAction) {
        (this->*mAction)(NULL);
    }

    mKasiMng.sendInfo();
    playMotion();

    return TRUE;
}

/* 80A1CD28-80A1CED0 001E68 01A8+00 1/0 0/0 0/0 .text            setAttnPos__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::setAttnPos() {
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
    attention_info.position.set(mHeadPos.x, mHeadPos.y + daNpcKasiHana_Param_c::m.common.attention_offset, mHeadPos.z);

    cXyz sp28;

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
    mDoMtx_stack_c::multVecZero(&sp28);
    sp28.y = current.pos.y;
    mCyl.SetC(sp28);
    #ifdef DEBUG
    mCyl.SetH(daNpcKasiHana_Param_c::m.common.height);
    mCyl.SetR(daNpcKasiHana_Param_c::m.common.width);
    #endif
    dComIfG_Ccsp()->Set(&mCyl);
}

/* 80A1CED0-80A1CFA0 002010 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__15daNpcKasiHana_cFif */
void daNpcKasiHana_c::setMotionAnm(int i_index, f32 i_morf) {
    J3DAnmTransformKey* i_anm = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_index].arcIdx], l_bckGetParamList[i_index].fileIdx);
    int i_attr = l_bckGetParamList[i_index].attr;
    mAnmFlags &= 0xFFFFFFF6;

    if (i_anm != NULL && setMcaMorfAnm(i_anm, 1.0f, i_morf, i_attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }
}

/* 80A1CFA0-80A1CFE8 0020E0 0048+00 1/0 0/0 0/0 .text            setMotion__15daNpcKasiHana_cFifi */
void daNpcKasiHana_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;
    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 0xC) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
        field_0x143e = 0;
    }
}

/* 80A1CFE8-80A1CFF0 002128 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__15daNpcKasiHana_cFv */
int daNpcKasiHana_c::drawDbgInfo() {
    return 0;
}

/* 80A1CFF0-80A1D238 002130 0248+00 1/1 0/0 0/0 .text            reset__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::reset() {
    initialize();
    mLookat.initialize();

    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }

    mPath.initialize();
    mKasiMng.setHanaActor(this);

    if (mType == TYPE_WAIT) {
        mPath.setPathInfo(getRailNo(), fopAcM_GetRoomNo(this), 0);
        mPath.setIdx(6);
    } else if (mType == TYPE_CHEER) {
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_0x4000);
    }

    field_0x1441 = 0;
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
    mOrderEvtNo = EVT_NONE;

    J3DAnmTexPattern* i_btp = getTexPtrnAnmP(l_arcNames[0], 8);
    mAnmFlags &= 0xFFFFF57F;

    if (setBtpAnm(i_btp, mpMorf->getModel()->getModelData(), 1.0f, J3DFrameCtrl::EMode_LOOP)) {
        mAnmFlags |= ANM_FLAG_800 | ANM_PLAY_BTP | ANM_PAUSE_BTP;
    }

    mTalked = false;
    field_0x1445 = false;
    mEscape = false;
    setAction(&daNpcKasiHana_c::wait);
    mMotionMorfOverride = 0.0f;
}

/* 80A1D238-80A1D604 002378 03CC+00 1/1 0/0 0/0 .text            playMotion__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::playMotion() {
    daNpcF_anmPlayData dat0 = {ANM_MICH_KYA_TALK, daNpcKasiHana_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {ANM_MICH_IYAN_WAIT, daNpcKasiHana_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2 = {ANM_MICH_OUEN_WAIT_A, daNpcKasiHana_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3 = {ANM_MICH_OUEN_WAIT_B, daNpcKasiHana_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4 = {ANM_W_WAIT_A, daNpcKasiHana_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {ANM_W_TALK_B, daNpcKasiHana_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {ANM_W_TO_WOLF, daNpcKasiHana_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7 = {ANM_W_WALK_A, daNpcKasiHana_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {ANM_W_LOOK_B, daNpcKasiHana_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData dat9 = {ANM_W_RUN_A, daNpcKasiHana_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat9[1] = {&dat9};
    daNpcF_anmPlayData dat10 = {ANM_W_SURPRISE, daNpcKasiHana_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat10[1] = {&dat10};
    daNpcF_anmPlayData dat11a = {ANM_W_WAIT_A_2, daNpcKasiHana_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11b = {ANM_W_2LADYTALK_B, daNpcKasiHana_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11c = {ANM_W_TALK_A, daNpcKasiHana_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11d = {ANM_W_WAIT_A_2, daNpcKasiHana_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11e = {ANM_W_TALK_B, daNpcKasiHana_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11f = {ANM_W_2NORMALTALK_B, daNpcKasiHana_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat11[6] = {&dat11a, &dat11b, &dat11c, &dat11d, &dat11e, &dat11f};

    daNpcF_anmPlayData** ppDat[12] = {
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
    };

    if (mMotion >= 0 && mMotion < 0xC) {
        field_0x143e = mMotionPhase;

        if (mMotion == MOT_W_WAIT_A_LOOP) {
            playMotionAnmLoop(ppDat);
        } else {
            playMotionAnm(ppDat);
        }
    }
}

/* 80A1D604-80A1D77C 002744 0178+00 1/1 0/0 0/0 .text            playMotionAnmLoop__15daNpcKasiHana_cFPPPQ28daNpcF_c18daNpcF_anmPlayData */
void daNpcKasiHana_c::playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData*** i_data) {
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
                if (mMotion == MOT_W_WAIT_A_LOOP) {
                    i_morf = daNpcKasiHana_Param_c::m.common.morf_frame;
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

/* 80A1D77C-80A1D824 0028BC 00A8+00 9/9 0/0 0/0 .text            setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i */
BOOL daNpcKasiHana_c::setAction(actionFunc action) {
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

/* 80A1D824-80A1D848 002964 0024+00 8/8 0/0 0/0 .text            setLookMode__15daNpcKasiHana_cFi */
void daNpcKasiHana_c::setLookMode(int i_lookMode) {
    if (i_lookMode >= 0 && i_lookMode < 4 && i_lookMode != mLookMode) {
        mLookMode = i_lookMode;
    }
}

/* 80A1D848-80A1DA28 002988 01E0+00 1/1 0/0 0/0 .text            lookat__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::lookat() {
    daPy_py_c* player = NULL;
    J3DModel* model = mpMorf->getModel();
    BOOL i_snap = FALSE;
    f32 body_angleX_min = daNpcKasiHana_Param_c::m.common.body_angleX_min;
    f32 body_angleX_max = daNpcKasiHana_Param_c::m.common.body_angleX_max;
    f32 body_angleY_min = daNpcKasiHana_Param_c::m.common.body_angleY_min;
    f32 body_angleY_max = daNpcKasiHana_Param_c::m.common.body_angleY_max;
    f32 head_angleX_min = daNpcKasiHana_Param_c::m.common.head_angleX_min;
    f32 head_angleX_max = daNpcKasiHana_Param_c::m.common.head_angleX_max;
    f32 head_angleY_min = daNpcKasiHana_Param_c::m.common.head_angleY_min;
    f32 head_angleY_max = daNpcKasiHana_Param_c::m.common.head_angleY_max;
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

/* 80A1DA28-80A1DB1C 002B68 00F4+00 1/1 0/0 0/0 .text            step__15daNpcKasiHana_cFsi */
BOOL daNpcKasiHana_c::step(s16 i_targetAngle, int param_2) {
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

/* 80A1DB1C-80A1DC00 002C5C 00E4+00 1/1 0/0 0/0 .text            chkFindPlayer__15daNpcKasiHana_cFv */
BOOL daNpcKasiHana_c::chkFindPlayer() {
    if (!chkActorInSight(daPy_getPlayerActorClass(), daNpcKasiHana_Param_c::m.common.fov)) {
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

/* 80A1DC00-80A1E184 002D40 0584+00 10/0 0/0 0/0 .text            wait__15daNpcKasiHana_cFi */
int daNpcKasiHana_c::wait(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0:
            if (mType == TYPE_WAIT && !field_0x1445) {
                setMotion(MOT_W_WAIT_A_LOOP, 12.0f, 0);
            } else {
                setMotion(MOT_W_WAIT_A, -1.0f, 0);
            }

            speedF = 0.0f;
            mMode = 1;
            break;

        case 1:
            BOOL bVar1 = FALSE;
            chkFindPlayer();

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER);
                bVar1 = TRUE;
            } else if (!fopAcM_isSwitch(this, getSwitchBitNo())) {
                setLookMode(LOOK_NONE);
                if (home.angle.y != mCurAngle.y && step(home.angle.y, 1)) {
                    if (mType == TYPE_WAIT && !field_0x1445) {
                        setMotion(MOT_W_WAIT_A_LOOP, 12.0f, 0);
                    } else {
                        setMotion(MOT_W_WAIT_A, -1.0f, 0);
                    }

                    mTurnMode = 0;
                }
            }

            if (mType == TYPE_WAIT) {
                /* dSv_event_flag_c::F_290 - Castle Town - Star Game 1 cleared */
                if (daNpcF_chkEvtBit(290)) {
                    f32 actorDistance = fopAcM_searchActorDistanceXZ(this, daPy_getPlayerActorClass());

                    if (!fopAcM_isSwitch(this, getSwitchBitNo())) {
                        if (actorDistance < 350.0f) {
                            mOrderEvtNo = EVT_APPEAR;
                        }
                    } else if (!daPy_py_c::checkNowWolf()) {
                        if (field_0x1441 == 0) {
                            if (bVar1) {
                                field_0x1441 = 1;
                                mKasiMng.onSygnal(0x200);
                                setAction(&daNpcKasiHana_c::chace_st);
                                return 1;
                            }

                            f32 distFromCenter = mKasiMng.getDistFromCenter();
                            if (distFromCenter >= 0.0f && distFromCenter < daNpcKasiHana_Param_c::m.track_start_dist) {
                                field_0x1441 = 1;
                                mKasiMng.onSygnal(0x200);
                                setAction(&daNpcKasiHana_c::chace_st);
                                return 1;
                            }
                        } else if (pl_front_check()) {
                            if (actorDistance >= daNpcKasiHana_Param_c::m.track_stop_dist + 50.0f) {
                                setAction(&daNpcKasiHana_c::chace);
                                return 1;
                            }
                        } else {
                            setAction(&daNpcKasiHana_c::turn);
                            return 1;
                        }
                    }
                }
            } else if (mType == TYPE_CHEER && mKasiMng.isMiniGamePlaying()) {
                setAction(&daNpcKasiHana_c::cheer);
                return 1;
            }

            mKasiMng.setKyuPos(current.pos);
            mKasiMng.setMichPos(current.pos);

            if (dComIfGp_event_runCheck()) {
                if (eventInfo.checkCommandTalk()) {
                    if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                        setAction(&daNpcKasiHana_c::talk);
                    }
                } else if (dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0) != -1) {
                    setAction(&daNpcKasiHana_c::demo);
                }
            } else {
                if (!dKy_darkworld_check()) {
                    if (daPy_py_c::checkNowWolf()) {
                        f32 fVar1 = pow(500.0, 2.0);
                        if (fopAcM_searchPlayerDistanceXZ2(this) < fVar1) {
                            setAction(&daNpcKasiHana_c::fear);
                            break;
                        }
                    }
                }

                if (mOrderEvtNo != EVT_NONE) {
                    eventInfo.setArchiveName(l_arcNames[0]);
                }

                orderEvent(field_0x1444, l_evtNames[mOrderEvtNo], 0xFFFF, 4, 0xFF, 2);
            }
            break;
    }

    return 1;
}

/* 80A1E184-80A1E228 0032C4 00A4+00 3/0 0/0 0/0 .text            chace_st__15daNpcKasiHana_cFi */
int daNpcKasiHana_c::chace_st(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0:
            field_0x1445 = true;
            fopAcM_SetSpeedF(this, 0.0f);
            mMode = 1;
            break;

        case 1:
            if (_turn_to_link(0xC00)) {
                setAction(&daNpcKasiHana_c::chace);
            }
            break;
    }

    return 1;
}

/* 80A1E228-80A1E3AC 003368 0184+00 2/0 0/0 0/0 .text            chace__15daNpcKasiHana_cFi */
int daNpcKasiHana_c::chace(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0:
            field_0x1445 = true;
            setMotion(MOT_W_RUN_A, -1.0f, 0);
            setLookMode(LOOK_NONE);
            fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
            fopAcM_SetSpeedF(this, daNpcKasiHana_Param_c::m.track_spd);
            mKasiMng.chgWeightLight();
            mMode = 1;
            break;

        case 1:
            cXyz chacePos = getChacePos();
            _turn_pos(chacePos, 0x800);

            if (pl_front_check()) {
                if (fopAcM_searchActorDistanceXZ(this, daPy_getPlayerActorClass()) < daNpcKasiHana_Param_c::m.track_stop_dist) {
                    setAction(&daNpcKasiHana_c::wait);
                }
            } else {
                setAction(&daNpcKasiHana_c::chace_st);
            }
            break;
    }

    return 1;
}

/* 80A1E3AC-80A1E4AC 0034EC 0100+00 1/1 0/0 0/0 .text            getChacePos__15daNpcKasiHana_cFv */
cXyz daNpcKasiHana_c::getChacePos() {
    cXyz rv(*fopAcM_GetPosition_p(daPy_getPlayerActorClass()));

    if (!mKasiMng.isPathInit()) {
        OS_REPORT("-------------------------path not initialize!!\n");
        return rv;
    }

    int plNearPoint = mKasiMng.getPlNearPoint();
    int idx = mPath.getIdx();

    if (idx == plNearPoint) {
        return rv;
    }

    if (idx < plNearPoint) {
        mPath.offReverse();
    } else if (idx > plNearPoint) {
        mPath.onReverse();
    }

    cXyz sp3c;
    mPath.getDstPos(current.pos, sp3c);
    
    return sp3c;
}

/* 80A1E4AC-80A1E578 0035EC 00CC+00 1/0 0/0 0/0 .text            turn__15daNpcKasiHana_cFi */
int daNpcKasiHana_c::turn(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0:
            setMotion(MOT_W_WAIT_A, -1.0f, 0);
            speedF = 0.0f;
            mKasiMng.onSygnal(4);
            mMode = 1;
            break;

        case 1:
            if (_turn_to_link(0x1000)) {
                setAction(&daNpcKasiHana_c::wait);
            }
            break;

        default:
            JUT_ASSERT(2155, FALSE);
    }

    return 1;
}

/* 80A1E578-80A1E78C 0036B8 0214+00 3/0 0/0 0/0 .text            fear__15daNpcKasiHana_cFi */
int daNpcKasiHana_c::fear(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0: {
            mKasiMng.onSygnal(0x80000);
            dComIfGs_onSaveDunSwitch(60);

            daTagEscape_c* tagEscape_p = srchWolfTag();
            if (tagEscape_p != NULL) {
                mPath.initialize();
                mPath.setPathInfo(tagEscape_p->getPathID(), fopAcM_GetRoomNo(this), 0);
                mPath.setIdx(getWolfPathNearIdx());
                mMode = 1;
            }
            break;
        }

        case 1:
            if (_turn_to_link(0x1000)) {
                setMotion(MOT_W_SURPRISE, -1.0f, 0);
                mMode = 3;
            }
            break;

        case 3:
            if (mpMorf->isStop()) {
                setMotion(MOT_W_RUN_A, -1.0f, 0);
                fopAcM_SetSpeedF(this, 15.0f);
                mSound.startCreatureVoice(Z2SE_HANA_V_FEAR, -1);
                mMode = 4;
            }
            break;

        case 4: {
            cXyz sp28;
            mpMorf->setPlaySpeed(1.5f);
            
            if (mPath.getDstPos(current.pos, sp28)) {
                mEscape = true;
                mMode = 5;
            } else {
                _turn_pos(sp28, 800);
            }
            break;
        }

        case 5:
            if (mKasiMng.chkEscape()) {
                mKasiMng.deleteAllMember();
            }
            break;
    }

    return 1;
}

/* 80A21858-80A2185C 000058 0004+00 1/2 0/0 0/0 .bss             mTargetTag__15daNpcKasiHana_c */
daTagEscape_c* daNpcKasiHana_c::mTargetTag;

/* 80A2185C-80A21860 00005C 0004+00 0/1 0/0 0/0 .bss             mTargetTagDist__15daNpcKasiHana_c */
f32 daNpcKasiHana_c::mTargetTagDist;

/* 80A21860-80A21864 000060 0002+02 1/2 0/0 0/0 .bss             mWolfAngle__15daNpcKasiHana_c */
s16 daNpcKasiHana_c::mWolfAngle;

/* 80A1E78C-80A1E7F4 0038CC 0068+00 1/1 0/0 0/0 .text            srchWolfTag__15daNpcKasiHana_cFv */
daTagEscape_c* daNpcKasiHana_c::srchWolfTag() {
    mTargetTag = NULL;
    mWolfAngle = fopAcM_searchPlayerAngleY(this);
    fpcM_Search(_srch_escape_tag, this);
    return mTargetTag;
}

/* 80A1E7F4-80A1E8C4 003934 00D0+00 1/1 0/0 0/0 .text _srch_escape_tag__15daNpcKasiHana_cFPvPv */
void* daNpcKasiHana_c::_srch_escape_tag(void* i_actor, void* i_data) {
    if (!fopAcM_IsActor(i_actor)) {
        return NULL;
    }
    
    if (fopAcM_GetName(i_actor) != PROC_Tag_Escape) {
        return NULL;
    }

    int iVar1 = cLib_distanceAngleS(mWolfAngle, fopAcM_searchActorAngleY((fopAc_ac_c*)i_data, (fopAc_ac_c*)i_actor));

    if (mTargetTag == NULL) {
        mTargetTagDist = fopAcM_searchActorDistanceXZ2((fopAc_ac_c*)i_data, (fopAc_ac_c*)i_actor);
        mTargetTag = (daTagEscape_c*)i_actor;
        return NULL;
    }
    
    if (iVar1 > 0x4000) {
        f32 fVar1 = fopAcM_searchActorDistanceXZ2((fopAc_ac_c*)i_data, (fopAc_ac_c*)i_actor);
        if (fVar1 < mTargetTagDist) {
            mTargetTagDist = fVar1;
            mTargetTag = (daTagEscape_c*)i_actor;
        }
    }

    return NULL;
}

/* 80A1E8C4-80A1E9F8 003A04 0134+00 1/1 0/0 0/0 .text getWolfPathNearIdx__15daNpcKasiHana_cFv */
int daNpcKasiHana_c::getWolfPathNearIdx() {
    int iVar1 = 0;
    f32 fVar1 = 0.0f;
    u16 numPnts = mPath.getNumPnts();
    cXyz sp44, sp50;

    int rv = 0;
    for (; rv < numPnts; rv++) {
        sp44 = mPath.getPntPos(rv);
        sp50 = sp44 - current.pos;
        f32 fVar2 = sp50.abs2XZ();

        if (rv == 0) {
            fVar1 = fVar2;
            iVar1 = 0;
        } else if (fVar2 < fVar1) {
            fVar1 = fVar2;
            iVar1 = rv;
        }
    }

    rv = iVar1 + 1;

    if (iVar1 == numPnts) {
        rv = iVar1;
    }

    return rv;
}

/* 80A1E9F8-80A1EB5C 003B38 0164+00 1/0 0/0 0/0 .text            talk__15daNpcKasiHana_cFi */
int daNpcKasiHana_c::talk(int param_1) {
    bool rv = false;

    switch (mMode) {
        case 0:
            mTalked = true;
            setAction(&daNpcKasiHana_c::wait);
            rv = true;
            break;

        case -1:
            if (!field_0x9ec) {
                dComIfGp_event_reset();
            }
            break;

        case 1:
            if (talkProc(NULL, TRUE, NULL)) {
                mActorMngr[0].entry(daPy_getPlayerActorClass());

                if (mType == TYPE_WAIT) {
                    setAction(&daNpcKasiHana_c::wait);
                }

                rv = true;
            } else {
                int iVar1, i_motion;
                if (ctrlMsgAnm(iVar1, i_motion, this, FALSE)) {
                    setMotion(i_motion, -1.0f, 0);
                }
            }
            break;

        case 2:
            break;
    }

    return rv;
}

/* 80A1EB5C-80A1EE38 003C9C 02DC+00 4/0 0/0 0/0 .text            demo__15daNpcKasiHana_cFi */
int daNpcKasiHana_c::demo(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0:
            setMotion(MOT_W_WAIT_A, -1.0f, 0);
            mMode = 1;
            break;

        case 1:
            if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk()) {
                dEvent_manager_c& eventManager = dComIfGp_getEventManager();
                s32 staffId = dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0);
                if (staffId != -1) {
                    mStaffID = staffId;

                    JUT_ASSERT(2459, NULL != mEvtSeqList[mOrderEvtNo]);

                    if ((this->*mEvtSeqList[mOrderEvtNo])(staffId)) {
                        dComIfGp_getEventManager().cutEnd(staffId);
                    }
                }

                if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager.endCheck(mEventIdx)) {
                    switch (mOrderEvtNo) {
                        case EVT_APPEAR:
                            dComIfGp_event_reset();
                            mOrderEvtNo = EVT_NONE;
                            mEventIdx = -1;
                            fopAcM_onSwitch(this, getSwitchBitNo());
                            mKasiMng.onSygnal(1);
                            setAction(&daNpcKasiHana_c::wait);
                            break;

                        case EVT_HEART:
                            setAction(&daNpcKasiHana_c::escape);
                            dComIfGp_event_reset();
                            mOrderEvtNo = EVT_NONE;
                            mEventIdx = -1;
                            break;

                        case EVT_TALK:
                            mKasiMng.allDemoNotMove();
                            dComIfGp_event_reset();
                            mOrderEvtNo = EVT_NONE;
                            mEventIdx = -1;
                            setAction(&daNpcKasiHana_c::wait);
                            mKasiMng.onSygnal(1);
                            break;

                        case EVT_CHEER:
                        case EVT_CHEER2:
                            dTimer_show();
                            // fallthrough
                        default:
                            dComIfGp_event_reset();
                            mOrderEvtNo = EVT_NONE;
                            mEventIdx = -1;

                            if (mType == TYPE_WAIT) {
                                setAction(&daNpcKasiHana_c::wait);
                            } else if (mType == TYPE_CHEER) {
                                OS_REPORT("-----------demo return!!\n");

                                dComIfG_TimerReStart(6);
                                setAction(&daNpcKasiHana_c::cheer);
                            }
                            break;
                    }
                }
            }
            break;
    }

    return 1;
}

/* 80A1EE38-80A1EF90 003F78 0158+00 1/0 0/0 0/0 .text            escape__15daNpcKasiHana_cFi */
int daNpcKasiHana_c::escape(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0:
            setMotion(MOT_W_RUN_A, -1.0f, 0);
            fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
            fopAcM_SetSpeedF(this, daNpcKasiHana_Param_c::m.escape_spd);
            setEscapePathDir();
            mKasiMng.onSygnal(0x20);
            mSound.startCreatureVoice(Z2SE_HANA_V_FEAR, -1);
            mMode = 1;
            break;

        case 1:
            cXyz sp28;
            if (mPath.getDstPos(current.pos, sp28)) {
                mKasiMng.deleteAllMember();
            } else {
                _turn_pos(sp28, 0x600);
                mKasiMng.calcEscapeForm();
                mpMorf->setPlaySpeed(1.75f);
            }
            break;
    }

    return 1;
}

/* 80A1EF90-80A1F198 0040D0 0208+00 3/0 0/0 0/0 .text            cheer__15daNpcKasiHana_cFi */
int daNpcKasiHana_c::cheer(int param_1) {
    // NONMATCHING
    switch (mMode) {
        case -1:
            break;

        case 0:
            /* dSv_event_flag_c::F_290 - Castle Town - Star Game 1 cleared */
            if (daNpcF_chkEvtBit(290)) {
                setMotion(MOT_MICH_OUEN_WAIT_B, -1.0f, 0);
            } else {
                setMotion(MOT_MICH_OUEN_WAIT_A, -1.0f, 0);
            }

            setLookMode(LOOK_PLAYER);
            fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
            fopAcM_SetSpeedF(this, 0.0f);
            mTalked = false;
            field_0x1440 = 0;
            mMode = 1;
            break;

        case 1:
            if (!mKasiMng.isMiniGamePlaying()) {
                mKasiMng.onSygnal(1);
                setAction(&daNpcKasiHana_c::wait);
                return 1;
            }

            if (field_0x1440 == 0) {
                mKasiMng.onSygnal(0x100);
                field_0x1440 = 1;
            }

            if (dComIfGp_event_runCheck()) {
                if (eventInfo.checkCommandTalk()) {
                    if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                        mTalked = true;
                        dComIfGp_event_reset();
                    }
                }
            } else {
                if (mOrderEvtNo != EVT_NONE) {
                    eventInfo.setArchiveName(l_arcNames[0]);
                }

                orderEvent(field_0x1444, l_evtNames[mOrderEvtNo], 0xFFFF, 4, 0xFF, 2);
            }
            break;
    }

    return 1;
}

/* 80A1F198-80A1F1E4 0042D8 004C+00 5/5 0/0 0/0 .text            _turn_to_link__15daNpcKasiHana_cFs */
BOOL daNpcKasiHana_c::_turn_to_link(s16 param_1) {
    cXyz sp20(*fopAcM_GetPosition_p(daPy_getPlayerActorClass()));
    return _turn_pos(sp20, param_1);
}

/* 80A1F1E4-80A1F240 004324 005C+00 5/5 0/0 0/0 .text _turn_pos__15daNpcKasiHana_cFRC4cXyzs */
BOOL daNpcKasiHana_c::_turn_pos(cXyz const& param_1, s16 param_2) {
    BOOL rv = cLib_chaseAngleS(&mCurAngle.y, cLib_targetAngleY(&current.pos, &param_1), param_2);
    current.angle.y = mCurAngle.y;
    shape_angle.y = mCurAngle.y;
    return rv;
}

/* 80A1F240-80A1F318 004380 00D8+00 3/3 0/0 0/0 .text            actor_front_check__15daNpcKasiHana_cFP10fopAc_ac_c */
BOOL daNpcKasiHana_c::actor_front_check(fopAc_ac_c* actor_p) {
    if (actor_p == NULL) {
        return TRUE;
    }

    cXyz sp24(*fopAcM_GetPosition_p(actor_p));
    cXyz sp30(sp24 - current.pos);
    cXyz sp3c(0.0f, 0.0f, 1.0f);
    cXyz sp48;
    _getOffset(sp3c, sp48);

    return (sp30.x * sp48.x + sp30.z * sp48.z) >= 0.0f;
}

/* 80A1F318-80A1F384 004458 006C+00 1/1 0/0 0/0 .text            _getOffset__15daNpcKasiHana_cFRC4cXyzR4cXyz */
void daNpcKasiHana_c::_getOffset(cXyz const& param_1, cXyz& param_2) {
    param_2 = param_1;
    csXyz angle(*fopAcM_GetShapeAngle_p(this));
    mDoMtx_stack_c::ZXYrotS(angle);
    mDoMtx_stack_c::multVec(&param_2, &param_2);
}

/* 80A1F384-80A1F42C 0044C4 00A8+00 1/0 0/0 0/0 .text            _Evt_Kasi_Appear__15daNpcKasiHana_cFi */
BOOL daNpcKasiHana_c::_Evt_Kasi_Appear(int i_index) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int i_cutIndex = -1;

    int* cutId = dComIfGp_evmng_getMyIntegerP(i_index, "cutId");
    if (cutId != NULL) {
        i_cutIndex = *cutId;
    } else {
        return TRUE;
    }
    
    if (eventManager.getIsAddvance(i_index)) {
        _Evt_Kasi_Appear_CutInit(i_cutIndex);
    }

    return _Evt_Kasi_Appear_CutMain(i_cutIndex);
    
}

/* 80A1F42C-80A1F50C 00456C 00E0+00 1/1 0/0 0/0 .text            _Evt_Kasi_Appear_CutInit__15daNpcKasiHana_cFRCi */
BOOL daNpcKasiHana_c::_Evt_Kasi_Appear_CutInit(int const& i_cutIndex) {
    switch (i_cutIndex) {
        case 10:
            mKasiMng.onSygnal(4);
            setMotion(MOT_W_WAIT_A, -1.0f, 0);
            field_0x1430 = 20;
            break;
        
        case 20:
            mKasiMng.onSygnal(0x400);
            setMotion(MOT_MICH_KYA_TALK, -1.0f, 0);
            initTalk(mMessageNo, NULL);
            break;

        case 21:
            mKasiMng.onSygnal(0x1000);
            field_0x1430 = 24;
            break;
    }

    return TRUE;
}

/* 80A1F50C-80A1F638 00464C 012C+00 1/1 0/0 0/0 .text            _Evt_Kasi_Appear_CutMain__15daNpcKasiHana_cFRCi */
BOOL daNpcKasiHana_c::_Evt_Kasi_Appear_CutMain(int const& i_cutIndex) {
    BOOL rv = FALSE;

    switch (i_cutIndex) {
        case 10:
            if (_turn_to_link(0x1000)) {
                setLookMode(LOOK_PLAYER);
            }

            if (--field_0x1430 <= 0) {
                rv = TRUE;
            }
            break;
        
        case 20:
            if (talkProc(NULL, TRUE, NULL)) {
                rv = TRUE;
            }
            break;
        
        case 21:
            if (mMotion == MOT_MICH_KYA_TALK && (mpMorf->getFrame() == 19.0f || mpMorf->getFrame() == 1.0f)) {
                setMotion(MOT_W_WAIT_A, -1.0f, 0);
            }

            field_0x1430--;
            if (field_0x1430 == 0) {
                rv = TRUE;
            }
            break;

        default:
            rv = TRUE;
    }

    return rv;
}

/* 80A1F638-80A1F740 004778 0108+00 1/0 0/0 0/0 .text            _Evt_Kasi_Talk__15daNpcKasiHana_cFi */
BOOL daNpcKasiHana_c::_Evt_Kasi_Talk(int i_index) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int i_cutIndex = -1;

    int* cutID = dComIfGp_evmng_getMyIntegerP(i_index, "cutId");
    if (cutID != NULL) {
        i_cutIndex = *cutID;
    } else {
        return TRUE;
    }

    if (eventManager.getIsAddvance(i_index)) {
        _Evt_Kasi_Talk_CutInit(i_cutIndex);
    }

    int iVar2 = -1;
    int* mesNo;

    /* dSv_event_flag_c::F_289 - Castle Town - Heard conversation about entering Star Game 1 */
    if (daNpcF_chkEvtBit(289)) {
        mesNo = dComIfGp_evmng_getMyIntegerP(i_index, "mesNo2");    
    } else {
        mesNo = dComIfGp_evmng_getMyIntegerP(i_index, "mesNo1");
    }

    if (mesNo != NULL) {
        iVar2 = *mesNo;
    }

    return _Evt_Kasi_Talk_CutMain(i_cutIndex, iVar2);
}

/* 80A1F740-80A1F860 004880 0120+00 1/1 0/0 0/0 .text            _Evt_Kasi_Talk_CutInit__15daNpcKasiHana_cFRCi */
BOOL daNpcKasiHana_c::_Evt_Kasi_Talk_CutInit(int const& i_cutIndex) {
    fopAc_ac_c* actors[3] = {mKasiMng.getHanaActor(), mKasiMng.getKyuActor(), mKasiMng.getMichActor()};

    switch (i_cutIndex) {
        case 10:
            setLookMode(LOOK_NONE);
            setMotion(MOT_MICH_KYA_TALK, -1.0f, 0);
            initTalk(mMessageNo, actors);
            break;
        
        case 20:
            mKasiMng.onSygnal(0x20000);
            break;

        case 30:
            mKasiMng.onSygnal(0x40000);
            break;
            
        case 31:
            mKasiMng.onSygnal(0x1000);
            break;
    }

    return TRUE;
}

/* 80A1F860-80A1F9F4 0049A0 0194+00 1/1 0/0 0/0 .text            _Evt_Kasi_Talk_CutMain__15daNpcKasiHana_cFRCii */
BOOL daNpcKasiHana_c::_Evt_Kasi_Talk_CutMain(int const& i_cutIndex, int param_2) {
    fopAc_ac_c* actors[3] = {mKasiMng.getHanaActor(), mKasiMng.getKyuActor(), mKasiMng.getMichActor()};
    BOOL rv = FALSE;
    int iVar1[2] = {-1, -1};

    switch (i_cutIndex) {
        case 10:
            iVar1[0] = param_2;

            if (talkProc(iVar1, FALSE, actors)) {
                rv = TRUE;
            }
            break;
        
        case 20:
            if (mMotion == MOT_MICH_KYA_TALK && (mpMorf->getFrame() == 19.0f || mpMorf->getFrame() == 1.0f)) {
                setMotion(MOT_W_WAIT_A, -1.0f, 0);
            }

            iVar1[0] = param_2;

            if (talkProc(iVar1, FALSE, actors)) {
                rv = TRUE;
            }
            break;

        case 30:
            if (talkProc(NULL, FALSE, actors)) {
                rv = TRUE;
            }
            break;
            
        case 31:
            rv = TRUE;
            break;

        default:
            rv = TRUE;
            break;
    }

    return rv;
}

/* 80A1F9F4-80A1FA9C 004B34 00A8+00 1/0 0/0 0/0 .text            _Evt_Kasi__15daNpcKasiHana_cFi */
BOOL daNpcKasiHana_c::_Evt_Kasi(int i_index) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int i_cutIndex = -1;

    int* cutId = dComIfGp_evmng_getMyIntegerP(i_index, "cutId");
    if (cutId != NULL) {
        i_cutIndex = *cutId;
    } else {
        return TRUE;
    }

    if (eventManager.getIsAddvance(i_index) != 0) {
        _Evt_Kasi_CutInit(i_cutIndex);
    }

    return _Evt_Kasi_CutMain(i_cutIndex);
}

/* 80A1FA9C-80A1FBC4 004BDC 0128+00 1/1 0/0 0/0 .text _Evt_Kasi_CutInit__15daNpcKasiHana_cFRCi */
BOOL daNpcKasiHana_c::_Evt_Kasi_CutInit(int const& i_cutIndex) {
    switch (i_cutIndex) {
        case 10:
            mKasiMng.onSygnal(4);
            break;

        case 20:
            setMotion(MOT_MICH_KYA_TALK, -1.0f, 0);
            mKasiMng.onSygnal(0x400);
            initTalk(mMessageNo, NULL);
            break;
        
        case 21:
            mKasiMng.onSygnal(0x1000);
            field_0x1430 = 24;
            break;

        case 30:
            setLookMode(LOOK_NONE);
            mKasiMng.onSygnal(0x40);
            mKasiMng.calcCenterPos();
            break;

        case 40:
            field_0x1430 = 86;
            mKasiMng.onSygnal(0x800);
            setMotion(MOT_MICH_IYAN_WAIT, -1.0f, 0);
            break;
    }

    return TRUE;
}

/* 80A1FBC4-80A1FD64 004D04 01A0+00 1/1 0/0 0/0 .text _Evt_Kasi_CutMain__15daNpcKasiHana_cFRCi */
BOOL daNpcKasiHana_c::_Evt_Kasi_CutMain(int const& i_cutIndex) {
    BOOL rv = FALSE;

    switch (i_cutIndex) {
        case 10:
            if (_turn_to_link(0xA00)) {
                rv = TRUE;
            }
            break;

        case 20:
            if (talkProc(NULL, TRUE, NULL)) {
                rv = TRUE;
            }
            break;

        case 21:
            if (mMotion == MOT_MICH_KYA_TALK && (mpMorf->getFrame() == 19.0f || mpMorf->getFrame() == 1.0f)) {
                setMotion(MOT_W_WAIT_A, -1.0f, 0);
            }

            field_0x1430--;
            if (field_0x1430 == 0) {
                rv = TRUE;
            }
            break;

        case 30: {
            cXyz sp38(mKasiMng.getCenterPos());
            
            if (_turn_pos(sp38, 0xA00)) {
                rv = TRUE;
            }
            break;
        }

        case 40:
            field_0x1430--;
            if (field_0x1430 <= 0) {
                rv = TRUE;
            } else if (field_0x1430 == 66) {
                mKasiMng.createHearts();
            }
            break;

        default:
            rv = TRUE;
    }

    return rv;
}

/* 80A1FD64-80A1FE6C 004EA4 0108+00 1/0 0/0 0/0 .text _Evt_Kasi_Cheer__15daNpcKasiHana_cFi */
BOOL daNpcKasiHana_c::_Evt_Kasi_Cheer(int i_index) {
    OS_REPORT("-------------------daNpcKasiHana_c::_Evt_Kasi_Cheer\n");

    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int i_cutIndex = -1;
    
    int* cutId = dComIfGp_evmng_getMyIntegerP(i_index, "cutId");
    if (cutId != NULL) {
        i_cutIndex = *cutId;
    } else {
        return TRUE;
    }

    if (eventManager.getIsAddvance(i_index) != 0) {
        _Evt_Kasi_Cheer_CutInit(i_cutIndex);
    }

    int iVar2 = -1;
    int* mesNo;

    /* dSv_event_flag_c::F_290 - Castle Town - Star Game 1 cleared */
    if (daNpcF_chkEvtBit(290)) {
        mesNo = dComIfGp_evmng_getMyIntegerP(i_index, "mesNo2");
    } else {
        mesNo = dComIfGp_evmng_getMyIntegerP(i_index, "mesNo1");
    }

    if (mesNo != NULL) {
        iVar2 = *mesNo;
    }

    return _Evt_Kasi_Cheer_CutMain(i_cutIndex, iVar2);
}

/* 80A1FE6C-80A1FF78 004FAC 010C+00 1/1 0/0 0/0 .text            _Evt_Kasi_Cheer_CutInit__15daNpcKasiHana_cFRCi */
BOOL daNpcKasiHana_c::_Evt_Kasi_Cheer_CutInit(int const& i_cutIndex) {
    fopAc_ac_c* actors[3] = {mKasiMng.getHanaActor(), mKasiMng.getKyuActor(), mKasiMng.getMichActor()};

    switch (i_cutIndex) {
        case 10:
            setMotion(MOT_MICH_IYAN_WAIT, -1.0f, 0);
            setLookMode(LOOK_NONE);
            field_0x1430 = 86;
            initTalk(mMessageNo, actors);
            break;

        case 20:
            mKasiMng.onSygnal(0x8000);
            break;

        case 30:
            mKasiMng.onSygnal(0x10000);
            break;
    }

    return TRUE;
}

/* 80A1FF78-80A2016C 0050B8 01F4+00 1/1 0/0 0/0 .text            _Evt_Kasi_Cheer_CutMain__15daNpcKasiHana_cFRCii */
BOOL daNpcKasiHana_c::_Evt_Kasi_Cheer_CutMain(int const& i_cutIndex, int param_2) {
    fopAc_ac_c* actors[3] = {mKasiMng.getHanaActor(), mKasiMng.getKyuActor(), mKasiMng.getMichActor()};
    int iVar1[2] = {-1, -1};
    BOOL rv = FALSE;

    switch (i_cutIndex) {
        case 10:
            if (field_0x1430 > 0) {
                field_0x1430--;
                if (field_0x1430 == 0) {
                    setMotion(MOT_W_WAIT_A, -1.0f, 0);
                }
            }

            iVar1[0] = param_2;

            if (talkProc(iVar1, FALSE, actors)) {
                rv = TRUE;
            }
            break;
        
        case 20:
            if (field_0x1430 > 0) {
                field_0x1430--;
                if (field_0x1430 == 0) {
                    setMotion(MOT_W_WAIT_A, -1.0f, 0);
                }
            }

            iVar1[0] = param_2;

            if (talkProc(iVar1, FALSE, actors)) {
                rv = TRUE;
            }
            break;

        case 30:
            if (field_0x1430 > 0) {
                field_0x1430--;
                if (field_0x1430 == 0) {
                    setMotion(MOT_W_WAIT_A, -1.0f, 0);
                }
            }

            if (talkProc(NULL, FALSE, actors)) {
                rv = TRUE;
            }
            break;

        default:
            rv = TRUE;
    }

    return rv;
}

/* 80A2016C-80A20244 0052AC 00D8+00 1/0 0/0 0/0 .text _Evt_Kasi_Cheer2__15daNpcKasiHana_cFi */
BOOL daNpcKasiHana_c::_Evt_Kasi_Cheer2(int i_index) {
    OS_REPORT("-------------------daNpcKasiHana_c::_Evt_Kasi_Cheer2\n");

    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int i_cutIndex = -1;

    int* cutId = dComIfGp_evmng_getMyIntegerP(i_index, "cutId");
    if (cutId != NULL) {
        i_cutIndex = *cutId;
    } else {
        return TRUE;
    }

    if (eventManager.getIsAddvance(i_index)) {
        _Evt_Kasi_Cheer2_CutInit(i_cutIndex);
    }

    int iVar2 = -1;
    int* mesNo = dComIfGp_evmng_getMyIntegerP(i_index, "mesNo1");
    if (mesNo != NULL) {
        iVar2 = *mesNo;
    }

    return _Evt_Kasi_Cheer2_CutMain(i_cutIndex, iVar2);
}

/* 80A20244-80A20350 005384 010C+00 1/1 0/0 0/0 .text            _Evt_Kasi_Cheer2_CutInit__15daNpcKasiHana_cFRCi */
BOOL daNpcKasiHana_c::_Evt_Kasi_Cheer2_CutInit(int const& i_cutIndex) {
    fopAc_ac_c* actors[3] = {mKasiMng.getHanaActor(), mKasiMng.getKyuActor(), mKasiMng.getMichActor()};

    switch (i_cutIndex) {
        case 10:
            setMotion(MOT_MICH_IYAN_WAIT, -1.0f, 0);
            setLookMode(LOOK_NONE);
            field_0x1430 = 86;
            initTalk(mMessageNo, actors);
            break;
        
        case 20:
            mKasiMng.onSygnal(0x2000);
            break;

        case 30:
            mKasiMng.onSygnal(0x4000);
            break;
    }

    return TRUE;
}

/* 80A20350-80A20544 005490 01F4+00 1/1 0/0 0/0 .text            _Evt_Kasi_Cheer2_CutMain__15daNpcKasiHana_cFRCii */
BOOL daNpcKasiHana_c::_Evt_Kasi_Cheer2_CutMain(int const& i_cutIndex, int param_2) {
    fopAc_ac_c* actors[3] = {mKasiMng.getHanaActor(), mKasiMng.getKyuActor(), mKasiMng.getMichActor()};
    int iVar1[2] = {-1, -1};
    BOOL rv = FALSE;

    switch (i_cutIndex) {
        case 10:
            if (field_0x1430 > 0) {
                field_0x1430--;
                if (field_0x1430 == 0) {
                    setMotion(MOT_W_WAIT_A, -1.0f, 0);
                }
            }

            iVar1[0] = param_2;

            if (talkProc(iVar1, FALSE, actors)) {
                rv = TRUE;
            }
            break;
        
        case 20:
            if (field_0x1430 > 0) {
                field_0x1430--;
                if (field_0x1430 == 0) {
                    setMotion(MOT_W_WAIT_A, -1.0f, 0);
                }
            }

            iVar1[0] = param_2;

            if (talkProc(iVar1, FALSE, actors)) {
                rv = TRUE;
            }
            break;

        case 30:
            if (field_0x1430 > 0) {
                field_0x1430--;
                if (field_0x1430 == 0) {
                    setMotion(MOT_W_WAIT_A, -1.0f, 0);
                }
            }

            if (talkProc(NULL, FALSE, actors)) {
                rv = TRUE;
            }
            break;

        default:
            rv = TRUE;
    }

    return rv;
}

/* 80A20544-80A20564 005684 0020+00 1/0 0/0 0/0 .text            daNpcKasiHana_Create__FPv */
static int daNpcKasiHana_Create(void* a_this) {
    return static_cast<daNpcKasiHana_c*>(a_this)->Create();
}

/* 80A20564-80A20584 0056A4 0020+00 1/0 0/0 0/0 .text            daNpcKasiHana_Delete__FPv */
static int daNpcKasiHana_Delete(void* a_this) {
    return static_cast<daNpcKasiHana_c*>(a_this)->Delete();
}

/* 80A20584-80A205A4 0056C4 0020+00 1/0 0/0 0/0 .text            daNpcKasiHana_Execute__FPv */
static int daNpcKasiHana_Execute(void* a_this) {
    return static_cast<daNpcKasiHana_c*>(a_this)->Execute();
}

/* 80A205A4-80A205C4 0056E4 0020+00 1/0 0/0 0/0 .text            daNpcKasiHana_Draw__FPv */
static int daNpcKasiHana_Draw(void* a_this) {
    return static_cast<daNpcKasiHana_c*>(a_this)->Draw();
}

/* 80A205C4-80A205CC 005704 0008+00 1/0 0/0 0/0 .text            daNpcKasiHana_IsDelete__FPv */
static int daNpcKasiHana_IsDelete(void* a_this) {
    return 1;
}

/* 80A2065C-80A20678 00579C 001C+00 1/1 0/0 0/0 .text            getCenterPos__15daNpcKasi_Mng_cFv*/
cXyz daNpcKasi_Mng_c::getCenterPos() { return mCenterPos; }

/* 80A20678-80A2067C 0057B8 0004+00 1/0 0/0 0/0 .text adjustShapeAngle__15daNpcKasiHana_cFv */
void daNpcKasiHana_c::adjustShapeAngle() {}

AUDIO_INSTANCES;

/* 80A216C0-80A216E0 -00001 0020+00 1/0 0/0 0/0 .data            daNpcKasiHana_MethodTable */
static actor_method_class daNpcKasiHana_MethodTable = {
    (process_method_func)daNpcKasiHana_Create,
    (process_method_func)daNpcKasiHana_Delete,
    (process_method_func)daNpcKasiHana_Execute,
    (process_method_func)daNpcKasiHana_IsDelete,
    (process_method_func)daNpcKasiHana_Draw,
};

/* 80A216E0-80A21710 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KASIHANA */
extern actor_process_profile_definition g_profile_NPC_KASIHANA = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_NPC_KASIHANA,          // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daNpcKasiHana_c),    // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  420,                        // mPriority
  &daNpcKasiHana_MethodTable, // sub_method
  0x00040108,                 // mStatus
  fopAc_NPC_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};
