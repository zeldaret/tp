#ifndef MTX44_H
#define MTX44_H

#include "dolphin/types.h"

typedef float Mtx44[4][4];

extern "C" {

void C_MTXPerspective(Mtx44 matrix, float fov_y, float aspect, float near, float far);
void C_MTXOrtho(Mtx44 matrix, float top, float bottom, float left, float right, float near,
                float far);
}

#endif /* MTX44_H */
