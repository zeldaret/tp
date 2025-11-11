#ifndef D_A_NPC_GRA_H
#define D_A_NPC_GRA_H

#include "d/actor/d_a_npc.h"


class daNpc_grA_HIOParam {
public:
    /* 0x00 */ daNpcF_HIOParam mNpcFParams;
    /* 0x6C */ s16 mBowTimer;
    /* 0x70 */ f32 mRotationalSpeed;
    /* 0x74 */ f32 mWalkingSpeed;
    /* 0x78 */ f32 mWalkingAnimationSpeed;
    /* 0x7C */ s16 mWalkingRotationSpeed;
    /* 0x7A */ s16 mWalkingRotationDivisions;
    /* 0x80 */ f32 mParticleSize;
};

class daNpc_grA_Param_c {
public:
    /* 809C9D2C */ virtual ~daNpc_grA_Param_c(){};

    static daNpc_grA_HIOParam const m;
};

#if DEBUG
class daNpc_grA_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_grA_HIO_c();
#if DEBUG
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);
#endif
    daNpc_grA_HIOParam mHioParams;
};

#define NPC_GRA_HIO_CLASS daNpc_grA_HIO_c

#else

#define NPC_GRA_HIO_CLASS daNpc_grA_Param_c

#endif

/**
 * @ingroup actors-npcs
 * @class daNpc_grA_c
 * @brief Goron (Adult)
 *
 * @details
 *
 */
class daNpc_grA_c : public daNpcF_c {
public:
    class daNpc_GrA_prtclMngr_c {
    public:
        /* 0x00 */ u8 field_0x0;
        /* 0x04 */ cXyz mPos;
        /* 0x10 */ csXyz mAngle;
        /* 0x18 */ cXyz mScale;
        /* 0x24 */ dPaPo_c mManager;
    };

    /* 809BE94C */ daNpc_grA_c();
    /* 809BEB64 */ ~daNpc_grA_c();
    /* 809BEDA4 */ BOOL create();
    /* 809BF0A8 */ BOOL CreateHeap();
    /* 809BF418 */ BOOL Delete();
    /* 809BF44C */ BOOL Execute();
    /* 809BF490 */ BOOL Draw();
    /* 809BF504 */ BOOL ctrlJoint(J3DJoint*, J3DModel*);
    /* 809BF738 */ static BOOL createHeapCallBack(fopAc_ac_c*);
    /* 809BF758 */ static BOOL ctrlJointCallBack(J3DJoint*, int);
    /* 809BF7A4 */ BOOL setTagJump();
    /* 809BF8A0 */ BOOL setTagJump2();
    /* 809BF99C */ BOOL setHomeJump();
    /* 809BFAF4 */ bool checkTagGraSub(fopAc_ac_c*);
    /* 809BFBC0 */ bool checkTagGraSub2(fopAc_ac_c*);
    /* 809BFDCC */ bool checkTagGraSubCrashed(fopAc_ac_c*);
    /* 809BFDFC */ void setParam();
    /* 809C0038 */ BOOL main();
    /* 809C0298 */ BOOL ctrlBtk();
    /* 809C02A0 */ void setAttnPos();
    /* 809C0948 */ bool setExpressionAnm(int, bool);
    /* 809C0CE4 */ bool setExpressionBtp(int);
    /* 809C0E18 */ void setExpression(int, f32);
    /* 809C0E44 */ void setMotionAnm(int, f32);
    /* 809C1018 */ void setMotion(int, f32, int);
    /* 809C105C */ BOOL drawDbgInfo();
    /* 809C1064 */ void drawOtherMdls();
    /* 809C1154 */ u8 getMode();
    /* 809C1160 */ u8 getMode1();
    /* 809C116C */ u8 getTypeFromParam();
    /* 809C1238 */ u8 getSwBit();
    /* 809C1244 */ BOOL isDelete();
    /* 809C13D8 */ void reset();
    /* 809C1990 */ void playExpression();
    /* 809C2080 */ void playMotion();
    /* 809C28BC */ BOOL chkAction(int (daNpc_grA_c::*)(void*));
    /* 809C28E8 */ BOOL setAction(int (daNpc_grA_c::*)(void*));
    /* 809C2990 */ BOOL selectAction();
    /* 809C2C3C */ BOOL doEvent();
    /* 809C3070 */ void setLookMode(int);
    /* 809C3094 */ void lookat();
    /* 809C3424 */ BOOL chkFindPlayer();
    /* 809C35D0 */ void setExpressionTalkAfter();
    /* 809C36AC */ BOOL setPrtcl();
    /* 809C389C */ void setRollPrtcl(cXyz const&, f32);
    /* 809C3A54 */ void setOtherObjMtx();
    /* 809C3B28 */ BOOL ECut_talkSpa(int);
    /* 809C3D78 */ BOOL ECut_grDSRoll(int);
    /* 809C45B0 */ BOOL ECut_grDSGate(int);
    /* 809C47EC */ BOOL ECut_teachElevator(int);
    /* 809C4BE4 */ BOOL ECut_kickOut(int);
    /* 809C4EB4 */ BOOL ECut_noneLook(int);
    /* 809C5088 */ BOOL ECut_rescueRock(int);
    /* 809C5430 */ BOOL ECut_carrySpaWater(int);
    /* 809C5D44 */ BOOL ECut_carrySpaWaterFailure(int);
    /* 809C5F90 */ BOOL ECut_rollRockCrash(int);
    /* 809C6608 */ BOOL ECut_talkSpaWater(int);
    /* 809C681C */ BOOL wait(void*);
    /* 809C69B8 */ BOOL waitTW(void*);
    /* 809C6AAC */ BOOL waitCheer(void*);
    /* 809C6D48 */ BOOL waitGate(void*);
    /* 809C73FC */ BOOL waitKickOut(void*);
    /* 809C770C */ BOOL moveRock(void*);
    /* 809C77E0 */ BOOL spaWarm(void*);
    /* 809C7ACC */ BOOL waitSpaWater(void*);
    /* 809C7F24 */ BOOL waitSpaBuyer(void*);
    /* 809C8138 */ BOOL waitSpaBuyerTW(void*);
    /* 809C82A8 */ BOOL beforeCrashWait(void*);
    /* 809C8514 */ BOOL crashRoll(void*);
    /* 809C8694 */ BOOL crashRollWait(void*);
    /* 809C884C */ BOOL crashedWait(void*);
    /* 809C8A2C */ BOOL waitBuyer(void*);
    /* 809C8BD4 */ BOOL talk(void*);
    /* 809C9044 */ BOOL test(void*);
    /* 809C9D28 */ virtual void adjustShapeAngle() {}

