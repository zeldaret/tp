#ifndef METROTRK_PORTABLE_SUPPORT_H
#define METROTRK_PORTABLE_SUPPORT_H

#include "trk.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct TRKBuffer TRKBuffer;

DSError TRKRequestSend(TRKBuffer* msgBuf, int* bufferId, u32 p1, u32 p2, int p3);

#ifdef __cplusplus
}
#endif

#endif /* METROTRK_PORTABLE_SUPPORT_H */
