#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JStudio/JStudio/jstudio-object.h"

namespace JStudio {
namespace {

template <typename T>
class TOutputVariableValue_BOOL_ : public JStudio::TVariableValue::TOutput {
public:
    typedef void (T::*Func)(JStudio::data::TEOperationData, const void*, u32);

    TOutputVariableValue_BOOL_(Func f) : mFunc(f) {}
    virtual void operator()(f32 f, JStudio::TAdaptor* adaptor) const {
        BOOL value = 0;
        if (f >= 0.5f) {
            value = 1;
        }
        (static_cast<T*>(adaptor)->*mFunc)(data::UNK_0x2, &value, 4);
    }
    virtual ~TOutputVariableValue_BOOL_() {}

private:
    Func mFunc;
};

TOutputVariableValue_BOOL_<JStudio::TAdaptor_actor>
    soovv_actor_PARENT_ENABLE_(&JStudio::TAdaptor_actor::adaptor_do_PARENT_ENABLE);
TOutputVariableValue_BOOL_<JStudio::TAdaptor_actor>
    soovv_actor_RELATION_ENABLE_(&JStudio::TAdaptor_actor::adaptor_do_RELATION_ENABLE);

TOutputVariableValue_BOOL_<JStudio::TAdaptor_camera>
    soovv_camera_PARENT_ENABLE_(&JStudio::TAdaptor_camera::adaptor_do_PARENT_ENABLE);
TOutputVariableValue_BOOL_<JStudio::TAdaptor_camera>
    soovv_camera_TARGET_PARENT_ENABLE_(&JStudio::TAdaptor_camera::adaptor_do_TARGET_PARENT_ENABLE);

TOutputVariableValue_BOOL_<JStudio::TAdaptor_light>
    soovv_light_ENABLE_(&JStudio::TAdaptor_light::adaptor_do_ENABLE);

TOutputVariableValue_BOOL_<JStudio::TAdaptor_particle>
    soovv_particle_PARENT_ENABLE_(&JStudio::TAdaptor_particle::adaptor_do_PARENT_ENABLE);
TOutputVariableValue_BOOL_<JStudio::TAdaptor_particle>
    soovv_particle_REPEAT_(&JStudio::TAdaptor_particle::adaptor_do_REPEAT);
TOutputVariableValue_BOOL_<JStudio::TAdaptor_particle>
    soovv_particle_ON_EXIT_NOT_END_(&JStudio::TAdaptor_particle::adaptor_do_ON_EXIT_NOT_END);

TOutputVariableValue_BOOL_<JStudio::TAdaptor_sound>
    soovv_sound_PARENT_ENABLE_(&JStudio::TAdaptor_sound::adaptor_do_PARENT_ENABLE);
TOutputVariableValue_BOOL_<JStudio::TAdaptor_sound>
    soovv_sound_REPEAT_(&JStudio::TAdaptor_sound::adaptor_do_REPEAT);
TOutputVariableValue_BOOL_<JStudio::TAdaptor_sound>
    soovv_sound_CONTINUOUS_(&JStudio::TAdaptor_sound::adaptor_do_CONTINUOUS);
TOutputVariableValue_BOOL_<JStudio::TAdaptor_sound>
    soovv_sound_LOCATED_(&JStudio::TAdaptor_sound::adaptor_do_LOCATED);
TOutputVariableValue_BOOL_<JStudio::TAdaptor_sound>
    soovv_sound_ON_EXIT_NOT_END_(&JStudio::TAdaptor_sound::adaptor_do_ON_EXIT_NOT_END);
};  // namespace
};  // namespace JStudio

JStudio::TVariableValue::TOutput::~TOutput() {}

void JStudio::TVariableValue::update(f64 param_0, JStudio::TAdaptor* param_1) {
    if (field_0x8) {
        field_0x8(this, param_0);
        JUT_ASSERT(200, pOutput_!=NULL);
        (*pOutput_)(mValue, param_1);
    }
}

void JStudio::TVariableValue::update_immediate_(JStudio::TVariableValue* param_0, f64 param_1) {
    param_0->mValue = param_0->field_0xc.val;
    param_0->field_0x8 = NULL;
}

void JStudio::TVariableValue::update_time_(JStudio::TVariableValue* param_0, f64 param_1) {
    f64 v = param_0->field_0xc.val * (param_0->field_0x4 * param_1);
    param_0->mValue = v;
}

void JStudio::TVariableValue::update_functionValue_(JStudio::TVariableValue* param_0,
                                                        f64 param_1) {

    TFunctionValue *fv = param_0->field_0xc.fv;
    f64 v = fv->getValue(param_0->field_0x4 * param_1);
    param_0->mValue = v;
}

JStudio::TVariableValue::TOutput_none_::~TOutput_none_() {}

void JStudio::TVariableValue::TOutput_none_::operator()(f32 param_0,
                                                        JStudio::TAdaptor* param_1) const {
    /* empty function */
}

JStudio::TAdaptor::~TAdaptor() {}

const char *JStudio::TAdaptor::adaptor_getID_string() const {
    return pObject_ != NULL ? (const char*)pObject_->getID() : "(unnamed)";
}

// void JStudio::TAdaptor::adaptor_do_prepare() {
void JStudio::TAdaptor::adaptor_do_prepare() {
    /* empty function */
}

void JStudio::TAdaptor::adaptor_do_begin() {
    /* empty function */
}

void JStudio::TAdaptor::adaptor_do_end() {
    /* empty function */
}

void JStudio::TAdaptor::adaptor_do_update(u32 param_0) {
    /* empty function */
}

void JStudio::TAdaptor::adaptor_do_data(void const* param_0, u32 param_1, void const* param_2,
                                        u32 param_3) {
    /* empty function */
}

