#ifndef TVARIABLE_VALUE_OUTPUT_OBJECT_H
#define TVARIABLE_VALUE_OUTPUT_OBJECT_H

#include "JSystem/JStudio/JStudio/jstudio-object.h"

// Fake header for JStudio_JStage/control.h. Due to compiler version differences, retail needs the
// class definition of TVariableValueOutput_object_ to come before it's used, while debug needs it
// to come after it's used. The include of this header is ifdefed to support both.

namespace JStudio_JStage {

template<class TAdaptor, class TStageObject>
struct TVariableValueOutput_object_ : public JStudio::TVariableValue::TOutput {
    typedef f32 (TStageObject::*GetFunc)() const;
    typedef void (TStageObject::*SetFunc)(f32);
    TVariableValueOutput_object_() : field_0x4(-1), field_0x8(NULL), field_0x14(NULL) {}
    TVariableValueOutput_object_(typename TAdaptor::TEVariableValue param_1, 
    SetFunc param_2, GetFunc param_3) : field_0x4(param_1), field_0x8(param_2), field_0x14(param_3) {

    }

    virtual void operator()(f32 param_1, JStudio::TAdaptor* param_2) const {
        (((TAdaptor*)param_2)->get_pJSG_()->*field_0x8)(param_1);
    }
    virtual ~TVariableValueOutput_object_() {}

    bool isEnd_() const { return field_0x4 == -1; }
    void adaptor_setOutput_(TAdaptor* adaptor) {
        adaptor->adaptor_referVariableValue(field_0x4)->setOutput(this);
    }
    void setVariableValue_(const TStageObject* pObj, TAdaptor* pAdaptor) const {
        f32 val = (pObj->*field_0x14)();
        pAdaptor->adaptor_setVariableValue_immediate(field_0x4, val);
    }

    int field_0x4;
    SetFunc field_0x8;
    GetFunc field_0x14;
};

};  // namespace JStudio_JStage

#endif /* TVARIABLE_VALUE_OUTPUT_OBJECT_H */
