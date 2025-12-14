#ifndef RVL_SDK_HBM_BASE_INTERNAL_H
#define RVL_SDK_HBM_BASE_INTERNAL_H

#include <revolution/types.h>

#include "HBMGUIManager.h"

#include "nw4hbm/lyt/drawInfo.h"

#include <revolution/axfx.h>
#include <revolution/hbm.h>
#include <revolution/wpad.h>

// context declarations
namespace homebutton { class Controller; }
namespace homebutton { class GroupAnmController; }
namespace homebutton { class RemoteSpk; }
namespace nw4hbm { namespace lyt { class ArcResourceAccessor; }}
namespace nw4hbm { namespace lyt { class Layout; }}
namespace nw4hbm { namespace lyt { class Pane; }}

namespace homebutton {
    // forward declarations
    class HomeButton;

    class HomeButtonEventHandler : public gui::EventHandler {
        // methods
    public:
        // cdtors
        HomeButtonEventHandler(HomeButton* pHomeButton) : mpHomeButton(pHomeButton) {}
        /* ~HomeButtonEventHandler() = default; */  // NOTE: Not virtual

        // virtual function ordering
        // vtable EventHandler
        virtual void onEvent(u32 uID, u32 uEvent, void* pData);

        // methods
        HomeButton* getHomeButton() { return mpHomeButton; }

        // members
    private:
        /* base EventHandler */    // size 0x08, offset 0x00
        HomeButton* mpHomeButton;  // size 0x04, offset 0x08
    };  // size 0x0c

    class HomeButton {
        // enums
    private:
        // As mostly seen in the calc() function
        enum State {
            State0 = 0,
            State1 = 1,
            State2 = 2,
            State3 = 3,
            State4 = 4,
            State5 = 5,
            State6 = 6,
            State7 = 7,
            State8 = 8,
            State9 = 9,
            State10 = 10,
            State11 = 11,
            State12 = 12,
            State13 = 13,
            State14 = 14,
            State15 = 15,
            State16 = 16,
            State17 = 17,
            State18 = 18,
            State19 = 19
        };

        // nested classes
    private:
        class BlackFader {
            // enums
        public:
            enum State { StateNone, StateForward, StateBackward };

            // methods
        public:
            // cdtors
            BlackFader(int maxFrame) {
                init(maxFrame);
                setColor(0, 0, 0);
                flag = TRUE;
            }

            // methods
            int getFrame() const { return frame_; }
            GXColor getColor() { return (GXColor){red_, green_, blue_, 255}; }
            int getMaxFrame() const { return maxFrame_; }
            int getFadeColorEnable() const { return flag; }

            void setFadeColorEnable(bool a) { flag = a; }
            void setColor(u8 r, u8 g, u8 b) {
                red_ = r;
                green_ = g;
                blue_ = b;
            }

            bool isDone();

            void start() { state_ = StateForward; }

            void init(int maxFrame);
            void calc();
            void draw();

            // members
        private:
            int frame_;     // size 0x04, offset 0x00
            int maxFrame_;  // size 0x04, offset 0x04
            int state_;     // size 0x04, offset 0x08
            bool flag;      // size 0x01, offset 0x0c
            u8 red_;        // size 0x01, offset 0x0d
            u8 green_;      // size 0x01, offset 0x0e
            u8 blue_;       // size 0x01, offset 0x0f
        };  // size 0x10

        // methods
    public:
        // cdtors
        HomeButton(HBMDataInfo const* pHBInfo);
        ~HomeButton();

        // methods
        HBMDataInfo const* getHBMDataInfo() { return mpHBInfo; }
        Controller* getController(int chan) { return mpController[chan]; }
        int getVolume();
        HBMSelectBtnNum getSelectBtnNum();
        char const* getFuncPaneName(int no) { return scFuncTouchPaneName[no]; }
        char const* getPaneName(int no) { return scBtnName[no]; }
        bool getReassignedFlag() const { return mReassignedFlag; }
        HomeButtonEventHandler* getEventHandler() const { return mpHomeButtonEventHandler; }

        bool isActive() const;
        bool isUpBarActive() const;
        bool isDownBarActive();

        void setAdjustFlag(BOOL flag);
        void setEndSimpleSyncFlag(bool flag) { mEndSimpleSyncFlag = flag; }
        void setForcusSE();
        void setReassignedFlag(bool flag) { mReassignedFlag = flag; }
        void setSimpleSyncAlarm(int type);
        void setSimpleSyncFlag(bool flag) { mSimpleSyncFlag = flag; }
        void setSpeakerAlarm(int chan, int msec);
        void setVolume(int vol);

        bool getVibFlag();
        int getPaneNo(nw4hbm::lyt::Pane const*);