void JStudio::TAdaptor::adaptor_setVariableValue(JStudio::TControl* pControl, u32 param_2,
                                                     JStudio::data::TEOperationData param_3,
                                                     void const* param_4, u32 uSize) {
    JUT_ASSERT(304, pControl!=NULL);
    setVarFunc pfn = NULL;
    switch (param_3) {
    case JStudio::data::UNK_0x1:
        JGADGET_ASSERTWARN(310, uSize==0);
        pfn = &adaptor_setVariableValue_VOID_;
        break;
    case JStudio::data::UNK_0x2:
        JGADGET_ASSERTWARN(314, uSize==sizeof(std::uint32_t));
        pfn = &adaptor_setVariableValue_IMMEDIATE_;
        break;
    case JStudio::data::UNK_0x3:
        JGADGET_ASSERTWARN(318, uSize==sizeof(float));
        pfn = &adaptor_setVariableValue_TIME_;
        break;
    case JStudio::data::UNK_0x10:
        pfn = &adaptor_setVariableValue_FVR_NAME_;
        break;
    case JStudio::data::UNK_0x12:
        JGADGET_ASSERTWARN(325, uSize==sizeof(std::uint32_t));
        pfn = &adaptor_setVariableValue_FVR_INDEX_;
        break;
     default:
        JGADGET_WARNMSG3(330, "unknown data-type : ", param_3, "\n  demo-object : ", adaptor_getID_string());
        return;
    }

    JUT_ASSERT(334, pfn!=NULL);
    (*pfn)(this, pControl, param_2, param_4, uSize);
}


void JStudio::TAdaptor::adaptor_setVariableValue_n(JStudio::TControl* pControl,
                                                       u32 const* param_2, u32 uNumber,
                                                       JStudio::data::TEOperationData param_4,
                                                       void const* param_5, u32 uSize) {
    JUT_ASSERT(343, pControl!=NULL);
    setVarFunc pfn = NULL;
    switch(param_4) {
    case JStudio::data::UNK_0x1:
        JGADGET_ASSERTWARN(349, uSize==0);
        uSize = 0;
        pfn = adaptor_setVariableValue_VOID_;
        break;
    case JStudio::data::UNK_0x2:
        JGADGET_ASSERTWARN(354, uSize==sizeof(std::uint32_t)*uNumber);
        uSize = 4;
        pfn = adaptor_setVariableValue_IMMEDIATE_;
        break;
    case JStudio::data::UNK_0x3:
        JGADGET_ASSERTWARN(359, uSize==sizeof(float)*uNumber);
        uSize = 4;
        pfn = adaptor_setVariableValue_TIME_;
        break;
    case JStudio::data::UNK_0x12:
        JGADGET_ASSERTWARN(364, uSize==sizeof(std::uint32_t)*uNumber);
        uSize = 4;
        pfn = adaptor_setVariableValue_FVR_INDEX_;
        break;
    default:
        JGADGET_WARNMSG3(370, "unknown data-type : ", param_4, "\n  demo-object : ", adaptor_getID_string());
        return;
    }

    JUT_ASSERT(374, pfn!=NULL)
    JGadget::TEnumerator<const u32*> enumerator(param_2, param_2 + uNumber);
    while (enumerator) {
        u32 sp28 = **enumerator;
        (*pfn)(this, pControl, sp28, param_5, uSize);
        param_5 = (const void*)((intptr_t)param_5 + uSize);
    }
}

void JStudio::TAdaptor::adaptor_setVariableValue_immediate(
    JStudio::TAdaptor::TSetVariableValue_immediate const* p) {
    JUT_ASSERT(388, p!=NULL);
    u32 uVar1;
    while ((uVar1 = p->field_0x0) != 0xffffffff) {
        adaptor_setVariableValue_immediate(uVar1, p->field_0x4);
        p++;
    }
}

void JStudio::TAdaptor::adaptor_setVariableValue_Vec(u32 const* puIndex, Vec const& param_2) {
    JUT_ASSERT(400, puIndex!=NULL);
    adaptor_referVariableValue(puIndex[0])->setValue_immediate(param_2.x);
    adaptor_referVariableValue(puIndex[1])->setValue_immediate(param_2.y);
    adaptor_referVariableValue(puIndex[2])->setValue_immediate(param_2.z);
}

void JStudio::TAdaptor::adaptor_getVariableValue_Vec(Vec* p, u32 const* puIndex) const {
    JUT_ASSERT(410, p!=NULL);
    JUT_ASSERT(411, puIndex!=NULL);
    p->x = adaptor_getVariableValue(puIndex[0])->getValue();
    p->y = adaptor_getVariableValue(puIndex[1])->getValue();
    p->z = adaptor_getVariableValue(puIndex[2])->getValue();
}

void JStudio::TAdaptor::adaptor_setVariableValue_GXColor(u32 const* puIndex,
                                                         GXColor const& param_2) {
    JUT_ASSERT(431, puIndex!=NULL);
    adaptor_referVariableValue(puIndex[0])->setValue_immediate(param_2.r);
    adaptor_referVariableValue(puIndex[1])->setValue_immediate(param_2.g);
    adaptor_referVariableValue(puIndex[2])->setValue_immediate(param_2.b);
    adaptor_referVariableValue(puIndex[3])->setValue_immediate(param_2.a);
}

void JStudio::TAdaptor::adaptor_getVariableValue_GXColor(GXColor* p,
                                                             u32 const* puIndex) const {
    JUT_ASSERT(442, p!=NULL);
    JUT_ASSERT(443, puIndex!=NULL);
    p->r = adaptor_getVariableValue(puIndex[0])->getValue_uint8();
    p->g = adaptor_getVariableValue(puIndex[1])->getValue_uint8();
    p->b = adaptor_getVariableValue(puIndex[2])->getValue_uint8();
    p->a = adaptor_getVariableValue(puIndex[3])->getValue_uint8();
}

void JStudio::TAdaptor::adaptor_updateVariableValue(JStudio::TControl* pControl, u32 param_2) {
    JUT_ASSERT(479, pControl!=NULL);
    f64 dVar3 = pControl->getSecondPerFrame();
    JGadget::TEnumerator<JStudio::TVariableValue*> enumerator(pValue_, pValue_ + uvv_);
    while (enumerator) {
        JStudio::TVariableValue* value = *enumerator;
        value->forward(param_2);
        value->update(dVar3, this);
    }
}

void JStudio::TAdaptor::adaptor_setVariableValue_VOID_(JStudio::TAdaptor* param_1,
                                                       JStudio::TControl* param_2, u32 param_3,
                                                       void const* param_4, u32 uSize) {
    JUT_ASSERT(499, uSize==0);
#if DEBUG
    if (param_3 >= param_1->uvv_) {
        JGADGET_WARNMSG3(505, "undefined variable-value : ", param_3, "\n  demo-object : ", param_1->adaptor_getID_string());
        return;
    }
#endif
    TVariableValue* value = &param_1->pValue_[param_3];
    value->setValue_none();
}

