#ifndef D_A_NPC_KASI_KYU_H
#define D_A_NPC_KASI_KYU_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcKasiKyu_c
 * @brief Kili
 *
 * @details
 *
 */
class daNpcKasiKyu_c : public fopAc_ac_c {
public:
    /* 80A219CC */ daNpcKasiKyu_c();
    /* 80A21C14 */ ~daNpcKasiKyu_c();
    /* 80A21E24 */ void Create();
    /* 80A220A0 */ void CreateHeap();
    /* 80A22224 */ void Delete();
    /* 80A22258 */ void Execute();
    /* 80A22284 */ void Draw();
    /* 80A222D0 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80A2245C */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A2247C */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A224C8 */ void setParam();
    /* 80A22534 */ void main();
    /* 80A227DC */ void setAttnPos();
    /* 80A22984 */ bool setMotionAnm(int, f32);
    /* 80A22A54 */ void setMotion(int, f32, int);
    /* 80A22A9C */ bool drawDbgInfo();
    /* 80A22AA4 */ void reset();
    /* 80A22CD8 */ void playMotion();
    /* 80A2310C */ void playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData***);
    /* 80A23284 */ void setAction(int (daNpcKasiKyu_c::*)(int));
    /* 80A2332C */ void setLookMode(int);
    /* 80A23350 */ void lookat();
    /* 80A23530 */ void step(s16, int);
    /* 80A23624 */ void chkFindPlayer();
    /* 80A23708 */ void wait(int);
    /* 80A23AB4 */ void fear(int);
    /* 80A23C90 */ void srchWolfTag();
    /* 80A23CF8 */ void _srch_escape_tag(void*, void*);
    /* 80A23DC8 */ void getWolfPathNearIdx();
    /* 80A23EFC */ void chace_st(int);
    /* 80A23FA0 */ void chace(int);
    /* 80A24110 */ void getChacePos();
    /* 80A241CC */ void turn_link(int);
    /* 80A2428C */ void turn_home(int);
    /* 80A24370 */ void turn_center(int);
    /* 80A24440 */ void talk_dummy(int);
    /* 80A244B8 */ void kya(int);
    /* 80A24590 */ void kya2(int);
    /* 80A24628 */ void kya_stop(int);
    /* 80A246FC */ void iyan(int);
    /* 80A24774 */ void iyan_look(int);
    /* 80A2484C */ void turn_hana(int);
    /* 80A2493C */ void escape(int);
    /* 80A24A54 */ void wait_dummy(int);
    /* 80A24AD8 */ void cheer(int);
    /* 80A24CC4 */ void _turn_to_link(s16);
    /* 80A24D10 */ void _turn_pos(cXyz const&, s16);
    /* 80A24D6C */ void actor_front_check(fopAc_ac_c*);
    /* 80A24E44 */ void _getOffset(cXyz const&, cXyz&);
    /* 80A25848 */ void adjustShapeAngle();

    static u8 mEvtSeqList[12];
    static u8 mTargetTag[4];
    static u8 mTargetTagDist[4];

private:
    /* 0x568 */ u8 field_0x568[0x146c - 0x568];
};

STATIC_ASSERT(sizeof(daNpcKasiKyu_c) == 0x146c);

class daNpcKasiKyu_Param_c {
public:
    /* 80A2584C */ ~daNpcKasiKyu_Param_c();

    static u8 const m[116];
};


#endif /* D_A_NPC_KASI_KYU_H */
