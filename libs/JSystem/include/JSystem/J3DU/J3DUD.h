#ifndef J3DUD_H
#define J3DUD_H

#include <types.h>

namespace J3DUD {
    inline f32 JMAAbs(f32 x) {
    #ifdef __MWERKS__
        return __fabsf(x);
    #endif
    }
}

#endif /* J3DUD_H */
