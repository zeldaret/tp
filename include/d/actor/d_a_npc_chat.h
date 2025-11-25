#ifndef D_A_NPC_CHAT_H
#define D_A_NPC_CHAT_H

#include "d/actor/d_a_npc4.h"

/**
 * @ingroup actors-npcs
 * @class daNpcChat_c
 * @brief NPC Chat
 *
 * @details
 *
*/

struct daNpcChat_HIOParam {
    /* 0x0 */ daNpcF_HIOParam common;
};

class daNpcChat_HIO_c : public mDoHIO_entry_c {
    void genMessage(JORMContext*);

    /* 0x8 */ daNpcChat_HIOParam param;
};

class daNpcChat_Param_c {
public:
    /* 80986930 */ virtual ~daNpcChat_Param_c() {}

    static daNpcChat_HIOParam const m;
};

class daNpcChat_c : public daNpcF_c {
public:
    typedef bool (daNpcChat_c::*actionFunc)(void*);
    typedef BOOL (daNpcChat_c::*eventFunc)(int);

    /* 8098084C */ daNpcChat_c();
    /* 80980A60 */ ~daNpcChat_c();
    /* 80980C1C */ BOOL NpcCreate(int);
    /* 80980E20 */ int getObjNum();
    /* 80980F88 */ J3DModel* ObjCreate(int);
    /* 80980FC8 */ J3DModel* ChairCreate(f32);
    /* 80981108 */ bool isM_();
    /* 80981140 */ cPhs__Step loadResrc(int, int);
    /* 80981280 */ J3DModelData* getNpcMdlDataP(int);
    /* 809812FC */ J3DModelData* getObjMdlDataP(int);
    /* 80981374 */ J3DAnmTexPattern* getTexAnmP(int);
    /* 809813E8 */ BOOL removeResrc(int, int);
    /* 809814DC */ BOOL setAttention(int);
    /* 80981E90 */ cPhs__Step Create();
    /* 809822A0 */ BOOL CreateHeap();
    /* 809823B4 */ int Delete();
    /* 809823E8 */ int Execute();
    /* 809824CC */ int Draw();
    /* 8098250C */ int draw(int, int, f32, _GXColorS10*, int);
    /* 80982780 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80982A98 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80982AB8 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80982B60 */ BOOL searchGroup();
    /* 80982C10 */ BOOL appearTimeCheck();
    /* 80982D20 */ BOOL appearCheck();
    /* 80982EB4 */ void setParam();
    /* 80982F4C */ BOOL main();
    /* 80982FA4 */ void setAttnPos();
    /* 809830EC */ bool setExpressionBtp(int);
    /* 80983168 */ void setMotionAnm(int, f32);
    /* 80983584 */ void setMotion(int, f32, int);
    /* 809835C8 */ int drawDbgInfo();
    /* 809835D0 */ void drawOtherMdls();
    /* 809837A4 */ u8 getTalkMotionNo();
    /* 809837C0 */ bool getLookPlayerCheck();
    /* 809837EC */ void reset();
    /* 809839E0 */ void playMotion();
    /* 80984DD0 */ void playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData***);
    /* 80984F34 */ BOOL setAction(actionFunc);
    /* 80984FDC */ bool step(s16, int);
    /* 809850D0 */ void setTalkMember(daNpcChat_c*);
    /* 80985104 */ bool wait(void*);
    /* 8098552C */ bool fear(void*);
    /* 809856C8 */ bool talk(void*);
    /* 80985A84 */ bool demo(void*);
    /* 8098692C */ void adjustShapeAngle() {}

    u8 getType() { return fopAcM_GetParam(this) & 0xFF; }
    u8 getTalkGroupNoParam() { return (fopAcM_GetParam(this) >> 12) & 0xF; }
    u8 getTalkMenberNumParam() { return (fopAcM_GetParam(this) >> 16) & 0xF; }
    u8 getTalkNoParam() { return (fopAcM_GetParam(this) >> 20) & 0xF; }
    u8 getTalkIconTypeParam() { return (fopAcM_GetParam(this) >> 24) & 0xF; }
    s16 getMessageNo() { return (int)home.angle.x; }
    cXyz& getBaseAttnPos() { return mBaseAttnPos; }
    BOOL chkAction(actionFunc action) { return action == mAction; }
    u8 getTalkGroupNo() { return mTalkGroupNo; }
    u8 getTalkNo() { return mTalkNo; }
    void setFear() { mFear = true; }
    void setTalkFlag() { mTalkFlag = true; }

    static eventFunc mEvtSeqList[1];

private:
    /* 0xB48 */ Z2CreatureCitizen mSound;
    /* 0xBEC */ u8 field_0xbec[0xbf0 - 0xbec];
    /* 0xBF0 */ J3DModel* mObjModel;
    /* 0xBF4 */ daNpcF_Lookat_c mLookat;
    /* 0xC90 */ daNpcF_ActorMngr_c mActorMngr[1];
    /* 0xC98 */ daNpcChat_HIO_c* mHIO;
    /* 0xC9C */ dCcD_Cyl mCyl;
    /* 0xDD8 */ actionFunc mAction;
    /* 0xDE4 */ request_of_phase_process_class mPhase1;
    /* 0xDEC */ request_of_phase_process_class mPhase2;
    /* 0xDF4 */ request_of_phase_process_class mPhase3;
    /* 0xDFC */ request_of_phase_process_class mPhase4;
    /* 0xE04 */ fpc_ProcID field_0xe04;
    /* 0xE08 */ int field_0xe08;
    /* 0xE0C */ int field_0xe0c;
    /* 0xE10 */ u8 mType;
    /* 0xE14 */ int mObjNum;
    /* 0xE18 */ int mMsgNo;
    /* 0xE1C */ s16 field_0xe1c;
    /* 0xE1E */ u16 mMode;
    /* 0xE20 */ u8 mTalkNo;
    /* 0xE21 */ u8 mTalkMemberNum;
    /* 0xE22 */ u8 mTalkGroupNo;
    /* 0xE23 */ u8 mTalkIconType;
    /* 0xE24 */ daNpcChat_c* mTalkMembers[5];
    /* 0xE38 */ u8 field_0xe38;
    /* 0xE3C */ cXyz mBaseAttnPos;
    /* 0xE48 */ bool mFear;
    /* 0xE4A */ s16 mPlayerAngleY;
    /* 0xE4C */ u8 mMotionAnm;
    /* 0xE4D */ bool mTalkFlag;
    /* 0xE4E */ u8 mTalkMotionNo;
    /* 0xE4F */ bool field_0xe4f;
    /* 0xE50 */ u8 mLookPlayerCheck;
    /* 0xE51 */ u8 field_0xe51;
};

STATIC_ASSERT(sizeof(daNpcChat_c) == 0xe54);

#endif /* D_A_NPC_CHAT_H */
