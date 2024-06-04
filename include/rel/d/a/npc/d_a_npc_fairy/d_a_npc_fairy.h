#ifndef D_A_NPC_FAIRY_H
#define D_A_NPC_FAIRY_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Fairy_c
 * @brief Great Fairy
 *
 * @details
 *
 */
class daNpc_Fairy_c : public fopAc_ac_c {
public:
    /* 809B228C */ ~daNpc_Fairy_c();
    /* 809B2430 */ void Create();
    /* 809B26E8 */ void CreateHeap();
    /* 809B2B44 */ void setAnmData();
    /* 809B2C20 */ void setMotionAnm(int, f32, int);
    /* 809B2E78 */ void afterSetMotionAnm(int, int, f32, int);
    /* 809B2EFC */ void Delete();
    /* 809B2F30 */ void Execute();
    /* 809B2F8C */ void Draw();
    /* 809B3034 */ void drawOtherMdl();
    /* 809B3074 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809B3094 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809B30EC */ bool isDelete();
    /* 809B30F4 */ void reset();
    /* 809B32C4 */ void initStatus();
    /* 809B32D0 */ void afterJntAnm(int);
    /* 809B335C */ void setParam();
    /* 809B349C */ bool checkChangeEvt();
    /* 809B34A4 */ void setAfterTalkMotion();
    /* 809B3520 */ void srchActors();
    /* 809B3524 */ void evtTalk();
    /* 809B3630 */ void evtCutProc();
    /* 809B36F8 */ void evtEndProc();
    /* 809B379C */ void action();
    /* 809B384C */ void ptcl_water();
    /* 809B38E8 */ void ptcl_sprit();
    /* 809B39FC */ void _to_FairyField();
    /* 809B3AB0 */ void chk_tempbit();
    /* 809B3B20 */ void beforeMove();
    /* 809B3B98 */ void afterMoved();
    /* 809B3C64 */ void setAttnPos();
    /* 809B3EA0 */ void setCollision();
    /* 809B3FD8 */ bool drawDbgInfo();
    /* 809B3FE0 */ void setAction(int (daNpc_Fairy_c::*)(int), int);
    /* 809B4090 */ void wait(int);
    /* 809B4360 */ void talk(int);
    /* 809B4450 */ void AppearDemoCall();
    /* 809B4588 */ void ReturnDemoCall();
    /* 809B45BC */ void PresentDemoCall();
    /* 809B464C */ void cutAppear_10F_01(int);
    /* 809B46E0 */ void _cutAppear_10F_01_Init(int const&);
    /* 809B48C4 */ void _cutAppear_10F_01_Main(int const&);
    /* 809B4A44 */ void cutAppear_10F_02(int);
    /* 809B4AD8 */ void _cutAppear_10F_02_Init(int const&);
    /* 809B4BF8 */ void _cutAppear_10F_02_Main(int const&);
    /* 809B4CC0 */ void cutAppear_20F_01(int);
    /* 809B4D54 */ void _cutAppear_20F_01_Init(int const&);
    /* 809B4EB4 */ void _cutAppear_20F_01_Main(int const&);
    /* 809B5000 */ void cutAppear_20F_02(int);
    /* 809B5094 */ void _cutAppear_20F_02_Init(int const&);
    /* 809B51F4 */ void _cutAppear_20F_02_Main(int const&);
    /* 809B5340 */ void cutAppear_30F_01(int);
    /* 809B53D4 */ void _cutAppear_30F_01_Init(int const&);
    /* 809B54F4 */ void _cutAppear_30F_01_Main(int const&);
    /* 809B55BC */ void cutAppear_30F_02(int);
    /* 809B5650 */ void _cutAppear_30F_02_Init(int const&);
    /* 809B5770 */ void _cutAppear_30F_02_Main(int const&);
    /* 809B5838 */ void cutAppear_40F_01(int);
    /* 809B58CC */ void _cutAppear_40F_01_Init(int const&);
    /* 809B59EC */ void _cutAppear_40F_01_Main(int const&);
    /* 809B5AB4 */ void cutAppear_40F_02(int);
    /* 809B5B48 */ void _cutAppear_40F_02_Init(int const&);
    /* 809B5C68 */ void _cutAppear_40F_02_Main(int const&);
    /* 809B5D30 */ void cutAppear_50F_01(int);
    /* 809B5E00 */ void _cutAppear_50F_01_Init(int const&, int const&);
    /* 809B6084 */ void _cutAppear_50F_01_Main(int const&, int const&);
    /* 809B631C */ void cutAppear_50F_02(int);
    /* 809B63EC */ void _cutAppear_50F_02_Init(int const&, int const&);
    /* 809B662C */ void _cutAppear_50F_02_Main(int const&, int const&);
    /* 809B6830 */ void cutAppear_50F_03(int);
    /* 809B6900 */ void _cutAppear_50F_03_Init(int const&, int const&);
    /* 809B6ADC */ void _cutAppear_50F_03_Main(int const&, int const&);
    /* 809B6C30 */ void cutAppear_50F_04(int);
    /* 809B6D00 */ void _cutAppear_50F_04_Init(int const&, int const&);
    /* 809B6F40 */ void _cutAppear_50F_04_Main(int const&, int const&);
    /* 809B7168 */ void cutAppear_50F_05(int);
    /* 809B7238 */ void _cutAppear_50F_05_Init(int const&, int const&);
    /* 809B74AC */ void _cutAppear_50F_05_Main(int const&, int const&);
    /* 809B7718 */ void cutSelect_Return1(int);
    /* 809B77AC */ void _cutSelect_Return1_Init(int const&);
    /* 809B78F0 */ void _cutSelect_Return1_Main(int const&);
    /* 809B79A4 */ void cutSelect_Return2(int);
    /* 809B7A38 */ void _cutSelect_Return2_Init(int const&);
    /* 809B7A9C */ void _cutSelect_Return2_Main(int const&);
    /* 809B7BA4 */ void cutSelect_Return3(int);
    /* 809B7C38 */ void _cutSelect_Return3_Init(int const&);
    /* 809B7D7C */ void _cutSelect_Return3_Main(int const&);
    /* 809B7E30 */ void cutReturnCancel(int);
    /* 809B7EC4 */ bool _cutReturnCancel_Init(int const&);
    /* 809B7ECC */ bool _cutReturnCancel_Main(int const&);
    /* 809B9054 */ daNpc_Fairy_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 809B9238 */ bool getEyeballMaterialNo();
    /* 809B9240 */ s32 getHeadJointNo();
    /* 809B9248 */ s32 getNeckJointNo();
    /* 809B9250 */ bool getBackboneJointNo();
    /* 809B9258 */ void checkChangeJoint(int);
    /* 809B9268 */ void checkRemoveJoint(int);

    static void* mCutNameList[18];
    static u8 mCutList[216];
private:
    /* 0x568 */ u8 field_0x568[0x10c8 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Fairy_c) == 0x10c8);

class daNpc_Fairy_Param_c {
public:
    /* 809B9278 */ ~daNpc_Fairy_Param_c();

    static u8 const m[148];
};

class _Fairy_Feather_c : public fopAc_ac_c {
public:
    /* 809B1B0C */ void create();
    /* 809B1BC0 */ void loadModel();
    /* 809B1CE4 */ void setAnm(int);
    /* 809B1DEC */ void setBrk(int);
    /* 809B1EA8 */ void setBtk(int);
    /* 809B1F64 */ bool ctrlJointCallBack(J3DJoint*, int);
    /* 809B1F6C */ void connect(daNpc_Fairy_c*);
    /* 809B1FD4 */ void draw(daNpc_Fairy_c*);
};


#endif /* D_A_NPC_FAIRY_H */
