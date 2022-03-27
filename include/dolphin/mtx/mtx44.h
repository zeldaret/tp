#ifndef MTX44_H
#define MTX44_H

#include "dolphin/types.h"

typedef float Mtx44[4][4];

extern "C" {
void C_MTXPerspective(Mtx44 m, f32 fovy, f32 aspect, f32 near, f32 far);
void C_MTXOrtho(Mtx44 m, f32 top, f32 bottom, f32 left, f32 right, f32 near, f32 far);
}

#endif /* MTX44_H */