void JStudio::TAdaptor::adaptor_setVariableValue_IMMEDIATE_(JStudio::TAdaptor* param_1,
                                                            JStudio::TControl* param_2, u32 param_3,
                                                            void const* pContent, u32 uSize) {
    JUT_ASSERT(518, uSize==sizeof(std::uint32_t));
    JUT_ASSERT(519, pContent!=NULL);
#if DEBUG
    if (param_3 >= param_1->uvv_) {
        JGADGET_WARNMSG3(525, "undefined variable-value : ", param_3, "\n  demo-object : ", param_1->adaptor_getID_string());
        return;
    }
#endif
    TVariableValue* value = &param_1->pValue_[param_3];
    value->setValue_immediate(*(f32*)pContent);
}

void JStudio::TAdaptor::adaptor_setVariableValue_TIME_(JStudio::TAdaptor* param_1,
                                                       JStudio::TControl* param_2, u32 param_3,
                                                       void const* pContent, u32 uSize) {
    JUT_ASSERT(538, uSize==sizeof(float));
    JUT_ASSERT(539, pContent!=NULL);
#if DEBUG
    if (param_3 >= param_1->uvv_) {
        JGADGET_WARNMSG3(545, "undefined variable-value : ", param_3, "\n  demo-object : ", param_1->adaptor_getID_string());
        return;
    }
#endif
    TVariableValue* value = &param_1->pValue_[param_3];
    value->setValue_time(*(f32*)pContent);
}

void JStudio::TAdaptor::adaptor_setVariableValue_FVR_NAME_(JStudio::TAdaptor* param_1,
                                                           JStudio::TControl* param_2, u32 param_3,
                                                           void const* pContent, u32 uSize) {
    JUT_ASSERT(558, pContent!=NULL);
#if DEBUG
    if (param_3 >= param_1->uvv_) {
        JGADGET_WARNMSG3(564, "undefined variable-value : ", param_3, "\n  demo-object : ", param_1->adaptor_getID_string());
        return;
    }
#endif
    TVariableValue* value = &param_1->pValue_[param_3];
    TFunctionValue* function = param_2->getFunctionValue(pContent,uSize);
    value->setValue_functionValue(function);
}

void JStudio::TAdaptor::adaptor_setVariableValue_FVR_INDEX_(JStudio::TAdaptor* param_1,
                                                            JStudio::TControl* param_2, u32 param_3,
                                                            void const* pContent, u32 uSize) {
    JUT_ASSERT(578, uSize==sizeof(std::uint32_t));
    JUT_ASSERT(579, pContent!=NULL);
#if DEBUG
    if (param_3 >= param_1->uvv_) {
        JGADGET_WARNMSG3(585, "undefined variable-value : ", param_3, "\n  demo-object : ", param_1->adaptor_getID_string());
        return;
    }
#endif
    TVariableValue* value = &param_1->pValue_[param_3];
    TFunctionValue* function = param_2->getFunctionValue_index(*(u32*)pContent);
    value->setValue_functionValue(function);
}

JStudio::TObject::~TObject() {
    delete mpAdaptor;
}

void JStudio::TObject::forward_value(u32 param_0) {
    TAdaptor* adaptor = getAdaptor();
    if (adaptor != NULL) {
        adaptor->adaptor_updateVariableValue(getControl(), param_0);
        adaptor->adaptor_do_update(param_0);
    }
}

void JStudio::TObject::do_begin() {
    TAdaptor* adaptor = getAdaptor();
    if (adaptor != NULL) {
        adaptor->adaptor_do_begin();
    }
}

void JStudio::TObject::do_end() {
    TAdaptor* adaptor = getAdaptor();
    if (adaptor != NULL) {
        adaptor->adaptor_do_end();
    }
}

void JStudio::TObject::do_wait(u32 param_0) {
    forward_value(param_0);
}

void JStudio::TObject::do_data(void const* param_0, u32 param_1, void const* param_2,
                                   u32 param_3) {
    TAdaptor* adaptor = getAdaptor();
    if (adaptor != NULL) {
        adaptor->adaptor_do_data(param_0, param_1, param_2, param_3);
    }
}

JStudio::TObject::TObject(JStudio::data::TE32Block param_1, const void* param_2, u32 param_3, JStudio::TAdaptor* param_4)
    : stb::TObject(param_1, param_2, param_3), mpAdaptor(param_4) {

}

JStudio::TObject::TObject(JStudio::stb::data::TParse_TBlock_object const& param_0,
                          JStudio::TAdaptor* param_1)
    : stb::TObject(param_0), mpAdaptor(param_1) {}

JStudio::TAdaptor_actor::~TAdaptor_actor() {
}

JStudio::TObject_actor::TObject_actor(JStudio::stb::data::TParse_TBlock_object const& rParse,
                                          JStudio::TAdaptor_actor* param_1) : TObject(rParse, param_1) {
    JGADGET_ASSERTWARN(730, rParse.get_type()==data::BLOCK_ACTOR);
}

u32 const JStudio::TAdaptor_actor::sauVariableValue_3_TRANSLATION_XYZ[3] = {
    3, 4, 5,
};

 u32 const JStudio::TAdaptor_actor::sauVariableValue_3_ROTATION_XYZ[3] = {
    6, 7, 8,
};

u32 const JStudio::TAdaptor_actor::sauVariableValue_3_SCALING_XYZ[3] = {
    9, 10, 11,
};

 JStudio::TVariableValue::TOutput_none_ JStudio::TVariableValue::soOutput_none_;

