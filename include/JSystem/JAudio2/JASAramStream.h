#ifndef JASARAMSTREAM_H
#define JASARAMSTREAM_H

#include "dolphin/os/OSMessage.h"

class JASChannel;

namespace JASDsp {
    class TChannel;
}

class JASAramStream {
public:
    /* 8029631C */ static void initSystem(u32, u32);
    /* 802963A8 */ JASAramStream();
    /* 8029649C */ void init(u32, u32, void (*)(u32, JASAramStream*, void*), void*);
    /* 8029655C */ void prepare(s32, int);
    /* 80296618 */ void start();
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
    /* 0x130 */ short field_0x130[6];
    /* 0x13C */ short field_0x13c[6];
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
    /* 0x17C */ float field_0x17c[6];
    /* 0x194 */ float field_0x194[6];
    /* 0x1AC */ float field_0x1ac[6];
    /* 0x1C4 */ float field_0x1c4[6];
    /* 0x1DC */ short field_0x1dc[6];

    u32 getBlockSize() { return sBlockSize; }

    static u8 sLoadThread[4];
    static u8 sReadBuffer[4];
    static u32 sBlockSize;
    static u8 sChannelMax[4];
};

#endif /* JASARAMSTREAM_H */
