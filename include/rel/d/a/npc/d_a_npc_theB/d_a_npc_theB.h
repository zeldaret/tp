#ifndef D_A_NPC_THEB_H
#define D_A_NPC_THEB_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"
// #include "d/com/d_com_inf_game.h"
// #include "d/a/d_a_npc.h"

struct daNpcTheB_Param_c {
    /* 80B00D00 */ ~daNpcTheB_Param_c();

    static u8 const m[108];
};

struct daNpcF_c {
    struct daNpcF_anmPlayData {};

    /* 801522AC */ void draw(int, int, f32, _GXColorS10*, int);
    /* 8015276C */ void setMtx();
    /* 801527FC */ void setMtx2();
    /* 801528C8 */ void initialize();
    /* 80152B2C */ void getTrnsfrmKeyAnmP(char*, int);
    /* 80152B68 */ void getTexPtrnAnmP(char*, int);
    /* 80152BA4 */ void getTexSRTKeyAnmP(char*, int);
    /* 80152C1C */ void setMcaMorfAnm(J3DAnmTransformKey*, f32, f32, int, int, int);
    /* 80152C80 */ void setBckAnm(J3DAnmTransform*, f32, int, int, int, bool);
    /* 80152CC4 */ void setBtpAnm(J3DAnmTexPattern*, J3DModelData*, f32, int);
    /* 80152D04 */ void setBtkAnm(J3DAnmTextureSRTKey*, J3DModelData*, f32, int);
    /* 80152D84 */ void setEnvTevColor();
    /* 80152DE0 */ void setRoomNo();
    /* 80152F40 */ void playAllAnm();
    /* 80153150 */ void playExpressionAnm(daNpcF_c::daNpcF_anmPlayData***);
    /* 80153264 */ void playMotionAnm(daNpcF_c::daNpcF_anmPlayData***);
    /* 8015337C */ void setLookatMtx(int, int*, f32);
    /* 80153718 */ void ctrlMsgAnm(int&, int&, fopAc_ac_c*, int);
    /* 8015387C */ void orderEvent(int, char*, u16, u16, u8, u16);
    /* 80153D1C */ void initTalk(int, fopAc_ac_c**);
    /* 80153D84 */ void talkProc(int*, int, fopAc_ac_c**);
    /* 80154278 */ void getDistTableIdx(int, int);
    /* 801542A0 */ void getEvtAreaTagP(int, int);
    /* 801549E0 */ void chkFindPlayer2(int, s16);
    /* 80B00600 */ ~daNpcF_c();
    /* 80B0084C */ daNpcF_c();
    /* 80B00BC0 */ void adjustShapeAngle();
    /* 80B00BC4 */ void setCollisions();
    /* 80B00BC8 */ void drawOtherMdls();

    static u8 mCcDCyl[68];
};

struct daNpcF_Lookat_c {
    /* 80151038 */ void initialize();
    /* 801510B8 */ void setParam(f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, s16,
                                 cXyz*);
    /* 80151350 */ void calc(fopAc_ac_c*, f32 (*)[4], csXyz**, int, int, int);
    /* 80B004B0 */ ~daNpcF_Lookat_c();
};

struct daNpcF_ActorMngr_c {
    /* 801506B0 */ void initialize();
    /* 801506BC */ void entry(fopAc_ac_c*);
    /* 801506E0 */ void remove();
    /* 801506EC */ void getActorP();
    /* 80B0042C */ ~daNpcF_ActorMngr_c();
    /* 80B00474 */ daNpcF_ActorMngr_c();
};

struct J3DTexNoAnm {
    /* 80AFD0E8 */ ~J3DTexNoAnm();
    /* 80AFD130 */ J3DTexNoAnm();
    /* 80B003FC */ void calc(u16*) const;
};

struct J3DTexMtxAnm {
    /* 80AFD154 */ ~J3DTexMtxAnm();
    /* 80AFD190 */ J3DTexMtxAnm();
};

struct J3DTevKColorAnm {
    /* 80AFD040 */ ~J3DTevKColorAnm();
    /* 80AFD07C */ J3DTevKColorAnm();
};

struct J3DTevColorAnm {
    /* 80AFD094 */ ~J3DTevColorAnm();
    /* 80AFD0D0 */ J3DTevColorAnm();
};

struct J3DMatColorAnm {
    /* 80AFD1A8 */ ~J3DMatColorAnm();
    /* 80AFD1E4 */ J3DMatColorAnm();
};

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
    /* 80AFE1BC */ void setMotionAnm(int, f32);
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

#endif /* D_A_NPC_THEB_H */
