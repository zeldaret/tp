#ifndef EXIBIOS_H
#define EXIBIOS_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSContext OSContext;

vu32 __EXIRegs[16] : 0xCC006800;

#define EXI_MEMORY_CARD_59 0x00000004
#define EXI_MEMORY_CARD_123 0x00000008
#define EXI_MEMORY_CARD_251 0x00000010
#define EXI_MEMORY_CARD_507 0x00000020

#define EXI_MEMORY_CARD_1019 0x00000040
#define EXI_MEMORY_CARD_2043 0x00000080

#define EXI_MEMORY_CARD_1019A 0x00000140
#define EXI_MEMORY_CARD_1019B 0x00000240
#define EXI_MEMORY_CARD_1019C 0x00000340
#define EXI_MEMORY_CARD_1019D 0x00000440
#define EXI_MEMORY_CARD_1019E 0x00000540
#define EXI_MEMORY_CARD_1019F 0x00000640
#define EXI_MEMORY_CARD_1019G 0x00000740

#define EXI_MEMORY_CARD_2043A 0x00000180
#define EXI_MEMORY_CARD_2043B 0x00000280
#define EXI_MEMORY_CARD_2043C 0x00000380
#define EXI_MEMORY_CARD_2043D 0x00000480
#define EXI_MEMORY_CARD_2043E 0x00000580
#define EXI_MEMORY_CARD_2043F 0x00000680
#define EXI_MEMORY_CARD_2043G 0x00000780

#define EXI_USB_ADAPTER 0x01010000
#define EXI_NPDP_GDEV 0x01020000

#define EXI_MODEM 0x02020000
#define EXI_ETHER 0x04020200
#define EXI_ETHER_VIEWER 0x04220001
#define EXI_STREAM_HANGER 0x04130000

#define EXI_MARLIN 0x03010000

#define EXI_IS_VIEWER 0x05070000

#define EXI_FREQ_1M 0
#define EXI_FREQ_2M 1
#define EXI_FREQ_4M 2
#define EXI_FREQ_8M 3
#define EXI_FREQ_16M 4
#define EXI_FREQ_32M 5

#define EXI_READ 0
#define EXI_WRITE 1

#define EXI_STATE_IDLE 0x00
#define EXI_STATE_DMA 0x01
#define EXI_STATE_IMM 0x02
#define EXI_STATE_BUSY (EXI_STATE_DMA | EXI_STATE_IMM)
#define EXI_STATE_SELECTED 0x04
#define EXI_STATE_ATTACHED 0x08
#define EXI_STATE_LOCKED 0x10

typedef void (*EXICallback)(s32 chan, OSContext* context);

typedef struct EXIControl {
    EXICallback exiCallback;
    EXICallback tcCallback;
    EXICallback extCallback;
    vu32 state;
    int immLen;
    u8* immBuf;
    u32 dev;
    u32 id;
    s32 idTime;
    int items;
    struct {
        u32 dev;
        EXICallback callback;
    } queue[3];
} EXIControl;

s32 EXIImm(s32 chan, void* buf, s32 len, u32 type, EXICallback callback);
s32 EXIImmEx(s32 chan, void* buf, s32 len, u32 mode);
BOOL EXIDma(s32 chan, void* buf, s32 len, u32 type, EXICallback callback);
BOOL EXISync(s32 chan);
EXICallback EXISetExiCallback(s32 chan, EXICallback exiCallback);
BOOL EXIProbe(s32 chan);
s32 EXIProbeEx(s32 chan);
BOOL EXIAttach(s32 chan, EXICallback extCallback);
BOOL EXIDetach(s32 chan);
BOOL EXISelect(s32 chan, u32 dev, u32 freq);
BOOL EXIDeselect(s32 chan);
void EXIInit(void);
BOOL EXILock(s32 chan, u32 dev, EXICallback unlockedCallback);
BOOL EXIUnlock(s32 chan);
u32 EXIGetState(s32 chan);
static void UnlockedHandler(s32 chan, OSContext* context);
s32 EXIGetID(s32 chan, u32 dev, u32* id);

#ifdef __cplusplus
};
#endif

#endif /* EXIBIOS_H */
