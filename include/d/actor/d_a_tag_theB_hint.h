#ifndef D_A_TAG_THEB_HINT_H
#define D_A_TAG_THEB_HINT_H

// #include "d/actor/d_a_npc_theB.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

// needs to be pulled from d_a_npc_theB.h eventually
struct daNpcTheB_c {
    /* 80AFC76C */ daNpcTheB_c();
    /* 80AFC980 */ ~daNpcTheB_c();
    /* 80AFCB44 */ void create();
    /* 80AFCD98 */ void CreateHeap();
    /* 80AFD1FC */ void Delete();
    /* 80AFD230 */ void Execute();
    /* 80AFD250 */ void Draw();
    /* 80AFD2A8 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AFD49C */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AFD4BC */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AFD508 */ void getHandPos1(int);
    /* 80AFD5F0 */ void getHandPos2(int);
    /* 80AFD6D8 */ void setHintEvent(s32, u16, int);
    /* 80AFD6F0 */ void main();
    /* 80AFD938 */ void setParam();
    /* 80AFDAA4 */ void ctrlBtk();
    /* 80AFDB70 */ void setAttnPos();
    /* 80AFDEC0 */ void setExpressionAnm(int, bool);
    /* 80AFE0BC */ void setExpressionBtp(int);
    /* 80AFE1BC */ bool setMotionAnm(int, f32);
    /* 80AFE398 */ bool drawDbgInfo();
    /* 80AFE3A0 */ void reset();
    /* 80AFE574 */ void playExpression();
    /* 80AFE704 */ void playMotion();
    /* 80AFE920 */ void doNormalAction();
    /* 80AFEA14 */ void doEvent();
    /* 80AFED24 */ void lookat();
    /* 80AFEECC */ void wait(void*);
    /* 80AFF45C */ void setMotion(int, f32, int);
    /* 80AFF4A0 */ void setExpression(int, f32);
    /* 80AFF4CC */ void talk(void*);
    /* 80AFF6AC */ void EvCut_PersonalCombatIntro(int);
    /* 80AFF888 */ void EvCut_PersonalCombatRevenge(int);
    /* 80AFFBB4 */ void EvCut_PersonalCombatAfter();
    /* 80AFFEF4 */ void EvCut_AnnulationFieldRace(int);
    /* 80AFFFE0 */ void EvCut_TheBHint(int);
    /* 80B00204 */ void EvCut_CoachGuardGameOver(int);

    static u8 mEvtSeqList[72];
};

class daTagTheBHint_c : public fopAc_ac_c {
public:

    u8 getSwitchNo() {
        return shape_angle.x & 0xff;
    }

    u16 getMessageNo() {
        return shape_angle.z & 0xffff;
    }

    u16 getLinkID() {
        return fopAcM_GetParam(this) & 0xFFFF;
    }

    s8 getRoomNo() {
        return fopAcM_GetParam(this) >> 24;
    }    

    int create() {
        fopAcM_SetupActor(this, daTagTheBHint_c);
        field_0x568 = pow(scale.x * 100.0f,2.0f);
        return cPhs_COMPLEATE_e;
    }

    int execute() {
        if (fopAcM_isSwitch(this,getSwitchNo())) {
            fopAcM_delete(this);
            return 1;
        } else {
            f32 distance = fopAcM_searchPlayerDistanceXZ2(this);

            if (distance < field_0x568) {
                daNpcTheB_c* the_b = (daNpcTheB_c*)fpcM_SearchByName(PROC_NPC_THEB);
                if (the_b) {
                    s8 roomNo = getRoomNo();
                    
                    if (roomNo == 0xFF) { 
                        roomNo = fopAcM_GetRoomNo(this);
                    }

                    the_b->setHintEvent(getMessageNo(),getLinkID(),roomNo);
                }
            }
        }

        return 1;
    }
    /* 0x568 */ f32 field_0x568;
};

#endif /* D_A_TAG_THEB_HINT_H */
