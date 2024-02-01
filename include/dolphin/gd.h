#ifndef GD_H
#define GD_H

#include "dolphin/gd/GDBase.h"
#include "dolphin/gd/GDGeometry.h"

#ifdef __cplusplus
extern "C" {
#endif

static inline u16 __GDLightID2Index(GXLightID id) {
    u16 lightIdx = (31 - __cntlzw(id));
    if (lightIdx > 7)
        lightIdx = 0;
    return lightIdx;
}

static inline u16 __GDLightID2Offset(GXLightID id) {
    return __GDLightID2Index(id) * 0x10;
}

#ifdef __cplusplus
};
#endif

#endif /* GD_H */