void JStudio::TObject_actor::do_paragraph(u32 param_1, void const* param_2, u32 param_3) {
    TAdaptor* adaptor = getAdaptor();
    TControl* control;
    if (adaptor == NULL) {
        JGADGET_WARNMSG1(737, "adaptor not exist\n  demo-object : ", getID_string());
        return;
    }
    typedef void (TAdaptor_actor::*actorParagraphFunc)(JStudio::data::TEOperationData, const void*, u32); 

    control = getControl();
    int uVar1 = (param_1 >> 5);
    data::TEOperationData operation = (data::TEOperationData)(param_1 &= 0x1F);
    actorParagraphFunc pmfn_ = NULL;
    u32 u_ = -1;
    const u32* pu_ = NULL;
    TVariableValue::TOutput* pvv_o_ = NULL;
    switch (uVar1) {
        case 57:
            pmfn_ = &TAdaptor_actor::adaptor_do_SHAPE;
            goto fun;
        case 58:
            pmfn_ = &TAdaptor_actor::adaptor_do_ANIMATION;
            goto fun;
        case 67:
            pmfn_ = &TAdaptor_actor::adaptor_do_ANIMATION_MODE;
            goto fun;
        case 76:
            pmfn_ = &TAdaptor_actor::adaptor_do_TEXTURE_ANIMATION;
            goto fun;
        case 78:
            pmfn_ = &TAdaptor_actor::adaptor_do_TEXTURE_ANIMATION_MODE;
            goto fun;
        case 48:
            pmfn_ = &TAdaptor_actor::adaptor_do_PARENT;
            goto fun;
        case 49:
            pmfn_ = &TAdaptor_actor::adaptor_do_PARENT_NODE;
            goto fun;
        case 50:
            pmfn_ = &TAdaptor_actor::adaptor_do_PARENT_ENABLE;
            u_ = 12;
            pvv_o_ = &JStudio::soovv_actor_PARENT_ENABLE_;
            goto value_or_fun;
        case 81:
            pmfn_ = &TAdaptor_actor::adaptor_do_PARENT_FUNCTION;
            goto fun;
        case 51:
            pmfn_ = &TAdaptor_actor::adaptor_do_RELATION;
            goto fun;
        case 52:
            pmfn_ = &TAdaptor_actor::adaptor_do_RELATION_NODE;
            goto fun;
        case 53:
            pmfn_ = &TAdaptor_actor::adaptor_do_RELATION_ENABLE;
            u_ = 13;
            pvv_o_ = &JStudio::soovv_actor_RELATION_ENABLE_;
            goto value_or_fun;
        case 59:
            u_ = 0;
            goto value;
        case 75:
            u_ = 1;
            goto value;
        case 9:
            u_ = 3;
            goto value;
        case 10:
            u_ = 4;
            goto value;
        case 11:
            u_ = 5;
            goto value;
        case 13:
            u_ = 6;
            goto value;
        case 14:
            u_ = 7;
            goto value;
        case 15:
            u_ = 8;
            goto value;
        case 17:
            u_ = 9;
            goto value;
        case 18:
            u_ = 10;
            goto value;
        case 19:
            u_ = 11;
            goto value;
        case 12:
            pu_ = TAdaptor_actor::sauVariableValue_3_TRANSLATION_XYZ;
            u_ = 3;
            goto value_n;
        case 16:
            pu_ = TAdaptor_actor::sauVariableValue_3_ROTATION_XYZ;
            u_ = 3;
            goto value_n;
        case 20:
            pu_ = TAdaptor_actor::sauVariableValue_3_SCALING_XYZ;
            u_ = 3;
            goto value_n;
        default:
            JGADGET_WARNMSG3(772, "unknown operation : ", uVar1, "\n  demo-object : ", getID_string());
            return;
    }

value_or_fun:
    switch (operation) {
        case data::UNK_0x10:
        case data::UNK_0x11:
        case data::UNK_0x12:
            JUT_ASSERT(776, u_!=std::size_t(-1));
            JUT_ASSERT(776, pvv_o_!=NULL);
            adaptor->adaptor_setVariableValue(control, u_, operation, param_2, param_3);
            TVariableValue* value = adaptor->adaptor_referVariableValue(u_);
            value->setOutput(pvv_o_);
            break;
        default:
            JUT_ASSERT(776, pmfn_!=NULL);
            (((TAdaptor_actor*)adaptor)->*pmfn_)(operation, param_2, param_3);
    }
    return;

value:
    JUT_ASSERT(776, u_!=std::size_t(-1));
    adaptor->adaptor_setVariableValue(control, u_, operation, param_2, param_3);
    return;

value_n:
    JUT_ASSERT(776, pu_!=NULL);
    JUT_ASSERT(776, u_!=std::size_t(-1));
    adaptor->adaptor_setVariableValue_n(control, pu_, u_, operation, param_2, param_3);
    return;

fun:
    JUT_ASSERT(776, pmfn_!=NULL);
    (((TAdaptor_actor*)adaptor)->*pmfn_)(operation, param_2, param_3);
    return;
}

JStudio::TAdaptor_ambientLight::~TAdaptor_ambientLight() {}

JStudio::TObject_ambientLight::TObject_ambientLight(
    JStudio::stb::data::TParse_TBlock_object const& rParse,
    JStudio::TAdaptor_ambientLight* param_1) : TObject(rParse, param_1) {
        JGADGET_ASSERTWARN(819, rParse.get_type()==data::BLOCK_AMBIENTLIGHT);
}

u32 const JStudio::TAdaptor_ambientLight::sauVariableValue_3_COLOR_RGB[3] = {
    0, 1, 2,
};

u32 const JStudio::TAdaptor_ambientLight::sauVariableValue_4_COLOR_RGBA[4] = {
    0, 1, 2, 3,
};

void JStudio::TObject_ambientLight::do_paragraph(u32 param_1, void const* param_2,
                                                     u32 param_3) {
    TAdaptor* adaptor = getAdaptor();
    TControl* control;
    if (adaptor == NULL) {
        JGADGET_WARNMSG1(826, "adaptor not exist\n  demo-object : ", getID_string());
        return;
    }

    control = getControl();
    int uVar1 = (param_1 >> 5);
    data::TEOperationData operation = (data::TEOperationData)(param_1 &= 0x1F);
    u32 u_;
    const u32* pu_;
    switch (uVar1) {
        case 29:
            u_ = 0;
            goto value;
        case 30:
            u_ = 1;
            goto value;
        case 31:
            u_ = 2;
            goto value;
        case 32:
            u_ = 3;
            goto value;
        case 33:
            pu_ = TAdaptor_ambientLight::sauVariableValue_3_COLOR_RGB;
            u_ = 3;
            goto value_n;
        case 34:
            pu_ = TAdaptor_ambientLight::sauVariableValue_4_COLOR_RGBA;
            u_ = 4;
            goto value_n;
        default:
            JGADGET_WARNMSG3(840, "unknown operation : ", uVar1, "\n  demo-object : ", getID_string());
            return;
    }

value:
    JUT_ASSERT(844, u_!=std::size_t(-1));
    adaptor->adaptor_setVariableValue(control, u_, operation, param_2, param_3);
    return;

value_n:
    JUT_ASSERT(844, pu_!=0);
    JUT_ASSERT(844, u_!=std::size_t(-1));
    adaptor->adaptor_setVariableValue_n(control, pu_, u_, operation, param_2, param_3);
    return;
}

