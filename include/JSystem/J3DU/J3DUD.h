#ifndef J3DUD_H
#define J3DUD_H

#include "math.h"
#include "dolphin/types.h"

namespace J3DUD {
    inline f32 JMAAbs(f32 x) {
        return __fabsf(x);
    }
}

#endif /* J3DUD_H */