#ifndef D_A_OBJ_GRA2_H
#define D_A_OBJ_GRA2_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObj_GrA_c
 * @brief Goron A
 *
 * @details
 *
 */
class daObj_GrA_c : public fopAc_ac_c {
public:
    class daObj_GrA_prtclMngr_c {
    public:
        /* 80C04E14 */ ~daObj_GrA_prtclMngr_c();
        /* 80C04E50 */ daObj_GrA_prtclMngr_c();
    };

    /* 80BFFF58 */ void rideCallBack(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80BFFF70 */ daObj_GrA_c();
    /* 80C0011C */ ~daObj_GrA_c();
    /* 80C003CC */ void create();
    /* 80C00614 */ void CreateHeap();
    /* 80C00790 */ void Delete();
    /* 80C00804 */ void Execute(f32 (**)[3][4]);
    /* 80C00A44 */ void Draw();
    /* 80C00ACC */ void jointCtrl(J3DJoint*, J3DModel*);
    /* 80C00D5C */ void getResName();
    /* 80C00D74 */ void getMode();
    /* 80C00DF8 */ void getPathNo();
    /* 80C00E04 */ void getTagNo();
    /* 80C00E10 */ void getJumpType();
    /* 80C00E1C */ void isDelete();
    /* 80C00EFC */ void restart();
    /* 80C010D4 */ void init();
    /* 80C013B0 */ void setBaseAnm(int, f32);
    /* 80C014F4 */ void setFaceAnm(int, bool, f32);
    /* 80C01698 */ void setFaceBtp(int);
    /* 80C0178C */ void setBaseMotion(int, f32);
    /* 80C017AC */ void setFaceMotion(int, f32);
    /* 80C017F0 */ void calcMotion();
    /* 80C018C0 */ void checkProcess(int (daObj_GrA_c::*)(void*));
    /* 80C018F4 */ void setProcess(int (daObj_GrA_c::*)(void*));
    /* 80C019B8 */ void setParam();
    /* 80C01C18 */ void checkEvent();
    /* 80C01D7C */ void mainProc();
    /* 80C01FE4 */ void adjustShapeAngle();
    /* 80C01FE8 */ void setMtx(int);
    /* 80C02614 */ void setCollisions();
    /* 80C02970 */ void setAttnPos();
    /* 80C02A5C */ void drawOtherMdls();
    /* 80C02A60 */ bool dbgDraw();
    /* 80C02A68 */ void ppMoveInit();
    /* 80C02AD4 */ void setLookMode(int);
    /* 80C02AE8 */ void lookat();
    /* 80C0308C */ void hitChk();
    /* 80C031E4 */ void wait(void*);
    /* 80C0335C */ void talk(void*);
    /* 80C035B8 */ void ctrlMsgAnm(int&, int&, fopAc_ac_c*);
    /* 80C03720 */ void checkTagGraSub(fopAc_ac_c*);
    /* 80C03764 */ void fallAbyssCheck();
    /* 80C03830 */ void setPrtcl();
    /* 80C03B14 */ void base000(int);
    /* 80C03B48 */ void base001(int);
    /* 80C03B7C */ void base003(int);
    /* 80C03C1C */ void base004(int);
    /* 80C03CBC */ void base005(int);
    /* 80C03D54 */ void base006(int);
    /* 80C03D88 */ void base007(int);
    /* 80C03DF0 */ void base008(int);
    /* 80C03E74 */ void base009(int);
    /* 80C03F14 */ void base010(int);
    /* 80C03FC0 */ void base013(int);
    /* 80C04118 */ void base016(int);
    /* 80C04180 */ void base017(int);
    /* 80C041E8 */ void base018(int);
    /* 80C04260 */ void base019(int);
    /* 80C042D4 */ void base020(int);
    /* 80C04308 */ void base021(int);
    /* 80C0433C */ void base022(int);
    /* 80C04370 */ void base023(int);
    /* 80C043A4 */ void base024(int);
    /* 80C043D8 */ void base025(int);
    /* 80C0440C */ void base026(int);
    /* 80C04440 */ void face000(int);
    /* 80C04478 */ void face003(int);
    /* 80C04518 */ void face004(int);
    /* 80C045B8 */ void face005(int);
    /* 80C045F0 */ void face006(int);
    /* 80C04628 */ void face007(int);
    /* 80C04660 */ void face008(int);
    /* 80C04700 */ void face009(int);
    /* 80C047A0 */ void face010(int);
    /* 80C047D8 */ void face011(int);
    /* 80C04810 */ void face012(int);
    /* 80C04848 */ void face016(int);
    /* 80C04880 */ void face017(int);
    /* 80C048B8 */ void face999(int);
    /* 80C048F8 */ void evtcutTalk(int, int);
    /* 80C04A0C */ void setFaceTalkAfter();
    /* 80C0536C */ void getSrchCircleR();
    /* 80C053C4 */ void standWait(void*);
    /* 80C05920 */ void walk(void*);
    /* 80C05F64 */ void defence(void*);
    /* 80C061F4 */ void toStone(void*);
    /* 80C067D8 */ void step(void*);
    /* 80C06CDC */ void rollReturn(void*);
    /* 80C0780C */ void soldierDemoSkip();
    /* 80C078A8 */ void soldierDemo(void*);
    /* 80C07C40 */ void getSrchLinkR();
    /* 80C07C98 */ void getSrchGraR();
    /* 80C07CF0 */ void getSpeed();
    /* 80C07D38 */ void standRoll(void*);
    /* 80C083F0 */ void rollDemo(void*);
    /* 80C08804 */ void rollAttack(void*);
    /* 80C09298 */ void rollAttacked(void*);
    /* 80C09918 */ void rollEscape(void*);
    /* 80C09F08 */ void rollLanding();
    /* 80C0A018 */ void thrown(void*);
    /* 80C0A120 */ void demo_camera();
    /* 80C0AF94 */ void rollAttackedDemo();
    /* 80C0B9AC */ void graThrowDemo();
    /* 80C0BD90 */ void setCarryStatus();
    /* 80C0BE5C */ void checkThrow();
    /* 80C0BF34 */ void calcCatchPos(f32, int);
    /* 80C0C348 */ void initCrazyBeforeCatch(int);
    /* 80C0C364 */ void executeCrazyBeforeCatch();
    /* 80C0C3E0 */ void initCrazyCatch(int);
    /* 80C0C478 */ void executeCrazyCatch();
    /* 80C0C5F0 */ void initCrazyThrow(int);
    /* 80C0C690 */ void executeCrazyThrow();
    /* 80C0C84C */ void initCrazyAttack();
    /* 80C0CA64 */ void executeCrazyJumping();
    /* 80C0CDBC */ void modeChangeCheck();
    /* 80C0CF98 */ void checkGraSub(fopAc_ac_c*);
    /* 80C0D000 */ void waitDemo(void*);
    /* 80C0D2FC */ void skipDemoGra();
    /* 80C0D3E0 */ void startDemo(void*);
    /* 80C0EFC4 */ void turn(s16, f32, int);
    /* 80C0F17C */ void turn_step(s16, int, int, int);
    /* 80C0F330 */ void chkFindPlayer2(int, s16);
    /* 80C0F668 */ void chkPointInArea(cXyz, cXyz, cXyz, s16);
    /* 80C0F5A4 */ void chkPointInArea(cXyz, cXyz, f32, f32, f32, s16);
    /* 80C0F6E0 */ void chkActorInSight2(fopAc_ac_c*, f32, s16);
    /* 80C0F7EC */ void getAttentionPos(fopAc_ac_c*);
    /* 80C0F860 */ void standWaitJump(void*);

    static u8 mBaseMotionList[264];
    static u8 mFaceMotionList[168];

private:
    /* 0x568 */ u8 field_0x568[0x20a4 - 0x568];
};

STATIC_ASSERT(sizeof(daObj_GrA_c) == 0x20a4);

class daObj_GrA_Param_c {
public:
    /* 80C04B1C */ ~daObj_GrA_Param_c();

    static u8 const m[192];
};

#endif /* D_A_OBJ_GRA2_H */
