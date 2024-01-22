#ifndef GXATTR_H
#define GXATTR_H

#include "dolphin/gx/GXEnum.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GXVtxDescList {
    /* 0x0 */ GXAttr attr;
    /* 0x4 */ GXAttrType type;
} GXVtxDescList;  // Size: 0x08

typedef struct _GXVtxAttrFmtList {
    /* 0x00 */ GXAttr mAttrib;
    /* 0x04 */ GXCompCnt mCompCnt;
    /* 0x08 */ GXCompType mCompType;
    /* 0x0C */ u8 mCompShift;
} GXVtxAttrFmtList;  // Size: 0x10

void GXSetVtxDesc(GXAttr attr, GXAttrType type);
void GXSetVtxDescv(GXVtxDescList* list);
void __GXSetVCD(void);
void __GXCalculateVLim(void);
void GXClearVtxDesc(void);
void GXSetVtxAttrFmt(GXVtxFmt fmt, GXAttr attr, GXCompCnt cnt, GXCompType type, u8);
void GXSetVtxAttrFmtv(GXVtxFmt fmt, GXVtxAttrFmtList* list);
void __GXSetVAT(void);
void GXSetArray(GXAttr attr, void* base, u8);
void GXInvalidateVtxCache(void);
void GXSetTexCoordGen2(GXTexCoordID dst, GXTexGenType type, GXTexGenSrc src, u32 mtx,
                       GXBool renormalize, u32 pt_mtx);
void GXSetNumTexGens(u8 numTexGens);

void GXGetVtxAttrFmtv(GXVtxFmt param_0, GXVtxAttrFmtList* param_1);
void GXGetVtxAttrFmt(GXVtxFmt param_0, int param_1, GXCompCnt* param_2, GXCompType* param_3,
                     u8* param_4);
void GXGetVtxDescv(GXVtxDescList* attrPtr);

static inline void GXSetTexCoordGen(GXTexCoordID dst, GXTexGenType type, GXTexGenSrc src, u32 mtx) {
    GXSetTexCoordGen2(dst, type, src, mtx, GX_FALSE, GX_PTIDENTITY);
}

#ifdef __cplusplus
};
#endif

#endif /* GXATTR_H */
