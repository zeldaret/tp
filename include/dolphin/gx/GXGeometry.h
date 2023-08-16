#ifndef GXGEOMETRY_H
#define GXGEOMETRY_H

#include "dolphin/gx/GXEnum.h"

#ifdef __cplusplus
extern "C" {
#endif

void __GXSetDirtyState(void);
void GXBegin(GXPrimitive type, GXVtxFmt fmt, u16 vert_num);
void __GXSendFlushPrim(void);
void GXSetLineWidth(u8 width, GXTexOffset offsets);
void GXSetPointSize(u8 size, GXTexOffset offsets);
void GXEnableTexOffsets(GXTexCoordID coord, GXBool line, GXBool point);
void GXSetCullMode(GXCullMode mode);
void GXSetCoPlanar(GXBool enable);
void __GXSetGenMode(void);

#ifdef __cplusplus
};
#endif

#endif /* GXGEOMETRY_H */
