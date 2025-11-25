#ifndef D_A_NPC_MYNA2_H
#define D_A_NPC_MYNA2_H

#include "d/actor/d_a_npc4.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_myna2_c
 * @brief Plumm
 *
 * @details
 *
 */
class daNpc_myna2_c : public daNpcF_c {
public:
    typedef BOOL (daNpc_myna2_c::*ActionFn)(void*);
    typedef BOOL (daNpc_myna2_c::*EventFn)(int);

    /* 80A83E8C */ daNpc_myna2_c();
    /* 80A840A0 */ virtual ~daNpc_myna2_c();
    /* 80A842C8 */ int create();
    /* 80A845AC */ int CreateHeap();
    /* 80A846E0 */ int Delete();
    /* 80A84714 */ int Execute();
    /* 80A84734 */ int Draw();
    /* 80A847A8 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A8503C */ u8 getTypeFromParam();
    /* 80A85094 */ int isDelete();
    /* 80A85160 */ void reset();
    /* 80A85358 */ void playMotion();
    /* 80A855E8 */ int chkAction(int (daNpc_myna2_c::*)(void*));
    /* 80A85614 */ int setAction(int (daNpc_myna2_c::*)(void*));
    /* 80A856BC */ int selectAction();
    /* 80A857B0 */ void doNormalAction(int);
    /* 80A85894 */ BOOL doEvent();
    /* 80A85BA4 */ void setLookMode(int);
    /* 80A85BC8 */ int wait(void*);
    /* 80A85C60 */ int waitHovering(void*);
    /* 80A86194 */ int waitFailure(void*);
    /* 80A862BC */ int waitGoal(void*);
    /* 80A86400 */ int talk(void*);
    /* 80A865FC */ int test(void*);
    /* 80A866B0 */ int ECut_firstTalk(int);
    /* 80A8684C */ int ECut_gameFailure(int);
    /* 80A86A0C */ int ECut_gameGoal(int);
    /* 80A86BEC */ int ECut_gameGoalSuccess(int);
    /* 80A86E8C */ void calcHovering(int, int);

    /* 80A847C8 */ virtual void setParam();
    /* 80A848B4 */ virtual BOOL main();
    /* 80A84B64 */ virtual void setAttnPos();
    /* 80A84DAC */ virtual bool setExpressionBtp(int);
    /* 80A84EAC */ virtual void setMotionAnm(int, f32);
    /* 80A84FEC */ virtual void setMotion(int, f32, int);
    /* 80A85030 */ virtual BOOL drawDbgInfo();
    /* 80A85038 */ virtual void drawOtherMdls();

    int getType() { return mType; }

    static char* mEvtCutNameList[5];
    static EventFn mEvtCutList[];

    /* 0xB48 */ u8 field_0xB48[0xB4C - 0xB48];
    /* 0xB4C */ daNpcF_Lookat_c mLookat;
    /* 0xBE8 */ Z2CreatureSumomo mSound;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMgrs[1];
    /* 0xC80 */ u8 field_0xC80[0xC84 - 0xC80];
    /* 0xC84 */ dCcD_Cyl mCyl;
    /* 0xDC0 */ ActionFn mNextAction;
    /* 0xDCC */ ActionFn mAction;
    /* 0xDD8 */ request_of_phase_process_class mPhase[3];
    /* 0xDF0 */ fpc_ProcID mItemPid;
    /* 0xDF4 */ int field_0xdf4;
    /* 0xDF8 */ int field_0xdf8;
    /* 0xDFC */ int field_0xdfc;
    /* 0xE00 */ int field_0xe00;
    /* 0xE04 */ int field_0xe04;
    /* 0xE08 */ s16 mLookMode;
    /* 0xE0A */ u16 mMode;
    /* 0xE0C */ u8 mType;
    /* 0xE0D */ u8 field_0xe0d;
    /* 0xE10 */ cXyz field_0xe10;
    /* 0xE1C */ cXyz field_0xe1c;
    /* 0xE28 */ int field_0xe28;
    /* 0xE2C */ int field_0xe2c;
    /* 0xE30 */ f32 field_0xe30;
};

STATIC_ASSERT(sizeof(daNpc_myna2_c) == 0xe34);

struct daNpc_myna2_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ f32 field_0x6c;
    /* 0x70 */ f32 field_0x70;
};

class daNpc_myna2_Param_c {
public:
    /* 80A883C8 */ virtual ~daNpc_myna2_Param_c() {}

    static const daNpc_myna2_HIOParam m;
};


#endif /* D_A_NPC_MYNA2_H */
