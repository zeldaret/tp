#ifndef GDGEOMETRY_H
#define GDGEOMETRY_H


#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GXVtxDescList GXVtxDescList;

void GDSetVtxDescv(GXVtxDescList*);
void GDSetArray(GXAttr attr, const void* data, u8 stride);
void GDSetArrayRaw(GXAttr attr, u32 data, u8 stride);

#ifdef __cplusplus
};
#endif

#endif /* GDGEOMETRY_H */
