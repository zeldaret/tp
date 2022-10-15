#ifndef PPCARCH_H
#define PPCARCH_H

#include "dolphin/types.h"

union FpscrUnion {
    f64 f;
    struct {
        u32 fpscr_pad;
        u32 fpscr;
    }   u;
};

#endif /* PPCARCH_H */
