#include "JSystem/JStage/JSGLight.h"

/* 80280D28-80280D88 27B668 0060+00 0/0 1/1 0/0 .text            __dt__Q26JStage6TLightFv */
JStage::TLight::~TLight() {}

/* 80280D88-80280D90 27B6C8 0008+00 1/0 1/0 0/0 .text            JSGFGetType__Q26JStage6TLightCFv */
s32 JStage::TLight::JSGFGetType() const {
    return 5;
}

/* 80280D90-80280D98 27B6D0 0008+00 1/0 1/0 0/0 .text JSGGetLightType__Q26JStage6TLightCFv */
bool JStage::TLight::JSGGetLightType() const {
    return true;
}

/* 80280D98-80280D9C 27B6D8 0004+00 1/0 0/0 0/0 .text
 * JSGSetLightType__Q26JStage6TLightFQ26JStage7TELight          */
void JStage::TLight::JSGSetLightType(JStage::TELight) {}

/* 80280D9C-80280DB0 27B6DC 0014+00 1/0 1/0 0/0 .text            JSGGetColor__Q26JStage6TLightCFv */
GXColor JStage::TLight::JSGGetColor() const {
    return (GXColor){255, 255, 255, 255};
}

/* 80280DB0-80280DB4 27B6F0 0004+00 1/0 0/0 0/0 .text JSGSetColor__Q26JStage6TLightF8_GXColor */
void JStage::TLight::JSGSetColor(GXColor) {}

/* 80280DB4-80280DB8 27B6F4 0004+00 1/0 1/0 0/0 .text
 * JSGGetDistanceAttenuation__Q26JStage6TLightCFPfPfP13_GXDistAttnFn */
void JStage::TLight::JSGGetDistanceAttenuation(f32*, f32*, GXDistAttnFn*) const {}

/* 80280DB8-80280DBC 27B6F8 0004+00 1/0 0/0 0/0 .text
 * JSGSetDistanceAttenuation__Q26JStage6TLightFff13_GXDistAttnFn */
void JStage::TLight::JSGSetDistanceAttenuation(f32, f32, GXDistAttnFn) {}

/* 80280DBC-80280DC0 27B6FC 0004+00 1/0 1/0 0/0 .text
 * JSGGetAngleAttenuation__Q26JStage6TLightCFPfP9_GXSpotFn      */
void JStage::TLight::JSGGetAngleAttenuation(f32*, GXSpotFn*) const {}

/* 80280DC0-80280DC4 27B700 0004+00 1/0 0/0 0/0 .text
 * JSGSetAngleAttenuation__Q26JStage6TLightFf9_GXSpotFn         */
void JStage::TLight::JSGSetAngleAttenuation(f32, GXSpotFn) {}

/* 80280DC4-80280DC8 27B704 0004+00 1/0 1/0 0/0 .text JSGGetPosition__Q26JStage6TLightCFP3Vec */
void JStage::TLight::JSGGetPosition(Vec*) const {}

/* 80280DC8-80280DCC 27B708 0004+00 1/0 0/0 0/0 .text JSGSetPosition__Q26JStage6TLightFRC3Vec */
void JStage::TLight::JSGSetPosition(Vec const&) {}

/* 80280DCC-80280DD0 27B70C 0004+00 1/0 1/0 0/0 .text JSGGetDirection__Q26JStage6TLightCFP3Vec */
void JStage::TLight::JSGGetDirection(Vec*) const {}

/* 80280DD0-80280DD4 27B710 0004+00 1/0 0/0 0/0 .text JSGSetDirection__Q26JStage6TLightFRC3Vec */
void JStage::TLight::JSGSetDirection(Vec const&) {}