        void setVibFlag(bool flag);

        void create();
        void init();
        void calc(HBMControllerData const* pController);
        void draw();
        void update(HBMControllerData const* pController);
        void updateTrigPane();

        void startPointEvent(nw4hbm::lyt::Pane const* pPane, void* pData);
        void startLeftEvent(nw4hbm::lyt::Pane const* pPane);
        void startTrigEvent(nw4hbm::lyt::Pane const* pPane);

        int findAnimator(int pane, int anm);
        int findGroupAnimator(int pane, int anm);

        void callSimpleSyncCallback(s32 result, s32 num);

        void startBlackOut();
        void setBlackOutColor(u8 red, u8 green, u8 blue);
        GXColor getBlackOutColor();
        void setVIBlack(BOOL flag);

        // static methods
        static void createInstance(HBMDataInfo const* pHBInfo);
        static HomeButton* getInstance();
        static void deleteInstance();

        // implementation details? at least i think that's what the snake case means
    private:
        void init_battery(HBMControllerData const* pController);
        void calc_battery(int chan);
        void reset_battery();

        void init_sound();
        void play_sound(int id);
        void fadeout_sound(f32 gain);

        void init_msg();
        void init_vib();
        void init_volume();

        void set_config();
        void set_text();

        void calc_fadeoutAnm();
        void calc_letter();

        void update_controller(int id);
        void update_posController(int id);

        void reset_btn();
        void reset_control();
        void reset_guiManager(int num);
        void reset_window();

        // exception
    public:  // HBMUpdateSound
        void update_sound();

        // static members
    private:
        static HomeButton* spHomeButtonObj;
        static OSMutex sMutex;
        static WPADInfo sWpadInfo[WPAD_MAX_CONTROLLERS];

        /* Provided by HBMBase.inl in the source file. */
        static int const scSoundHeapSize_but2;
        static int const scSoundHeapSize_but3;
        static int const scSoundThreadPrio;
        static int const scDvdThreadPrio;

        static int const scReConnectTime;
        static int const scReConnectTime2;
        static int const scPadDrawWaitTime;
        static int const scGetPadInfoTime;
        static int const scForcusSEWaitTime;
        static f32 const scOnPaneVibTime;
        static f32 const scOnPaneVibWaitTime;
        static int const scWaitStopMotorTime;
        static int const scWaitDisConnectTime;

        static char const* scCursorLytName[WPAD_MAX_CONTROLLERS];
        static char const* scCursorPaneName;
        static char const* scCursorRotPaneName;
        static char const* scCursorSRotPaneName;

        static char const* scBtnName[4];
        static char const* scTxtName[4];
        static char const* scGrName[8];
        static char const* scAnimName[3];
        static char const* scPairGroupAnimName[15];
        static char const* scPairGroupName[15];
        static char const* scGroupAnimName[22];
        static char const* scGroupName[35];
        static char const* scFuncPaneName[5];
        static char const* scFuncTouchPaneName[10];
        static char const* scFuncTextPaneName[3];
        static char const* scBatteryPaneName[WPAD_MAX_CONTROLLERS][4];

