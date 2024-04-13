#ifndef GXLIGHT_H
#define GXLIGHT_H

#include "dolphin/gx/GXStruct.h"

#ifdef __cplusplus
extern "C" {
#endif

void GXInitLightAttn(GXLightObj* obj, f32 a0, f32 a1, f32 a2, f32 k0, f32 k1, f32 k2);
void GXInitLightSpot(GXLightObj* obj, f32 cutoff, GXSpotFn spot_fn);
void GXInitLightDistAttn(GXLightObj* obj, f32 dist, f32 brightness, GXDistAttnFn dist_fn);
void GXInitLightPos(GXLightObj* obj, f32 x, f32 y, f32 z);
void GXInitLightDir(GXLightObj* obj, f32 x, f32 y, f32 z);
void GXInitLightColor(GXLightObj* obj, GXColor color);
void GXLoadLightObjImm(GXLightObj* obj, GXLightID light);
void GXSetChanAmbColor(GXChannelID channel, GXColor color);
void GXSetChanMatColor(GXChannelID channel, GXColor color);
void GXSetNumChans(u8 chan_num);
void GXSetChanCtrl(GXChannelID channel, GXBool enable, GXColorSrc amb_src, GXColorSrc mat_src, u32 light_mask, GXDiffuseFn diff_fn, GXAttnFn attn_fn);

#ifdef __cplusplus
};
#endif

#endif /* GXLIGHT_H */
