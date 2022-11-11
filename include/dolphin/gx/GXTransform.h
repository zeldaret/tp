#ifndef GXTRANSFORM_H
#define GXTRANSFORM_H

#include "dolphin/gx/GXEnum.h"
#include "dolphin/gx/GXStruct.h"
#include "dolphin/mtx/mtx.h"

#ifdef __cplusplus
extern "C" {
#endif

void GXProject(f32 model_x, f32 model_y, f32 model_z, Mtx model_mtx, f32* proj_mtx, f32* viewpoint,
               f32* screen_x, f32* screen_y, f32* screen_z);
void GXSetProjection(Mtx44 mtx, GXProjectionType type);
void GXSetProjectionv(f32* p);
void GXGetProjectionv(f32* p);
void GXLoadPosMtxImm(Mtx mtx, u32 id);
void GXLoadNrmMtxImm(Mtx mtx, u32 id);
void GXSetCurrentMtx(u32 id);
void GXLoadTexMtxImm(Mtx mtx, u32 id, GXTexMtxType type);
void GXSetViewport(f32 x_orig, f32 y_orig, f32 width, f32 height, f32 near_z, f32 far_z);
void GXGetViewportv(f32* p);
void GXSetScissor(u32 left, u32 top, u32 width, u32 height);
void GXGetScissor(u32* left, u32* top, u32* width, u32* height);
void GXSetScissorBoxOffset(u32 x_offset, u32 y_offset);
void GXSetClipMode(GXClipMode mode);

#ifdef __cplusplus
};
#endif

#endif /* GXTRANSFORM_H */