JStudio::TAdaptor_camera::~TAdaptor_camera() {}

JStudio::TObject_camera::TObject_camera(const void* param_1, u32 param_2, JStudio::TAdaptor_camera* param_3) : TObject(data::BLOCK_CAMERA, param_1, param_2, param_3) {

}

JStudio::TObject_camera::TObject_camera(JStudio::stb::data::TParse_TBlock_object const& rParse, JStudio::TAdaptor_camera* param_1)
    : TObject(rParse, param_1) {
    JGADGET_ASSERTWARN(893, rParse.get_type()==data::BLOCK_CAMERA);
}

u32 const JStudio::TAdaptor_camera::sauVariableValue_3_POSITION_XYZ[3] = {
    0, 1, 2,
};

u32 const JStudio::TAdaptor_camera::sauVariableValue_3_TARGET_POSITION_XYZ[3] = {
    3, 4, 5,
};

u32 const JStudio::TAdaptor_camera::sauVariableValue_2_DISTANCE_NEAR_FAR[2] = {
    8, 9,
};

void JStudio::TObject_camera::do_paragraph(u32 param_1, void const* param_2, u32 param_3) {
    TAdaptor* adaptor = getAdaptor();
    TControl* control;
    if (adaptor == NULL) {
        JGADGET_WARNMSG1(900, "adaptor not exist\n  demo-object : ", getID_string());
        return;
    }
    typedef void (TAdaptor_camera::*cameraParagraphFunc)(JStudio::data::TEOperationData, const void*, u32); 

    control = getControl();
    int uVar1 = (param_1 >> 5);
    data::TEOperationData operation = (data::TEOperationData)(param_1 &= 0x1F);
    u32 u_;
    const u32* pu_;
    cameraParagraphFunc pmfn_ = NULL;
    TVariableValue::TOutput *pvv_o_;
    switch (uVar1) {
        case 48:
            pmfn_ = &TAdaptor_camera::adaptor_do_PARENT;
            goto fun;
        case 49:
            pmfn_ = &TAdaptor_camera::adaptor_do_PARENT_NODE;
            goto fun;
        case 50:
            pmfn_ = &TAdaptor_camera::adaptor_do_PARENT_ENABLE;
            u_ = 10;
            pvv_o_ = &JStudio::soovv_camera_PARENT_ENABLE_;
            goto value_or_fun;
        case 81:
            pmfn_ = &TAdaptor_camera::adaptor_do_PARENT_FUNCTION;
            goto fun;
        case 82:
            pmfn_ = &TAdaptor_camera::adaptor_do_TARGET_PARENT;
            goto fun;
        case 83:
            pmfn_ = &TAdaptor_camera::adaptor_do_TARGET_PARENT_NODE;
            goto fun;
        case 84:
            pmfn_ = &TAdaptor_camera::adaptor_do_TARGET_PARENT_ENABLE;
            u_ = 11;
            pvv_o_ = &JStudio::soovv_camera_TARGET_PARENT_ENABLE_;
            goto value_or_fun;
        case 21:
            u_ = 0;
            goto value;
        case 22:
            u_ = 1;
            goto value;
        case 23:
            u_ = 2;
            goto value;
        case 25:
            u_ = 3;
            goto value;
        case 26:
            u_ = 4;
            goto value;
        case 27:
            u_ = 5;
            goto value;
        case 39:
            u_ = 6;
            goto value;
        case 38:
            u_ = 7;
            goto value;
        case 40:
            u_ = 8;
            goto value;
        case 41:
            u_ = 9;
            goto value;
        case 24:
            pu_ = TAdaptor_camera::sauVariableValue_3_POSITION_XYZ;
            u_ = 3;
            goto value_n;
        case 28:
            pu_ = TAdaptor_camera::sauVariableValue_3_TARGET_POSITION_XYZ;
            u_ = 3;
            goto value_n;
        case 42:
            pu_ = TAdaptor_camera::sauVariableValue_2_DISTANCE_NEAR_FAR;
            u_ = 2;
            goto value_n;
        default:
            JGADGET_WARNMSG3(929, "unknown operation : ", uVar1, "\n  demo-object : ", getID_string());
            return;
    }

value_or_fun:
    switch (operation) {
        case data::UNK_0x10:
        case data::UNK_0x11:
        case data::UNK_0x12:
            JUT_ASSERT(933, u_!=std::size_t(-1));
            JUT_ASSERT(933, pvv_o_!=NULL);
            adaptor->adaptor_setVariableValue(control, u_, operation, param_2, param_3);
            adaptor->adaptor_referVariableValue(u_)->setOutput(pvv_o_);
            break;
        default:
            JUT_ASSERT(933, pmfn_!=NULL);
            (((TAdaptor_camera*)adaptor)->*pmfn_)(operation, param_2, param_3);
            break;
    }
    return;

value:
    JUT_ASSERT(933, u_!=std::size_t(-1));
    adaptor->adaptor_setVariableValue(control, u_, operation, param_2, param_3);
    return;

value_n:
    JUT_ASSERT(933, pu_!=NULL);
    JUT_ASSERT(933, u_!=std::size_t(-1));
    adaptor->adaptor_setVariableValue_n(control, pu_, u_, operation, param_2, param_3);
    return;

fun:
    JUT_ASSERT(933, pmfn_!=NULL);
    (((TAdaptor_camera*)adaptor)->*pmfn_)(operation, param_2, param_3);
    return;
}

JStudio::TAdaptor_fog::~TAdaptor_fog() {}

JStudio::TObject_fog::TObject_fog(JStudio::stb::data::TParse_TBlock_object const& rParse,
                                      JStudio::TAdaptor_fog* param_1) : TObject(rParse, param_1) {
    JGADGET_ASSERTWARN(983, rParse.get_type()==data::BLOCK_FOG);
}

