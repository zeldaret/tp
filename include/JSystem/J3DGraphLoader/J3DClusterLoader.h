#ifndef J3DCLUSTERLOADER_H
#define J3DCLUSTERLOADER_H

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"

struct J3DClusterLoaderDataBase {
    /* 80334130 */ static void* load(void const*);
};

class J3DClusterBlock : public JUTDataBlockHeader {
public:
    /* 0x08 */ u16 mClusterNum;
    /* 0x0A */ u16 mClusterKeyNum;
    /* 0x0C */ u16 mClusterVertexNum;
    /* 0x0E */ u16 mVtxPosNum;
    /* 0x10 */ u16 mVtxNrmNum;
    /* 0x14 */ void* mClusterPointer;
    /* 0x18 */ void* mClusterKeyPointer;
    /* 0x1C */ void* mClusterVertex;
    /* 0x20 */ void* mVtxPos;
    /* 0x24 */ void* mVtxNrm;
    /* 0x28 */ void* mClusterName;
    /* 0x2C */ void* mClusterKeyName;
};

class J3DClusterLoader {
public:
    virtual void* load(const void*) = 0;
    /* 803345FC */ virtual ~J3DClusterLoader() {}
};

class J3DDeformData;

class J3DClusterLoader_v15 : public J3DClusterLoader {
public:
    /* 803341CC */ J3DClusterLoader_v15();
    /* 803342F8 */ void readCluster(J3DClusterBlock const*);

    /* 80334244 */ virtual void* load(void const*);
    /* 803341E8 */ virtual ~J3DClusterLoader_v15();

    /* 0x04 */ J3DDeformData* mpDeformData;
};

#endif /* J3DCLUSTERLOADER_H */
