#ifndef M_RE_CONTROLLER_PAD_H
#define M_RE_CONTROLLER_PAD_H

#include <revolution/mtx.h>
#include <revolution/kpad.h>

class mReCPd {
public:
    struct Pad {
        struct Acc {
            void clean();
            void changeStts(u32, bool);
            void calcSwingVec();
            void calcSttsRem();
            void calcSttsFs();

            /* 0x000 */ Vec field_0x0[120];
            /* 0x5A0 */ Vec field_0x5a0[120];
            /* 0xB40 */ int field_0xb40;
            /* 0xB44 */ int m_swing;
            /* 0xB48 */ Vec2 m_swingVec;
            /* 0xB50 */ u8 field_0xb50;
            /* 0xB51 */ u8 field_0xb51;
            /* 0xB54 */ f32 field_0xb54;
            /* 0xB58 */ u8 field_0xB58[0xB68 - 0xB58];
            /* 0xB68 */ Mtx field_0xb68;
            /* 0xB98 */ f32 field_0xb98;
            /* 0xB9C */ int field_0xb9c;
            /* 0xBA0 */ f32 field_0xba0;
            /* 0xBA4 */ f32 field_0xba4;
            /* 0xBA8 */ u8 field_0xBA8[0xBAC - 0xBA8];
            /* 0xBAC */ int field_0xbac;
            /* 0xBB0 */ f32 field_0xbb0;
            /* 0xBB4 */ f32 field_0xbb4;
            /* 0xBB8 */ u8 field_0xBB8[0xBBC - 0xBB8];
            /* 0xBBC */ int field_0xbbc;
            /* 0xBC0 */ int field_0xbc0;
        };

        void clean();
        void cleanOneTime();
        void copyRemAcc();
        void copyFSAcc();
        void cleanTrig();
        void cleanHold();
        void cleanRelease();
        void clearUpDown();
        void calcDpdBox(Vec2*, Vec2*, f32, f32);
        void calcDpdOld();
        void calcDpd2DPos();
        void calcDpdRatioPos();
        void calcDpdPlayCirPos();
        void calcDpdPlayBoxPos();

        /* 0x0000 */ u32 field_0x0;
        /* 0x0004 */ KPADStatus field_0x4[10];
        /* 0x0554 */ int field_0x554;
        /* 0x0558 */ KPADStatus field_0x558;
        /* 0x05E0 */ Acc m_remAcc;
        /* 0x11A4 */ Acc m_FSAcc;
        /* 0x1D68 */ f32 m_stick3D;
        /* 0x1D6C */ f32 field_0x1d6c;
        /* 0x1D70 */ f32 m_stickValue;
        /* 0x1D74 */ s16 m_stickAngle;
        /* 0x1D76 */ s16 m_stick3DAngle;
        /* 0x1D78 */ Vec2 field_0x1d78;
        /* 0x1D80 */ Vec2 field_0x1d80;
        /* 0x1D88 */ f32 field_0x1d88;
        /* 0x1D8C */ f32 field_0x1d8c;
        /* 0x1D90 */ f32 field_0x1d90;
        /* 0x1D94 */ f32 field_0x1d94;
        /* 0x1D98 */ f32 field_0x1d98;
        /* 0x1D9C */ f32 field_0x1d9c;
        /* 0x1DA0 */ f32 field_0x1da0;
        /* 0x1DA4 */ f32 field_0x1da4;
        /* 0x1DA8 */ Vec2 field_0x1da8;
        /* 0x1DB0 */ Vec2 field_0x1db0;
        /* 0x1DB8 */ f32 field_0x1db8;
        /* 0x1DBC */ f32 field_0x1dbc;
        /* 0x1DC0 */ f32 field_0x1dc0;
        /* 0x1DC4 */ int field_0x1dc4;
        /* 0x1DC8 */ int field_0x1dc8;
        /* 0x1DCC */ int m_swingBlock;
        /* 0x1DD0 */ int field_0x1dd0;
        /* 0x1DD4 */ u8 field_0x1dd4;
        /* 0x1DD8 */ int field_0x1dd8;
        /* 0x1DDC */ u8 field_0x1ddc;
        /* 0x1DDD */ u8 field_0x1ddd;
        /* 0x1DE0 */ int field_0x1de0;
        /* 0x1DE4 */ int field_0x1de4;
        /* 0x1DE8 */ u8 field_0x1de8;
        /* 0x1DEC */ int field_0x1dec;
        /* 0x1DF0 */ u8 field_0x1df0;
        /* 0x1DF4 */ int field_0x1df4;
        /* 0x1DF8 */ u32 field_0x1df8;
        /* 0x1DFC */ u32 field_0x1dfc;
        /* 0x1E00 */ int field_0x1e00;
        /* 0x1E04 */ u8 field_0x1e04;
        /* 0x1E05 */ u8 field_0x1e05;
    };