        // members
    private:
        enum /* expliticly untagged */
        {
            eSeq_Normal,
            eSeq_Control,
            eSeq_Cmn
        } mSequence;                                 // size 0x004, offset 0x000
        HBMDataInfo const* mpHBInfo;                 // size 0x004, offset 0x004
        void const* mpHBInfoEx;                      // size 0x004, offset 0x008
        int mButtonNum;                              // size 0x004, offset 0x00c
        int mAnmNum;                                 // size 0x004, offset 0x010
        int mState;                                  // size 0x004, offset 0x014
        int mSelectAnmNum;                           // size 0x004, offset 0x018
        int mMsgCount;                               // size 0x004, offset 0x01c
        int mPaneCounter[14];                        // size 0x038, offset 0x020
        int mPadDrawTime[WPAD_MAX_CONTROLLERS];      // size 0x010, offset 0x058
        int mForcusSEWaitTime;                       // size 0x004, offset 0x068
        int mBar0AnmRev;                             // size 0x004, offset 0x06c
        int mBar1AnmRev;                             // size 0x004, offset 0x070
        int mBar0AnmRevHold;                         // size 0x004, offset 0x074
        int mBar1AnmRevHold;                         // size 0x004, offset 0x078
        int mGetPadInfoTime;                         // size 0x004, offset 0x07c
        bool mControllerFlag[WPAD_MAX_CONTROLLERS];  // size 0x004, offset 0x080
        int mVolumeNum;                              // size 0x004, offset 0x084
        int mConnectNum;                             // size 0x004, offset 0x088
        bool mVibFlag;                               // size 0x001, offset 0x08c
        bool mControlFlag;                           // size 0x001, offset 0x08d
        bool mLetterFlag;                            // size 0x001, offset 0x08e
        bool mAdjustFlag;                            // size 0x001, offset 0x08f
        bool mReassignedFlag;                        // size 0x001, offset 0x090
        bool mSimpleSyncFlag;                        // size 0x001, offset 0x091
        bool mEndSimpleSyncFlag;                     // size 0x001, offset 0x092
        bool mForthConnectFlag;                      // size 0x001, offset 0x093
        bool mInitFlag;                              // size 0x001, offset 0x094
        bool mForceSttInitProcFlag;                  // size 0x001, offset 0x095
        bool mForceSttFadeInProcFlag;                // size 0x001, offset 0x096
        bool mEndInitSoundFlag;                      // size 0x001, offset 0x097
        bool mForceStopSyncFlag;                     // size 0x001, offset 0x098
        bool mForceEndMsgAnmFlag;                    // size 0x001, offset 0x099
        bool mStartBlackOutFlag;                     // size 0x001, offset 0x09a
        /* 1 byte padding */
        int mSoundRetryCnt;                                         // size 0x001, offset 0x09c
        BOOL mDialogFlag[4];                                        // size 0x010, offset 0x0a0
        char* mpLayoutName;                                         // size 0x004, offset 0x0b0
        char* mpAnmName;                                            // size 0x004, offset 0x0b4
        HBMSelectBtnNum mSelectBtnNum;                              // size 0x004, offset 0x0b8
        wchar_t* mpText[10][6];                                     // size 0x0f0, offset 0x0bc
        WPADSimpleSyncCallback* mSimpleSyncCallback;                // size 0x004, offset 0x1ac
        f32 mOnPaneVibFrame[4];                                     // size 0x010, offset 0x1b0
        f32 mOnPaneVibWaitFrame[4];                                 // size 0x010, offset 0x1c0
        int mWaitStopMotorCount;                                    // size 0x004, offset 0x1d0
        int mDisConnectCount;                                       // size 0x004, offset 0x1d4
        nw4hbm::lyt::Layout* mpLayout;                              // size 0x004, offset 0x1d8
        nw4hbm::lyt::Layout* mpCursorLayout[WPAD_MAX_CONTROLLERS];  // size 0x010, offset 0x1dc
        nw4hbm::lyt::ArcResourceAccessor* mpResAccessor;            // size 0x004, offset 0x1ec
        gui::PaneManager* mpPaneManager;                            // size 0x004, offset 0x1f0
        HomeButtonEventHandler* mpHomeButtonEventHandler;           // size 0x004, offset 0x1f4
        nw4hbm::lyt::DrawInfo mDrawInfo;                            // size 0x054, offset 0x1f8
        Controller* mpController[WPAD_MAX_CONTROLLERS];             // size 0x010, offset 0x24c
        RemoteSpk* mpRemoteSpk;                                     // size 0x004, offset 0x25c
        GroupAnmController* mpAnmController[12];                    // size 0x030, offset 0x260
        GroupAnmController* mpGroupAnmController[74];               // size 0x128, offset 0x290
        GroupAnmController* mpPairGroupAnmController[15];           // size 0x03c, offset 0x3b8
        BlackFader mFader;                                          // size 0x010, offset 0x3f4
        OSAlarm mAlarm[WPAD_MAX_CONTROLLERS];                       // size 0x0c0, offset 0x408
        OSAlarm mSpeakerAlarm[WPAD_MAX_CONTROLLERS];                // size 0x0c0, offset 0x4c8
        OSAlarm mSimpleSyncAlarm;                                   // size 0x030, offset 0x588
        BOOL iVISetBlackFlag;                                       // size 0x004, offset 0x5b8
        int iReConnectTime;                                         // size 0x004, offset 0x5bc
        int iReConnectTime2;                                        // size 0x004, offset 0x5c0
        u16 mAppVolume[3];                                          // size 0x006, offset 0x5c4
        u16 mBatteryCheck;                                          // size 0x002, offset 0x5ca
        AXFXAllocFunc* mAxFxAlloc;                                  // size 0x004, offset 0x5cc
        AXFXFreeFunc* mAxFxFree;                                    // size 0x004, offset 0x5d0
        AXFX_REVERBHI mAxFxReverb;                                  // size 0x160, offset 0x5d4
        AXAuxCallback* mAuxCallback;                                // size 0x004, offset 0x734
        void* mpAuxContext;                                         // size 0x004, offset 0x738
        f32 mFadeOutSeTime;                                         // size 0x004, offset 0x73c
    };  // size 0x740
}  // namespace homebutton

#endif  // RVL_SDK_HBM_BASE_INTERNAL_H
