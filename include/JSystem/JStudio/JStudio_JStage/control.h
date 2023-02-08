#ifndef JSTUDIO_JSTAGE_CONTROL_H
#define JSTUDIO_JSTAGE_CONTROL_H

#include "JSystem/JStage/JSGActor.h"
#include "JSystem/JStage/JSGAmbientLight.h"
#include "JSystem/JStage/JSGCamera.h"
#include "JSystem/JStage/JSGFog.h"
#include "JSystem/JStage/JSGLight.h"
#include "JSystem/JStage/JSGSystem.h"
#include "JSystem/JStudio/JStudio/jstudio-object.h"

namespace JStudio_JStage {
struct TCreateObject : public JStudio::TCreateObject {
    TCreateObject(const JStage::TSystem* pSystem) {
        pJSGSystem_ = pSystem;
    }

    /* 80289B00 */ virtual ~TCreateObject();
    /* 80289B60 */ virtual void create(JStudio::TObject**,
                                       JStudio::stb::data::TParse_TBlock_object const&);

    /* 0x0C */ const JStage::TSystem* pJSGSystem_;
};

struct TAdaptor_object_ {
    /* 8028A470 */ void adaptor_object_data_(void const*, u32, void const*, u32);
    /* 8028A4BC */ void adaptor_object_findJSGObject_(char const*);
    /* 8028A50C */ void adaptor_object_findJSGObjectNode_(JStage::TObject const*, char const*);
    /* 8028A550 */ void adaptor_object_ENABLE_(JStudio::data::TEOperationData, void const*, u32);

    /* 0x0 */ JStudio::TAdaptor* field_0x0;
    /* 0x4 */ JStage::TSystem* pJSGSystem_;
    /* 0x8 */ JStage::TObject* pJSGObject_;
};

struct TAdaptor_actor : public JStudio::TAdaptor_actor, public JStudio_JStage::TAdaptor_object_ {
    struct TVVOutput_ANIMATION_FRAME_ {
        /* 8028B064 */ void operator()(f32, JStudio::TAdaptor*) const;
        /* 8028B138 */ ~TVVOutput_ANIMATION_FRAME_();
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

    static u8 saoVVOutput_[64];
    static u8 saoVVOutput_ANIMATION_FRAME_[144 + 4 /* padding */];

    /* 0x134 */ u32 field_0x134;
    /* 0x138 */ u32 field_0x138;
    /* 0x13C */ u32 field_0x13c;
    /* 0x140 */ u32 field_0x140;
    /* 0x144 */ u32 field_0x144;
    /* 0x148 */ u8 field_0x148;
    /* 0x14C */ u32 field_0x14c;
    /* 0x150 */ u32 field_0x150;
};

struct TAdaptor_ambientLight : public JStudio::TAdaptor_ambientLight {
    /* 8028B610 */ TAdaptor_ambientLight(JStage::TSystem const*, JStage::TAmbientLight*);

    /* 8028B6AC */ virtual ~TAdaptor_ambientLight();
    /* 8028B720 */ virtual void adaptor_do_prepare();
    /* 8028B724 */ virtual void adaptor_do_begin();
    /* 8028B7B0 */ virtual void adaptor_do_end();
    /* 8028B804 */ virtual void adaptor_do_update(u32);
    /* 8028B87C */ virtual void adaptor_do_data(void const*, u32, void const*, u32);
};

struct TAdaptor_camera : public JStudio::TAdaptor_camera {
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

    static u8 saoVVOutput_[160 + 4 /* padding */];
};

struct TAdaptor_fog : public JStudio::TAdaptor_fog {
    /* 8028C574 */ TAdaptor_fog(JStage::TSystem const*, JStage::TFog*);
    /* 8028C610 */ virtual ~TAdaptor_fog();
    /* 8028C684 */ virtual void adaptor_do_prepare();
    /* 8028C6CC */ virtual void adaptor_do_begin();
    /* 8028C7B4 */ virtual void adaptor_do_end();
    /* 8028C808 */ virtual void adaptor_do_update(u32);
    /* 8028C880 */ virtual void adaptor_do_data(void const*, u32, void const*, u32);

    static u8 saoVVOutput_[96 + 4 /* padding */];
};

struct TAdaptor_light : public JStudio::TAdaptor_light {
    struct TVVOutput_direction_ {
        /* 8028D24C */ void operator()(f32, JStudio::TAdaptor*) const;
        /* 8028D258 */ ~TVVOutput_direction_();
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

    static u8 saoVVOutput_direction_[72];
};

/* 8028A1F8 */ void
    transform_toGlobalFromLocal(f32 (*)[4],
                                JStudio::TControl::TTransform_translation_rotation_scaling const&,
                                JStage::TObject const*, u32);
/* 8028A290 */ void transform_toGlobalFromLocal(f32 (*)[4],
                                                JStudio::TControl::TTransform_position const&,
                                                JStage::TObject const*, u32);
/* 8028A328 */ void
    transform_toLocalFromGlobal(f32 (*)[4],
                                JStudio::TControl::TTransform_translation_rotation_scaling const&,
                                JStage::TObject const*, u32);
/* 8028A3CC */ void transform_toLocalFromGlobal(f32 (*)[4],
                                                JStudio::TControl::TTransform_position const&,
                                                JStage::TObject const*, u32);
};  // namespace JStudio_JStage

#endif /* JSTUDIO_JSTAGE_CONTROL_H */
