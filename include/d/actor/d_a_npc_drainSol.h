#ifndef D_A_NPC_DRAINSOL_H
#define D_A_NPC_DRAINSOL_H

#include "d/actor/d_a_npc4.h"

/**
 * @ingroup actors-npcs
 * @class daNpcDrSol_c
 * @brief Drain Soldier (Hyrule Castle Sewer Soldier?)
 *
 * @details
 *
 */
class daNpcDrSol_c : public daNpcF_c {
public:
    /* 809ADE6C */ daNpcDrSol_c();
    /* 809ADFE4 */ virtual ~daNpcDrSol_c();
    /* 809AE10C */ int Create();
    /* 809AE354 */ int CreateHeap();
    /* 809AE51C */ int Delete();
    /* 809AE550 */ int Execute();
    /* 809AE5CC */ int Draw();
    /* 809AE69C */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809AE6BC */ void reset();
    /* 809AE844 */ inline int setAction(bool (daNpcDrSol_c::*)(void*));
    /* 809AE8EC */ bool chkFindPlayer();
    /* 809AE994 */ bool wait(void*);
    /* 809AEB94 */ bool talk(void*);

    /* 809AEDA8 */ virtual void setParam();
    /* 809AEE24 */ virtual BOOL main();
    /* 809AF934 */ virtual void adjustShapeAngle() {}
    /* 809AEFDC */ virtual void setAttnPos();
    /* 809AF12C */ virtual void setMotionAnm(int, f32);
    /* 809AEB18 */ virtual void setMotion(int, f32, int);
    /* 809AF1FC */ virtual BOOL drawDbgInfo();
    /* 809AE60C */ virtual void drawOtherMdls();

    inline void playMotion();

    u8 getType() { return argument & 0x7F; }
    int getSwitchNo() { return fopAcM_GetParam(this) & 0xFF; }
    s16 getMessageNo() { return (fopAcM_GetParam(this) >> 8) & 0xFFFF; }

    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ J3DModel* field_0xbd8;
    /* 0xBDC */ u8 field_0xBDC[0xBE0 - 0xBDC];
    /* 0xBE0 */ dCcD_Cyl mCyl;
    /* 0xD1C */ bool (daNpcDrSol_c::*mAction)(void*);
    /* 0xD28 */ request_of_phase_process_class mPhase;
    /* 0xD30 */ int mMessageNo;
    /* 0xD34 */ s16 field_0xd34;
    /* 0xD36 */ u16 mMode;
    /* 0xD38 */ u8 field_0xd38;
    /* 0xD39 */ u8 mType;
};

STATIC_ASSERT(sizeof(daNpcDrSol_c) == 0xd3c);

struct daNpcDrSol_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
};

class daNpcDrSol_Param_c {
public:
    /* 809AF938 */ virtual ~daNpcDrSol_Param_c() {}

    static const daNpcDrSol_HIOParam m;
};


#endif /* D_A_NPC_DRAINSOL_H */
