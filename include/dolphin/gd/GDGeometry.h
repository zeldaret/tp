#ifndef GDGEOMETRY_H
#define GDGEOMETRY_H

#include "dolphin/types.h"
#include "dolphin/gx/GX.h"

extern "C" {

void GDSetVtxDescv(GXVtxDescList*);
void GDSetArray(GXAttr attr, const void* data, u8 stride);
void GDSetArrayRaw(GXAttr attr, u32 data, u8 stride);

}

#endif /* GDGEOMETRY_H */
