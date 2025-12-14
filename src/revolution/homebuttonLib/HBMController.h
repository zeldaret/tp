#ifndef RVL_SDK_HBM_CONTROLLER_H
#define RVL_SDK_HBM_CONTROLLER_H

#include <revolution/types.h>

#include <revolution/hbm.h>
#include <revolution/mtx.h>
#include <revolution/os/OSTime.h>
#include <revolution/os/OSAlarm.h>
#include <revolution/wpad.h>

// context declarations
namespace homebutton { class RemoteSpk; }


namespace homebutton {
    class Controller {
        // nested types
    public:
        struct HBController {
            int chan;     // size 0x04, offset 0x00
            f32 spVol;    // size 0x04, offset 0x04
            f32 x;        // size 0x04, offset 0x08
            f32 y;        // size 0x04, offset 0x0c
            u32 trig;     // size 0x04, offset 0x10
            u32 hold;     // size 0x04, offset 0x14
            u32 release;  // size 0x04, offset 0x18
            bool rumble;  // size 0x01, offset 0x1c
                          /* 3 bytes padding */
        };  // size 0x20

        // methods
    public:
        // cdtors
        Controller(int chan, RemoteSpk* spk);
        ~Controller();

        // methods
        HBController* getController();
        int getChan() const;
        f32 getSpeakerVol() const;
        RemoteSpk* getRemoteSpk() const { return remotespk; }
        bool isRumbling() { return mHBController.rumble; }
        bool getBatteryFlag() const;

        void setSpeakerVol(f32 vol);
        void setEnableRumble(bool flag) { mRumbleFlag = flag; }
        void setRumble() { mHBController.rumble = TRUE; }
        void clrRumble() { mHBController.rumble = FALSE; }

        s32 getInfoAsync(WPADInfo* info);
        bool isPlayReady() const;
        bool isPlayingSound() const;
        bool isPlayingSoundId(int id) const;

        void setKpad(HBMKPadData const* con, bool updatePos);
        void setInValidPos();
        void clrBatteryFlag();
        void clrKpadButton();

        void connect();
        void disconnect();

        void initSound();
        void updateSound();
        void playSound(int id);

        void soundOn();
        void soundOff(int msec);

        void startMotor();
        void stopMotor();

        void initCallback();
        void clearCallback();

        // static methods
    private:
        static void wpadConnectCallback(s32 chan, s32 result);
        static void wpadExtensionCallback(s32 chan, s32 result);
        static void soundOnCallback(OSAlarm* alm, OSContext* context);
        static void ControllerCallback(s32 chan, s32 result);

        // static members
    private:
        static bool sBatteryFlag[WPAD_MAX_CONTROLLERS];
        static OSAlarm sAlarm[WPAD_MAX_CONTROLLERS];
        static OSAlarm sAlarmSoundOff[WPAD_MAX_CONTROLLERS];
        static Controller* sThis[WPAD_MAX_CONTROLLERS];
        static bool sSetInfoAsync[WPAD_MAX_CONTROLLERS];

        // members
    private:
        HBController mHBController;                // size 0x20, offset 0x00
        RemoteSpk* remotespk;                      // size 0x04, offset 0x20
        WPADConnectCallback* mOldConnectCallback;  // size 0x04, offset 0x24
        WPADConnectCallback*
            mOldExtensionCallback;  // size 0x04, offset 0x28 // TODO: Check DWARF on this
        /* 4 bytes padding */
        OSTime mPlaySoundTime;         // size 0x08, offset 0x30
        OSTime mStopSoundTime;         // size 0x08, offset 0x38
        bool mCallbackFlag;            // size 0x01, offset 0x40
        bool mSoundOffFlag;            // size 0x01, offset 0x41
        bool mCheckSoundTimeFlag;      // size 0x01, offset 0x42
        bool mCheckSoundIntervalFlag;  // size 0x01, offset 0x43
        bool mRumbleFlag;              // size 0x01, offset 0x44
                                       /* 3 bytes padding */
    };  // size 0x48
}  // namespace homebutton

#endif  // RVL_SDK_HBM_CONTROLLER_H