u32 const JStudio::TAdaptor_fog::sauVariableValue_3_COLOR_RGB[3] = {
    0, 1, 2,
};

u32 const JStudio::TAdaptor_fog::sauVariableValue_4_COLOR_RGBA[4] = {
    0, 1, 2, 3,
};

u32 const JStudio::TAdaptor_fog::sauVariableValue_2_RANGE_BEGIN_END[2] = {
    4, 5,
};

void JStudio::TObject_fog::do_paragraph(u32 param_1, void const* param_2, u32 param_3) {
    TAdaptor* adaptor = getAdaptor();
    TControl* control;
    if (adaptor == NULL) {
        JGADGET_WARNMSG1(990, "adaptor not exist\n  demo-object : ", getID_string());
        return;
    }

    control = getControl();
    u32 uVar1 = (param_1 >> 5);
    data::TEOperationData operation = (data::TEOperationData)(param_1 &= 0x1F);
    u32 u_;
    const u32* pu_;
    switch (uVar1) {
        case 29:
            u_ = 0;
            goto value;
        case 30:
            u_ = 1;
            goto value;
        case 31:
            u_ = 2;
            goto value;
        case 32:
            u_ = 3;
            goto value;
        case 43:
            u_ = 4;
            goto value;
        case 44:
            u_ = 5;
            goto value;
        case 33:
            pu_ = TAdaptor_fog::sauVariableValue_3_COLOR_RGB;
            u_ = 3;
            goto value_n;
        case 34:
            pu_ = TAdaptor_fog::sauVariableValue_4_COLOR_RGBA;
            u_ = 4;
            goto value_n;
        case 45:
            pu_ = TAdaptor_fog::sauVariableValue_2_RANGE_BEGIN_END;
            u_ = 2;
            goto value_n;
        default:
            return;
    }

value:
    adaptor->adaptor_setVariableValue(control, u_, operation, param_2, param_3);
    return;

value_n:
    adaptor->adaptor_setVariableValue_n(control, pu_, u_, operation, param_2, param_3);
    return;
}

JStudio::TAdaptor_light::~TAdaptor_light() {}

JStudio::TObject_light::TObject_light(JStudio::stb::data::TParse_TBlock_object const& rParse,
                                          JStudio::TAdaptor_light* param_1) : TObject(rParse, param_1) {
    JGADGET_ASSERTWARN(1077, rParse.get_type()==data::BLOCK_LIGHT);
}

u32 const JStudio::TAdaptor_light::sauVariableValue_2_DIRECTION_THETA_PHI[2] = {
    10, 11,
};

 u32 const JStudio::TAdaptor_light::sauVariableValue_3_COLOR_RGB[3] = {
    0, 1, 2,
};

u32 const JStudio::TAdaptor_light::sauVariableValue_4_COLOR_RGBA[4] = {
    0, 1, 2, 3,
};

u32 const JStudio::TAdaptor_light::sauVariableValue_3_POSITION_XYZ[3] = {
    4, 5, 6,
};

u32 const JStudio::TAdaptor_light::sauVariableValue_3_TARGET_POSITION_XYZ[3] = {
    7, 8, 9,
};

void JStudio::TObject_light::do_paragraph(u32 param_1, void const* param_2, u32 param_3) {
    TAdaptor* adaptor = getAdaptor();
    TControl* control;
    if (adaptor == NULL) {
        return;
    }
    typedef void (TAdaptor_light::*lightParagraphFunc)(JStudio::data::TEOperationData, const void*, u32); 

    control = getControl();
    u32 uVar1 = (param_1 >> 5);
    data::TEOperationData operation = (data::TEOperationData)(param_1 &= 0x1F);
    u32 u_;
    const u32* pu_;
    lightParagraphFunc pmfn_ = NULL;
    TVariableValue::TOutput *pOutput;
    switch (uVar1) {
        case 54:
            pmfn_ = &TAdaptor_light::adaptor_do_ENABLE;
            u_ = 12;
            pOutput = &JStudio::soovv_light_ENABLE_;
            goto value_or_fun;
        case 55:
            pmfn_ = &TAdaptor_light::adaptor_do_FACULTY;
            goto fun;
        case 29:
            u_ = 0;
            goto value;
        case 30:
            u_ = 1;
            goto value;
        case 31:
            u_ = 2;
            goto value;
        case 32:
            u_ = 3;
            goto value;
        case 21:
            u_ = 4;
            goto value;
        case 22:
            u_ = 5;
            goto value;
        case 23:
            u_ = 6;
            goto value;
        case 25:
            u_ = 7;
            goto value;
        case 26:
            u_ = 8;
            goto value;
        case 27:
            u_ = 9;
            goto value;
        case 35:
            u_ = 10;
            goto value;
        case 36:
            u_ = 11;
            goto value;
        case 33:
            pu_ = TAdaptor_light::sauVariableValue_3_COLOR_RGB;
            u_ = 3;
            goto value_n;
        case 34:
            pu_ = TAdaptor_light::sauVariableValue_4_COLOR_RGBA;
            u_ = 4;
            goto value_n;
        case 24:
            pu_ = TAdaptor_light::sauVariableValue_3_POSITION_XYZ;
            u_ = 3;
            goto value_n;
        case 28:
            pu_ = TAdaptor_light::sauVariableValue_3_TARGET_POSITION_XYZ;
            u_ = 3;
            goto value_n;
        case 37:
            pu_ = TAdaptor_light::sauVariableValue_2_DIRECTION_THETA_PHI;
            u_ = 2;
            goto value_n;
        default:
            return;
    }

value_or_fun:
    switch (operation) {
        case data::UNK_0x10:
        case data::UNK_0x11:
        case data::UNK_0x12:
            adaptor->adaptor_setVariableValue(control, u_, operation, param_2, param_3);
            adaptor->adaptor_referVariableValue(u_)->setOutput(pOutput);
            break;
        default:
            (((TAdaptor_light*)adaptor)->*pmfn_)(operation, param_2, param_3);
            break;
    }
    return;

value:
    adaptor->adaptor_setVariableValue(control, u_, operation, param_2, param_3);
    return;

value_n:
    adaptor->adaptor_setVariableValue_n(control, pu_, u_, operation, param_2, param_3);
    return;

fun:
    (((TAdaptor_light*)adaptor)->*pmfn_)(operation, param_2, param_3);
    return;
}

