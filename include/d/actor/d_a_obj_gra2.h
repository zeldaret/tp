#ifndef D_A_OBJ_GRA2_H
#define D_A_OBJ_GRA2_H

#include "d/actor/d_a_npc.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObj_GrA_c
 * @brief Goron A
 *
 * @details
 *
 */

class daObj_GrA_Param_c {
public:
    /* 80C04B1C */ ~daObj_GrA_Param_c();

    struct Data {
        /* 0x00 */ f32 field_0x00;
        /* 0x04 */ f32 field_0x04;
        /* 0x08 */ f32 field_0x08;
        /* 0x0C */ f32 field_0x0c;
        /* 0x10 */ s16 field_0x10;
        /* 0x12 */ s16 field_0x12;
        /* 0x14 */ f32 field_0x14;
        /* 0x18 */ f32 field_0x18;
        /* 0x1C */ f32 field_0x1c;
        /* 0x20 */ f32 field_0x20;
        /* 0x24 */ f32 field_0x24;
        /* 0x28 */ f32 field_0x28;
        /* 0x2C */ f32 field_0x2c;
        /* 0x30 */ f32 field_0x30;
        /* 0x34 */ f32 field_0x34;
        /* 0x38 */ f32 field_0x38;
        /* 0x3C */ f32 field_0x3c;
        /* 0x40 */ f32 field_0x40;
        /* 0x44 */ f32 field_0x44;
        /* 0x48 */ f32 field_0x48;
        /* 0x4C */ f32 field_0x4c;
        /* 0x50 */ f32 field_0x50;
        /* 0x54 */ s16 field_0x54;
        /* 0x56 */ s16 field_0x56;
        /* 0x58 */ s16 field_0x58;
        /* 0x5A */ s16 field_0x5a;
        /* 0x5C */ s16 field_0x5c;
        /* 0x5E */ s16 field_0x5e;
        /* 0x60 */ f32 field_0x60;
        /* 0x64 */ f32 field_0x64;
        /* 0x68 */ s16 field_0x68;
        /* 0x6A */ s16 field_0x6a;
        /* 0x6C */ f32 field_0x6c;
        /* 0x70 */ f32 field_0x70;
        /* 0x74 */ f32 field_0x74;
        /* 0x78 */ f32 field_0x78;
        /* 0x7C */ f32 field_0x7c;
        /* 0x80 */ f32 field_0x80;
        /* 0x84 */ f32 field_0x84;
        /* 0x88 */ s16 field_0x88;
        /* 0x8A */ s16 field_0x8a;
        /* 0x8C */ f32 field_0x8c;
        /* 0x90 */ f32 field_0x90;
        /* 0x94 */ f32 field_0x94;
        /* 0x98 */ s16 field_0x98;
        /* 0x9A */ s16 field_0x9a;
        /* 0x9C */ f32 field_0x9c;
        /* 0xA0 */ f32 field_0xa0;
        /* 0xA4 */ s16 field_0xa4;
        /* 0xA6 */ s16 field_0xa6;
        /* 0xA8 */ f32 field_0xa8;
        /* 0xAC */ s16 field_0xac;
        /* 0xAE */ s16 field_0xae;
        /* 0xB0 */ s16 field_0xb0;
        /* 0xB2 */ s16 field_0xb2;
        /* 0xB4 */ s16 field_0xb4;
        /* 0xB6 */ s16 field_0xb6;
        /* 0xB8 */ f32 field_0xb8;
        /* 0xBC */ f32 field_0xbc;
    };
    static const Data m;
};

 class daObj_GrA_c : public daBaseNpc_moveBgActor_c {
public:
    class daObj_GrA_prtclMngr_c {
    public:
        /* 80C04E14 */ ~daObj_GrA_prtclMngr_c();
        /* 80C04E50 */ daObj_GrA_prtclMngr_c();

        /* 0x00 */ u8 field_0x0[0x5c - 0x0];
    };

    /* 80BFFF58 */ static void rideCallBack(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80BFFF70 */ daObj_GrA_c();
    /* 80C0011C */ ~daObj_GrA_c();
    /* 80C003CC */ cPhs__Step create();
    /* 80C00614 */ int CreateHeap();
    /* 80C00790 */ int Delete();
    /* 80C00804 */ int Execute(Mtx**);
    /* 80C00A44 */ int Draw();
    /* 80C00ACC */ int jointCtrl(J3DJoint*, J3DModel*);
    /* 80C00D5C */ const char* getResName();
    /* 80C00D74 */ u8 getMode();
    /* 80C00DF8 */ u32 getPathNo();
    /* 80C00E04 */ u32 getTagNo();
    /* 80C00E10 */ u32 getJumpType();
    /* 80C00E1C */ BOOL isDelete();
    /* 80C00EFC */ void restart();
    /* 80C010D4 */ void init();
    /* 80C013B0 */ void setBaseAnm(int, f32);
    /* 80C014F4 */ void setFaceAnm(int, bool, f32);
    /* 80C01698 */ void setFaceBtp(int);
    /* 80C0178C */ void setBaseMotion(int, f32);
    /* 80C017AC */ void setFaceMotion(int, f32);
    /* 80C017F0 */ void calcMotion();
    /* 80C018C0 */ void checkProcess(int (daObj_GrA_c::*)(void*));
    /* 80C018F4 */ int setProcess(int (daObj_GrA_c::*)(void*));
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
    /* 80C031E4 */ int wait(void*);
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

    bool checkNpcObjGra() { return mMode == 1; }
    void setCrazyDash() { field_0xa48 |= 4; }
    void setCrazyCatch() { field_0xa48 |= 2; }
    void setCrazyThrowLeft() { field_0xa48 |= 8; }
    void setCrazyThrowRight() { field_0xa48 |= 0x10; }

    static u8 mBaseMotionList[264];
    static u8 mFaceMotionList[168];

    bool isFirstGra() { return field_0x1fe8 == 0; }

private:
    /* 0x0A48 */ u16 field_0xa48;
    /* 0x0A4A */ u8 field_0xa4a[0xa4c - 0xa4a];
    /* 0x0A4C */ daObj_GrA_Param_c* field_0xa4c;
    /* 0x0A50 */ u8 field_0xa50[0xa5c - 0xa50];
    /* 0x0A5C */ request_of_phase_process_class* field_0xa5c[8];
    /* 0x0A7C */ u8 field_0xa7c[0xa7e - 0xa7c];
    /* 0x0A7E */ u8 mMode;
    /* 0x0A7F */ u8 field_0xa7f;
    /* 0x0A80 */ u8 field_0xa80[0xa8c - 0xa80];
    /* 0x0A8C */ u8 field_0xa8c;
    /* 0x0A8D */ u8 field_0xa8d[0xa94 - 0xa8d];
    /* 0x0A94 */ f32 field_0xa94;
    /* 0x0A98 */ f32 field_0xa98;
    /* 0x0A9C */ int field_0xa9c;
    /* 0x0AA0 */ int field_0xaa0;
    /* 0x0AA4 */ u8 field_0xaa4[0xaac - 0xaa4];
    /* 0x0AAC */ int field_0xaac;
    /* 0x0AB0 */ daBaseNpc_acMngr_c field_0xab0;
    /* 0x0AB8 */ daObj_GrA_prtclMngr_c field_0xab8[6];
    /* 0x0CE0 */ dCcD_Sph field_0xce0[2];
    /* 0x0F50 */ dCcD_Cyl field_0xf50;
    /* 0x108C */ u8 field_0x108c[0x109c - 0x108c];
    /* 0x109C */ int field_0x109c;
    /* 0x10A0 */ u8 field_0x10a0[0x10c4 - 0x10a0];
    /* 0x10C4 */ int field_0x10c4;
    /* 0x10C8 */ cBgS_GndChk field_0x10c8[5];
    /* 0x11F4 */ dBgS_LinkLinChk field_0x11f4[5];
    /* 0x1424 */ cXyz field_0x1424[5];
    /* 0x1460 */ cXyz field_0x1460[5];
    /* 0x149C */ u8 field_0x149c[0x14b4 - 0x149c];
    /* 0x14B4 */ cXyz field_0x14b4[5];
    /* 0x14F0 */ u8 field_0x14f0[0x14f8 - 0x14f0];
    /* 0x14F8 */ daBaseNpc_acMngr_c field_0x1f48;
    /* 0x1500 */ u8 field_0x1500[0x1520 - 0x1500];
    /* 0x1520 */ int field_0x1520;
    /* 0x1524 */ u8 field_0x1524[0x1528 - 0x1524];
    /* 0x1528 */ daBaseNpc_path_c field_0x1528;
    /* 0x1F4C */ dBgS_LinkLinChk field_0x1f4c;
    /* 0x1FBC */ int field_0x1fbc;
    /* 0x1FC0 */ u8 field_0x1fc0[0x1fc4 - 0x1fc0];
    /* 0x1FC4 */ u8 field_0x1fc4;
    /* 0x1FC5 */ u8 field_0x1fc5[0x1fd8 - 0x1fc5];
    /* 0x1FD8 */ s16 field_0x1fd8;
    /* 0x1FDA */ u8 field_0x1fda[0x1fdc - 0x1fda];
    /* 0x1FDC */ int field_0x1fdc;
    /* 0x1FE0 */ u8 field_0x1fe0[0x1fe4 - 0x1fe0];
    /* 0x1FE4 */ int field_0x1fe4;
    /* 0x1FE8 */ u8 field_0x1fe8;
    /* 0x1FE9 */ u8 field_0x1fe9;
    /* 0x1FEA */ u8 field_0x1fea[0x1fec - 0x1fea];
    /* 0x1FEC */ int field_0x1fec;
    /* 0x1FF0 */ int field_0x1ff0;
    /* 0x1FF4 */ u8 field_0x1ff4;
    /* 0x1FF5 */ u8 field_0x1ff5[0x2000 - 0x1ff5];
    /* 0x2000 */ int field_0x2000;
    /* 0x2004 */ u8 field_0x2004;
    /* 0x2005 */ u8 field_0x2005;
    /* 0x2006 */ u8 field_0x2006[0x2008 - 0x2006];
    /* 0x2008 */ f32 field_0x2008;
    /* 0x200C */ u16 field_0x200c;
    /* 0x200E */ u8 field_0x200e[0x2014 - 0x200e];
    /* 0x2014 */ u8 field_0x2014;
    /* 0x2015 */ u8 field_0x2015[0x201c - 0x2015];
    /* 0x201C */ u8 field_0x201c;
    /* 0x201D */ u8 field_0x201d;
    /* 0x201E */ u8 field_0x201e[0x2020 - 0x201e];
    /* 0x2020 */ int field_0x2020[3];
    /* 0x202C */ u8 field_0x202c[0x2030 - 0x202c];
    /* 0x2030 */ u8 field_0x2030;
    /* 0x2031 */ u8 field_0x2031;
    /* 0x2032 */ u8 field_0x2032;
    /* 0x2033 */ u8 field_0x2033[0x2048 - 0x2033];
    /* 0x2048 */ s16 field_0x2048;
    /* 0x204A */ u8 field_0x204a[0x204c - 0x204a];
    /* 0x204C */ daBaseNpc_acMngr_c field_0x204c;
    /* 0x2054 */ s16 field_0x2054;
    /* 0x2056 */ s16 field_0x2056;
    /* 0x2058 */ u8 field_0x2058[0x209c - 0x2058];
    /* 0x209C */ int field_0x209c;
    /* 0x20A0 */ u8 field_0x20a0[0x20a4 - 0x20a0];
};

STATIC_ASSERT(sizeof(daObj_GrA_c) == 0x20a4);

#endif /* D_A_OBJ_GRA2_H */
