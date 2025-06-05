#ifndef D_A_NPC_MOI_H
#define D_A_NPC_MOI_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Moi_c
 * @brief Rusl
 *
 * @details
 *
 */

struct daNpc_Moi_HIOParam {
    /* 0x00 */ f32 field_0x00;
    /* 0x04 */ f32 field_0x04;
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ f32 field_0x3c;
    /* 0x40 */ f32 field_0x40;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ s16 field_0x48;
    /* 0x4A */ s16 field_0x4a;
    /* 0x4C */ s16 field_0x4c;
    /* 0x4E */ s16 field_0x4e;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ u8 field_0x54[24];
    /* 0x6C */ f32 field_0x6c;
    /* 0x70 */ u8 field_0x70[40];
    /* 0x98 */ s16 field_0x98;
    /* 0x9A */ s16 field_0x9a;
    /* 0x9C */ s16 field_0x9c;
    /* 0x9E */ s16 field_0x9e;
    /* 0xA0 */ s16 field_0xa0;
    /* 0xA2 */ s16 field_0xa2;
    /* 0xA4 */ f32 field_0xa4;
    /* 0xA8 */ u8 field_0xa8[12];
    /* 0xB4 */ f32 field_0xb4;
    /* 0xB8 */ f32 field_0xb8;
};

class daNpc_Moi_Param_c {
public:
    /* 80A7AE84 */ virtual ~daNpc_Moi_Param_c() {};

    static daNpc_Moi_HIOParam const m;
};

class daNpc_Moi_HIO_c
#ifdef DEBUG
    : public mDoHIO_entry_c
#endif
{
public:
    void genMessage(JORMContext*);
};

class daNpc_Moi_c : public daNpcT_c {
public:
    typedef int (daNpc_Moi_c::*cutFunc)(int);
    typedef int (daNpc_Moi_c::*actionFunc)(void*);

    enum Type {
        TYPE_0,
        TYPE_1,
        TYPE_2,
        TYPE_3,
        TYPE_4,
        TYPE_5,
        TYPE_6,
    };

