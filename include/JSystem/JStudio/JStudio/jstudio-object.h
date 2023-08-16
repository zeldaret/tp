#ifndef JSTUDIO_OBJECT_H
#define JSTUDIO_OBJECT_H

#include "JSystem/JStudio/JStudio/ctb.h"
#include "JSystem/JStudio/JStudio/jstudio-control.h"

typedef struct _GXColor GXColor;

namespace JStudio {
namespace data {
    enum TEOperationData {
        UNK_0x19 = 0x19,
    };
};

struct TAdaptor;
struct TVariableValue {
    struct TOutput {
        /* 80285E0C */ ~TOutput();
    };

    struct TOutput_none_ {
        /* 80285F6C */ ~TOutput_none_();
        /* 80285FCC */ void operator()(f32, JStudio::TAdaptor*) const;
    };

    /* 80285E54 */ void update(f64, JStudio::TAdaptor*);
    /* 80285EB8 */ void update_immediate_(JStudio::TVariableValue*, f64);
    /* 80285ECC */ void update_time_(JStudio::TVariableValue*, f64);
    /* 80285F08 */ void update_functionValue_(JStudio::TVariableValue*, f64);
    /* 8028B568 */ TVariableValue();

    static u8 soOutput_none_[4 + 4 /* padding */];

    /* 0x00 */ f32 mValue;
    /* 0x04 */ u32 field_0x4;
    /* 0x08 */ void (*field_0x8)(TVariableValue*, double);
    /* 0x0C */ TFunctionValue* field_0xc;
    /* 0x10 */ TOutput* pOutput_;
};  // Size: 0x14

class TObject : public stb::TObject {
public:
    /* 80286864 */ TObject(JStudio::stb::data::TParse_TBlock_object const&, JStudio::TAdaptor*);
    /* 80286734 */ void forward_value(u32);

    /* 802866B0 */ virtual ~TObject() = 0;
    /* 8028679C */ virtual void do_begin();
    /* 802867D4 */ virtual void do_end();
    virtual void do_paragraph(u32, void const*, u32) = 0;
    /* 8028680C */ virtual void do_wait(u32);
    /* 8028682C */ virtual void do_data(void const*, u32, void const*, u32);

    void prepareAdaptor() {
        if (mpAdaptor != NULL) {
            // mpAdaptor->adaptor_setObject_(this);
            // mpAdaptor->adaptor_do_begin();
        }
    }

    template<class T>
    T* createFromAdaptor(const stb::data::TParse_TBlock_object& param_0, T* param_1) {
        T* n = new T(param_0, param_1);

        if (n == NULL) {
            return NULL;
        }

        n->prepareAdaptor();

        return n;
    }

    /* 0x34 */ TAdaptor* mpAdaptor;
};

struct TAdaptor {
    struct TSetVariableValue_immediate {};

    /* 80285FD0 */ virtual ~TAdaptor() = 0;
    /* 80286018 */ virtual void adaptor_do_prepare();
    /* 8028601C */ virtual void adaptor_do_begin();
    /* 80286020 */ virtual void adaptor_do_end();
    /* 80286024 */ virtual void adaptor_do_update(u32);
    /* 80286028 */ virtual void adaptor_do_data(void const*, u32, void const*, u32);

    /* 8028602C */ void adaptor_setVariableValue(JStudio::TControl*, u32,
                                                 JStudio::data::TEOperationData, void const*, u32);
    /* 802860CC */ void adaptor_setVariableValue_n(JStudio::TControl*, u32 const*, u32,
                                                   JStudio::data::TEOperationData, void const*,
                                                   u32);
    /* 802861C0 */ void
    adaptor_setVariableValue_immediate(JStudio::TAdaptor::TSetVariableValue_immediate const*);
    /* 80286204 */ void adaptor_setVariableValue_Vec(u32 const*, Vec const&);
    /* 80286274 */ void adaptor_getVariableValue_Vec(Vec*, u32 const*) const;
    /* 802862AC */ void adaptor_setVariableValue_GXColor(u32 const*, GXColor const&);
    /* 8028638C */ void adaptor_getVariableValue_GXColor(GXColor*, u32 const*) const;
    /* 802864D8 */ void adaptor_updateVariableValue(JStudio::TControl*, u32);
    /* 8028656C */ void adaptor_setVariableValue_VOID_(JStudio::TAdaptor*, JStudio::TControl*, u32,
                                                       void const*, u32);
    /* 80286584 */ void adaptor_setVariableValue_IMMEDIATE_(JStudio::TAdaptor*, JStudio::TControl*,
                                                            u32, void const*, u32);
    /* 802865B0 */ void adaptor_setVariableValue_TIME_(JStudio::TAdaptor*, JStudio::TControl*, u32,
                                                       void const*, u32);
    /* 802865DC */ void adaptor_setVariableValue_FVR_NAME_(JStudio::TAdaptor*, JStudio::TControl*,
                                                           u32, void const*, u32);
    /* 80286648 */ void adaptor_setVariableValue_FVR_INDEX_(JStudio::TAdaptor*, JStudio::TControl*,
                                                            u32, void const*, u32);

    void adaptor_setObject_(const TObject* pObject) {
        pObject_ = pObject;
    }

    /* 0x4 */ const TObject* pObject_;
    /* 0x8 */ TVariableValue* pValue_;
    /* 0xC */ u32 u;
};

struct TAdaptor_actor : public TAdaptor {
    /* 802868B0 */ virtual ~TAdaptor_actor() = 0;

