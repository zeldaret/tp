#include "JSystem/JStage/JSGSystem.h"

/* 80280E90-80280EF0 27B7D0 0060+00 0/0 1/1 0/0 .text            __dt__Q26JStage7TSystemFv */
JStage::TSystem::~TSystem() {}

/* 80280EF0-80280EF8 27B830 0008+00 1/0 1/0 0/0 .text            JSGFGetType__Q26JStage7TSystemCFv
 */
s32 JStage::TSystem::JSGFGetType() const {
    return 1;
}

/* 80280EF8-80280F00 27B838 0008+00 1/0 0/0 0/0 .text
 * JSGFindObject__Q26JStage7TSystemCFPPQ26JStage7TObjectPCcQ26JStage8TEObject */
int JStage::TSystem::JSGFindObject(JStage::TObject**, char const*, JStage::TEObject) const {
    return 1;
}

/* 80280F00-80280F08 27B840 0008+00 1/0 1/0 0/0 .text
 * JSGCreateObject__Q26JStage7TSystemFPCcQ26JStage8TEObjectUl   */
bool JStage::TSystem::JSGCreateObject(char const*, JStage::TEObject, u32) {
    return false;
}

/* 80280F08-80280F0C 27B848 0004+00 1/0 1/0 0/0 .text
 * JSGDestroyObject__Q26JStage7TSystemFPQ26JStage7TObject       */
void JStage::TSystem::JSGDestroyObject(JStage::TObject*) {}

/* 80280F0C-80280F14 27B84C 0008+00 1/0 1/0 0/0 .text JSGGetSystemData__Q26JStage7TSystemFUl */
bool JStage::TSystem::JSGGetSystemData(u32) {
    return false;
}

/* 80280F14-80280F18 27B854 0004+00 1/0 1/0 0/0 .text JSGSetSystemData__Q26JStage7TSystemFUlUl */
void JStage::TSystem::JSGSetSystemData(u32, u32) {}