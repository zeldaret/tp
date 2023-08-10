#ifndef DSP_H
#define DSP_H

#include "dolphin/os/OSTime.h"

volatile u16 __DSPRegs[32] : 0xCC005000;
volatile u32 __AIRegs[8] : 0xCC006C00;

#ifdef __cplusplus
extern "C" {
#endif

#define DSP_TASK_FLAG_CLEARALL 0x00000000
#define DSP_TASK_FLAG_ATTACHED 0x00000001
#define DSP_TASK_FLAG_CANCEL 0x00000002

#define DSP_TASK_STATE_INIT 0
#define DSP_TASK_STATE_RUN 1
#define DSP_TASK_STATE_YIELD 2
#define DSP_TASK_STATE_DONE 3

typedef void (*DSPCallback)(void* task);

typedef struct DSPTaskInfo DSPTaskInfo;

typedef struct DSPTaskInfo {
    /* 0x00 */ vu32 state;
    /* 0x04 */ vu32 priority;
    /* 0x08 */ vu32 flags;
    /* 0x0C */ u16* iram_mmem_addr;
    /* 0x10 */ u32 iram_length;
    /* 0x14 */ u32 iram_addr;

    /* 0x18 */ u16* dram_mmem_addr;
    /* 0x1C */ u32 dram_length;
    /* 0x20 */ u32 dram_addr;

    /* 0x24 */ u16 dsp_init_vector;
    /* 0x26 */ u16 dsp_resume_vector;

    /* 0x28 */ DSPCallback init_cb;
    /* 0x2C */ DSPCallback res_cb;
    /* 0x30 */ DSPCallback done_cb;
    /* 0x34 */ DSPCallback req_cb;

    /* 0x38 */ struct DSPTaskInfo* next;
    /* 0x3C */ struct DSPTaskInfo* prev;

    /* 0x40 */ OSTime t_context;
    /* 0x48 */ OSTime t_task;
} DSPTaskInfo;

u32 DSPCheckMailToDSP(void);
u32 DSPCheckMailFromDSP(void);
u32 DSPReadMailFromDSP(void);
void DSPSendMailToDSP(u32 mail);
void DSPAssertInt();
void DSPInit(void);

#ifdef __cplusplus
}
#endif

void DSPReleaseHalt2(u32 msg);
u16 DSP_CreateMap2(u32 msg);
int DSPSendCommands2(u32* msgs, u32 param_1, void (*param_2)(u16));
void DsetupTable(u32 param_0, u32 param_1, u32 param_2, u32 param_3, u32 param_4);
void DsetMixerLevel(f32 level);

#endif /* DSP_H */
