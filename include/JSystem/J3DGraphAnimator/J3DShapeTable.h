#ifndef J3DSHAPETABLE_H
#define J3DSHAPETABLE_H

#include "JSystem/J3DGraphBase/J3DShape.h"

class JUTNameTab;

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DShapeTable {
public:
    J3DShapeTable() {
        mShapeNum = 0;
        mShapeNodePointer = NULL;
        mShapeName = NULL;
    }

    /* 803258A0 */ void hide();
    /* 803258D8 */ void show();
    /* 80325910 */ void initShapeNodes(J3DDrawMtxData*, J3DVertexData*);
    /* 8032597C */ void sortVcdVatCmd();

    virtual ~J3DShapeTable();

    u16 getShapeNum() const { return mShapeNum; }
    J3DShape* getShapeNodePointer(u16 idx) const { return mShapeNodePointer[idx]; }

private:
    friend class J3DModelLoader;
    
    /* 0x4 */ u16 mShapeNum;
    /* 0x8 */ J3DShape** mShapeNodePointer;
    /* 0xC */ JUTNameTab* mShapeName;
};  // Size: 0x10

#endif /* J3DSHAPETABLE_H */
