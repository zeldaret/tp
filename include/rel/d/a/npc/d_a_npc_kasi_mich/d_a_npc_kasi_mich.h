#ifndef D_A_NPC_KASI_MICH_H
#define D_A_NPC_KASI_MICH_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcKasiMich_c
 * @brief Misha
 *
 * @details
 *
 */
class daNpcKasiMich_c : public fopAc_ac_c {
public:
    /* 80A261CC */ daNpcKasiMich_c();
    /* 80A26414 */ ~daNpcKasiMich_c();
    /* 80A26624 */ void Create();
    /* 80A268A0 */ void CreateHeap();
    /* 80A26A24 */ void Delete();
    /* 80A26A58 */ void Execute();
    /* 80A26A84 */ void Draw();
    /* 80A26AD0 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80A26C5C */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A26C7C */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A26CC8 */ void setParam();
    /* 80A26D34 */ void main();
    /* 80A26FDC */ void setAttnPos();
    /* 80A27184 */ void setMotionAnm(int, f32);
    /* 80A27254 */ void setMotion(int, f32, int);
    /* 80A2729C */ bool drawDbgInfo();
    /* 80A272A4 */ void reset();
    /* 80A274D8 */ void playMotion();
    /* 80A2790C */ void playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData***);
    /* 80A27A84 */ void setAction(int (daNpcKasiMich_c::*)(int));
    /* 80A27B2C */ void setLookMode(int);
    /* 80A27B50 */ void lookat();
    /* 80A27D30 */ void step(s16, int);
    /* 80A27E24 */ void chkFindPlayer();
    /* 80A27F08 */ void wait(int);
    /* 80A282B4 */ void fear(int);
    /* 80A28490 */ void srchWolfTag();
    /* 80A284F8 */ void _srch_escape_tag(void*, void*);
    /* 80A285C8 */ void getWolfPathNearIdx();
    /* 80A286FC */ void chace_st(int);
    /* 80A287A0 */ void chace(int);
    /* 80A28910 */ void getChacePos();
    /* 80A289CC */ void turn_link(int);
    /* 80A28A8C */ void turn_home(int);
    /* 80A28B70 */ void turn_center(int);
    /* 80A28C40 */ void talk_dummy(int);
    /* 80A28CB8 */ void kya(int);
    /* 80A28D90 */ void kya2(int);
    /* 80A28E28 */ void kya_stop(int);
    /* 80A28EFC */ void iyan(int);
    /* 80A28F74 */ void escape(int);
    /* 80A2908C */ void iyan_look(int);
    /* 80A29164 */ void turn_hana(int);
    /* 80A291E8 */ void wait_dummy(int);
    /* 80A2926C */ void cheer(int);
    /* 80A29458 */ void _turn_to_link(s16);
    /* 80A294A4 */ void _turn_pos(cXyz const&, s16);
    /* 80A29500 */ void actor_front_check(fopAc_ac_c*);
    /* 80A295D8 */ void _getOffset(cXyz const&, cXyz&);
    /* 80A29FDC */ void adjustShapeAngle();

    static u8 mEvtSeqList[12];
    static u8 mTargetTag[4];
    static u8 mTargetTagDist[4];

private:
    /* 0x568 */ u8 field_0x568[0x146c - 0x568];
};
STATIC_ASSERT(sizeof(daNpcKasiMich_c) == 0x146c);

class daNpcKasiMich_Param_c {
public:
    /* 80A29FE0 */ ~daNpcKasiMich_Param_c();

    static u8 const m[116];
};


#endif /* D_A_NPC_KASI_MICH_H */
