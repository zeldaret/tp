#ifndef JASARAMSTREAM_H
#define JASARAMSTREAM_H

#include "dolphin/os/OSMessage.h"
#include "JSystem/JUtility/JUTAssert.h"

class JASChannel;

namespace JASDsp {
    class TChannel;
}

#define CHANNEL_MAX 6

class JASAramStream {
public:
    /* 8029631C */ static void initSystem(u32, u32);
    /* 802963A8 */ JASAramStream();
    /* 8029649C */ void init(u32, u32, void (*)(u32, JASAramStream*, void*), void*);
    /* 8029655C */ bool prepare(s32, int);
    /* 80296618 */ bool start();
    /* 8029664C */ void stop(u16);
    /* 80296684 */ void pause(bool);
    /* 802966CC */ void cancel();
    /* 80296710 */ void getBlockSamples() const;
    /* 8029673C */ void headerLoadTask(void*);
    /* 8029676C */ void firstLoadTask(void*);
    /* 80296848 */ void loadToAramTask(void*);
    /* 80296868 */ void finishTask(void*);
    /* 802968C8 */ void prepareFinishTask(void*);
    /* 80296920 */ void headerLoad(u32, int);
    /* 80296AE8 */ void load();
    /* 80296D74 */ void channelProcCallback(void*);
    /* 80296D94 */ void dvdErrorCheck(void*);
    /* 80296DF0 */ void channelCallback(u32, JASChannel*, JASDsp::TChannel*, void*);
    /* 80296E2C */ void updateChannel(u32, JASChannel*, JASDsp::TChannel*);
    /* 802974AC */ void channelProc();
    /* 80297658 */ void channelStart();
    /* 80297870 */ void channelStop(u16);

    void setPitch(f32 pitch) { field_0x178 = pitch; }
    void setVolume(f32 volume) { 
        for (int i = 0; i < 6; i++) {
            mChannelVolume[i] = volume; 
        }
    }

    void setPan(f32 pan) { 
        for (int i = 0; i < 6; i++) {
            mChannelPan[i] = pan; 
        }
    }

    void setFxmix(f32 fxMix) { 
        for (int i = 0; i < 6; i++) {
            mchannelFxMix[i] = fxMix; 
        }
    }

    void setDolby(f32 dolby) { 
        for (int i = 0; i < 6; i++) {
            mChannelDolby[i] = dolby; 
        }
    }

    void setChannelVolume(int channel, f32 volume) {
        JUT_ASSERT(290, channel < CHANNEL_MAX);
        mChannelVolume[channel] = volume;
    }

    void setChannelPan(int channel, f32 pan) {
        JUT_ASSERT(296, channel < CHANNEL_MAX);
        mChannelPan[channel] = pan;
    }

    void setChannelFxmix(int channel, f32 fxMix) {
        JUT_ASSERT(302, channel < CHANNEL_MAX);
        mchannelFxMix[channel] = fxMix;
    }

    void setChannelDolby(int channel, f32 dolby) {
        JUT_ASSERT(308, channel < CHANNEL_MAX);
        mChannelDolby[channel] = dolby;
    }

    /* 0x000 */ OSMessageQueue field_0x000;
    /* 0x020 */ OSMessageQueue field_0x020;
    /* 0x040 */ void* field_0x040[16];
    /* 0x080 */ void* field_0x080[4];
    /* 0x090 */ JASChannel* field_0x090[6];
    /* 0x0A8 */ int field_0x0a8;
    /* 0x0AC */ u8 field_0x0ac;
    /* 0x0AD */ u8 field_0x0ad;
    /* 0x0AE */ u8 field_0x0ae;
    /* 0x0AF */ u8 field_0x0AF[0x0B0 - 0x0AF];
    /* 0x0B0 */ int field_0x0b0;
    /* 0x0B4 */ int field_0x0b4;
    /* 0x0B8 */ int field_0x0b8;
    /* 0x0BC */ int field_0x0bc;
    /* 0x0C0 */ u8 field_0x0c0;
    /* 0x0C1 */ u8 field_0x0C1[0x0C4 - 0x0C1];
    /* 0x0C4 */ int field_0x0c4;
    /* 0x0C8 */ f32 field_0x0c8;
    /* 0x0CC */ u8 field_0x0CC[0x108 - 0x0CC];
    /* 0x108 */ int field_0x108;
    /* 0x10C */ int field_0x10c;
    /* 0x110 */ int field_0x110;
    /* 0x114 */ u8 field_0x114;
    /* 0x115 */ u8 field_0x115[0x118 - 0x115];
    /* 0x118 */ int field_0x118;
    /* 0x11C */ int field_0x11c;
    /* 0x120 */ int field_0x120;
    /* 0x124 */ int field_0x124;
    /* 0x128 */ short field_0x128;
    /* 0x12A */ u8 field_0x12A[0x12C - 0x12A];
    /* 0x12C */ int field_0x12c;
    /* 0x130 */ short field_0x130[CHANNEL_MAX];
    /* 0x13C */ short field_0x13c[CHANNEL_MAX];
    /* 0x148 */ int field_0x148;
    /* 0x14C */ int field_0x14c;
    /* 0x150 */ void* field_0x150;
    /* 0x154 */ int field_0x154;
    /* 0x158 */ short field_0x158;
    /* 0x15A */ short field_0x15a;
    /* 0x15C */ int field_0x15c;
    /* 0x160 */ int field_0x160;
    /* 0x164 */ int field_0x164;
    /* 0x168 */ u8 field_0x168;
    /* 0x169 */ u8 field_0x169[0x16C - 0x169];
    /* 0x16C */ int field_0x16c;
    /* 0x170 */ int field_0x170;
    /* 0x174 */ f32 field_0x174;
    /* 0x178 */ f32 field_0x178;
    /* 0x17C */ float mChannelVolume[CHANNEL_MAX];
    /* 0x194 */ float mChannelPan[CHANNEL_MAX];
    /* 0x1AC */ float mchannelFxMix[CHANNEL_MAX];
    /* 0x1C4 */ float mChannelDolby[CHANNEL_MAX];
    /* 0x1DC */ short field_0x1dc[CHANNEL_MAX];

    u32 getBlockSize() { return sBlockSize; }

    static u8 sLoadThread[4];
    static u8 sReadBuffer[4];
    static u32 sBlockSize;
    static u8 sChannelMax[4];
};

#endif /* JASARAMSTREAM_H */
