#ifndef METROTRK_PORTABLE_SERPOLL_H
#define METROTRK_PORTABLE_SERPOLL_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

void TRKGetInput(void);

extern void* gTRKInputPendingPtr;

#ifdef __cplusplus
}
#endif

#endif /* METROTRK_PORTABLE_SERPOLL_H */
