//
// object-fog
//

#include "JSystem/JStudio/JStudio_JStage/object-fog.h"

/* 8028C574-8028C610 286EB4 009C+00 0/0 1/1 0/0 .text
 * __ct__Q214JStudio_JStage12TAdaptor_fogFPCQ26JStage7TSystemPQ26JStage4TFog */
JStudio_JStage::TAdaptor_fog::TAdaptor_fog(JStage::TSystem const* param_0, JStage::TFog* param_1)
    : TAdaptor_object_(param_0, param_1) {}

/* 8028C610-8028C684 286F50 0074+00 1/0 0/0 0/0 .text __dt__Q214JStudio_JStage12TAdaptor_fogFv */
JStudio_JStage::TAdaptor_fog::~TAdaptor_fog() {
    adaptor_do_end();
}

/* 8043139C-80431400 05E0BC 0060+04 2/3 0/0 0/0 .bss
 * saoVVOutput___Q214JStudio_JStage12TAdaptor_fog               */
JStudio_JStage::TVariableValueOutput_object_<JStudio_JStage::TAdaptor_fog, JStage::TFog> JStudio_JStage::TAdaptor_fog::saoVVOutput_[3] = {
    JStudio_JStage::TVariableValueOutput_object_<JStudio_JStage::TAdaptor_fog, JStage::TFog>(JStudio_JStage::TAdaptor_fog::TEFOG_4, &JStage::TFog::JSGSetStartZ, &JStage::TFog::JSGGetStartZ),
    JStudio_JStage::TVariableValueOutput_object_<JStudio_JStage::TAdaptor_fog, JStage::TFog>(JStudio_JStage::TAdaptor_fog::TEFOG_5, &JStage::TFog::JSGSetEndZ, &JStage::TFog::JSGGetEndZ),
    JStudio_JStage::TVariableValueOutput_object_<JStudio_JStage::TAdaptor_fog, JStage::TFog>(),
};

/* 8028C684-8028C6CC 286FC4 0048+00 1/0 0/0 0/0 .text
 * adaptor_do_prepare__Q214JStudio_JStage12TAdaptor_fogFv       */
void JStudio_JStage::TAdaptor_fog::adaptor_do_prepare() {
    TVariableValueOutput_object_<JStudio_JStage::TAdaptor_fog, JStage::TFog>* pOutput =
        saoVVOutput_;
    while (!pOutput->isEnd_()) {
        pOutput->adaptor_setOutput_(this);
        pOutput++;
    }
}

/* 8028C6CC-8028C7B4 28700C 00E8+00 1/0 0/0 0/0 .text
 * adaptor_do_begin__Q214JStudio_JStage12TAdaptor_fogFv         */
void JStudio_JStage::TAdaptor_fog::adaptor_do_begin() {
    adaptor_object_begin_();
    JStage::TFog* pFog = get_pJSG_();
    adaptor_setVariableValue_GXColor(sauVariableValue_4_COLOR_RGBA, pFog->JSGGetColor());
    TVariableValueOutput_object_<JStudio_JStage::TAdaptor_fog, JStage::TFog>* pOutput =
        saoVVOutput_;
    while (!pOutput->isEnd_()) {
        pOutput->setVariableValue_(pFog, this);
        pOutput++;
    }
}

/* 8028C7B4-8028C808 2870F4 0054+00 1/0 0/0 0/0 .text
 * adaptor_do_end__Q214JStudio_JStage12TAdaptor_fogFv           */
void JStudio_JStage::TAdaptor_fog::adaptor_do_end() {
    adaptor_object_end_();
}

/* 8028C808-8028C880 287148 0078+00 1/0 0/0 0/0 .text
 * adaptor_do_update__Q214JStudio_JStage12TAdaptor_fogFUl       */
void JStudio_JStage::TAdaptor_fog::adaptor_do_update(u32 param_1) {
    JStage::TFog* pFog = get_pJSG_();
    GXColor color;
    adaptor_getVariableValue_GXColor(&color, sauVariableValue_4_COLOR_RGBA);
    pFog->JSGSetColor(color);
    pJSGObject_->JSGUpdate();
}

/* 8028C880-8028C8A4 2871C0 0024+00 1/0 0/0 0/0 .text
 * adaptor_do_data__Q214JStudio_JStage12TAdaptor_fogFPCvUlPCvUl */
void JStudio_JStage::TAdaptor_fog::adaptor_do_data(void const* param_1, u32 param_2,
                                                       void const* param_3, u32 param_4) {
    adaptor_object_data_(param_1, param_2, param_3, param_4);
}