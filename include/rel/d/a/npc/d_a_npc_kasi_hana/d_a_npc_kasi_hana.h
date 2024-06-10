#ifndef D_A_NPC_KASI_HANA_H
#define D_A_NPC_KASI_HANA_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcKasiHana_c
 * @brief Hannah
 *
 * @details
 *
 */
class daNpcKasiHana_c : public fopAc_ac_c {
public:
    /* 80A1BE44 */ daNpcKasiHana_c();
    /* 80A1C0A4 */ ~daNpcKasiHana_c();
    /* 80A1C334 */ void Create();
    /* 80A1C5B0 */ void CreateHeap();
    /* 80A1C734 */ void Delete();
    /* 80A1C768 */ void Execute();
    /* 80A1C78C */ void Draw();
    /* 80A1C7D8 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80A1C964 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A1C984 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A1C9D0 */ void setParam();
    /* 80A1CA60 */ void main();
    /* 80A1CD28 */ void setAttnPos();
    /* 80A1CED0 */ void setMotionAnm(int, f32);
    /* 80A1CFA0 */ void setMotion(int, f32, int);
    /* 80A1CFE8 */ bool drawDbgInfo();
    /* 80A1CFF0 */ void reset();
    /* 80A1D238 */ void playMotion();
    /* 80A1D604 */ void playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData***);
    /* 80A1D77C */ void setAction(int (daNpcKasiHana_c::*)(int));
    /* 80A1D824 */ void setLookMode(int);
    /* 80A1D848 */ void lookat();
    /* 80A1DA28 */ void step(s16, int);
    /* 80A1DB1C */ void chkFindPlayer();
    /* 80A1DC00 */ void wait(int);
    /* 80A1E184 */ void chace_st(int);
    /* 80A1E228 */ void chace(int);
    /* 80A1E3AC */ void getChacePos();
    /* 80A1E4AC */ void turn(int);
    /* 80A1E578 */ void fear(int);
    /* 80A1E78C */ void srchWolfTag();
    /* 80A1E7F4 */ void _srch_escape_tag(void*, void*);
    /* 80A1E8C4 */ void getWolfPathNearIdx();
    /* 80A1E9F8 */ void talk(int);
    /* 80A1EB5C */ void demo(int);
    /* 80A1EE38 */ void escape(int);
    /* 80A1EF90 */ void cheer(int);
    /* 80A1F198 */ void _turn_to_link(s16);
    /* 80A1F1E4 */ void _turn_pos(cXyz const&, s16);
    /* 80A1F240 */ void actor_front_check(fopAc_ac_c*);
    /* 80A1F318 */ void _getOffset(cXyz const&, cXyz&);
    /* 80A1F384 */ void _Evt_Kasi_Appear(int);
    /* 80A1F42C */ void _Evt_Kasi_Appear_CutInit(int const&);
    /* 80A1F50C */ void _Evt_Kasi_Appear_CutMain(int const&);
    /* 80A1F638 */ void _Evt_Kasi_Talk(int);
    /* 80A1F740 */ void _Evt_Kasi_Talk_CutInit(int const&);
    /* 80A1F860 */ void _Evt_Kasi_Talk_CutMain(int const&, int);
    /* 80A1F9F4 */ void _Evt_Kasi(int);
    /* 80A1FA9C */ void _Evt_Kasi_CutInit(int const&);
    /* 80A1FBC4 */ void _Evt_Kasi_CutMain(int const&);
    /* 80A1FD64 */ void _Evt_Kasi_Cheer(int);
    /* 80A1FE6C */ void _Evt_Kasi_Cheer_CutInit(int const&);
    /* 80A1FF78 */ void _Evt_Kasi_Cheer_CutMain(int const&, int);
    /* 80A2016C */ void _Evt_Kasi_Cheer2(int);
    /* 80A20244 */ void _Evt_Kasi_Cheer2_CutInit(int const&);
    /* 80A20350 */ void _Evt_Kasi_Cheer2_CutMain(int const&, int);
    /* 80A20678 */ void adjustShapeAngle();

    static u8 mEvtSeqList[72];
    static u8 mTargetTag[4];
    static u8 mTargetTagDist[4];
    static u8 mWolfAngle[2 + 2 /* padding */];

private:
    /* 0x568 */ u8 field_0x568[0x1ac8 - 0x568];
};

STATIC_ASSERT(sizeof(daNpcKasiHana_c) == 0x1ac8);

class daNpcKasiHana_Param_c {
public:
    /* 80A2067C */ ~daNpcKasiHana_Param_c();

    static u8 const m[124];
};

class daNpcKasi_Mng_c {
public:
    /* 80A1AFAC */ void calcEscapeForm();
    /* 80A1B0D8 */ void calcCenterPos();
    /* 80A1B1C8 */ void getDistFromCenter();
    /* 80A1B35C */ void getOffsetFromLeader(cXyz const&, cXyz&);
    /* 80A1B410 */ void initPath(u8, u16);
    /* 80A1B48C */ void getPlNearPoint();
    /* 80A1B5F0 */ void getSygnalInfo();
    /* 80A1B628 */ void sendInfo();
    /* 80A1B6F8 */ void offTalk();
    /* 80A1B774 */ void chkTalk();
    /* 80A1B810 */ void chkFear();
    /* 80A1B884 */ void chkEscape();
    /* 80A1B920 */ void createHearts();
    /* 80A1BAAC */ void allDemoMove();
    /* 80A1BB24 */ void allDemoNotMove();
    /* 80A1BB9C */ void isMiniGamePlaying();
    /* 80A1BBE0 */ void schMemberActor();
    /* 80A1BC88 */ void schDanchoActor();
    /* 80A1BCF0 */ void deleteAllMember();
    /* 80A1BD6C */ void chgWeightHeavy();
    /* 80A1BDD8 */ void chgWeightLight();
    /* 80A2065C */ void getCenterPos();
};

#endif /* D_A_NPC_KASI_HANA_H */
