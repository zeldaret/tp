#ifndef J3DCLUSTER_H
#define J3DCLUSTER_H

#include "dolphin/types.h"

class J3DDeformer;
class J3DClusterKey;
class J3DClusterVertex;
class J3DVertexBuffer;
class J3DModel;
class J3DAnmCluster;
class JUTNameTab;

class J3DCluster {
public:
    J3DDeformer* getDeformer() { return mDeformer; }
    void setDeformer(J3DDeformer* deformer) { mDeformer = deformer; }

    /* 0x00 */ f32 mMaxAngle;
    /* 0x04 */ f32 mMinAngle;
    /* 0x08 */ J3DClusterKey* mClusterKey;
    /* 0x0C */ u8 mFlags;
    /* 0x0E */ u8 field_0xe[0x10 - 0xD];
    /* 0x10 */ u16 mKeyNum;
    /* 0x12 */ u16 mPosNum;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u16 field_0x16;
    /* 0x18 */ u16* field_0x18;
    /* 0x1C */ J3DClusterVertex* mClusterVertex;
    /* 0x20 */ J3DDeformer* mDeformer;
};

struct J3DClusterKey {};

class J3DDeformData {
public:
    /* 8032E1F8 */ J3DDeformData();
    /* 8032E230 */ void offAllFlag(u32);
    /* 8032E298 */ void deform(J3DVertexBuffer*);
    /* 8032E274 */ void deform(J3DModel*);
    /* 8032E364 */ void setAnm(J3DAnmCluster*);

    J3DCluster* getClusterPointer(u16 index) {
        return &mClusterPointer[index];
    }

private:
    /* 0x00 */ u16 mClusterNum;
    /* 0x02 */ u16 mClusterKeyNum;
    /* 0x04 */ u16 mClusterVertexNum;
    /* 0x08 */ J3DCluster* mClusterPointer;
    /* 0x0C */ J3DClusterKey* mClusterKeyPointer;
    /* 0x10 */ J3DClusterVertex* mClusterVertex;
    /* 0x14 */ u16 mVtxPosNum;
    /* 0x16 */ u16 mVtxNrmNum;
    /* 0x18 */ f32* mVtxPos;
    /* 0x1C */ f32* mVtxNrm;
    /* 0x20 */ JUTNameTab* mClusterName;
    /* 0x24 */ JUTNameTab* mClusterKeyName;
};  // Size: 0x28

#endif /* J3DCLUSTER_H */