    int getType() { return mType; }
    s16 getGraNo() { return 0; }
    void addCarryNum() { field_0x1692++; }
    u8 getPathNoFromParam() { return home.angle.z; }
    void setGateWalk() { field_0x14D0 = 1; }
    static char* mEvtCutNameList[12];
    typedef BOOL (daNpc_grA_c::*cut_type)(int);
    static cut_type mEvtCutList[];

private:
    typedef BOOL (daNpc_grA_c::*daNpc_grA_c_Action)(void*);
    
    /* 0x0B48 */ Z2Creature mCreature;
    /* 0x0BD8 */ J3DModel* mpModel;
    /* 0x0BDC */ int field_0xBDC;
    /* 0x0BE0 */ daNpcF_Lookat_c mNpcfLookAt;
    /* 0x0C7C */ daNpcF_ActorMngr_c mNpcfActorManager[3];
    /* 0x0C94 */ NPC_GRA_HIO_CLASS* mpHio;
    /* 0x0C98 */ dCcD_Cyl field_0xC98;
    /* 0x0DD4 */ daNpcF_Path_c field_0xDD4;
    /* 0x1404 */ daNpc_grA_c_Action mAction2;
    /* 0x1410 */ daNpc_grA_c_Action mAction;
    /* 0x141C */ request_of_phase_process_class mPhase[8];
    /* 0x145C */ int field_0x145C;
    /* 0x14B0 */ int field_0x1460;
    /* 0x1464 */ int field_0x1464;
    /* 0x1468 */ int field_0x1468;
    /* 0x146C */ int field_0x146C;
    /* 0x1470 */ s16 mLookMode;
    /* 0x1472 */ u16 field_0x1472;
    /* 0x1474 */ u8 mType;
    /* 0x1478 */ int field_0x1478;
    /* 0x147C */ const char* mName;
    /* 0x1480 */ fpc_ProcID field_0x1480;
    /* 0x1484 */ s16 field_0x1484;
    /* 0x1486 */ u8 field_0x1486;
    /* 0x1487 */ u8 field_0x1487;
    /* 0x1488 */ u8 field_0x1488;
    /* 0x1489 */ u8 field_0x1489;
    /* 0x148C */ cXyz field_0x148C;
    /* 0x1498 */ csXyz field_0x1498;
    /* 0x149E */ u8 field_0x149E;
    /* 0x14A0 */ cXyz field_0x14A0;
    /* 0x14AC */ csXyz field_0x14AC;
    /* 0x14B4 */ f32 field_0x14B4;
    /* 0x14B8 */ f32 field_0x14B8;
    /* 0x14BC */ cXyz field_0x14BC;
    /* 0x14C8 */ csXyz field_0x14C8;
    /* 0x14CE */ u8 mMode;
    /* 0x14CF */ u8 mSwBit;
    /* 0x14D0 */ u8 field_0x14D0;
    /* 0x14D1 */ u8 field_0x14D1;
    /* 0x14D4 */ f32 field_0x14D4;
    /* 0x14D8 */ int field_0x14D8;
    /* 0x14DC */ Mtx field_0x14DC;
    /* 0x150C */ u8 field_0x150C;
    /* 0x1510 */ int mParticleID[3];
    /* 0x151C */ int field_0x151C;
    /* 0x1520 */ daNpc_GrA_prtclMngr_c mParticleManager[4];
    /* 0x1690 */ u8 field_0x1690;
    /* 0x1691 */ u8 field_0x1691;
    /* 0x1692 */ u8 field_0x1692;
    /* 0x1692 */ u8 field_0x1693;
    /* 0x1692 */ s16 field_0x1694;

};

STATIC_ASSERT(sizeof(daNpc_grA_c) == 0x1698);


#endif /* D_A_NPC_GRA_H */
