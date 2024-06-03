#ifndef D_A_NPC_BANS_H
#define D_A_NPC_BANS_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_Len_c : public fopAc_ac_c {
public:
    /* 80A660D8 */ void checkStartDemo13StbEvt(fopAc_ac_c*, f32, f32, f32, f32, f32, f32, f32);
};

class daNpc_Bans_c : public fopAc_ac_c {
public:
    /* 809628CC */ ~daNpc_Bans_c();
    /* 80962AA0 */ void create();
    /* 80962D6C */ void CreateHeap();
    /* 80963338 */ void Delete();
    /* 8096336C */ void Execute();
    /* 80963444 */ void Draw();
    /* 809634E0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80963500 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80963558 */ void getType();
    /* 809635BC */ void isDelete();
    /* 809636C0 */ void reset();
    /* 80963840 */ void afterJntAnm(int);
    /* 809638CC */ void setParam();
    /* 80963A7C */ void checkChangeEvt();
    /* 80963B30 */ void setAfterTalkMotion();
    /* 80963BA8 */ void srchActors();
    /* 80963DB0 */ void evtTalk();
    /* 80963EDC */ void evtCutProc();
    /* 80963FA4 */ void action();
    /* 80964148 */ void beforeMove();
    /* 80964228 */ void setAttnPos();
    /* 809646E0 */ void setCollision();
    /* 80964994 */ bool drawDbgInfo();
    /* 8096499C */ void drawOtherMdl();
    /* 80964AD8 */ void setScoopAnm(int, int, f32);
    /* 80964B9C */ void afterSetMotionAnm(int, int, f32, int);
    /* 80964BD0 */ void selectAction();
    /* 80964C4C */ void chkAction(int (daNpc_Bans_c::*)(void*));
    /* 80964C78 */ void setAction(int (daNpc_Bans_c::*)(void*));
    /* 80964D20 */ void checkPlayerIn2ndFloorOfBombShop();
    /* 80964DD0 */ void orderAngerEvt();
    /* 80964EB0 */ void getKMsgTagP();
    /* 80964F48 */ void setPrtcls();
    /* 80964FEC */ void cutAnger(int);
    /* 809658F8 */ void cutPurchase(int);
    /* 80965CCC */ void wait(void*);
    /* 809661F0 */ void tend(void*);
    /* 80966888 */ void talk(void*);
    /* 80966B24 */ void shop(void*);
    /* 80967AC4 */ daNpc_Bans_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 80967BE4 */ s32 getEyeballMaterialNo();
    /* 80967BEC */ s32 getHeadJointNo();
    /* 80967BF4 */ s32 getNeckJointNo();
    /* 80967BFC */ bool getBackboneJointNo();
    /* 80967C04 */ void checkChangeJoint(int);
    /* 80967C14 */ void checkRemoveJoint(int);

    static void* mCutNameList[4];
    static u8 mCutList[48];
};

class daNpc_Bans_Param_c {
public:
    /* 80967C24 */ ~daNpc_Bans_Param_c();

    static u8 const m[144];
};

class dShopSystem_c : public fopAc_ac_c {
public:
    /* 80197338 */ void initShopSystem();
    /* 801974E4 */ ~dShopSystem_c();
    /* 80198878 */ void drawCursor();
    /* 80198950 */ void itemRotate();
    /* 80198A2C */ void itemZoom(cXyz*);
    /* 8019A0D0 */ void shop_init(bool);
    /* 8019A158 */ void shop_process(fopAc_ac_c*, dMsgFlow_c*);
    /* 8019A564 */ void deleteObject();
    /* 8019A5D0 */ void searchItemActor();
    /* 8019AB1C */ void setSellItemMax(u8);
    /* 8019AB24 */ void checkShopOpen();
    /* 80967C7C */ dShopSystem_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 80967D94 */ bool getResName2(int);
    /* 80967D9C */ bool beforeStartSeqAction(dMsgFlow_c*, int);
    /* 80967DA4 */ bool beforeSelectSeqAction(dMsgFlow_c*, int);
};

class dShopItemCtrl_c : public fopAc_ac_c {
public:
    /* 80196914 */ dShopItemCtrl_c();
};

class ShopCam_action_c : public fopAc_ac_c {
public:
    /* 80195C9C */ void shop_cam_action_init();
    /* 8019630C */ void Save();
    /* 8019635C */ void EventRecoverNotime();
    /* 801963B4 */ void Reset();
    /* 801964C8 */ void move();

private:
    /* 0x568 */ u8 field_0x568[0x1270 - 0x568];
};
STATIC_ASSERT(sizeof(ShopCam_action_c) == 0x1270);


#endif /* D_A_NPC_BANS_H */
