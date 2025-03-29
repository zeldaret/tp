#ifndef D_A_PERU_H
#define D_A_PERU_H

#include "d/actor/d_a_tag_evtarea.h"
#include "dolphin/types.h"
#include "d/actor/d_a_npc.h"
#include "SSystem/SComponent/c_counter.h"

/**
 * @ingroup actors-npcs
 * @class daPeru_c
 * @brief Louise
 *
 * @details
 *
 */
class daPeru_c : public daNpcT_c {
public:
    typedef int (daPeru_c::*cutAppearFunc)(int);
    typedef int (daPeru_c::*actionFunc)(int);

    /* 80D46EEC */ virtual ~daPeru_c();
    /* 80D46FCC */ int create();
    /* 80D4720C */ int CreateHeap();
    /* 80D4765C */ int typeInitialize();
    /* 80D47750 */ int Delete();
    /* 80D47784 */ int Execute();
    /* 80D477A4 */ int Draw();
    /* 80D47840 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80D47860 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80D478B8 */ int isDelete();
    /* 80D478EC */ void reset();
    /* 80D47B20 */ void setParam();
    /* 80D47C4C */ void setAfterTalkMotion();
    /* 80D47CAC */ void srchActors();
    /* 80D47D5C */ int evtTalk();
    /* 80D47E48 */ int evtCutProc();
    /* 80D47F10 */ void action();
    /* 80D47F5C */ void setAttnPos();
    /* 80D481A4 */ void setCollision();
    /* 80D4835C */ BOOL drawDbgInfo();
    /* 80D48364 */ int setAction(actionFunc, int);
    /* 80D48414 */ int wait(int);
    /* 80D486A0 */ BOOL is_AppearDemo_start();
    /* 80D48720 */ void _AppearDemoTag_delete();
    /* 80D48750 */ int talk(int);
    /* 80D48A7C */ int jump_st(int);
    /* 80D48C58 */ int jump_ed(int);
    /* 80D48E34 */ int sniff(int);
    /* 80D48FA8 */ int demo_appear(int);
    /* 80D4910C */ int demo_walk_to_link(int);
    /* 80D492A8 */ int demo_walk_circle(int);
    /* 80D49418 */ int demo_walk_to_window(int);
    /* 80D4971C */ int demo_walk_to_pathway(int);
    /* 80D499AC */ int cutAppear(int);
    /* 80D49A40 */ int _cutAppear_Init(int const&);
    /* 80D4A334 */ int _cutAppear_Main(int const&);
    /* 80D4A840 */ void _catdoor_open();
    /* 80D4A920 */ void _catdoor_open_demoskip();
    /* 80D4A984 */ int cutAppear_skip(int);
    /* 80D4AA18 */ int _cutAppear_skip_Init(int const&);
    /* 80D4AAF0 */ int _cutAppear_skip_Main(int const&);
    /* 80D4BE2C */ daPeru_c(daNpcT_faceMotionAnmData_c const* param_1,
                            daNpcT_motionAnmData_c const* param_2,
                            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_3, int param_4,
                            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_5, int param_6,
                            daNpcT_evtData_c const* param_7, char** param_8)
        : daNpcT_c(param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8) {
            OS_REPORT("|%06d:%x|daPeru_c -> コンストラクト\n", g_counter, this);
        }
    /* 80D4BEC4 */ s32 getEyeballMaterialNo() { return 1; }
    /* 80D4BECC */ s32 getHeadJointNo() { return 4; }
    /* 80D4BED4 */ s32 getNeckJointNo() { return 3; }
    /* 80D4BEDC */ s32 getBackboneJointNo() { return 1; }
    /* 80D4BEE4 */ int checkChangeJoint(int param_1) { return param_1 == 4; }
    /* 80D4BEE4 */ int checkRemoveJoint(int param_1) { return param_1 == 5; }
    /* 80D4BF04 */ void beforeMove() {
        if (checkHide() || mNoDraw) {
            attention_info.flags = 0;
        }
    }

    u8 getType() {
        u8 type = fopAcM_GetParam(this);
        if (type == 0xff) {
            type = 0;
        }
        return type;
    }

    int getFlowNodeNo() {
        u16 flowNode = home.angle.x;
        if (flowNode == 0xffff) {
            return -1;
        }
        return flowNode;
    }

    bool chkAction(actionFunc func) { return mActionFunc == func; }
    void _AppearDemoStart() { mEvtNo = 1; }

    BOOL decTimer() {
        field_0xe6c--; 
        return field_0xe6c <= 0;
    }

    BOOL decCnt() {
        field_0xe6a--; 
        return field_0xe6a <= 0;
    }

    void setTimer(int timer) { field_0xe6c = timer; }
    void setCnt(int cnt) { field_0xe6a = cnt; }
    int getCnt() { return field_0xe6a; }

    static const char* mCutNameList[3];
    static cutAppearFunc mCutList[3];

private:
    /* 0x0E40 */ daNpcT_ActorMngr_c mActors[3];
    /* 0x0E58 */ int field_0xe58;
    /* 0x0E5C */ actionFunc mActionFunc;
    /* 0x0E68 */ s16 field_0xe68;
    /* 0x0E6A */ s16 field_0xe6a;
    /* 0x0E6C */ s16 field_0xe6c;
    /* 0x0E6E */ s16 field_0xe6e;
    /* 0x0E70 */ u8 field_0xe70[0xe7c - 0xe70];
    /* 0x0E7C */ s8 field_0xe7c;
    /* 0x0E80 */ int field_0xe80;
    /* 0x0E84 */ int field_0xe84;
    /* 0x0E88 */ dCcD_Cyl mCyls[2];
    /* 0x1100 */ daNpcT_Path_c mPath;
    /* 0x1128 */ u8 mType;
    /* 0x1129 */ u8 field_0x1129;
};

STATIC_ASSERT(sizeof(daPeru_c) == 0x112c);

struct PeruParams {
    f32 field_0x00[18];
    s16 field_0x48[4];
    f32 field_0x50[4];
    s16 field_0x60[2];
    f32 field_0x64[13];
};

class daPeru_Param_c {
public:
    /* 80D4BF7C */ virtual ~daPeru_Param_c() {}

    static PeruParams const m;
};

#endif /* D_A_PERU_H */
