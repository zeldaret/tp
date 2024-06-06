#ifndef D_A_NPC_DRAINSOL_H
#define D_A_NPC_DRAINSOL_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcDrSol_c
 * @brief Drain Soldier (Hyrule Castle Sewer Soldier?)
 *
 * @details
 *
 */
class daNpcDrSol_c : public fopAc_ac_c {
public:
    /* 809ADE6C */ daNpcDrSol_c();
    /* 809ADFE4 */ ~daNpcDrSol_c();
    /* 809AE10C */ void Create();
    /* 809AE354 */ void CreateHeap();
    /* 809AE51C */ void Delete();
    /* 809AE550 */ void Execute();
    /* 809AE5CC */ void Draw();
    /* 809AE60C */ void drawOtherMdls();
    /* 809AE69C */ void createHeapCallBack(fopAc_ac_c*);
    /* 809AE6BC */ void reset();
    /* 809AE844 */ void setAction(bool (daNpcDrSol_c::*)(void*));
    /* 809AE8EC */ void chkFindPlayer();
    /* 809AE994 */ void wait(void*);
    /* 809AEB18 */ void setMotion(int, f32, int);
    /* 809AEB94 */ void talk(void*);
    /* 809AEDA8 */ void setParam();
    /* 809AEE24 */ void main();
    /* 809AEFDC */ void setAttnPos();
    /* 809AF12C */ void setMotionAnm(int, f32);
    /* 809AF1FC */ bool drawDbgInfo();
    /* 809AF934 */ void adjustShapeAngle();

private:
    /* 0x568 */ u8 field_0x568[0xd3c - 0x568];
};

STATIC_ASSERT(sizeof(daNpcDrSol_c) == 0xd3c);

class daNpcDrSol_Param_c {
public:
    /* 809AF938 */ ~daNpcDrSol_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_DRAINSOL_H */
