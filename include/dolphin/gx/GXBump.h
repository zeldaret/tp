#ifndef GXBUMP_H
#define GXBUMP_H

#include "dolphin/gx/GXEnum.h"

#ifdef __cplusplus
extern "C" {
#endif

void GXSetTevIndirect(GXTevStageID tevStage, GXIndTexStageID texStage, GXIndTexFormat texFmt,
                      GXIndTexBiasSel biasSel, GXIndTexMtxID mtxID, GXIndTexWrap wrapS,
                      GXIndTexWrap wrapT, u8 addPrev, u8 utcLod, GXIndTexAlphaSel alphaSel);
void GXSetIndTexMtx(GXIndTexMtxID mtxID, f32 offset[6], s8 scale_exp);
void GXSetIndTexCoordScale(GXIndTexStageID texStage, GXIndTexScale scaleS, GXIndTexScale scaleT);
void GXSetIndTexOrder(GXIndTexStageID stage, GXTexCoordID coord, GXTexMapID map);
void GXSetNumIndStages(u8 num);
void GXSetTevDirect(GXTevStageID stage);

#ifdef __cplusplus
};
#endif

#endif /* GXBUMP_H */
