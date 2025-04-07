#ifndef JSTUDIO_JSTAGE_CONTROL_H
#define JSTUDIO_JSTAGE_CONTROL_H

#include "JSystem/JStage/JSGActor.h"
#include "JSystem/JStage/JSGAmbientLight.h"
#include "JSystem/JStage/JSGCamera.h"
#include "JSystem/JStage/JSGFog.h"
#include "JSystem/JStage/JSGLight.h"
#include "JSystem/JStage/JSGSystem.h"
#include "JSystem/JStudio/JStudio/jstudio-object.h"
#include "JSystem/JStudio/JStudio/jstudio-math.h"

#ifdef DEBUG
namespace JStudio_JStage {
template<class TAdaptor, class TStageObject>
struct TVariableValueOutput_object_;
};  // namespace JStudio_JStage
#else
#include "JSystem/JStudio/JStudio_JStage/tvariable_value_output_object.h"
#endif

namespace JStudio_JStage {
typedef JStudio::TObject* (*ObjCreateFuncT)(const JStudio::stb::data::TParse_TBlock_object&, JStage::TObject*, const JStage::TSystem*);

struct TCreateObject : public JStudio::TCreateObject {
    TCreateObject(const JStage::TSystem* pSystem) {
        pJSGSystem_ = pSystem;
        JUT_ASSERT(42, pJSGSystem_!=0);
    }

    /* 80289B00 */ virtual ~TCreateObject();
    /* 80289B60 */ virtual bool create(JStudio::TObject**,
                                       JStudio::stb::data::TParse_TBlock_object const&);

    /* 0x0C */ const JStage::TSystem* pJSGSystem_;
};

struct TAdaptor_object_ {
    TAdaptor_object_(JStage::TSystem const*param_2, JStage::TObject *param_3) :
        pJSGSystem_(param_2), pJSGObject_(param_3) {}
    /* 8028A470 */ void adaptor_object_data_(void const*, u32, void const*, u32);
    /* 8028A4BC */ JStage::TObject* adaptor_object_findJSGObject_(char const*);
    /* 8028A50C */ s32 adaptor_object_findJSGObjectNode_(JStage::TObject const*, char const*);
    /* 8028A550 */ void adaptor_object_ENABLE_(JStudio::data::TEOperationData, void const*, u32);

    void adaptor_object_begin_() { pJSGObject_->JSGFEnableFlag(1); }
    void adaptor_object_end_() { pJSGObject_->JSGFDisableFlag(1); }

    /* 0x0 */ JStage::TSystem const* pJSGSystem_;
    /* 0x4 */ JStage::TObject* pJSGObject_;
};

struct TAdaptor_actor : public JStudio::TAdaptor_actor, public JStudio_JStage::TAdaptor_object_ {
    typedef JStudio::TObject_actor ObjectType;
    typedef TVariableValueOutput_object_<TAdaptor_actor, JStage::TActor> TVVOutputObject;
    typedef void (JStage::TActor::*Setter)(f32);
    typedef f32 (JStage::TActor::*Getter)() const;
    typedef f32 (JStage::TActor::*MaxGetter)() const;

    enum TEVariableValue {
        TEACTOR_1 = 1,
    };

    struct TVVOutput_ANIMATION_FRAME_ 
    : public JStudio::TVariableValue::TOutput
    {
        TVVOutput_ANIMATION_FRAME_() {
            mValueIndex = -1;
            field_0x8 = 0;
            mSetter = NULL;
            mGetter = NULL;
            mMaxGetter = NULL;
        }
        TVVOutput_ANIMATION_FRAME_(int param_1, u32 param_2, Setter param_3, Getter param_4,
                                   MaxGetter param_5) {
            mValueIndex = param_1;
            field_0x8 = param_2;
            mSetter = param_3;
            mGetter = param_4;
            mMaxGetter = param_5;
        }

        /* 8028B064 */ virtual void operator()(f32, JStudio::TAdaptor*) const;
        /* 8028B138 */ virtual ~TVVOutput_ANIMATION_FRAME_();
        
        void adaptor_setOutput_(TAdaptor* adaptor) {
            adaptor->adaptor_referVariableValue(mValueIndex)->setOutput(this);
        }

        void setVariableValue_(const JStage::TActor *param_1, JStudio::TAdaptor *param_2) const {
            f32 val = (param_1->*mGetter)();
            param_2->adaptor_setVariableValue_immediate(mValueIndex, val);
        }

        bool isEnd_() const { return mValueIndex == -1; }

        /* 0x04 */ int mValueIndex;
        /* 0x08 */ u32 field_0x8;
        /* 0x0C */ Setter mSetter;
        /* 0x18 */ Getter mGetter;
        /* 0x24 */ MaxGetter mMaxGetter;
    };

