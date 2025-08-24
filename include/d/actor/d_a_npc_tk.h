#ifndef D_A_NPC_TK_H
#define D_A_NPC_TK_H

#include "d/actor/d_a_npc.h"
#include "d/d_cc_uty.h"
#include "d/d_path.h"

struct cXyz;
class daNpc_Hanjo_c;
class fopAc_ac_c;
class J3DJoint;
class J3DModel;

/**
 * @ingroup actors-npcs
 * @class daNPC_TK_c
 * @brief Hawk
 *
 * @details
 *
 */
class daNPC_TK_c : public fopAc_ac_c {
public:
    /* 80B01498 */ void setBck(int, u8, f32, f32);
    /* 80B0153C */ bool checkBck(int);
    /* 80B01598 */ int draw();
    /* 80B016D4 */ int checkBeforeBg();
    /* 80B01878 */ void setActionMode(int);
    /* 80B018F4 */ f32 setAddCalcSpeedXZ(cXyz&, cXyz const&, f32, f32, f32);
    /* 80B01C84 */ cXyz chaseTargetPos(cXyz, f32, f32, s16);
    /* 80B01D84 */
    fopAc_ac_c* getMasterPointer();
    /* 80B01DA0 */ void setMasterShoulder(cXyz*);
    /* 80B01E48 */ void setAwayAction(int);
    /* 80B01EF4 */ void setFlySE();
    /* 80B02254 */ void executeFly();
    /* 80B026F8 */ void initPerchDemo(int);
    /* 80B02B5C */
    bool executePerchDemo(int);
    /* 80B03658 */ void executePerch();
    /* 80B03754 */ void executeHandOn();
    /* 80B039A8 */
    bool checkWaterSurface(f32);
    /* 80B03A70 */ void executeAttack();
    /* 80B048BC */ void executeAway();
    /* 80B04BF8 */ void setCarryActorMtx();
    /* 80B04F64 */
    f32 getTakePosY();
    /* 80B04FA8 */
    f32 getTakeOffPosY();
    /* 80B04FEC */ void executeBack();
    /* 80B05BD0 */
    cXyz getHanjoHandPos();
    /* 80B05C7C */ void executeStayHanjo();
    /* 80B05EC8 */ void executeAttackLink();
    /* 80B0686C */ void executeBackHanjo();
    /* 80B07114 */
    bool checkAttackDemo();
    /* 80B072CC */ void executeAttackDemo();
    /* 80B07610 */ void executeBackHanjoDemo();
    /* 80B08168 */ void executeWolfEvent();
    /* 80B08208 */ void calcWolfDemoCam();
    /* 80B082A4 */ void calcWolfDemoCam2();
    /* 80B0839C */ void executeWolfPerch();
    /* 80B09A3C */ void executeResistanceDemo();
    /* 80B0A444 */ void setHawkSideCamera(cXyz);
    /* 80B0A500 */ void setHawkCamera(fopAc_ac_c*);
    /* 80B0A568 */ void endHawkCamera();
    /* 80B0A614 */ void calcDemoCamera();
    /* 80B0B004 */ void checkActionSet();
    /* 80B0B284 */ void action();
    /* 80B0B5CC */ void mtx_set();
    /* 80B0B6DC */ void cc_set();
    /* 80B0B7CC */ int execute();
    /* 80B0B918 */ int _delete();
    /* 80B0B9AC */
    int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80B0BB7C */ static int JointCallBack(J3DJoint*, int);
    /* 80B0BBC8 */ int CreateHeap();
    /* 80B0BD24 */ int create();

    void setBump() { mFlags |= 4; }
    void setEventWolf() { mFlags |= 0x80; }
    void setEvent() { mFlags |= 0x8; }
    void setAway() { mFlags |= 2; }
    void setAttack() { mFlags |= 1; }

    void setHawkPath(u8 i_pathNo) {
        if (i_pathNo != 0xFF) {
            mpPath1 = dPath_GetRoomPath(i_pathNo, fopAcM_GetRoomNo(this));
        }
    }

    BOOL isAttackLink() { return field_0x71a != 0; }
    void setAttackLink() { mFlags |= 0x10; }
    void setBackHanjo() { mFlags |= 0x20; }
    void setHanjoHand() { mFlags |= 0x40; }
    void setQuickHanjoHand() { mFlags |= 0x200; }
    BOOL isHanjoHand() { return mIsHanjoHand != 0; }

