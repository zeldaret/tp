#ifndef JSYSTEM_J2DSYS_H
#define JSYSTEM_J2DSYS_H

#include "dolphin/types.h"

enum J2DRotateAxis {
    AXIS_X = 'x',
    AXIS_Y = 'y',
    AXIS_Z = 'z',
};

enum J2DBasePosition {
    TOP_LEFT = 0,
    TOP_CENTER = 1,
    TOP_RIGHT = 2,
    MIDDLE_LEFT = 3,
    MIDDLE_CENTER = 4,
    MIDDLE_RIGHT = 5,
    BOTTOM_LEFT = 6,
    BOTTOM_CENTER = 7,
    BOTTOM_RIGHT = 8,
};

#endif  // JSYSTEM_J2DSYS_H
