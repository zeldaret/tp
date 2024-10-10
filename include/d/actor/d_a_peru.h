#ifndef D_A_PERU_H
#define D_A_PERU_H

#include "dolphin/types.h"
#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daPeru_c
 * @brief Louise
 *
 * @details
 *
 */
class daPeru_c : public fopAc_ac_c {
public:
    /* 80D46EEC */ ~daPeru_c();
    /* 80D46FCC */ void create();
    /* 80D4720C */ void CreateHeap();
    /* 80D4765C */ void typeInitialize();
    /* 80D47750 */ void Delete();
    /* 80D47784 */ void Execute();
    /* 80D477A4 */ void Draw();
    /* 80D47840 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80D47860 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80D478B8 */ void isDelete();
    /* 80D478EC */ void reset();
    /* 80D47B20 */ void setParam();
    /* 80D47C4C */ void setAfterTalkMotion();
    /* 80D47CAC */ void srchActors();
    /* 80D47D5C */ void evtTalk();
    /* 80D47E48 */ void evtCutProc();
    /* 80D47F10 */ void action();
    /* 80D47F5C */ void setAttnPos();
    /* 80D481A4 */ void setCollision();
    /* 80D4835C */ bool drawDbgInfo();
    /* 80D48364 */ void setAction(int (daPeru_c::*)(int), int);
    /* 80D48414 */ void wait(int);
    /* 80D486A0 */ void is_AppearDemo_start();
    /* 80D48720 */ void _AppearDemoTag_delete();
    /* 80D48750 */ void talk(int);
    /* 80D48A7C */ void jump_st(int);
    /* 80D48C58 */ void jump_ed(int);
    /* 80D48E34 */ void sniff(int);
    /* 80D48FA8 */ void demo_appear(int);
    /* 80D4910C */ void demo_walk_to_link(int);
    /* 80D492A8 */ void demo_walk_circle(int);
    /* 80D49418 */ void demo_walk_to_window(int);
    /* 80D4971C */ void demo_walk_to_pathway(int);
    /* 80D499AC */ void cutAppear(int);
    /* 80D49A40 */ void _cutAppear_Init(int const&);
    /* 80D4A334 */ void _cutAppear_Main(int const&);
    /* 80D4A840 */ void _catdoor_open();
    /* 80D4A920 */ void _catdoor_open_demoskip();
    /* 80D4A984 */ void cutAppear_skip(int);
    /* 80D4AA18 */ void _cutAppear_skip_Init(int const&);
    /* 80D4AAF0 */ void _cutAppear_skip_Main(int const&);
    /* 80D4BE2C */ daPeru_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                            daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                            daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                            daNpcT_evtData_c const*, char**);
    /* 80D4BEC4 */ bool getEyeballMaterialNo();
    /* 80D4BECC */ s32 getHeadJointNo();
    /* 80D4BED4 */ s32 getNeckJointNo();
    /* 80D4BEDC */ bool getBackboneJointNo();
    /* 80D4BEE4 */ void checkChangeJoint(int);
    /* 80D4BEF4 */ void checkRemoveJoint(int);
    /* 80D4BF04 */ void beforeMove();

    static void* mCutNameList[3];
    static u8 mCutList[36];

private:
    /* 0x568 */ u8 field_0x568[0x112c - 0x568];
};

STATIC_ASSERT(sizeof(daPeru_c) == 0x112c);

class daPeru_Param_c {
public:
    /* 80D4BF7C */ ~daPeru_Param_c();

    static u8 const m[152];
};

#endif /* D_A_PERU_H */
