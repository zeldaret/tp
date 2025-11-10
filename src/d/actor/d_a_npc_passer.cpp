/**
 * @file d_a_npc_passer.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_passer.h"
#include "d/d_s_play.h"

/* 80AA2C18-80AA2C9C 000078 0084+00 1/0 0/0 0/0 .text            __dt__13daNpcPasser_cFv */
daNpcPasser_c::~daNpcPasser_c() {
    removeResrc(m_type, m_objNum);

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }

    #if DEBUG
    l_Cd2_HIO.removeHIO(this);
    #endif
}

/* 80AA2C9C-80AA2D20 0000FC 0084+00 1/1 0/0 0/0 .text            createHeap__13daNpcPasser_cFv */
int daNpcPasser_c::createHeap() {
    int rv = NpcCreate(m_type);
    if (rv != 0) {
        if (m_objNum != 0) {
            rv = NULL != (mpModel = ObjCreate(m_objNum));
            if (!rv) {
                mpMorf->stopZelAnime();
            }
        } else {
            mpModel = NULL;
            rv = 1;
        }
    }

    return rv;
}

/* 80AA2D20-80AA2D40 000180 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__FP10fopAc_ac_c */
static int createHeapCallBack(fopAc_ac_c* i_this) {
    daNpcPasser_c* actor = (daNpcPasser_c*)i_this;
    return actor->createHeap();
}

/* 80AA2D40-80AA2FD4 0001A0 0294+00 1/1 0/0 0/0 .text            create__13daNpcPasser_cFv */
cPhs__Step daNpcPasser_c::create() {
    fopAcM_ct(this, daNpcPasser_c);

    mIsDarkWorld = dKy_darkworld_check();
    m_type = getType();

    if (getEndTime() < 0xFF) {
        m_endTime = getEndTime();
        m_dayOfWeek = getDayOfWeek();

        if (getTime() > m_endTime) {
            m_dayOfWeek = (m_dayOfWeek + 1) % 7;
        }
    } else {
        m_endTime = 0xFFFF;
    }

    current.angle.x = 0;

    if (m_type < 0 || m_type > 30) {
        // Failed to generate high-poly pedestrian actor! ---> m_type = %d
        OS_REPORT("ハイポリ通行人アクター生成失敗しました！---> m_type = %d\n", m_type);
        return cPhs_ERROR_e;
    }

    m_objNum = getObjNum();
    if (m_objNum < 0 || m_objNum > 13) {
        // Failed to generate high-poly pedestrian actor! ---> m_objNum = %d
        OS_REPORT("ハイポリ通行人アクター生成失敗しました！---> m_objNum = %d\n", m_objNum);
        return cPhs_ERROR_e;
    }

    cPhs__Step phase = (cPhs__Step)loadResrc(m_type, m_objNum);
    if (phase == cPhs_COMPLEATE_e) {
        u32 i_size = 0;
        #if DEBUG
        i_size = 0x2300;
        #else
        i_size = 0x80002300;
        #endif
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, i_size)) {
            // Failed to create actor!
            OS_REPORT("アクター生成失敗しました！\n");
            return cPhs_ERROR_e;
        }

        create_init();
    }

    return phase;
}

/* 80AA2FD4-80AA315C 000434 0188+00 1/1 0/0 0/0 .text            execute__13daNpcPasser_cFv */
int daNpcPasser_c::execute() {
    mAcchCir.SetWallH(Cd2_HIO_chkWallH(m_type));
    mAcchCir.SetWallR(Cd2_HIO_chkWallR(m_type));
    callExecute();
    cLib_addCalc2(&mPosY, current.pos.y, 0.4f, 25.0f);
    animation(-1);
    setCollision();
    setBaseMtx();

    if (fopAcM_CheckCondition(this, fopAcCnd_NODRAW_e) && m_endTime != 0xFFFF && m_dayOfWeek == getDayOfWeek()) {
        int time = getTime();
        if (time >= m_endTime) {
            fopAcM_delete(this);
        }
    }

    return 1;
}

/* 80AA315C-80AA31EC 0005BC 0090+00 1/1 0/0 0/0 .text            draw__13daNpcPasser_cFv */
int daNpcPasser_c::draw() {
    drawNpc();
    drawObj(m_objNum, mpModel, Cd2_HIO_objScale(m_type));
    drawShadow(40.0f);

    #if DEBUG
    mAcch.DrawWall(dComIfG_Bgsp());
    #endif

    mLookat.dbView();
    return 1;
}

/* 80AA31EC-80AA3230 00064C 0044+00 4/4 0/0 0/0 .text            setAction__13daNpcPasser_cFQ213daNpcPasser_c6Mode_e */
void daNpcPasser_c::setAction(daNpcPasser_c::Mode_e i_action) {
    JUT_ASSERT(328, i_action < MODE_MAX_e);
    mPrevActionIdx = mActionIdx;
    mActionIdx = i_action;
    mAction = ActionTable[mActionIdx];
    callInit();
}

/* 80AA3230-80AA3258 000690 0028+00 1/1 0/0 0/0 .text            callInit__13daNpcPasser_cFv */
void daNpcPasser_c::callInit() {
    JUT_ASSERT(346, mAction != NULL);
    (this->*mAction[0])();
}

