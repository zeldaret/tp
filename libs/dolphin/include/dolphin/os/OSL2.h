#ifndef _DOLPHIN_OSL2_H_
#define _DOLPHIN_OSL2_H_

#ifdef __REVOLUTION_SDK__
#include <revolution/os/OSL2.h>
#else
#include <dolphin/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void L2Enable(void);
void L2Disable(void);
void L2GlobalInvalidate(void);
void L2SetDataOnly(BOOL dataOnly);
void L2SetWriteThrough(BOOL writeThrough);

#ifdef __cplusplus
}
#endif

#endif
#endif
