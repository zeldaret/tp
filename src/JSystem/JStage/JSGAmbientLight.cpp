#include "JSystem/JStage/JSGAmbientLight.h"

/* 80280B20-80280B80 27B460 0060+00 0/0 1/1 0/0 .text            __dt__Q26JStage13TAmbientLightFv */
JStage::TAmbientLight::~TAmbientLight() {}

/* 80280B80-80280B88 27B4C0 0008+00 1/0 1/0 0/0 .text JSGFGetType__Q26JStage13TAmbientLightCFv */
s32 JStage::TAmbientLight::JSGFGetType() const {
    return 4;
}

/* 80280B88-80280B9C 27B4C8 0014+00 1/0 1/0 0/0 .text JSGGetColor__Q26JStage13TAmbientLightCFv */
GXColor JStage::TAmbientLight::JSGGetColor() const {
    return (GXColor){255, 255, 255, 255};
}

/* 80280B9C-80280BA0 27B4DC 0004+00 1/0 0/0 0/0 .text
 * JSGSetColor__Q26JStage13TAmbientLightF8_GXColor              */
void JStage::TAmbientLight::JSGSetColor(GXColor) {}