#ifndef PADCLAMP_H
#define PADCLAMP_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct PADClampRegion {
    u8 minTrigger;
    u8 maxTrigger;
    s8 minStick;
    s8 maxStick;
    s8 xyStick;
    s8 minSubstick;
    s8 maxSubstick;
    s8 xySubstick;
    s8 radStick;
    s8 radSubstick;
} PADClampRegion;

void PADClamp(PADStatus* status);
void PADClampCircle(PADStatus* status);

#ifdef __cplusplus
};
#endif

#endif /* PADCLAMP_H */