    /* 8028A5F0 */ TAdaptor_actor(JStage::TSystem const*, JStage::TActor*);

    /* 8028A6B4 */ virtual ~TAdaptor_actor();
    /* 8028A728 */ virtual void adaptor_do_prepare();
    /* 8028A7B4 */ virtual void adaptor_do_begin();
    /* 8028A8D8 */ virtual void adaptor_do_end();
    /* 8028A92C */ virtual void adaptor_do_update(u32);
    /* 8028A974 */ virtual void adaptor_do_data(void const*, u32, void const*, u32);
    /* 8028AAC8 */ virtual void adaptor_do_PARENT(JStudio::data::TEOperationData, void const*, u32);
    /* 8028AB0C */ virtual void adaptor_do_PARENT_NODE(JStudio::data::TEOperationData, void const*,
                                                u32);
    /* 8028AB68 */ virtual void adaptor_do_PARENT_ENABLE(JStudio::data::TEOperationData, void const*,
                                                    u32);
    /* 8028ABF0 */ virtual void adaptor_do_PARENT_FUNCTION(JStudio::data::TEOperationData, void const*,
                                                    u32);
    /* 8028AC04 */ virtual void adaptor_do_RELATION(JStudio::data::TEOperationData, void const*, u32);
    /* 8028AC48 */ virtual void adaptor_do_RELATION_NODE(JStudio::data::TEOperationData, void const*,
                                                    u32);
    /* 8028ACA4 */ virtual void adaptor_do_RELATION_ENABLE(JStudio::data::TEOperationData, void const*,
                                                    u32);
    /* 8028A998 */ virtual void adaptor_do_SHAPE(JStudio::data::TEOperationData, void const*, u32);
    /* 8028A9F0 */ virtual void adaptor_do_ANIMATION(JStudio::data::TEOperationData, void const*, u32);
    /* 8028AA48 */ virtual void adaptor_do_ANIMATION_MODE(JStudio::data::TEOperationData, void const*,
                                                    u32);
    /* 8028AA5C */ virtual void adaptor_do_TEXTURE_ANIMATION(JStudio::data::TEOperationData,
                                                        void const*, u32);
    /* 8028AAB4 */ virtual void adaptor_do_TEXTURE_ANIMATION_MODE(JStudio::data::TEOperationData,
                                                            void const*, u32);
    
    /* 8028ACFC */ void setJSG_ID_(void (JStage::TActor::*)(u32),
                                    JStudio::data::TEOperationData, void const*, u32);
    /* 8028AD38 */ void setJSG_SRT_(JStudio::TControl const*);
    /* 8028AECC */ void getJSG_SRT_(JStudio::TControl const*);

    JStage::TActor* get_pJSG_() { return (JStage::TActor*) pJSGObject_; }

    static TVVOutputObject saoVVOutput_[2];
    static TVVOutput_ANIMATION_FRAME_  saoVVOutput_ANIMATION_FRAME_[3];

    /* 0x130 */ u32 field_0x130;
    /* 0x134 */ u32 field_0x134;
    /* 0x138 */ u32 field_0x138;
    /* 0x13C */ JStage::TObject* field_0x13c;
    /* 0x140 */ u32 field_0x140;
    /* 0x144 */ u8 field_0x144;
    /* 0x148 */ JStage::TObject* field_0x148;
    /* 0x14C */ u32 field_0x14c;
};

struct TAdaptor_ambientLight : public JStudio::TAdaptor_ambientLight, public TAdaptor_object_ {
    typedef JStudio::TObject_ambientLight ObjectType;
    /* 8028B610 */ TAdaptor_ambientLight(JStage::TSystem const*, JStage::TAmbientLight*);

