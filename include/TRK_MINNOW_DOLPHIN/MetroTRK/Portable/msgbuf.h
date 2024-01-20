#ifndef METROTRK_PORTABLE_MSGBUF_H
#define METROTRK_PORTABLE_MSGBUF_H

#include "trk.h"

#ifdef __cplusplus
extern "C" {
#endif

DSError TRKSetBufferPosition(TRKBuffer* msg, u32 pos);
void* TRKGetBuffer(int);
void TRKResetBuffer(TRKBuffer* msg, BOOL keepData);

#ifdef __cplusplus
}
#endif

#endif /* METROTRK_PORTABLE_MSGBUF_H */