    /* 0x10 */ TVariableValue mValue[14];

    static u8 const sauVariableValue_3_TRANSLATION_XYZ[12];
    static u8 const sauVariableValue_3_ROTATION_XYZ[12];
    static u8 const sauVariableValue_3_SCALING_XYZ[12];
};  // Size: 0x128

struct TObject_actor : public TObject {
    /* 80286910 */ TObject_actor(JStudio::stb::data::TParse_TBlock_object const&,
                                 JStudio::TAdaptor_actor*);
    
    /* 802881A4 */ virtual ~TObject_actor();
    /* 8028694C */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_ambientLight : public TAdaptor {
    /* 80286C9C */ virtual ~TAdaptor_ambientLight()  = 0;

    /* 0x10 */ TVariableValue mValue[4];

    static u8 const sauVariableValue_3_COLOR_RGB[12];
    static u8 const sauVariableValue_4_COLOR_RGBA[16];
};

struct TObject_ambientLight : public TObject {
    /* 80286CFC */ TObject_ambientLight(JStudio::stb::data::TParse_TBlock_object const&,
                                        JStudio::TAdaptor_ambientLight*);
    
    /* 80288144 */ virtual ~TObject_ambientLight();
    /* 80286D38 */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_camera : public TAdaptor {
    /* 80286E1C */ virtual ~TAdaptor_camera() = 0;

    /* 0x10 */ TVariableValue mValue[12];

    static u8 const sauVariableValue_3_POSITION_XYZ[12];
    static u8 const sauVariableValue_3_TARGET_POSITION_XYZ[12];
    static u8 sauVariableValue_2_DISTANCE_NEAR_FAR[8];
};

struct TObject_camera : public TObject {
    /* 80286E7C */ TObject_camera(JStudio::stb::data::TParse_TBlock_object const&,
                                  JStudio::TAdaptor_camera*);
    
    /* 802880E4 */ virtual ~TObject_camera();
    /* 80286EB8 */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_fog : public TAdaptor {
    /* 8028717C */ virtual ~TAdaptor_fog() = 0;

    /* 0x10 */ TVariableValue mValue[6];

    static u8 const sauVariableValue_3_COLOR_RGB[12];
    static u8 const sauVariableValue_4_COLOR_RGBA[16];
    static u8 sauVariableValue_2_RANGE_BEGIN_END[8];
};

struct TObject_fog : public TObject {
    /* 802871DC */ TObject_fog(JStudio::stb::data::TParse_TBlock_object const&,
                               JStudio::TAdaptor_fog*);
    
    /* 80288084 */ virtual ~TObject_fog();
    /* 80287218 */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_light : public TAdaptor {
    /* 80287308 */ virtual ~TAdaptor_light() = 0;

    /* 0x10 */ TVariableValue mValue[13];

    static u8 const sauVariableValue_3_COLOR_RGB[12];
    static u8 const sauVariableValue_4_COLOR_RGBA[16];
    static u8 const sauVariableValue_3_POSITION_XYZ[12];
    static u8 const sauVariableValue_3_TARGET_POSITION_XYZ[12];
    static u8 sauVariableValue_2_DIRECTION_THETA_PHI[8];
};

struct TObject_light : public TObject {
    /* 80287368 */ TObject_light(JStudio::stb::data::TParse_TBlock_object const&,
                                 JStudio::TAdaptor_light*);
    
    /* 80288024 */ virtual ~TObject_light();
    /* 802873A4 */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_message : public TAdaptor {
    /* 802875E0 */ virtual ~TAdaptor_message() = 0;
};

struct TObject_message : public TObject {
    /* 80287640 */ TObject_message(JStudio::stb::data::TParse_TBlock_object const&,
                                   JStudio::TAdaptor_message*);
    
    /* 80287FC4 */ virtual ~TObject_message();
    /* 8028767C */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_particle : public TAdaptor {
    /* 8028770C */ virtual ~TAdaptor_particle() = 0;

    /* 0x10 */ TVariableValue mValue[20];

    static u8 const sauVariableValue_3_TRANSLATION_XYZ[12];
    static u8 const sauVariableValue_3_ROTATION_XYZ[12];
    static u8 const sauVariableValue_3_SCALING_XYZ[12];
    static u8 const sauVariableValue_3_COLOR_RGB[12];
    static u8 const sauVariableValue_4_COLOR_RGBA[16];
    static u8 const sauVariableValue_3_COLOR1_RGB[12];
    static u8 const sauVariableValue_4_COLOR1_RGBA[16];
};

struct TObject_particle : public TObject {
    /* 8028776C */ TObject_particle(JStudio::stb::data::TParse_TBlock_object const&,
                                    JStudio::TAdaptor_particle*);
    
    /* 80287F64 */ virtual ~TObject_particle();
    /* 802877A8 */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_sound : public TAdaptor {
    /* 80287B3C */ virtual ~TAdaptor_sound() = 0;

    /* 0x10 */ TVariableValue mValue[13];

    static u8 const sauVariableValue_3_POSITION_XYZ[12];
};  // Size: 0x114

struct TObject_sound : public TObject {
    /* 80287B9C */ TObject_sound(JStudio::stb::data::TParse_TBlock_object const&,
                                 JStudio::TAdaptor_sound*);
    
    /* 80287F04 */ virtual ~TObject_sound();
    /* 80287BD8 */ virtual void do_paragraph(u32, void const*, u32);
};

};  // namespace JStudio

#endif /* JSTUDIO_OBJECT_H */
