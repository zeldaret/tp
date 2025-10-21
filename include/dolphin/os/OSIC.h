#ifndef _DOLPHIN_OSIC_H_
#define _DOLPHIN_OSIC_H_

#ifdef __REVOLUTION_SDK__
#include <revolution/os/OSIC.h>
#else

#ifdef __cplusplus
extern "C" {
#endif

void ICFlashInvalidate(void);
void ICEnable(void);
void ICDisable(void);
void ICFreeze(void);
void ICUnfreeze(void);
void ICBlockInvalidate(void *addr);
void ICSync(void);

#ifdef __cplusplus
}
#endif

#endif
#endif
