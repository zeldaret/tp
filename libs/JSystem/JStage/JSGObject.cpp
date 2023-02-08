#include "JSystem/JStage/JSGObject.h"

/* 80280DD4-80280E1C 27B714 0048+00 0/0 6/6 0/0 .text            __dt__Q26JStage7TObjectFv */
JStage::TObject::~TObject() {}

/* 80280E1C-80280E24 27B75C 0008+00 1/0 12/0 0/0 .text            JSGGetName__Q26JStage7TObjectCFv
 */

bool JStage::TObject::JSGGetName() const {
    return false;
}

/* 80280E24-80280E28 27B764 0004+00 1/0 12/0 0/0 .text            JSGUpdate__Q26JStage7TObjectFv */
void JStage::TObject::JSGUpdate() {}

/* 80280E28-80280E30 27B768 0008+00 1/0 12/0 0/0 .text            JSGGetFlag__Q26JStage7TObjectCFv
 */
bool JStage::TObject::JSGGetFlag() const {
    return false;
}

/* 80280E30-80280E34 27B770 0004+00 1/0 12/0 0/0 .text            JSGSetFlag__Q26JStage7TObjectFUl
 */
void JStage::TObject::JSGSetFlag(u32) {}

/* 80280E34-80280E3C 27B774 0008+00 1/0 12/0 0/0 .text JSGGetData__Q26JStage7TObjectCFUlPvUl */
bool JStage::TObject::JSGGetData(u32, void*, u32) const {
    return false;
}

/* 80280E3C-80280E40 27B77C 0004+00 1/0 11/0 0/0 .text JSGSetData__Q26JStage7TObjectFUlPCvUl */
void JStage::TObject::JSGSetData(u32, void const*, u32) {}

/* 80280E40-80280E44 27B780 0004+00 1/0 12/0 0/0 .text
 * JSGGetParent__Q26JStage7TObjectCFPPQ26JStage7TObjectPUl      */
void JStage::TObject::JSGGetParent(JStage::TObject**, u32*) const {}

/* 80280E44-80280E48 27B784 0004+00 1/0 12/0 0/0 .text
 * JSGSetParent__Q26JStage7TObjectFPQ26JStage7TObjectUl         */
void JStage::TObject::JSGSetParent(JStage::TObject*, u32) {}

/* 80280E48-80280E4C 27B788 0004+00 1/0 12/0 0/0 .text
 * JSGSetRelation__Q26JStage7TObjectFbPQ26JStage7TObjectUl      */
void JStage::TObject::JSGSetRelation(bool, JStage::TObject*, u32) {}

/* 80280E4C-80280E54 27B78C 0008+00 1/0 11/0 0/0 .text JSGFindNodeID__Q26JStage7TObjectCFPCc */
s32 JStage::TObject::JSGFindNodeID(char const*) const {
    return -1;
}

/* 80280E54-80280E90 27B794 003C+00 1/0 11/0 0/0 .text
 * JSGGetNodeTransformation__Q26JStage7TObjectCFUlPA4_f         */
int JStage::TObject::JSGGetNodeTransformation(u32, MtxP mtx) const {
    mtx[0][0] = 0.0f;
    mtx[0][1] = 0.0f;
    mtx[0][2] = 0.0f;
    mtx[0][3] = 0.0f;
    mtx[1][0] = 0.0f;
    mtx[1][1] = 0.0f;
    mtx[1][2] = 0.0f;
    mtx[1][3] = 0.0f;
    mtx[2][0] = 0.0f;
    mtx[2][1] = 0.0f;
    mtx[2][2] = 0.0f;
    mtx[2][3] = 0.0f;
    return 0;
}
