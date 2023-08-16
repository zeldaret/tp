#ifndef GXTEXTURE_H
#define GXTEXTURE_H

#include "dolphin/gx/GXInit.h"

#ifdef __cplusplus
extern "C" {
#endif

u32 GXGetTexBufferSize(u16 width, u16 height, u32 format, GXBool mipmap, u8 max_lod);
void __GetImageTileCount(u32 arg0, s16 arg1, s16 arg2, s32* arg3, s32* arg4, s32* arg5);
void GXInitTexObj(GXTexObj* obj, void* image, u16 width, u16 height, GXTexFmt fmt,
                  GXTexWrapMode wrapS, GXTexWrapMode wrapT, GXBool mipmap);
void GXInitTexObjCI(GXTexObj* obj, void* image, u16 width, u16 height, GXCITexFmt format,
                    GXTexWrapMode wrapS, GXTexWrapMode wrapT, GXBool mipmap, u32 tlut_name);
void GXInitTexObjLOD(GXTexObj* obj, GXTexFilter min_filter, GXTexFilter max_filter, f32 min_lod,
                     f32 max_lod, f32 lod_bias, GXBool bias_clamp, GXBool edge_lod,
                     GXAnisotropy aniso);
u16 GXGetTexObjWidth(GXTexObj* obj);
u16 GXGetTexObjHeight(GXTexObj* obj);
GXTexFmt GXGetTexObjFmt(GXTexObj* obj);
GXTexWrapMode GXGetTexObjWrapS(GXTexObj* obj);
GXTexWrapMode GXGetTexObjWrapT(GXTexObj* obj);
GXBool GXGetTexObjMipMap(GXTexObj* obj);
u32 GXGetTexObjTlut(GXTexObj* obj);
void GXLoadTexObj(GXTexObj* obj, GXTexMapID id);
void GXInitTlutObj(GXTlutObj* obj, void* lut, GXTlutFmt fmt, u16 entry_num);
void GXLoadTlut(GXTlutObj* obj, u32 tlut_name);
void GXInitTexCacheRegion(GXTexRegion* region, GXBool is_32b_mipmap, u32 tmem_even,
                          GXTexCacheSize size_even, u32 tmem_odd, GXTexCacheSize size_odd);
void GXInitTlutRegion(GXTlutRegion* region, u32 tmem_addr, GXTlutSize tlut_size);
void GXInvalidateTexAll(void);

GXTexRegionCallback GXSetTexRegionCallback(GXTexRegionCallback callback);
GXTlutRegionCallback GXSetTlutRegionCallback(GXTlutRegionCallback callback);

void GXSetTexCoordScaleManually(GXTexCoordID coord, GXBool enable, u16 s_scale, u16 t_scale);

void __SetSURegs();
void __GXSetSUTexRegs();
void __GXSetTmemConfig();

#ifdef __cplusplus
};
#endif

#endif /* GXTEXTURE_H */
