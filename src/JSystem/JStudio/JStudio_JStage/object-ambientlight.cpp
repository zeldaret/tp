//
// object-ambientlight
//

#include "JSystem/JStudio/JStudio_JStage/object-ambientlight.h"

/* 8028B610-8028B6AC 285F50 009C+00 0/0 1/1 0/0 .text
 * __ct__Q214JStudio_JStage21TAdaptor_ambientLightFPCQ26JStage7TSystemPQ26JStage13TAmbientLight */
JStudio_JStage::TAdaptor_ambientLight::TAdaptor_ambientLight(JStage::TSystem const* param_1,
                                                             JStage::TAmbientLight* param_2)
    : TAdaptor_object_(param_1, param_2) {}

/* 8028B6AC-8028B720 285FEC 0074+00 1/0 0/0 0/0 .text
 * __dt__Q214JStudio_JStage21TAdaptor_ambientLightFv            */
JStudio_JStage::TAdaptor_ambientLight::~TAdaptor_ambientLight() {
    adaptor_do_end();
}

/* 8028B720-8028B724 286060 0004+00 1/0 0/0 0/0 .text
 * adaptor_do_prepare__Q214JStudio_JStage21TAdaptor_ambientLightFv */
void JStudio_JStage::TAdaptor_ambientLight::adaptor_do_prepare() {
}

/* 8028B724-8028B7B0 286064 008C+00 1/0 0/0 0/0 .text
 * adaptor_do_begin__Q214JStudio_JStage21TAdaptor_ambientLightFv */
void JStudio_JStage::TAdaptor_ambientLight::adaptor_do_begin() {
    adaptor_object_begin_();
    GXColor color = get_pJSG_()->JSGGetColor();
    adaptor_setVariableValue_GXColor(sauVariableValue_4_COLOR_RGBA, color);
}

/* 8028B7B0-8028B804 2860F0 0054+00 1/0 0/0 0/0 .text
 * adaptor_do_end__Q214JStudio_JStage21TAdaptor_ambientLightFv  */
void JStudio_JStage::TAdaptor_ambientLight::adaptor_do_end() {
    adaptor_object_end_();
}

/* 8028B804-8028B87C 286144 0078+00 1/0 0/0 0/0 .text
 * adaptor_do_update__Q214JStudio_JStage21TAdaptor_ambientLightFUl */
void JStudio_JStage::TAdaptor_ambientLight::adaptor_do_update(u32 param_1) {
    JStage::TAmbientLight* lightObj = get_pJSG_();
    GXColor color;
    adaptor_getVariableValue_GXColor(&color, sauVariableValue_4_COLOR_RGBA);
    lightObj->JSGSetColor(color);
    pJSGObject_->JSGUpdate();
}

/* 8028B87C-8028B8A0 2861BC 0024+00 1/0 0/0 0/0 .text
 * adaptor_do_data__Q214JStudio_JStage21TAdaptor_ambientLightFPCvUlPCvUl */
void JStudio_JStage::TAdaptor_ambientLight::adaptor_do_data(void const* param_1, u32 param_2,
                                                            void const* param_3, u32 param_4) {
    adaptor_object_data_(param_1, param_2, param_3, param_4);
}