    /* 8028B6AC */ virtual ~TAdaptor_ambientLight();
    /* 8028B720 */ virtual void adaptor_do_prepare();
    /* 8028B724 */ virtual void adaptor_do_begin();
    /* 8028B7B0 */ virtual void adaptor_do_end();
    /* 8028B804 */ virtual void adaptor_do_update(u32);
    /* 8028B87C */ virtual void adaptor_do_data(void const*, u32, void const*, u32);

    JStage::TAmbientLight* get_pJSG_() { return (JStage::TAmbientLight*)pJSGObject_; }
};

struct TAdaptor_camera : public JStudio::TAdaptor_camera, public TAdaptor_object_ {
    typedef JStudio::TObject_camera ObjectType;
    typedef TVariableValueOutput_object_<TAdaptor_camera, JStage::TCamera> TVVOutput;

    enum TEVariableValue {
        TECAMERA_6 = 6,
        TECAMERA_7 = 7,
        TECAMERA_8 = 8,
        TECAMERA_9 = 9,
    };

    /* 8028B8A0 */ TAdaptor_camera(JStage::TSystem const*, JStage::TCamera*);
    /* 8028B960 */ virtual ~TAdaptor_camera();
    /* 8028B9D4 */ virtual void adaptor_do_prepare();
    /* 8028BA1C */ virtual void adaptor_do_begin();
    /* 8028BAF8 */ virtual void adaptor_do_end();
    /* 8028BB4C */ virtual void adaptor_do_update(u32);
    /* 8028BBAC */ virtual void adaptor_do_data(void const*, u32, void const*, u32);
    /* 8028BBD0 */ virtual void adaptor_do_PARENT(JStudio::data::TEOperationData, void const*, u32);
    /* 8028BC14 */ virtual void adaptor_do_PARENT_NODE(JStudio::data::TEOperationData, void const*, u32);
    /* 8028BC70 */ virtual void adaptor_do_PARENT_ENABLE(JStudio::data::TEOperationData, void const*, u32);
    /* 8028BCEC */ virtual void adaptor_do_PARENT_FUNCTION(JStudio::data::TEOperationData, void const*,
                                                   u32);
    /* 8028BD00 */ virtual void adaptor_do_TARGET_PARENT(JStudio::data::TEOperationData, void const*, u32);
    /* 8028BD44 */ virtual void adaptor_do_TARGET_PARENT_NODE(JStudio::data::TEOperationData, void const*,
                                                      u32);
    /* 8028BDA0 */ virtual void adaptor_do_TARGET_PARENT_ENABLE(JStudio::data::TEOperationData, void const*,
                                                        u32);

    /* 8028BDBC */ void setJSG_position_(JStudio::TControl const*);
    /* 8028BEB8 */ void getJSG_position_(JStudio::TControl const*);
    /* 8028BFBC */ void setJSG_targetPosition_(JStudio::TControl const*);
    /* 8028C09C */ void getJSG_targetPosition_(JStudio::TControl const*);

    JStage::TCamera* get_pJSG_() { return (JStage::TCamera*)pJSGObject_; }

    static TVVOutput saoVVOutput_[5];

    /* 0x108 */ int field_0x108;
    /* 0x10C */ JStage::TObject* field_0x10c;
    /* 0x110 */ int field_0x110;
    /* 0x114 */ u8 field_0x114;
    /* 0x118 */ JStage::TObject* field_0x118;
    /* 0x11C */ int field_0x11c;
    /* 0x120 */ u8 field_0x120;
};

struct TAdaptor_fog : public JStudio::TAdaptor_fog, public TAdaptor_object_ {
    typedef JStudio::TObject_fog ObjectType;
    enum TEVariableValue {
        TEFOG_4 = 4,
        TEFOG_5 = 5,
    };

    /* 8028C574 */ TAdaptor_fog(JStage::TSystem const*, JStage::TFog*);
    /* 8028C610 */ virtual ~TAdaptor_fog();
    /* 8028C684 */ virtual void adaptor_do_prepare();
    /* 8028C6CC */ virtual void adaptor_do_begin();
    /* 8028C7B4 */ virtual void adaptor_do_end();
    /* 8028C808 */ virtual void adaptor_do_update(u32);
    /* 8028C880 */ virtual void adaptor_do_data(void const*, u32, void const*, u32);