JStudio::TAdaptor_message::~TAdaptor_message() {}

JStudio::TObject_message::TObject_message(JStudio::stb::data::TParse_TBlock_object const& rParse, JStudio::TAdaptor_message* param_1)
    : TObject(rParse, param_1) {
    JGADGET_ASSERTWARN(1142, rParse.get_type()==data::BLOCK_MESSAGE);
}

void JStudio::TObject_message::do_paragraph(u32 param_1, void const* param_2, u32 param_3) {
    TAdaptor* adaptor = getAdaptor();
    if (adaptor != NULL) {
        u32 uVar1 = (param_1 >> 5);
        data::TEOperationData operation = (data::TEOperationData)(param_1 &= 0x1f);
        typedef void (TAdaptor_message::*messageParagraphFunc)(JStudio::data::TEOperationData, const void*, u32); 
        messageParagraphFunc pmfn_ = NULL;
        switch (uVar1) {
        case 0x42:
            pmfn_ = &TAdaptor_message::adaptor_do_MESSAGE;
            break;
        default:
            return;
        }
        JUT_ASSERT(1161, pmfn_!=NULL);
        (((TAdaptor_message*)adaptor)->*pmfn_)(operation, param_2, param_3);
    }

}

JStudio::TAdaptor_particle::~TAdaptor_particle() {}

JStudio::TObject_particle::TObject_particle(
    JStudio::stb::data::TParse_TBlock_object const& rParse, JStudio::TAdaptor_particle* param_1) : TObject(rParse, param_1) {
    JGADGET_ASSERTWARN(1245, rParse.get_type()==data::BLOCK_PARTICLE);
}

 u32 const JStudio::TAdaptor_particle::sauVariableValue_3_TRANSLATION_XYZ[3] = {
    0, 1, 2,
};

u32 const JStudio::TAdaptor_particle::sauVariableValue_3_ROTATION_XYZ[3] = {
    3, 4, 5,
};

u32 const JStudio::TAdaptor_particle::sauVariableValue_3_SCALING_XYZ[3] = {
    6, 7, 8,
};

u32 const JStudio::TAdaptor_particle::sauVariableValue_3_COLOR_RGB[3] = {
    9, 10, 11,
};

u32 const JStudio::TAdaptor_particle::sauVariableValue_4_COLOR_RGBA[4] = {
    9, 10, 11, 12,
};

u32 const JStudio::TAdaptor_particle::sauVariableValue_3_COLOR1_RGB[3] = {
    9, 10, 11,
};

u32 const JStudio::TAdaptor_particle::sauVariableValue_4_COLOR1_RGBA[4] = {
    9, 10, 11, 12,
};

void JStudio::TObject_particle::do_paragraph(u32 param_1, void const* param_2, u32 param_3) {
    TAdaptor* adaptor = getAdaptor();
    TControl* control;
    if (adaptor == NULL) {
        return;
    }
    typedef void (TAdaptor_particle::*particleParagraphFunc)(JStudio::data::TEOperationData, const void*, u32); 

    control = getControl();
    u32 uVar1 = (param_1 >> 5);
    data::TEOperationData operation = (data::TEOperationData)(param_1 &= 0x1F);
    u32 u_;
    const u32* pu_;
    particleParagraphFunc pmfn_ = NULL;
    TVariableValue::TOutput *pOutput;
    switch (uVar1) {
        case 68:
            pmfn_ = &TAdaptor_particle::adaptor_do_PARTICLE;
            goto fun;
        case 79:
            pmfn_ = &TAdaptor_particle::adaptor_do_BEGIN;
            goto fun;
        case 46:
            pmfn_ = &TAdaptor_particle::adaptor_do_BEGIN_FADE_IN;
            goto fun;
        case 80:
            pmfn_ = &TAdaptor_particle::adaptor_do_END;
            goto fun;
        case 47:
            pmfn_ = &TAdaptor_particle::adaptor_do_END_FADE_OUT;
            goto fun;
        case 48:
            pmfn_ = &TAdaptor_particle::adaptor_do_PARENT;
            goto fun;
        case 49:
            pmfn_ = &TAdaptor_particle::adaptor_do_PARENT_NODE;
            goto fun;
        case 50:
            pmfn_ = &TAdaptor_particle::adaptor_do_PARENT_ENABLE;
            u_ = 17;
            pOutput = &JStudio::soovv_particle_PARENT_ENABLE_;
            goto value_or_fun;
        case 81:
            pmfn_ = &TAdaptor_particle::adaptor_do_PARENT_FUNCTION;
            goto fun;
        case 86:
            pmfn_ = &TAdaptor_particle::adaptor_do_REPEAT;
            u_ = 18;
            pOutput = &JStudio::soovv_particle_REPEAT_;
            goto value_or_fun;
        case 85:
            pmfn_ = &TAdaptor_particle::adaptor_do_ON_EXIT_NOT_END;
            u_ = 19;
            pOutput = &JStudio::soovv_particle_ON_EXIT_NOT_END_;
            goto value_or_fun;
        case 9:
            u_ = 0;
            goto value;
        case 10:
            u_ = 1;
            goto value;
        case 11:
            u_ = 2;
            goto value;
        case 13:
            u_ = 3;
            goto value;
        case 14:
            u_ = 4;
            goto value;
        case 15:
            u_ = 5;
            goto value;
        case 17:
            u_ = 6;
            goto value;
        case 18:
            u_ = 7;
            goto value;
        case 19:
            u_ = 8;
            goto value;
        case 29:
            u_ = 9;
            goto value;
        case 30:
            u_ = 10;
            goto value;
        case 31:
            u_ = 11;
            goto value;
        case 32:
            u_ = 12;
            goto value;
        case 69:
            u_ = 13;
            goto value;
        case 70:
            u_ = 14;
            goto value;
        case 71:
            u_ = 15;
            goto value;
        case 72:
            u_ = 16;
            goto value;
        case 12:
            pu_ = TAdaptor_particle::sauVariableValue_3_TRANSLATION_XYZ;
            u_ = 3;
            goto value_n;
        case 16:
            pu_ = TAdaptor_particle::sauVariableValue_3_ROTATION_XYZ;
            u_ = 3;
            goto value_n;
        case 20:
            pu_ = TAdaptor_particle::sauVariableValue_3_SCALING_XYZ;
            u_ = 3;
            goto value_n;
        case 33:
            pu_ = TAdaptor_particle::sauVariableValue_3_COLOR_RGB;
            u_ = 3;
            goto value_n;
        case 34:
            pu_ = TAdaptor_particle::sauVariableValue_4_COLOR_RGBA;
            u_ = 4;
            goto value_n;
        case 73:
            pu_ = TAdaptor_particle::sauVariableValue_3_COLOR1_RGB;
            u_ = 3;
            goto value_n;
        case 74:
            pu_ = TAdaptor_particle::sauVariableValue_4_COLOR1_RGBA;
            u_ = 4;
            goto value_n;
        default:
            return;
    }

value_or_fun:
    switch (operation) {
        case data::UNK_0x10:
        case data::UNK_0x11:
        case data::UNK_0x12:
            adaptor->adaptor_setVariableValue(control, u_, operation, param_2, param_3);
            adaptor->adaptor_referVariableValue(u_)->setOutput(pOutput);
            break;
        default:
            (((TAdaptor_particle*)adaptor)->*pmfn_)(operation, param_2, param_3);
            break;
    }
    return;

value:
    adaptor->adaptor_setVariableValue(control, u_, operation, param_2, param_3);
    return;

value_n:
    adaptor->adaptor_setVariableValue_n(control, pu_, u_, operation, param_2, param_3);
    return;

fun:
    (((TAdaptor_particle*)adaptor)->*pmfn_)(operation, param_2, param_3);
    return;
}