/* 80AA3258-80AA3284 0006B8 002C+00 1/1 0/0 0/0 .text            callExecute__13daNpcPasser_cFv */
void daNpcPasser_c::callExecute() {
    JUT_ASSERT(359, mAction != NULL);
    (this->*mAction[1])();
}

enum Rnd_Values {
    /* 0x0 */ ZERO,
    /* 0x1 */ ONE,
    /* 0x2 */ TWO,
    /* 0x3 */ THREE,
    /* 0x4 */ FOUR,
    /* 0x5 */ FIVE,
};

/* 80AA3284-80AA33F0 0006E4 016C+00 1/0 0/0 0/0 .text            initPath__13daNpcPasser_cFv */
void daNpcPasser_c::initPath() {
    if (getMoveType() == 1) {
        field_0xb1c = 2;
    } else if (getMoveType() == 2) {
        field_0xb1c = 1;
    } else {
        field_0xb1c = cLib_getRndValue(0, 2) != 0 ? TWO : ONE;
    }

    int idx = 2;
    if (field_0xb1c == 2) {
        if (getWalkMotionType() == 1) {
            idx = 2;
        } else if (getWalkMotionType() == 2) {
            idx = 3;
        } else {
            idx = cLib_getRndValue(0, 2) != 0 ? TWO : THREE;
        }
    } else if (field_0xb1c == 1) {
        if (getRunMotionType() == 1) {
            idx = 4;
        } else if (getRunMotionType() == 2) {
            idx = 5;
        } else {
            idx = cLib_getRndValue(0, 2) != 0 ? FOUR : FIVE;
        }
    }

    setAnm((J3DAnmTransformKey*)getAnmP(idx, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
    field_0xb23 = 0;
    field_0xb22 = 1;
    mPathMode = 0;
}

/* 80AA33F0-80AA387C 000850 048C+00 1/0 0/0 0/0 .text            executePath__13daNpcPasser_cFv */
void daNpcPasser_c::executePath() {
    switch (mPathMode) {
        case 0:
            if (m_path.checkPoint(current.pos, speedF)) {
                arg0 = m_path.getArg0();
                if (arg0 >= 0 && arg0 < 28) {
                    field_0xb1c = 0;
                    mPathMode = 1;
                } else {
                    mPathMode = 2;
                }
            }
            break;
        
        case 1:
            if ((this->*m_funcTbl[arg0][field_0xb23])(NULL)) {
                if (m_funcTbl[arg0][field_0xb23 + 1] == NULL) {
                    field_0xb23 = 0;
                    mPathMode = 2;
                } else {
                    field_0xb23++;
                    field_0xb22 = 1;
                }
            }
            break;

        case 2:
            if (m_path.checkPathEnd(current.pos, speedF)) {
                fopAcM_delete(this);
            } else {
                if (field_0xb1c == 0) {
                    setAnm((J3DAnmTransformKey*)getAnmP(2, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
                    field_0xb1c = 2;
                }

                m_path.setNextPoint(current.pos);
                mPathMode = 0;
            }
            break;

        default:
            JUT_ASSERT(433, FALSE);
            break;
    }

    if (field_0xb1c == 2 || field_0xb1c == 1) {
        m_path.checkObstacle(this);
        cXyz targetPnt;
        m_path.getTargetPoint(&targetPnt);
        cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &targetPnt), MREG_S(0) + 13, MREG_S(1) + 0x600);

        if (current.pos.y != old.pos.y) {
            s16 sVar1 = 0;
            cM3dGPla plane;

            bool isTriPla = dComIfG_Bgsp().GetTriPla(mAcch.m_gnd, &plane);
            if (isTriPla) {
                sVar1 = fopAcM_getPolygonAngle(&plane, shape_angle.y);
            }

            if (sVar1 != 0) {
                mPosY = current.pos.y;
            }
        }

        if (mAcch.ChkWallHit() && current.pos.abs(old.pos) < 2.0f) {
            field_0xb25++;
            if (field_0xb25 > 30) {
                setAction(MODE_4);
            }
        } else {
            field_0xb25 = 0;
        }
    }

    setAngle();
    pathMoveF();
    mAcch.CrrPos(dComIfG_Bgsp());

    if (checkFearSituation()) {
        if (m_objNum == 2 && (m_type == 0 || m_type == 1)) {
            setAction(MODE_3);
        } else {
            setAction(MODE_1);
        }

        fopAc_ac_c* actor_p = fopAcM_SearchByID(parentActorID);
        if (actor_p != NULL) {
            fopAcM_delete(actor_p);
        }
    }
}

/* 80AA38C4-80AA39DC 000D24 0118+00 1/0 0/0 0/0 .text            initEscape__13daNpcPasser_cFv */
void daNpcPasser_c::initEscape() {
    mEscapeTag = getEscapeTag();
    JUT_ASSERT(491, mEscapeTag != NULL);
    JUT_ASSERT(492, mEscapeTag->getPathID() != 0xff);
    m_path.setPath(mEscapeTag->getPathID(), fopAcM_GetRoomNo(this), 1, &current.pos, true);
    JUT_ASSERT(494, m_path.isPath());

    m_path.setNextPoint(current.pos);

    if (m_objNum == 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0x29, m_objNum), 1.0f, 0.0f, J3DFrameCtrl::EMode_NONE, 0, -1);
        mCitizen.playVoice(1);
        field_0xb1c = 0;
    } else {
        setAnm((J3DAnmTransformKey*)getAnmP(4, m_objNum),1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        mCitizen.playVoice(0);
        field_0xb1c = 1;
    }

    dComIfGs_onSaveDunSwitch(60);
}

/* 80AA39DC-80AA3D4C 000E3C 0370+00 1/0 0/0 0/0 .text            executeEscape__13daNpcPasser_cFv */
void daNpcPasser_c::executeEscape() {
    if (field_0xb1c == 0) {
        if (mpMorf->isStop()) {
            setAnm((J3DAnmTransformKey*)getAnmP(4, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
            mCitizen.playVoice(0);
            field_0xb1c = 1;
        }

        cLib_addCalcAngleS2(&current.angle.y, fopAcM_searchPlayerAngleY(this), MREG_S(0) + 3, MREG_S(1) + 0x600);
    } else if (field_0xb1c == 1) {
        if (fopAcM_CheckCondition(this, fopAcCnd_NODRAW_e)) {
            fopAcM_delete(this);
        }

        if (m_path.checkPoint(current.pos, speedF)) {
            if (m_path.checkPathEnd(current.pos, speedF)) {
                fopAcM_delete(this);
            }

            m_path.setNextPoint(current.pos);
        }

        m_path.checkObstacle(this);
        cXyz targetPnt;
        m_path.getTargetPoint(&targetPnt);
        cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &targetPnt), MREG_S(0) + 3, MREG_S(1) + 0x600);

        if (current.pos.y != old.pos.y) {
            s16 sVar1 = 0;
            cM3dGPla plane;
            bool isTriPla = dComIfG_Bgsp().GetTriPla(mAcch.m_gnd, &plane);

            if (isTriPla) {
                sVar1 = fopAcM_getPolygonAngle(&plane, shape_angle.y);
            }

            if (sVar1 != 0) {
                mPosY = current.pos.y;
            }
        }

        setAngle();
        pathMoveF();
        mAcch.CrrPos(dComIfG_Bgsp());

        if (mAcch.ChkWallHit() && current.pos.abs(old.pos) < 2.0f) {
            field_0xb25++;
            if (field_0xb25 > 30) {
                setAction(MODE_2);
            }
        } else {
            field_0xb25 = 0;
        }
    }
}

/* 80AA3D4C-80AA3DE4 0011AC 0098+00 1/0 0/0 0/0 .text            initFear__13daNpcPasser_cFv */
void daNpcPasser_c::initFear() {
    m_objNum = 0;
    setAnm((J3DAnmTransformKey*)getAnmP(0x26, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
    mTargetAngleY = cLib_targetAngleY(fopAcM_GetPosition_p(daPy_getPlayerActorClass()), &current.pos);
    speedF = 0.0f;
    field_0xb1c = 0;
}

/* 80AA3DE4-80AA3E5C 001244 0078+00 1/0 0/0 0/0 .text            executeFear__13daNpcPasser_cFv */
void daNpcPasser_c::executeFear() {
    if (mpMorf->checkFrame(1.0f)) {
        mCitizen.playVoice(2);
    }

    if (fopAcM_CheckCondition(this, fopAcCnd_NODRAW_e)) {
        fopAcM_delete(this);
    }

    cLib_addCalcAngleS2(&shape_angle.y, mTargetAngleY, MREG_S(0) + 3, MREG_S(1) + 0x600);
}

/* 80AA3E5C-80AA3F10 0012BC 00B4+00 1/0 0/0 0/0 .text            initFight__13daNpcPasser_cFv */
void daNpcPasser_c::initFight() {
    setAnm((J3DAnmTransformKey*)getAnmP(0x29, m_objNum), 1.0f, 0.0f, J3DFrameCtrl::EMode_NONE, 0, -1);
    mCitizen.playVoice(1);
    speedF = 0.0f;
    fopAcM_setCullSizeBox(this, -40.0f, -10.0f, -80.0f, 40.0f, 190.0f, 200.0f);
    dComIfGs_onSaveDunSwitch(60);
    field_0xb1c = 0;
}

/* 80AA3F10-80AA40A4 001370 0194+00 1/0 0/0 0/0 .text            executeFight__13daNpcPasser_cFv */
void daNpcPasser_c::executeFight() {
    if (mpMorf->isStop()) {
        setAnm((J3DAnmTransformKey*)getAnmP(0x2A, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
    }

    mTargetAngleY = fopAcM_searchPlayerAngleY(this);

    if (mpMorf->getAnm() != getAnmP(0x29, m_objNum)) {
        if (mpMorf->checkFrame(1.0f)) {
            mCitizen.playVoice(2);
        }

        if (cLib_distanceAngleS(shape_angle.y, mTargetAngleY) > 0x600) {
            setAnm((J3DAnmTransformKey*)getAnmP(0x2C, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        } else {
            setAnm((J3DAnmTransformKey*)getAnmP(0x2A, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        }
    }

    if (fopAcM_CheckCondition(this, fopAcCnd_NODRAW_e)) {
        fopAcM_delete(this);
    }

    cLib_addCalcAngleS2(&shape_angle.y, mTargetAngleY, MREG_S(0) + 3, MREG_S(1) + 0x600);
}

/* 80AA40A4-80AA4128 001504 0084+00 1/0 0/0 0/0 .text            initRelief__13daNpcPasser_cFv */
void daNpcPasser_c::initRelief() {
    setAnm((J3DAnmTransformKey*)getAnmP(0, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
    speedF = 0.0f;
    mTargetAngleY = shape_angle.y + 0x8000;
    field_0xb1c = 0;
}

/* 80AA4128-80AA41E4 001588 00BC+00 1/0 0/0 0/0 .text            executeRelief__13daNpcPasser_cFv */
void daNpcPasser_c::executeRelief() {
    if (fopAcM_CheckCondition(this, fopAcCnd_NODRAW_e)) {
        fopAcM_delete(this);
    }

    if (checkFearSituation()) {
        if (m_objNum == 2 && (m_type == 0 || m_type == 1)) {
            setAction(MODE_3);
        } else {
            setAction(MODE_1);
        }

        fopAc_ac_c* actor_p = fopAcM_SearchByID(parentActorID);
        if (actor_p != NULL) {
            fopAcM_delete(actor_p);
        }
    }

    cLib_addCalcAngleS2(&shape_angle.y, mTargetAngleY, MREG_S(0) + 3, MREG_S(1) + 0x600);
}

/* 80AA41E4-80AA43A4 001644 01C0+00 1/1 0/0 0/0 .text            create_init__13daNpcPasser_cFv */
void daNpcPasser_c::create_init() {
    #if DEBUG
    // NPC (C-class, D-class) Pedestrian High
    l_Cd2_HIO.entryHIO("NPC(C級,D級)通行人 High");
    #endif

    gravity = -3.0f;
    fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
    fopAcM_setCullSizeBox(this, -40.0f, -10.0f, -30.0f, 30.0f, 190.0f, 40.0f);
    mAcchCir.SetWall(Cd2_HIO_chkWallH(m_type), Cd2_HIO_chkWallR(m_type));
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
              fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
    mAcch.SetRoofNone();
    mAcch.SetWaterNone();
    mAcch.CrrPos(dComIfG_Bgsp());

    setEnvTevCol();
    setRoomNo();

    initCollision();
    attention_info.flags = 0;

    if (m_path.setPath(getPathID(), fopAcM_GetRoomNo(this), 1, &current.pos, true)) {
        setAction(MODE_0);
    }

    mpMorf->setMorf(0.0f);
    mAcch.CrrPos(dComIfG_Bgsp());
    mPosY = current.pos.y = mAcch.GetGroundH();
    setBaseMtx();
}

/* 80AA6A9C-80AA6B14 000098 0078+00 1/2 0/0 0/0 .data            ActionTable__13daNpcPasser_c */
daNpcPasser_c::actionFunc daNpcPasser_c::ActionTable[5][2] = {
    {&daNpcPasser_c::initPath, &daNpcPasser_c::executePath},
    {&daNpcPasser_c::initEscape, &daNpcPasser_c::executeEscape},
    {&daNpcPasser_c::initFear, &daNpcPasser_c::executeFear},
    {&daNpcPasser_c::initFight, &daNpcPasser_c::executeFight},
    {&daNpcPasser_c::initRelief, &daNpcPasser_c::executeRelief},
};

/* 80AA6B14-80AA6B84 -00001 0070+00 1/1 0/0 0/0 .data            m_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc* daNpcPasser_c::m_funcTbl[28] = {
    daNpcPasser_c::m_seq00_funcTbl, daNpcPasser_c::m_seq01_funcTbl,
    daNpcPasser_c::m_seq02_funcTbl, daNpcPasser_c::m_seq03_funcTbl,
    daNpcPasser_c::m_seq04_funcTbl, daNpcPasser_c::m_seq05_funcTbl,
    daNpcPasser_c::m_seq06_funcTbl, daNpcPasser_c::m_seq07_funcTbl,
    daNpcPasser_c::m_seq08_funcTbl, daNpcPasser_c::m_seq09_funcTbl,
    daNpcPasser_c::m_seq10_funcTbl, daNpcPasser_c::m_seq11_funcTbl,
    daNpcPasser_c::m_seq12_funcTbl, daNpcPasser_c::m_seq13_funcTbl,
    daNpcPasser_c::m_seq14_funcTbl, daNpcPasser_c::m_seq15_funcTbl,
    daNpcPasser_c::m_seq16_funcTbl, daNpcPasser_c::m_seq17_funcTbl,
    daNpcPasser_c::m_seq18_funcTbl, daNpcPasser_c::m_seq19_funcTbl,
    daNpcPasser_c::m_seq20_funcTbl, daNpcPasser_c::m_seq21_funcTbl,
    daNpcPasser_c::m_seq22_funcTbl, daNpcPasser_c::m_seq23_funcTbl,
    daNpcPasser_c::m_seq24_funcTbl, daNpcPasser_c::m_seq25_funcTbl,
    daNpcPasser_c::m_seq26_funcTbl, daNpcPasser_c::m_seq27_funcTbl,
};

/* 80AA6B90-80AA6BA8 00018C 0018+00 1/1 0/0 0/0 .data            m_seq00_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq00_funcTbl[2] = {
    &daNpcPasser_c::walka,
    NULL,
};

/* 80AA6BB4-80AA6BCC 0001B0 0018+00 1/1 0/0 0/0 .data            m_seq01_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq01_funcTbl[2] = {
    &daNpcPasser_c::runa,
    NULL,
};

/* 80AA6BD8-80AA6BF0 0001D4 0018+00 1/1 0/0 0/0 .data            m_seq02_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq02_funcTbl[2] = {
    &daNpcPasser_c::waita,
    NULL,
};

/* 80AA6BFC-80AA6C14 0001F8 0018+00 1/1 0/0 0/0 .data            m_seq03_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq03_funcTbl[2] = {
    &daNpcPasser_c::talka,
    NULL,
};

/* 80AA6C20-80AA6C38 00021C 0018+00 1/1 0/0 0/0 .data            m_seq04_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq04_funcTbl[2] = {
    &daNpcPasser_c::runb,
    NULL,
};

/* 80AA6C5C-80AA6C8C 000258 0030+00 1/1 0/0 0/0 .data            m_seq05_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq05_funcTbl[4] = {
    &daNpcPasser_c::turnr,
    &daNpcPasser_c::waita,
    &daNpcPasser_c::talka,
    NULL,
};

/* 80AA6CB0-80AA6CE0 0002AC 0030+00 1/1 0/0 0/0 .data            m_seq06_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq06_funcTbl[4] = {
    &daNpcPasser_c::turnl,
    &daNpcPasser_c::waita,
    &daNpcPasser_c::talka,
    NULL,
};

/* 80AA6CEC-80AA6D04 0002E8 0018+00 1/1 0/0 0/0 .data            m_seq07_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq07_funcTbl[2] = {
    &daNpcPasser_c::waitwall,
    NULL,
};

/* 80AA6D4C-80AA6DA0 000348 0054+00 1/1 0/0 0/0 .data            m_seq08_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq08_funcTbl[7] = {
    &daNpcPasser_c::talkwall,
    &daNpcPasser_c::waitwall,
    &daNpcPasser_c::talkbwall,
    &daNpcPasser_c::waitwall,
    &daNpcPasser_c::talkwall,
    &daNpcPasser_c::talkbwall,
    NULL,
};

/* 80AA6DAC-80AA6DC4 0003A8 0018+00 1/1 0/0 0/0 .data            m_seq09_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq09_funcTbl[2] = {
    &daNpcPasser_c::talkb,
    NULL,
};

/* 80AA6DD0-80AA6DE8 0003CC 0018+00 1/1 0/0 0/0 .data            m_seq10_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq10_funcTbl[2] = {
    &daNpcPasser_c::talkc,
    NULL,
};

/* 80AA6E24-80AA6E6C 000420 0048+00 1/1 0/0 0/0 .data            m_seq11_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq11_funcTbl[6] = {
    &daNpcPasser_c::talka,
    &daNpcPasser_c::waita,
    &daNpcPasser_c::talkb,
    &daNpcPasser_c::waitb,
    &daNpcPasser_c::talkc,
    NULL,
};

/* 80AA6E78-80AA6E90 000474 0018+00 1/1 0/0 0/0 .data            m_seq12_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq12_funcTbl[2] = {
    &daNpcPasser_c::waitb,
    NULL,
};

/* 80AA6ECC-80AA6F14 0004C8 0048+00 1/1 0/0 0/0 .data            m_seq13_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq13_funcTbl[6] = {
    &daNpcPasser_c::browsea,
    &daNpcPasser_c::browseb,
    &daNpcPasser_c::talka,
    &daNpcPasser_c::talkb,
    &daNpcPasser_c::waita,
    NULL,
};

/* 80AA6F20-80AA6F38 00051C 0018+00 1/1 0/0 0/0 .data            m_seq14_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq14_funcTbl[2] = {
    &daNpcPasser_c::walkb,
    NULL,
};

/* 80AA6F44-80AA6F5C 000540 0018+00 1/1 0/0 0/0 .data            m_seq15_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq15_funcTbl[2] = {
    &daNpcPasser_c::sitwaita,
    NULL,
};

/* 80AA6FA4-80AA6FF8 0005A0 0054+00 1/1 0/0 0/0 .data            m_seq16_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq16_funcTbl[7] = {
    &daNpcPasser_c::sittalka,
    &daNpcPasser_c::sitwaita,
    &daNpcPasser_c::sittalkab,
    &daNpcPasser_c::sitwaita,
    &daNpcPasser_c::sittalka,
    &daNpcPasser_c::sittalkab,
    NULL,
};

/* 80AA7004-80AA701C 000600 0018+00 1/1 0/0 0/0 .data            m_seq17_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq17_funcTbl[2] = {
    &daNpcPasser_c::playm,
    NULL,
};

/* 80AA7028-80AA7040 000624 0018+00 1/1 0/0 0/0 .data            m_seq18_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq18_funcTbl[2] = {
    &daNpcPasser_c::sitwaitb,
    NULL,
};

/* 80AA7088-80AA70DC 000684 0054+00 1/1 0/0 0/0 .data            m_seq19_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq19_funcTbl[7] = {
    &daNpcPasser_c::sittalkb,
    &daNpcPasser_c::sitwaitb,
    &daNpcPasser_c::sittalkbb,
    &daNpcPasser_c::sitwaitb,
    &daNpcPasser_c::sittalkb,
    &daNpcPasser_c::sittalkbb,
    NULL,
};

/* 80AA70E8-80AA7100 0006E4 0018+00 1/1 0/0 0/0 .data            m_seq20_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq20_funcTbl[2] = {
    &daNpcPasser_c::looka,
    NULL,
};

/* 80AA710C-80AA7124 000708 0018+00 1/1 0/0 0/0 .data            m_seq21_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq21_funcTbl[2] = {
    &daNpcPasser_c::lookb,
    NULL,
};

/* 80AA7148-80AA7178 000744 0030+00 1/1 0/0 0/0 .data            m_seq22_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq22_funcTbl[4] = {
    &daNpcPasser_c::looka,
    &daNpcPasser_c::lookb,
    &daNpcPasser_c::waita,
    NULL,
};

/* 80AA71C0-80AA7214 0007BC 0054+00 1/1 0/0 0/0 .data            m_seq23_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq23_funcTbl[7] = {
    &daNpcPasser_c::talka,
    &daNpcPasser_c::waita,
    &daNpcPasser_c::talkb,
    &daNpcPasser_c::waita,
    &daNpcPasser_c::talka,
    &daNpcPasser_c::talkb,
    NULL,
};

/* 80AA7244-80AA7280 000840 003C+00 1/1 0/0 0/0 .data            m_seq24_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq24_funcTbl[5] = {
    &daNpcPasser_c::talkb,
    &daNpcPasser_c::talka,
    &daNpcPasser_c::talkc,
    &daNpcPasser_c::waita,
    NULL,
};

/* 80AA72C8-80AA731C 0008C4 0054+00 1/1 0/0 0/0 .data            m_seq25_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq25_funcTbl[7] = {
    &daNpcPasser_c::browsea,
    &daNpcPasser_c::browseb,
    &daNpcPasser_c::talka,
    &daNpcPasser_c::talkb,
    &daNpcPasser_c::talkc,
    &daNpcPasser_c::waita,
    NULL,
};

/* 80AA7334-80AA7358 000930 0024+00 1/1 0/0 0/0 .data            m_seq26_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq26_funcTbl[3] = {
    &daNpcPasser_c::browsea,
    &daNpcPasser_c::browseb,
    NULL,
};

/* 80AA7364-80AA7370 000960 000C+00 1/1 0/0 0/0 .data            m_seq27_funcTbl__13daNpcPasser_c */
daNpcPasser_c::seqFunc daNpcPasser_c::m_seq27_funcTbl[1] = {
    &daNpcPasser_c::waitTime,
};

/* 80AA43A4-80AA43B0 001804 000C+00 2/2 0/0 0/0 .text            setAngle__13daNpcPasser_cFv */
void daNpcPasser_c::setAngle() {
    shape_angle.y = current.angle.y;
}

/* 80AA43B0-80AA44A4 001810 00F4+00 1/1 0/0 0/0 .text            setSpeed__13daNpcPasser_cFffPfi */
void daNpcPasser_c::setSpeed(f32 param_1, f32 param_2, f32* i_speed, int param_4) {
    f32 target = field_0xb10 * (param_2 * field_0xb10);
    f32 step = field_0xb10 * (param_1 * field_0xb10);

    if (param_4 != 0 && mAcch.ChkWallHit()) {
        s16 sVar1 = current.angle.y + 0x8000 - mAcchCir.GetWallAngleY();
        if (abs(sVar1) < 0x4000) {
            target *= 1.0f - cM_scos(sVar1);
        }
    }

    if (param_2 < target) {
        target = param_2;
    }

    cLib_chaseF(i_speed, target, step);
}

/* 80AA44A4-80AA4780 001904 02DC+00 2/2 0/0 0/0 .text            pathMoveF__13daNpcPasser_cFv */
void daNpcPasser_c::pathMoveF() {
    f32 fVar1 = 0.0f;
    f32 speed = 0.0f;
    f32 fVar2 = 0.0f;
    cXyz* ccMoveP = mStts.GetCCMoveP();

    if (field_0xb1c == 2) {
        fVar1 = Cd2_HIO_walkMaxSpeed(m_type);
        fVar2 = Cd2_HIO_walkAnmPlaySpeed(m_type);
        cLib_chaseF(&field_0xb10, 0.8f, 0.05f);
        setSpeed(MREG_F(0) + 0.7f, fVar1, &field_0xb14, 0);
        setSpeed(MREG_F(0) + 0.7f, fVar1, &speedF, 1);
    } else if (field_0xb1c == 1) {
        fVar1 = Cd2_HIO_maxSpeed(m_type);
        fVar2 = Cd2_HIO_anmPlaySpeed(m_type);

        if (mActionIdx == 1) {
            fVar1 *= 1.5f;
            fVar2 *= 1.5f;
        }

        cLib_chaseF(&field_0xb10, 1.0f, 0.05f);
        setSpeed(MREG_F(0) + 0.7f, fVar1, &field_0xb14, 0);
        setSpeed(MREG_F(0) + 0.7f, fVar1, &speedF, 1);
    } else if (field_0xb1c == 0) {
        cLib_chaseF(&field_0xb10, 0.0f, 0.05f);
        cLib_chaseF(&field_0xb14, 0.0f, 1.5f);
        cLib_chaseF(&speedF, 0.0f, 1.5f);
    }

    cXyz targetPnt;
    m_path.getTargetPoint(&targetPnt);

    s32 angleS = cLib_distanceAngleS(current.angle.y, cLib_targetAngleY(&current.pos, &targetPnt));
    if (angleS >= 0x2000) {
        cLib_chaseF(&field_0xb10, 0.0f, 0.05f);
        cLib_chaseF(&field_0xb14, 0.0f, 1.2f);
        cLib_chaseF(&speedF, 0.0f, 1.2f);
    }

    fopAcM_posMoveF(this, ccMoveP);

    if (field_0xb1c != 0) {
        fVar1 = field_0xb14 / fVar1;
        if (fVar1 > 1.0f) {
            fVar1 = 1.0f;
        }

        speed = fVar2 * fVar1;
        if (speed < 0.6f) {
            speed = 0.6f;
        }

        mpMorf->setPlaySpeed(speed);
    }
}

/* 80AA4780-80AA47FC 001BE0 007C+00 2/2 0/0 0/0 .text            setBaseMtx__13daNpcPasser_cFv */
void daNpcPasser_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, mPosY, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mpMorf->modelCalc();
    setAttention(m_type);
}

/* 80AA47FC-80AA48D8 001C5C 00DC+00 1/1 0/0 0/0 .text            initCollision__13daNpcPasser_cFv */
void daNpcPasser_c::initCollision() {
    mStts.Init(0xD9, 0xFF, this);
    mStts.SetRoomId(fopAcM_GetRoomNo(this));
    mCyl.SetStts(&mStts);
    mCyl.Set(m_cylDat);
    mCyl.SetR(Cd2_HIO_cylR(m_type));
    mCyl.SetH(Cd2_HIO_cylH(m_type));
}

/* 80AA48D8-80AA492C 001D38 0054+00 1/1 0/0 0/0 .text            setCollision__13daNpcPasser_cFv */
void daNpcPasser_c::setCollision() {
    #if DEBUG
    mCyl.SetR(Cd2_HIO_cylR(m_type));
    mCyl.SetH(Cd2_HIO_cylH(m_type));
    #endif

    mCyl.SetC(current.pos);

    if (!fopAcM_CheckCondition(this, fopAcCnd_NODRAW_e)) {
        dComIfG_Ccsp()->Set(&mCyl);
    }
}


/* 80AA492C-80AA49D4 001D8C 00A8+00 10/0 0/0 0/0 .text            waita__13daNpcPasser_cFPv */
BOOL daNpcPasser_c::waita(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA49D4-80AA4A7C 001E34 00A8+00 9/0 0/0 0/0 .text            talka__13daNpcPasser_cFPv */
int daNpcPasser_c::talka(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(6, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA4A7C-80AA4B24 001EDC 00A8+00 3/0 0/0 0/0 .text            waitwall__13daNpcPasser_cFPv */
int daNpcPasser_c::waitwall(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0xB, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA4B24-80AA4BCC 001F84 00A8+00 2/0 0/0 0/0 .text            talkwall__13daNpcPasser_cFPv */
int daNpcPasser_c::talkwall(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0xC, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA4BCC-80AA4C74 00202C 00A8+00 2/0 0/0 0/0 .text            talkbwall__13daNpcPasser_cFPv */
int daNpcPasser_c::talkbwall(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0xD, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA4C74-80AA4D1C 0020D4 00A8+00 7/0 0/0 0/0 .text            talkb__13daNpcPasser_cFPv */
int daNpcPasser_c::talkb(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(7, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA4D1C-80AA4DC4 00217C 00A8+00 4/0 0/0 0/0 .text            talkc__13daNpcPasser_cFPv */
int daNpcPasser_c::talkc(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(8, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA4DC4-80AA4E6C 002224 00A8+00 2/0 0/0 0/0 .text            waitb__13daNpcPasser_cFPv */
int daNpcPasser_c::waitb(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(1, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA4E6C-80AA4F14 0022CC 00A8+00 3/0 0/0 0/0 .text            sitwaita__13daNpcPasser_cFPv */
int daNpcPasser_c::sitwaita(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0xE, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA4F14-80AA4FBC 002374 00A8+00 2/0 0/0 0/0 .text            sittalka__13daNpcPasser_cFPv */
int daNpcPasser_c::sittalka(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0xF, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA4FBC-80AA5064 00241C 00A8+00 2/0 0/0 0/0 .text            sittalkab__13daNpcPasser_cFPv */
int daNpcPasser_c::sittalkab(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0x10, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA5064-80AA510C 0024C4 00A8+00 3/0 0/0 0/0 .text            sitwaitb__13daNpcPasser_cFPv */
int daNpcPasser_c::sitwaitb(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0x11, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA510C-80AA51B4 00256C 00A8+00 2/0 0/0 0/0 .text            sittalkb__13daNpcPasser_cFPv */
int daNpcPasser_c::sittalkb(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0x12, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA51B4-80AA525C 002614 00A8+00 2/0 0/0 0/0 .text            sittalkbb__13daNpcPasser_cFPv */
int daNpcPasser_c::sittalkbb(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0x13, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA525C-80AA5304 0026BC 00A8+00 2/0 0/0 0/0 .text            looka__13daNpcPasser_cFPv */
int daNpcPasser_c::looka(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(9, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA5304-80AA53AC 002764 00A8+00 2/0 0/0 0/0 .text            lookb__13daNpcPasser_cFPv */
int daNpcPasser_c::lookb(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0xA, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA53AC-80AA5454 00280C 00A8+00 1/0 0/0 0/0 .text            playm__13daNpcPasser_cFPv */
int daNpcPasser_c::playm(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0x22, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA5454-80AA5510 0028B4 00BC+00 1/0 0/0 0/0 .text            turnr__13daNpcPasser_cFPv */
int daNpcPasser_c::turnr(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        mTargetAngleY = current.angle.y - 0x4000;
        field_0xb22 = 0;
    }

    cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 4, 0x2000);

    if (abs(mTargetAngleY - current.angle.y) <= 4) {
        current.angle.y = mTargetAngleY;
        return TRUE;
    }

    return FALSE;
}

/* 80AA5510-80AA55CC 002970 00BC+00 1/0 0/0 0/0 .text            turnl__13daNpcPasser_cFPv */
int daNpcPasser_c::turnl(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        mTargetAngleY = current.angle.y + 0x4000;
        field_0xb22 = 0;
    }

    cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 4, 0x2000);

    if (abs(mTargetAngleY - current.angle.y) <= 4) {
        current.angle.y = mTargetAngleY;
        return TRUE;
    }

    return FALSE;
}

/* 80AA55CC-80AA5634 002A2C 0068+00 1/0 0/0 0/0 .text            walka__13daNpcPasser_cFPv */
int daNpcPasser_c::walka(void* param_1) {
    setAnm((J3DAnmTransformKey*)getAnmP(2, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
    field_0xb1c = 2;
    return TRUE;
}

/* 80AA5634-80AA569C 002A94 0068+00 1/0 0/0 0/0 .text            runa__13daNpcPasser_cFPv */
int daNpcPasser_c::runa(void* param_1) {
    setAnm((J3DAnmTransformKey*)getAnmP(4, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
    field_0xb1c = 1;
    return TRUE;
}

/* 80AA569C-80AA5704 002AFC 0068+00 1/0 0/0 0/0 .text            runb__13daNpcPasser_cFPv */
int daNpcPasser_c::runb(void* param_1) {
    setAnm((J3DAnmTransformKey*)getAnmP(5, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
    field_0xb1c = 1;
    return TRUE;
}

/* 80AA5704-80AA576C 002B64 0068+00 1/0 0/0 0/0 .text            walkb__13daNpcPasser_cFPv */
int daNpcPasser_c::walkb(void* param_1) {
    setAnm((J3DAnmTransformKey*)getAnmP(3, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
    field_0xb1c = 2;
    return TRUE;
}

/* 80AA576C-80AA5814 002BCC 00A8+00 3/0 0/0 0/0 .text            browsea__13daNpcPasser_cFPv */
int daNpcPasser_c::browsea(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0x14, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA5814-80AA58BC 002C74 00A8+00 3/0 0/0 0/0 .text            browseb__13daNpcPasser_cFPv */
int daNpcPasser_c::browseb(void* param_1) {
    if (!isStop()) {
        return FALSE;
    }

    if (field_0xb22 != 0) {
        setAnm((J3DAnmTransformKey*)getAnmP(0x15, m_objNum), 1.0f, 12.0f, J3DFrameCtrl::EMode_LOOP, 0, -1);
        field_0xaa0 = cLib_getRndValue(2.0f, 2.0f) + 0.1f;
        field_0xb22 = 0;
    }

    return field_0xaa0 == 0;
}

/* 80AA58BC-80AA58D8 002D1C 001C+00 1/0 0/0 0/0 .text            waitTime__13daNpcPasser_cFPv */
int daNpcPasser_c::waitTime(void* param_1) {
    if (field_0xb22 != 0) {
        field_0xb22 = 0;
    }

    return FALSE;
}

/* 80AA58D8-80AA58F8 002D38 0020+00 1/0 0/0 0/0 .text            daNpcPasser_Create__FPv */
static int daNpcPasser_Create(void* i_this) {
    return static_cast<daNpcPasser_c*>(i_this)->create();
}

/* 80AA58F8-80AA592C 002D58 0034+00 1/0 0/0 0/0 .text            daNpcPasser_Delete__FPv */
static int daNpcPasser_Delete(void* i_this) {
    static_cast<daNpcPasser_c*>(i_this)->~daNpcPasser_c();
    return 1;
}

/* 80AA592C-80AA594C 002D8C 0020+00 1/0 0/0 0/0 .text            daNpcPasser_Execute__FPv */
static int daNpcPasser_Execute(void* i_this) {
    return static_cast<daNpcPasser_c*>(i_this)->execute();
}

/* 80AA594C-80AA596C 002DAC 0020+00 1/0 0/0 0/0 .text            daNpcPasser_Draw__FPv */
static int daNpcPasser_Draw(void* i_this) {
    return static_cast<daNpcPasser_c*>(i_this)->draw();
}

/* 80AA596C-80AA5974 002DCC 0008+00 1/0 0/0 0/0 .text            daNpcPasser_IsDelete__FPv */
static int daNpcPasser_IsDelete(void* i_this) {
    return 1;
}

/* 80AA7370-80AA7390 -00001 0020+00 1/0 0/0 0/0 .data            daNpcPasser_METHODS */
static actor_method_class daNpcPasser_METHODS = {
    (process_method_func)daNpcPasser_Create,
    (process_method_func)daNpcPasser_Delete,
    (process_method_func)daNpcPasser_Execute,
    (process_method_func)daNpcPasser_IsDelete,
    (process_method_func)daNpcPasser_Draw,
};

/* 80AA7390-80AA73C0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_PASSER */
extern actor_process_profile_definition g_profile_NPC_PASSER = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_PASSER,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcPasser_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  401,                    // mPriority
  &daNpcPasser_METHODS,   // sub_method
  0x02040107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