    JStage::TFog* get_pJSG_() { return (JStage::TFog*)pJSGObject_; }

    static TVariableValueOutput_object_<TAdaptor_fog, JStage::TFog> saoVVOutput_[3];
};

struct TAdaptor_light : public JStudio::TAdaptor_light, public TAdaptor_object_ {
    typedef JStudio::TObject_light ObjectType;

    enum TEVariableValue {
        TE_VALUE_NONE = -1,
        TE_VALUE_7 = 7,
        TE_VALUE_8 = 8,
        TE_VALUE_9 = 9,
        TE_VALUE_10 = 10,
        TE_VALUE_11 = 11,
    };
    enum TEDirection_ {
        DIRECTION_0,
        DIRECTION_1,
        DIRECTION_2,
    };
    struct TVVOutput_direction_ : public JStudio::TVariableValue::TOutput {
        TVVOutput_direction_() {
            field_0x4 = TE_VALUE_NONE;
            field_0x8 = DIRECTION_0;
        }
        TVVOutput_direction_(TEVariableValue param_1, TEDirection_ param_2) {
            field_0x4 = param_1;
            field_0x8 = param_2;
        }

        /* 8028D24C */ virtual void operator()(f32, JStudio::TAdaptor*) const;
        /* 8028D258 */ virtual ~TVVOutput_direction_() {}

        void adaptor_setOutput_(TAdaptor* adaptor) {
            adaptor->adaptor_referVariableValue(field_0x4)->setOutput(this);
        }

        bool isEnd_() const { return field_0x4 == -1; }

        TEVariableValue field_0x4;
        TEDirection_ field_0x8;
    };

    /* 8028CB50 */ TAdaptor_light(JStage::TSystem const*, JStage::TLight*);
    /* 8028CBF4 */ virtual ~TAdaptor_light();
    /* 8028CC68 */ virtual void adaptor_do_prepare();
    /* 8028CCB0 */ virtual void adaptor_do_begin();
    /* 8028CF68 */ virtual void adaptor_do_end();
    /* 8028CFBC */ virtual void adaptor_do_update(u32);
    /* 8028D18C */ virtual void adaptor_do_data(void const*, u32, void const*, u32);
    /* 8028D228 */ virtual void adaptor_do_ENABLE(JStudio::data::TEOperationData, void const*, u32);
    /* 8028D1B0 */ virtual void adaptor_do_FACULTY(JStudio::data::TEOperationData, void const*, u32);

    JStage::TLight* get_pJSG_() { return (JStage::TLight*)pJSGObject_; }

    int field_0x11c;

    static TVVOutput_direction_ saoVVOutput_direction_[6];
};

/* 8028A1F8 */ bool
    transform_toGlobalFromLocal(f32 (*)[4],
                                JStudio::TControl::TTransform_translation_rotation_scaling const&,
                                JStage::TObject const*, u32);
/* 8028A290 */ bool transform_toGlobalFromLocal(f32 (*)[4],
                                                JStudio::TControl::TTransform_position const&,
                                                JStage::TObject const*, u32);

inline bool transform_toGlobalFromLocal(JStudio::TControl::TTransform_position* param_1,
                                        JStudio::TControl::TTransform_position const& param_2,
                                        JStage::TObject const* param_3, u32 param_4) {
    Mtx afStack_38;

    if (!transform_toGlobalFromLocal(afStack_38, param_2, param_3, param_4)) {
        return false;
    }
    JStudio::math::getFromTransformation_T(afStack_38, param_1);
    return true;
}
/* 8028A328 */ bool
    transform_toLocalFromGlobal(f32 (*)[4],
                                JStudio::TControl::TTransform_translation_rotation_scaling const&,
                                JStage::TObject const*, u32);
/* 8028A3CC */ bool transform_toLocalFromGlobal(f32 (*)[4],
                                                JStudio::TControl::TTransform_position const&,
                                                JStage::TObject const*, u32);
};  // namespace JStudio_JStage

#ifdef DEBUG
#include "JSystem/JStudio/JStudio_JStage/tvariable_value_output_object.h"
#endif

#endif /* JSTUDIO_JSTAGE_CONTROL_H */
