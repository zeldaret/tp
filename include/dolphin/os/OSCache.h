#ifndef OSCACHE_H
#define OSCACHE_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

static void DCEnable(void);
void DCInvalidateRange(void* start, u32 nBytes);
void DCFlushRange(void* start, u32 nBytes);
void DCStoreRange(void* start, u32 nBytes);
void DCFlushRangeNoSync(void* start, u32 nBytes);
void DCStoreRangeNoSync(void* start, u32 nBytes);
void DCZeroRange(void* start, u32 nBytes);
void ICInvalidateRange(void* start, u32 nBytes);
void ICFlashInvalidate(void);
static void ICEnable(void);
void __LCEnable(void);
void LCEnable(void);
void LCDisable(void);
static void LCStoreBlocks(void* destAddr, void* srcAddr, u32 blockNum);
u32 LCStoreData(void* destAddr, void* srcAddr, u32 nBytes);
void LCQueueWait(u32 len);
static void L2GlobalInvalidate(void);
static void DMAErrorHandler(u16 error, struct OSContext* context, ...);
void __OSCacheInit(void);

#ifdef __cplusplus
};
#endif

#endif /* OSCACHE_H */