    /* 80A73F4C */ ~daNpc_Moi_c();
    /* 80A74150 */ int create();
    /* 80A74474 */ int CreateHeap();
    /* 80A749F8 */ int Delete();
    /* 80A74A2C */ int Execute();
    /* 80A74A4C */ int Draw();
    /* 80A74B80 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A74BA0 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A74BF8 */ u8 getType();
    /* 80A74C6C */ BOOL isDelete();
    /* 80A74D8C */ void reset();
    /* 80A7513C */ BOOL chkMoiN();
    /* 80A75160 */ void afterJntAnm(int);
    /* 80A751E4 */ void setParam();
    /* 80A75460 */ BOOL checkChangeEvt();
    /* 80A75514 */ void setAfterTalkMotion();
    /* 80A755C8 */ void srchActors();
    /* 80A75664 */ BOOL evtTalk();
    /* 80A75704 */ BOOL evtCutProc();
    /* 80A757CC */ void action();
    /* 80A759F4 */ void beforeMove();
    /* 80A75AB8 */ void setAttnPos();
    /* 80A75E68 */ void setCollision();
    /* 80A760E0 */ int drawDbgInfo();
    /* 80A760E8 */ void drawOtherMdl();
    /* 80A762A8 */ bool afterSetMotionAnm(int, int, f32, int);
    /* 80A762CC */ void changeAnm(int*, int*);
    /* 80A7633C */ void changeBck(int*, int*);
    /* 80A76384 */ void changeBtp(int*, int*);
    /* 80A7643C */ void changeBtk(int*, int*);
    /* 80A764B0 */ int selectAction();
    /* 80A765CC */ BOOL chkAction(int (daNpc_Moi_c::*)(void*));
    /* 80A765F8 */ int setAction(int (daNpc_Moi_c::*)(void*));
    /* 80A766A0 */ BOOL chkPlayerGetWoodShield();
    /* 80A766DC */ void setSSlash(int);
    /* 80A76888 */ BOOL chkPullOutSw();
    /* 80A768FC */ void pullOutSw();
    /* 80A76954 */ BOOL chkSetInSw();
    /* 80A769C8 */ void setInSw();
    /* 80A76A20 */ void setSwAT();
    /* 80A76AFC */ void torch();
    /* 80A76C7C */ int injuryCheck();
    /* 80A76E10 */ int injuryTurn(cXyz);
    /* 80A76F3C */ int injuryWalk();
    /* 80A770FC */ int poise();
    /* 80A77740 */ int cutDeliveredSw(int);
    /* 80A77BA0 */ int cutAppearanceMoi(int);
    /* 80A7838C */ int cutConversationWithUri(int);
    /* 80A785FC */ int cutFindWolf(int);
    /* 80A789D8 */ int wait(void*);
    /* 80A78E0C */ int walk(void*);
    /* 80A78FF4 */ int walkOnEggshell(void*);
    /* 80A794C0 */ int rest(void*);
    /* 80A79608 */ int talk(void*);
    /* 80A7AC88 */ daNpc_Moi_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames) {}
    /* 80A7AE0C */ s32 getEyeballMaterialNo() { return chkMoiN() ? 4 : 2; }
    /* 80A7AE3C */ s32 getHeadJointNo() { return 4; }
    /* 80A7AE44 */ s32 getNeckJointNo() { return 3; }
    /* 80A7AE4C */ s32 getBackboneJointNo() { return 1; }
    /* 80A7AE54 */ BOOL checkChangeJoint(int param_0) { return param_0 == 4; }
    /* 80A7AE64 */ BOOL checkRemoveJoint(int param_0) { return param_0 == 8; }
    /* 80A7AE74 */ s32 getFootLJointNo() { return 22; }
    /* 80A7AE7C */ s32 getFootRJointNo() { return 25; }

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        if (nodeNo == 0xffff) {
            return -1;
        }
        return nodeNo;
    }
    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xff0000) >> 16; }
    bool chkSFight() { return field_0x166b == 1; }
    u8 getPathID() { return (fopAcM_GetParam(this) & 0xff00) >> 8; }

    static const char* mCutNameList[5];
    static cutFunc mCutList[5];

private:
    /* 0x0E40 */ daNpc_Moi_HIO_c* field_0xe40;
    /* 0x0E44 */ J3DModel* mpModel[6];
    /* 0x0E5C */ dCcD_Cyl mCyl[4];
    /* 0x134C */ dCcD_Cyl mCyl2;
    /* 0x1488 */ dCcD_Sph mSph;
    /* 0x15C0 */ fpc_ProcID field_0x15c0;
    /* 0x15C4 */ u8 mType;
    /* 0x15C8 */ daNpcT_ActorMngr_c mActorMngr[4];
    /* 0x15E8 */ daNpcT_Path_c mPath;
    /* 0x1610 */ actionFunc field_0x1610;
    /* 0x161C */ actionFunc field_0x161c;
    /* 0x1628 */ cXyz field_0x1628;
    /* 0x1634 */ csXyz field_0x1634[3];
    /* 0x1648 */ int field_0x1648;
    /* 0x164C */ int field_0x164c;
    /* 0x1650 */ int field_0x1650;
    /* 0x1654 */ int field_0x1654;
    /* 0x1658 */ int field_0x1658;
    /* 0x165C */ int field_0x165c;
    /* 0x1660 */ int field_0x1660;
    /* 0x1664 */ s16 field_0x1664;
    /* 0x1666 */ u8 field_0x1666;
    /* 0x1667 */ u8 field_0x1667;
    /* 0x1668 */ u8 field_0x1668;
    /* 0x1669 */ u8 field_0x1669;
    /* 0x166A */ u8 field_0x166a;
    /* 0x166B */ u8 field_0x166b;
    /* 0x166C */ u8 field_0x166c;
    /* 0x166D */ u8 field_0x166d;
    /* 0x166E */ u8 field_0x166e;
    /* 0x166F */ u8 field_0x166f;
    /* 0x1670 */ int field_0x1670;
};

STATIC_ASSERT(sizeof(daNpc_Moi_c) == 0x1674);

#endif /* D_A_NPC_MOI_H */