JStudio::TAdaptor_sound::~TAdaptor_sound() {}

JStudio::TObject_sound::TObject_sound(JStudio::stb::data::TParse_TBlock_object const& rParse,
                                          JStudio::TAdaptor_sound* param_1) : TObject(rParse, param_1) {
    JGADGET_ASSERTWARN(1335, rParse.get_type()==data::BLOCK_SOUND);
}

u32 const JStudio::TAdaptor_sound::sauVariableValue_3_POSITION_XYZ[3] = {
    0, 1, 2,
};

void JStudio::TObject_sound::do_paragraph(u32 param_1, void const* param_2, u32 param_3) {
    TAdaptor* adaptor = getAdaptor();
    TControl* control;
    if (adaptor == NULL) {
        return;
    }
    typedef void (TAdaptor_sound::*soundParagraphFunc)(JStudio::data::TEOperationData, const void*, u32); 

    control = getControl();
    u32 uVar1 = (param_1 >> 5);
    data::TEOperationData operation = (data::TEOperationData)(param_1 &= 0x1F);
    u32 u_;
    const u32* pu_;
    soundParagraphFunc pmfn_ = NULL;
    TVariableValue::TOutput *pOutput;
    switch (uVar1) {
        case 60:
            pmfn_ = &TAdaptor_sound::adaptor_do_SOUND;
            goto fun;
        case 79:
            pmfn_ = &TAdaptor_sound::adaptor_do_BEGIN;
            goto fun;
        case 46:
            pmfn_ = &TAdaptor_sound::adaptor_do_BEGIN_FADE_IN;
            goto fun;
        case 80:
            pmfn_ = &TAdaptor_sound::adaptor_do_END;
            goto fun;
        case 47:
            pmfn_ = &TAdaptor_sound::adaptor_do_END_FADE_OUT;
            goto fun;
        case 48:
            pmfn_ = &TAdaptor_sound::adaptor_do_PARENT;
            goto fun;
        case 49:
            pmfn_ = &TAdaptor_sound::adaptor_do_PARENT_NODE;
            goto fun;
        case 50:
            pmfn_ = &TAdaptor_sound::adaptor_do_PARENT_ENABLE;
            u_ = 3;
            pOutput = &JStudio::soovv_sound_PARENT_ENABLE_;
            goto value_or_fun;
        case 86:
            pmfn_ = &TAdaptor_sound::adaptor_do_REPEAT;
            u_ = 4;
            pOutput = &JStudio::soovv_sound_REPEAT_;
            goto value_or_fun;
        case 87:
            pmfn_ = &TAdaptor_sound::adaptor_do_CONTINUOUS;
            u_ = 5;
            pOutput = &JStudio::soovv_sound_CONTINUOUS_;
            goto value_or_fun;
        case 56:
            pmfn_ = &TAdaptor_sound::adaptor_do_LOCATED;
            u_ = 6;
            pOutput = &JStudio::soovv_sound_LOCATED_;
            goto value_or_fun;
        case 85:
            pmfn_ = &TAdaptor_sound::adaptor_do_ON_EXIT_NOT_END;
            u_ = 12;
            pOutput = &JStudio::soovv_sound_ON_EXIT_NOT_END_;
            goto value_or_fun;
        case 21:
            u_ = 0;
            goto value;
        case 22:
            u_ = 1;
            goto value;
        case 23:
            u_ = 2;
            goto value;
        case 61:
            u_ = 7;
            goto value;
        case 62:
            u_ = 8;
            goto value;
        case 63:
            u_ = 9;
            goto value;
        case 64:
            u_ = 10;
            goto value;
        case 65:
            u_ = 11;
            goto value;
        case 24:
            pu_ = TAdaptor_sound::sauVariableValue_3_POSITION_XYZ;
            u_ = 3;
            goto value_n;
        default:
            return;
    }

value_or_fun:
    switch (operation) {
        case data::UNK_0x10:
        case data::UNK_0x11:
        case data::UNK_0x12:
            adaptor->adaptor_setVariableValue(control, u_, operation, param_2, param_3);
            adaptor->adaptor_referVariableValue(u_)->setOutput(pOutput);
            break;
        default:
            (((TAdaptor_sound*)adaptor)->*pmfn_)(operation, param_2, param_3);
            break;
    }
    return;

value:
    adaptor->adaptor_setVariableValue(control, u_, operation, param_2, param_3);
    return;

value_n:
    adaptor->adaptor_setVariableValue_n(control, pu_, u_, operation, param_2, param_3);
    return;

fun:
    (((TAdaptor_sound*)adaptor)->*pmfn_)(operation, param_2, param_3);
    return;
}
