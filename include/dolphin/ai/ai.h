#ifndef AI_H
#define AI_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*AISCallback)(u32 count);
typedef void (*AIDCallback)();

AIDCallback AIRegisterDMACallback(AIDCallback callback);
void AIInitDMA(u32 addr, u32 length);
void AIStartDMA(void);
void AIStopDMA(void);
void AISetStreamPlayState(u32 state);
inline u32 AIGetStreamPlayState(void);
void AISetDSPSampleRate(u32 rate);
u32 AIGetDSPSampleRate(void);
void __AI_set_stream_sample_rate(u32 rate);
u32 AIGetStreamSampleRate(void);
void AISetStreamVolLeft(u8 vol);
u8 AIGetStreamVolLeft(void);
void AISetStreamVolRight(u8 vol);
u8 AIGetStreamVolRight(void);
void AIInit(u8* stack);

#ifdef __cplusplus
};
#endif

#endif /* AI_H */