    struct motorWave_t {
        u8* field_0x0;
        u16 field_0x4;
        u16 field_0x6;
        u8 field_0x8;
    };

    static void enableDpd(u32);
    static void disableDpd(u32);
    static void onConnect(u32);
    static void setExtensionCallback();
    static void onGetInfoAsync(u32);
    static void create();
    static void startMoterWave(motorWave_t*, u8*, bool);
    static void startMoterWave(int, u8*, bool);
    static void stopMoterWave(motorWave_t*);
    static void stopMoterWave(int);
    static void updateMoterWave();
    static void stopMoter();
    static void getLowBat(u32);
    static void setLowBat(u32, int);
    static void onLowBatChk(u32);
    static void procNoData(u32);
    static void read();
    static void calibrateDist(int);
    static void getDpd2DPos(u32);
    static void getDpdRatioPos(u32);
    static void getDpdRatioBoxPos(u32);
    static void chkDpdOk(u32);
    static void chkDpdValid(u32);
    static void chkDpdPosIn(u32);
    static void getKPADAcc(u32, Vec*, int);
    static void getAngleXy(u32);
    static void getAngleZy(u32);
    static void getKPADAccValue(u32, int);
    static void getKPADAccValueMax(u32);
    static void getKPADAccSpeed(u32, int);
    static void getKPADAccSpeedMax(u32);
    static void getKPADFsAccValue(u32, int);
    static void getKPADFsAccValueMax(u32);
    static s16 getFSStickAngle3DRev(u32);
    static void calcUnderVec(Pad::Acc*, f32);

    static u32 getHoldB(u32);
    static u32 getHoldMinus(u32);
    static u32 getHoldPlus(u32);
    static u32 getHoldZ1(u32);
    static u32 getTrigB(u32);
    static u32 getTrigMinus(u32);
    static u32 getTrigHome(u32);
    static u32 getTrigPlus(u32);
    static u32 getTrigZ1(u32);
    static u32 chkSwingBlock(u32);
    static u32 getTrigSwing(u32);
    static Vec2& getSwingVec(u32);
    static u32 chkSimpleProbe(u32);
    static BOOL chkDevTypeValid(u32);
    static u32 getFSTrigSwing(u32);
    
    static void plusCalValue();
    static void minusCalValue();

    // made up, copying concepts from m_Do_controller_pad
    static WPADInfo& getPadInfo(u32 i_pad) { return m_pad_info[i_pad]; }
    static Pad& getPad(u32 i_pad) { return m_pad[i_pad]; }
    static u32 getTrig(u32 i_pad) { return getPad(i_pad).field_0x4[0].trig; }
    static u32 getHold(u32 i_pad) { return getPad(i_pad).field_0x4[0].hold; }

    static u32 getHoldA(u32 i_pad) { return getHold(i_pad) & WPAD_BUTTON_A; }
    static u32 getHoldRight(u32 i_pad) { return getHold(i_pad) & WPAD_BUTTON_RIGHT; }
    static u32 getHoldLeft(u32 i_pad) { return getHold(i_pad) & WPAD_BUTTON_LEFT; }
    static u32 getHoldUp(u32 i_pad) { return getHold(i_pad) & WPAD_BUTTON_UP; }
    static u32 getTrigA(u32 i_pad) { return getTrig(i_pad) & WPAD_BUTTON_A; }
    static u32 getTrigRight(u32 i_pad) { return getTrig(i_pad) & WPAD_BUTTON_RIGHT; }
    static u32 getTrigLeft(u32 i_pad) { return getTrig(i_pad) & WPAD_BUTTON_LEFT; }

    static u32 getTrigUp(u32 i_pad) { return getTrig(i_pad) & WPAD_BUTTON_UP; }
    static u32 getTrigStart(u32 i_pad) { return getTrig(i_pad) & WPAD_BUTTON_PLUS; }

    static WPADInfo m_pad_info[4];
    static Pad m_pad[4];
    static int m_cal_value;
};

#endif /* M_RE_CONTROLLER_PAD_H */
