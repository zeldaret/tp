#ifndef D_A_NPC_GWOLF_H
#define D_A_NPC_GWOLF_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_GWolf_c
 * @brief Golden Wolf
 *
 * @details
 *
 */
class daNpc_GWolf_c : public daNpcF_c {
public:
    /* 809F30AC */ daNpc_GWolf_c();
    /* 809F34C0 */ void create();
    /* 809F37C0 */ void CreateHeap();
    /* 809F3BD8 */ void Delete();
    /* 809F3C0C */ void Execute();
    /* 809F3C2C */ void Draw();
    /* 809F3CBC */ void draw(int, int, f32, GXColorS10*, int);
    /* 809F3FB8 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 809F41EC */ void createHeapCallBack(fopAc_ac_c*);
    /* 809F420C */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809F4E38 */ void getTypeFromParam();
    /* 809F4E84 */ void getModeFromParam();
    /* 809F4F00 */ void isDelete();
    /* 809F4FF4 */ void reset();
    /* 809F520C */ void playMotion();
    /* 809F55D0 */ void chkAction(int (daNpc_GWolf_c::*)(void*));
    /* 809F55FC */ void setAction(int (daNpc_GWolf_c::*)(void*));
    /* 809F56A4 */ void selectAction();
    /* 809F5770 */ void doNormalAction(int);
    /* 809F5884 */ void doEvent();
    /* 809F5B60 */ void setLookMode(int);
    /* 809F5B84 */ void lookat();
    /* 809F5E0C */ void ECut_attackWarp(int);
    /* 809F6548 */ void ECut_attackWarpHorse(int);
    /* 809F6BFC */ void ECut_howlingSessionA(int);
    /* 809F70A8 */ void meetGWolfSkip();
    /* 809F70EC */ void ECut_meetGWolf(int);
    /* 809F71E0 */ void wait(void*);
    /* 809F75C0 */ void waitHowling(void*);
    /* 809F775C */ void waitBrave(void*);
    /* 809F77E4 */ void talk(void*);
    /* 809F797C */ void test(void*);
    /* 809F7A30 */ void getGroundSlope(dBgS_ObjAcch&, s16);

    /* 809F32C0 */ virtual ~daNpc_GWolf_c();
    /* 809F4258 */ virtual void setParam();
    /* 809F4390 */ virtual BOOL main();
    /* 809F4558 */ virtual BOOL ctrlBtk();
    /* 809F4638 */ virtual void adjustShapeAngle();
    /* 809F4698 */ virtual void setAttnPos();
    /* 809F4BB0 */ virtual bool setExpressionAnm(int, bool);
    /* 809F4BB8 */ virtual void setExpression(int, f32);
    /* 809F4BBC */ virtual void setMotionAnm(int, f32);
    /* 809F4DE8 */ virtual void setMotion(int, f32, int);
    /* 809F4E2C */ virtual BOOL drawDbgInfo();
    /* 809F4E34 */ virtual void drawOtherMdls();

    void setHowlingEndFlag() { field_0xe1c = 2; }
    void setHowlingFlag() { field_0xe1c = 1; }

    static void* mEvtCutNameList[5];
    static u8 mEvtCutList[60];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ daNpcF_Lookat_c mLookAt;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMng[2];
    /* 0xC88 */ u8 field_0xC88[0xC8C - 0xC88];
    /* 0xC8C */ dCcD_Cyl mCcCyl;
    /* 0xDC8 */ u8 field_0xDC8[0xE08 - 0xDC8];
    /* 0xE08 */ int field_0xe08;
    /* 0xE0C */ u8 field_0xE0C[0xE14 - 0xE0C];
    /* 0xE14 */ u32 field_0xe14;
    /* 0xE18 */ u8 field_0xe18[0xE1C - 0xE18];
    /* 0xE1C */ u8 field_0xe1c;
};

STATIC_ASSERT(sizeof(daNpc_GWolf_c) == 0xe20);

class daNpc_GWolf_Param_c {
public:
    /* 809F8488 */ ~daNpc_GWolf_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_GWOLF_H */
