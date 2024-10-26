#ifndef D_A_NPC_KN_H
#define D_A_NPC_KN_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Kn_c
 * @brief Hero's Shade
 *
 * @details
 *
 */
class daNpc_Kn_c : public fopAc_ac_c {
public:
    class daNpc_Kn_prtclMngr_c {
    public:
        /* 80A2AF98 */ ~daNpc_Kn_prtclMngr_c();
        /* 80A3C1C4 */ daNpc_Kn_prtclMngr_c();
    };

    /* 80A2AA0C */ ~daNpc_Kn_c();
    /* 80A2AFD4 */ void create();
    /* 80A2B278 */ void CreateHeap();
    /* 80A2B620 */ void Delete();
    /* 80A2B654 */ void Execute();
    /* 80A2B6B0 */ void Draw();
    /* 80A2B764 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A2B784 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A2B7DC */ void getType();
    /* 80A2B844 */ void getDivideNo();
    /* 80A2B850 */ void getFlowNodeNo();
    /* 80A2B86C */ void getPath();
    /* 80A2B878 */ void isDelete();
    /* 80A2B91C */ void resetCol();
    /* 80A2B9E0 */ void reset();
    /* 80A2BC5C */ void resetType();
    /* 80A2BD30 */ void setParam();
    /* 80A2BFB0 */ void setParamTeach03();
    /* 80A2C044 */ void setParamTeach04();
    /* 80A2C0FC */ void setParamTeach05();
    /* 80A2C190 */ void setParamTeach06();
    /* 80A2C1B0 */ void setParamTeach07();
    /* 80A2C1D0 */ void setAfterTalkMotion();
    /* 80A2C230 */ void srchActors();
    /* 80A2C234 */ void evtTalk();
    /* 80A2C318 */ void evtCutProc();
    /* 80A2C3FC */ void action();
    /* 80A2C484 */ void beforeMove();
    /* 80A2C4FC */ void afterMoved();
    /* 80A2C56C */ void setAttnPos();
    /* 80A2C77C */ void setCollision();
    /* 80A2C984 */ void setCollisionSword();
    /* 80A2CB30 */ void checkCollisionSword();
    /* 80A2CBEC */ void setCollisionTeach03();
    /* 80A2CC24 */ void setCollisionTeach04();
    /* 80A2CD00 */ void setCollisionTeach05();
    /* 80A2CD38 */ void setCollisionTeach06();
    /* 80A2CD58 */ void setCollisionTeach07();
    /* 80A2CD78 */ bool drawDbgInfo();
    /* 80A2CD80 */ void drawOtherMdl();
    /* 80A2CF9C */ void drawGhost();
    /* 80A2D060 */ void afterSetMotionAnm(int, int, f32, int);
    /* 80A2D198 */ void selectAction();
    /* 80A2D3A4 */ void teach03_selectAction();
    /* 80A2D3FC */ void teach04_selectAction();
    /* 80A2D4A0 */ void teach05_selectAction();
    /* 80A2D4F8 */ void teach06_selectAction();
    /* 80A2D600 */ void teach07_selectAction();
    /* 80A2D708 */ void chkAction(int (daNpc_Kn_c::*)(void*));
    /* 80A2D734 */ void setAction(int (daNpc_Kn_c::*)(void*));
    /* 80A2D7DC */ void wait(void*);
    /* 80A2D9C4 */ void talk(void*);
    /* 80A2DB94 */ void test(void*);
    /* 80A2DCB4 */ void setSceneChange(int);
    /* 80A2DD70 */ void ECut_noneEquipChangeTalk(int);
    /* 80A2DF84 */ void ECut_noneEquipChangeTalkStand(int);
    /* 80A2E26C */ void ECut_largeDamageTalk(int);
    /* 80A2E528 */ void teach02_start(void*);
    /* 80A2E664 */ void teach03_attackWait(void*);
    /* 80A2EC04 */ void teach04_attackWait(void*);
    /* 80A2EF8C */ void teach04_headBreakWait(void*);
    /* 80A2F24C */ void teach04_finishWait(void*);
    /* 80A2F600 */ void teach05_surpriseAttackWait(void*);
    /* 80A2FC80 */ void teach06_superJumpWait(void*);
    /* 80A30398 */ void teach06_divideMove(void*);
    /* 80A305A8 */ void teach06_waitDivide(void*);
    /* 80A30708 */ void teach06_superJumpWaitDivide(void*);
    /* 80A30D44 */ void teach06_superJumpedDivide(void*);
    /* 80A30EDC */ void teach06_warpDelete(void*);
    /* 80A31028 */ void teach07_superTurnAttackWait(void*);
    /* 80A315D0 */ void teach07_divideMove(void*);
    /* 80A317F8 */ void teach07_waitDivide(void*);
    /* 80A31958 */ void teach07_superTurnAttackWaitDivide(void*);
    /* 80A31E24 */ void teach07_superTurnAttackedDivide(void*);
    /* 80A31FBC */ void teach07_warpDelete(void*);
    /* 80A3203C */ void ECut_secondEncount(int);
    /* 80A324C4 */ void ECut_thirdSkillExplain(int);
    /* 80A32D30 */ void ECut_thirdSkillGet(int);
    /* 80A33358 */ void ECut_fourthSkillExplain(int);
    /* 80A33D80 */ void ECut_fourthSkillGet(int);
    /* 80A343A8 */ void ECut_fifthSkillExplain(int);
    /* 80A34DB8 */ void ECut_fifthSkillGet(int);
    /* 80A353E0 */ void ECut_sixthSkillExplain(int);
    /* 80A35D88 */ void ECut_sixthSkillGet(int);
    /* 80A363C0 */ void ECut_seventhSkillExplain(int);
    /* 80A36C20 */ void ECut_seventhSkillGet(int);
    /* 80A372D0 */ void setPrtcl();
    /* 80A37430 */ void setSlipPrtcl();
    /* 80A37558 */ void setLandingPrtcl();
    /* 80A37598 */ void calcMagicBallPos();
    /* 80A37670 */ void setSwordChargePtcl();
    /* 80A37B08 */ void calcSlip();
    /* 80A37D20 */ void calcSwordAttackMove(int);
    /* 80A3805C */ void setSe();
    /* 80A38520 */ void tgHitCallBack(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*);
    /* 80A38550 */ void getTrnsfrmAnmP(char const*, int);
    /* 80A3858C */ void getTrnsfrmKeyAnmP(char const*, int);
    /* 80A385C8 */ void getTexPtrnAnmP(char const*, int);
    /* 80A38604 */ void getTexSRTKeyAnmP(char const*, int);
    /* 80A38640 */ void setBckAnm(J3DAnmTransform*, f32, int, int, int, bool);
    /* 80A38684 */ void setMcaMorfAnm(J3DAnmTransformKey*, f32, f32, int, int, int);
    /* 80A3877C */ void setBtpAnm(J3DAnmTexPattern*, J3DModelData*, f32, int);
    /* 80A387BC */ void setBtkAnm(J3DAnmTextureSRTKey*, J3DModelData*, f32, int);
    /* 80A387FC */ void loadRes(s8 const*, char const**);
    /* 80A388B0 */ void deleteRes(s8 const*, char const**);
    /* 80A38930 */ void execute();
    /* 80A38BB8 */ void draw(int, int, f32, _GXColorS10*, f32, int, int, int);
    /* 80A38FAC */ void setEnvTevColor();
    /* 80A39008 */ void setRoomNo();
    /* 80A3904C */ void checkEndAnm(f32);
    /* 80A390F8 */ void checkEndAnm(J3DFrameCtrl*, f32);
    /* 80A3917C */ void playAllAnm();
    /* 80A3949C */ void ctrlBtk();
    /* 80A39558 */ void setMtx();
    /* 80A395DC */ void ctrlFaceMotion();
    /* 80A39684 */ void ctrlMotion();
    /* 80A39738 */ void ctrlMsgAnm(int*, int*, fopAc_ac_c*, int);
    /* 80A3989C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80A39BBC */ void evtProc();
    /* 80A39DBC */ void setFootPos();
    /* 80A39F84 */ void setFootPrtcl(cXyz*, f32);
    /* 80A3A254 */ bool checkCullDraw();
    /* 80A3A25C */ void twilight();
    /* 80A3A2A8 */ void evtOrder();
    /* 80A3A404 */ void evtChange();
    /* 80A3A504 */ void clrParam();
    /* 80A3A568 */ bool setFaceMotionAnm(int, bool);
    /* 80A3A7C0 */ bool setMotionAnm(int, f32, int);
    /* 80A3AA58 */ void setPos(cXyz);
    /* 80A3AAF0 */ void setAngle(s16);
    /* 80A3AB18 */ void chkActorInSight(fopAc_ac_c*, f32, s16);
    /* 80A3AC24 */ void chkPointInArea(cXyz, cXyz, f32, f32, f32, s16);
    /* 80A3ACD4 */ void chkPointInArea(cXyz, cXyz, cXyz, s16);
    /* 80A3AD50 */ void chkFindPlayer(int, s16);
    /* 80A3AF64 */ void srchPlayerActor();
    /* 80A3B000 */ void getAttnPos(fopAc_ac_c*);
    /* 80A3B074 */ void turn(s16, int, int);
    /* 80A3B220 */ void step(s16, int, int, int, int);
    /* 80A3B3E8 */ void initTalk(int, fopAc_ac_c**);
    /* 80A3B448 */ void talkProc(int*, int, fopAc_ac_c**, int);
    /* 80A3B5EC */ void setHitodamaPrtcl();
    /* 80A3B708 */ void decTmr();
    /* 80A3B720 */ void afterJntAnm(int);
    /* 80A3B79C */ bool evtEndProc();
    /* 80A3B7A4 */ bool checkChangeEvt();
    /* 80A3B7AC */ s32 getFootRJointNo();
    /* 80A3B7B4 */ s32 getFootLJointNo();
    /* 80A3B7BC */ bool chkXYItems();
    /* 80A3B7C4 */ bool afterSetFaceMotionAnm(int, int, f32, int);
    /* 80A3B7CC */ void getFaceMotionAnm(daNpcT_faceMotionAnmData_c);
    /* 80A3B7FC */ void getMotionAnm(daNpcT_motionAnmData_c);
    /* 80A3B82C */ daNpc_Kn_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                              daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                              daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                              daNpcT_evtData_c const*, char**);
    /* 80A3BD14 */ s32 getEyeballMaterialNo();
    /* 80A3BD1C */ bool getEyeballLMaterialNo();
    /* 80A3BD24 */ bool getEyeballRMaterialNo();
    /* 80A3C998 */ void setParamTeach01();
    /* 80A3CB14 */ void setCollisionTeach01();
    /* 80A3CBFC */ void teach01_selectAction();
    /* 80A3CCC0 */ void teach01_start(void*);
    /* 80A3CDFC */ void teach01_attackWait(void*);
    /* 80A3CF78 */ void teach01_swordAttackWait(void*);
    /* 80A3D32C */ void teach01_swordFinishWait(void*);
    /* 80A3D6D8 */ void ctrlWarp();
    /* 80A3DCEC */ void ECut_firstEncount(int);
    /* 80A3DEC4 */ void ECut_attackFailed(int);
    /* 80A3E550 */ void ECut_firstSkillGet(int);
    /* 80A3EB84 */ void setParamTeach02();
    /* 80A3EE38 */ void setCollisionTeach02();
    /* 80A3EF1C */ void teach02_selectAction();
    /* 80A3EFE0 */ void teach02_shieldBashWait(void*);
    /* 80A3F358 */ void teach02_finishWait(void*);
    /* 80A3F5A4 */ void teach02_shieldReflectWait(void*);
    /* 80A3F99C */ void ECut_secondSkillExplain(int);
    /* 80A3FFB4 */ void ECut_reflectExplain(int);
    /* 80A403B8 */ void ECut_secondSkillGet(int);

    static u8 const mCcDObjData[48];
    static u8 mCcDCyl[68];
    static u8 mCcDSph[64];
    static void* mCutNameList[21];
    static u8 mCutList[252];
    static u8 mFindActorPtrs[200];
    static u8 mFindCount[4];
    
private:
    /* 0x568 */ u8 field_0x568[0x1758 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Kn_c) == 0x1758);

class daNpc_Kn_Param_c {
public:
    /* 80A3C124 */ ~daNpc_Kn_Param_c();

    static u8 const m[180];
};

#endif /* D_A_NPC_KN_H */
