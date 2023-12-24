#include "JSystem/JStage/JSGFog.h"
#include "float.h"

/* 80280C80-80280CE0 27B5C0 0060+00 0/0 1/1 0/0 .text            __dt__Q26JStage4TFogFv */
JStage::TFog::~TFog() {}

/* 80280CE0-80280CE8 27B620 0008+00 1/0 1/0 0/0 .text            JSGFGetType__Q26JStage4TFogCFv */
s32 JStage::TFog::JSGFGetType() const {
    return 6;
}

/* 80280CE8-80280CF0 27B628 0008+00 1/0 1/0 0/0 .text JSGGetFogFunction__Q26JStage4TFogCFv */
bool JStage::TFog::JSGGetFogFunction() const {
    return false;
}

/* 80280CF0-80280CF4 27B630 0004+00 1/0 0/0 0/0 .text
 * JSGSetFogFunction__Q26JStage4TFogF10_GXFogType               */
void JStage::TFog::JSGSetFogFunction(GXFogType) {}

/* 80280CF4-80280CFC 27B634 0008+00 1/0 1/0 0/0 .text            JSGGetStartZ__Q26JStage4TFogCFv */
f32 JStage::TFog::JSGGetStartZ() const {
    return 0.0f;
}

/* 80280CFC-80280D00 27B63C 0004+00 1/0 0/0 0/0 .text            JSGSetStartZ__Q26JStage4TFogFf */
void JStage::TFog::JSGSetStartZ(f32) {}

/* 80280D00-80280D0C 27B640 000C+00 1/0 1/0 0/0 .text            JSGGetEndZ__Q26JStage4TFogCFv */
f32 JStage::TFog::JSGGetEndZ() const {
    return FLT_MAX;
}

/* 80280D0C-80280D10 27B64C 0004+00 1/0 0/0 0/0 .text            JSGSetEndZ__Q26JStage4TFogFf */
void JStage::TFog::JSGSetEndZ(f32) {}

/* 80280D10-80280D24 27B650 0014+00 1/0 1/0 0/0 .text            JSGGetColor__Q26JStage4TFogCFv */
GXColor JStage::TFog::JSGGetColor() const {
    return (GXColor){255, 255, 255, 255};
}

/* 80280D24-80280D28 27B664 0004+00 1/0 0/0 0/0 .text JSGSetColor__Q26JStage4TFogF8_GXColor */
void JStage::TFog::JSGSetColor(GXColor) {}
