#ifndef D_A_NPC_MYNA2_H
#define D_A_NPC_MYNA2_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_myna2_c
 * @brief PLumm
 *
 * @details
 *
 */
class daNpc_myna2_c : public fopAc_ac_c {
public:
    /* 80A83E8C */ daNpc_myna2_c();
    /* 80A840A0 */ ~daNpc_myna2_c();
    /* 80A842C8 */ void create();
    /* 80A845AC */ void CreateHeap();
    /* 80A846E0 */ void Delete();
    /* 80A84714 */ void Execute();
    /* 80A84734 */ void Draw();
    /* 80A847A8 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A847C8 */ void setParam();
    /* 80A848B4 */ void main();
    /* 80A84B64 */ void setAttnPos();
    /* 80A84DAC */ void setExpressionBtp(int);
    /* 80A84EAC */ bool setMotionAnm(int, f32);
    /* 80A84FEC */ void setMotion(int, f32, int);
    /* 80A85030 */ bool drawDbgInfo();
    /* 80A85038 */ void drawOtherMdls();
    /* 80A8503C */ void getTypeFromParam();
    /* 80A85094 */ void isDelete();
    /* 80A85160 */ void reset();
    /* 80A85358 */ void playMotion();
    /* 80A855E8 */ void chkAction(int (daNpc_myna2_c::*)(void*));
    /* 80A85614 */ void setAction(int (daNpc_myna2_c::*)(void*));
    /* 80A856BC */ void selectAction();
    /* 80A857B0 */ void doNormalAction(int);
    /* 80A85894 */ void doEvent();
    /* 80A85BA4 */ void setLookMode(int);
    /* 80A85BC8 */ void wait(void*);
    /* 80A85C60 */ void waitHovering(void*);
    /* 80A86194 */ void waitFailure(void*);
    /* 80A862BC */ void waitGoal(void*);
    /* 80A86400 */ void talk(void*);
    /* 80A865FC */ void test(void*);
    /* 80A866B0 */ void ECut_firstTalk(int);
    /* 80A8684C */ void ECut_gameFailure(int);
    /* 80A86A0C */ void ECut_gameGoal(int);
    /* 80A86BEC */ void ECut_gameGoalSuccess(int);
    /* 80A86E8C */ void calcHovering(int, int);

    static void* mEvtCutNameList[5];
    static u8 mEvtCutList[60];

private:
    /* 0x568 */ u8 field_0x568[0xe34 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_myna2_c) == 0xe34);

class daNpc_myna2_Param_c {
public:
    /* 80A883C8 */ ~daNpc_myna2_Param_c();

    static u8 const m[116];
};


#endif /* D_A_NPC_MYNA2_H */