    void setResistanceDemo() { mFlags |= 0x100; }

    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x574 */ Z2Creature mSound;
    /* 0x604 */ cXyz field_0x604;
    /* 0x610 */ cXyz field_0x610;
    /* 0x61C */ cXyz field_0x61c;
    /* 0x628 */ cXyz field_0x628;
    /* 0x634 */ fopAc_ac_c* field_0x634;
    /* 0x638 */ daNpc_Hanjo_c* mpMaster;
    /* 0x63C */ cXyz field_0x63c[5];
    /* 0x678 */ f32 field_0x678;
    /* 0x67D */ f32 field_0x67c;
    /* 0x67E */ f32 field_0x680;
    /* 0x67E */ f32 field_0x684;
    /* 0x688 */ s32 field_0x688;
    /* 0x68C */ s32 mActionType;
    /* 0x690 */ s32 field_0x690;
    /* 0x694 */ s32 field_0x694;
    /* 0x698 */ s32 field_0x698;
    /* 0x69C */ s16 field_0x69c;
    /* 0x69E */ s16 field_0x69e;
    /* 0x6A0 */ s16 field_0x6a0;
    /* 0x6A2 */ s16 field_0x6a2;
    /* 0x6A4 */ s16 field_0x6a4;
    /* 0x6A5 */ s16 field_0x6a6;
    /* 0x6A8 */ s16 field_0x6a8;
    /* 0x6AA */ s16 field_0x6aa;
    /* 0x6AC */ u8 mCarryType;
    /* 0x6AD */ u8 mIsHanjoHand;
    /* 0x6AE */ u8 field_0x6ae;
    /* 0x6B0 */ s32 field_0x6b0;
    /* 0x6B4 */ s32 field_0x6b4;
    /* 0x6B8 */ s32 field_0x6b8;
    /* 0x6BC */ bool mIsExecutingAction;
    /* 0x6BD */ u8 field_0x6bd;
    /* 0x6BE */ u16 mFlags;
    /* 0x6C0 */ u8 field_0x6c0;
    /* 0x6C1 */ u8 field_0x6c1;
    /* 0x6C2 */ u8 field_0x6c2;
    /* 0x6C3 */ u8 field_0x6c3;
    /* 0x6C4 */ u8 field_0x6c4;
    /* 0x6C5 */ u8 field_0x6c5;
    /* 0x6C6 */ u8 field_0x6c6;
    /* 0x6C7 */ u8 field_0x6c7;
    /* 0x6C8 */ dPath* mpPath1;
    /* 0x6CC */ s8 mPathStep2;
    /* 0x6D0 */ dPathCurve field_0x6d0;
    /* 0x6DC */ dPath* mWolfPathData;
    /* 0x6E0 */ f32 field_0x6e0;
    /* 0x6E4 */ f32 field_0x6e4;
    /* 0x6E8 */ u8 field_0x6e8;
    /* 0x6E9 */ u8 field_0x6e9;
    /* 0x6EA */ u8 field_0x6ea;
    /* 0x6EB */ u8 field_0x6eb;
    /* 0x6EC */ fopAc_ac_c* field_0x6ec;
    /* 0x6F0 */ cXyz field_0x6f0;
    /* 0x6FC */ cXyz field_0x6fc;
    /* 0x708 */ f32 field_0x708;
    /* 0x70C */ s32 field_0x70c;
    /* 0x710 */ s16 field_0x710;
    /* 0x714 */ f32 field_0x714;
    /* 0x718 */ u8 field_0x718;
    /* 0x719 */ u8 field_0x719;
    /* 0x71A */ u8 field_0x71a;
    /* 0x71B */ u8 field_0x71b[0x724 - 0x71b];
    /* 0x724 */ dMsgFlow_c mMsgFlow;
    /* 0x770 */ dBgS_AcchCir mCircle;
    /* 0x7B0 */ dBgS_ObjAcch mAcch;
    /* 0x988 */ dCcD_Stts mStts;
    /* 0x9C4 */ dCcD_Sph mSphere;
    /* 0xAFC */ dCcU_AtInfo mAtInfo;
    /* 0xB20 */ u32 field_0xb20;
    /* 0xB24 */ u32 field_0xb24;
    /* 0xB28 */ u32 field_0xb28[4];
    /* 0x71A */ u32 field_0xb38;
    /* 0xB3C */ s32 field_0xb3c;
    /* 0xB40 */ u8 field_0xb40;
};

STATIC_ASSERT(sizeof(daNPC_TK_c) == 0xB44);

#endif /* D_A_NPC_TK_H */
