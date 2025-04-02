#ifndef JSTUDIO_OBJECT_H
#define JSTUDIO_OBJECT_H

#include "JSystem/JStudio/JStudio/jstudio-control.h"
#include "limits.h"
#include "math.h"

typedef struct _GXColor GXColor;

namespace JStudio {
namespace data {
    enum TEOperationData {
        UNK_0x1 = 0x1,
        UNK_0x2 = 0x2,
        UNK_0x3 = 0x3,
        UNK_0x10 = 0x10,
        UNK_0x12 = 0x12,
        UNK_0x18 = 0x18,
        UNK_0x19 = 0x19,
    };
};

struct TAdaptor;
struct TVariableValue {
    struct TOutput {
        virtual void operator()(f32, JStudio::TAdaptor*) const = 0;
        /* 80285E0C */ ~TOutput();
    };

    struct TOutput_none_ : TOutput {
        /* 80285F6C */ ~TOutput_none_();
        /* 80285FCC */ void operator()(f32, JStudio::TAdaptor*) const;
    };

    /* 80285E54 */ void update(f64, JStudio::TAdaptor*);
    /* 80285EB8 */ static void update_immediate_(JStudio::TVariableValue*, f64);
    /* 80285ECC */ static void update_time_(JStudio::TVariableValue*, f64);
    /* 80285F08 */ static void update_functionValue_(JStudio::TVariableValue*, f64);
    /* 8028B568 */ TVariableValue() : field_0x4(0), field_0x8(NULL), pOutput_(&soOutput_none_) {}

    void setValue_immediate(f32 value) {
        field_0x8 = &update_immediate_;
        field_0x4 = 0;
        field_0xc.val = value;
    }

     void setValue_none() {
        field_0x8 = NULL;
    }

    void setValue_time(f32 value) {
        field_0x8 = &update_time_;
        field_0x4 = 0;
        field_0xc.val = value;
    }
    
    void setValue_functionValue(TFunctionValue* value) {
        field_0x8 = &update_functionValue_;
        field_0x4 = 0;
        field_0xc.fv = value;
    }

    f32 getValue() const { return mValue; }

    template<typename T>
    T getValue_clamp() const {
        f32 val = mValue;
        if (val <= std::numeric_limits<T>::min()) {
            return std::numeric_limits<T>::min();
        } else if (val >= std::numeric_limits<T>::max()) {
            return std::numeric_limits<T>::max();
        }
        return val;
    }
    u8 getValue_uint8() const { return getValue_clamp<u8>(); }

    void forward(u32 param_0) {
        if (std::numeric_limits<u32>::max() - field_0x4 <= param_0) {
            field_0x4 = std::numeric_limits<u32>::max();
        } else {
            field_0x4 += param_0;
        }
    }

    void setOutput(TOutput* param_1) {
        pOutput_ = (param_1 != NULL) ? param_1 : &soOutput_none_;
    }

    static TOutput_none_ soOutput_none_;

    /* 0x00 */ f32 mValue;
    /* 0x04 */ u32 field_0x4;
    /* 0x08 */ void (*field_0x8)(TVariableValue*, double);
    /* 0x0C */ union {
        TFunctionValue* fv;
        f32 val;
    } field_0xc;
    /* 0x10 */ TOutput* pOutput_;
};  // Size: 0x14

typedef void (TObject::*paragraphFunc)(u32, void const*, u32); 

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

    TAdaptor* getAdaptor() { return mpAdaptor; }
    TControl* getControl() const { return (TControl*)stb::TObject::getControl(); }

    inline void prepareAdaptor();

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
    struct TSetVariableValue_immediate {
        TSetVariableValue_immediate() : field_0x0(-1), field_0x4(NAN) {}
        TSetVariableValue_immediate(u32 param_1, f32 param_2) :
            field_0x0(param_1), field_0x4(param_2) {}
        u32 field_0x0;
        f32 field_0x4;
    };
    typedef void (*setVarFunc)(JStudio::TAdaptor*, JStudio::TControl*, u32, void const*, u32);
    TAdaptor(TVariableValue *param_1, u32 param_2) {
        pObject_ = NULL;
        pValue_ = param_1;
        u = param_2;
    }
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
    /* 8028656C */ static void adaptor_setVariableValue_VOID_(JStudio::TAdaptor*, JStudio::TControl*, u32,
                                                       void const*, u32);
    /* 80286584 */ static void adaptor_setVariableValue_IMMEDIATE_(JStudio::TAdaptor*, JStudio::TControl*,
                                                            u32, void const*, u32);
    /* 802865B0 */ static void adaptor_setVariableValue_TIME_(JStudio::TAdaptor*, JStudio::TControl*, u32,
                                                       void const*, u32);
    /* 802865DC */ static void adaptor_setVariableValue_FVR_NAME_(JStudio::TAdaptor*, JStudio::TControl*,
                                                           u32, void const*, u32);
    /* 80286648 */ static void adaptor_setVariableValue_FVR_INDEX_(JStudio::TAdaptor*, JStudio::TControl*,
                                                            u32, void const*, u32);

    const char* adaptor_getID_string() const;

    void adaptor_setObject_(const TObject* pObject) {
        pObject_ = pObject;
    }

    TVariableValue* adaptor_referVariableValue(u32 param_0) {
        return &pValue_[param_0];
    }

    void adaptor_setVariableValue_immediate(u32 param_0, f32 param_1) {
        adaptor_referVariableValue(param_0)->setValue_immediate(param_1);
    }

     const TVariableValue* adaptor_getVariableValue(u32 param_0) const {
        return &pValue_[param_0];
    }

    const TObject* adaptor_getObject() { return pObject_; }

    /* 0x4 */ const TObject* pObject_;
    /* 0x8 */ TVariableValue* pValue_;
    /* 0xC */ u32 u;
};

inline void TObject::prepareAdaptor() {
    if (mpAdaptor != NULL) {
        mpAdaptor->adaptor_setObject_(this);
        mpAdaptor->adaptor_do_prepare();
    }
}

struct TAdaptor_actor : public TAdaptor {
    TAdaptor_actor() : TAdaptor(mValue, 14) {}
    /* 802868B0 */ virtual ~TAdaptor_actor() = 0;
    virtual void adaptor_do_PARENT(JStudio::data::TEOperationData, const void*, u32)                 = 0;
	virtual void adaptor_do_PARENT_NODE(JStudio::data::TEOperationData, const void*, u32)            = 0;
	virtual void adaptor_do_PARENT_ENABLE(JStudio::data::TEOperationData, const void*, u32)          = 0;
	virtual void adaptor_do_PARENT_FUNCTION(JStudio::data::TEOperationData, const void*, u32)        = 0;
	virtual void adaptor_do_RELATION(JStudio::data::TEOperationData, const void*, u32)               = 0;
	virtual void adaptor_do_RELATION_NODE(JStudio::data::TEOperationData, const void*, u32)          = 0;
	virtual void adaptor_do_RELATION_ENABLE(JStudio::data::TEOperationData, const void*, u32)        = 0;
	virtual void adaptor_do_SHAPE(JStudio::data::TEOperationData, const void*, u32)                  = 0;
	virtual void adaptor_do_ANIMATION(JStudio::data::TEOperationData, const void*, u32)              = 0;
	virtual void adaptor_do_ANIMATION_MODE(JStudio::data::TEOperationData, const void*, u32)         = 0;
	virtual void adaptor_do_TEXTURE_ANIMATION(JStudio::data::TEOperationData, const void*, u32)      = 0;
	virtual void adaptor_do_TEXTURE_ANIMATION_MODE(JStudio::data::TEOperationData, const void*, u32) = 0;

    /* 0x10 */ TVariableValue mValue[14];

    static u32 const sauVariableValue_3_TRANSLATION_XYZ[3];
    static u32 const sauVariableValue_3_ROTATION_XYZ[3];
    static u32 const sauVariableValue_3_SCALING_XYZ[3];
};  // Size: 0x128

struct TObject_actor : public TObject {
    /* 80286910 */ TObject_actor(JStudio::stb::data::TParse_TBlock_object const&,
                                 JStudio::TAdaptor_actor*);
    
    /* 802881A4 */ virtual ~TObject_actor();
    /* 8028694C */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_ambientLight : public TAdaptor {
    TAdaptor_ambientLight() : TAdaptor(mValue, 4) {}
    /* 80286C9C */ virtual ~TAdaptor_ambientLight()  = 0;

    /* 0x10 */ TVariableValue mValue[4];

    static u32 const sauVariableValue_3_COLOR_RGB[3];
    static u32 const sauVariableValue_4_COLOR_RGBA[4];
};

struct TObject_ambientLight : public TObject {
    /* 80286CFC */ TObject_ambientLight(JStudio::stb::data::TParse_TBlock_object const&,
                                        JStudio::TAdaptor_ambientLight*);
    
    /* 80288144 */ virtual ~TObject_ambientLight();
    /* 80286D38 */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_camera : public TAdaptor {
    TAdaptor_camera() : TAdaptor(mValue, 12) {}
    /* 80286E1C */ virtual ~TAdaptor_camera() = 0;

    virtual void adaptor_do_PARENT(JStudio::data::TEOperationData, const void*, u32)               = 0;
	virtual void adaptor_do_PARENT_NODE(JStudio::data::TEOperationData, const void*, u32)          = 0;
	virtual void adaptor_do_PARENT_ENABLE(JStudio::data::TEOperationData, const void*, u32)        = 0;
	virtual void adaptor_do_PARENT_FUNCTION(JStudio::data::TEOperationData, const void*, u32)      = 0;
	virtual void adaptor_do_TARGET_PARENT(JStudio::data::TEOperationData, const void*, u32)        = 0;
	virtual void adaptor_do_TARGET_PARENT_NODE(JStudio::data::TEOperationData, const void*, u32)   = 0;
	virtual void adaptor_do_TARGET_PARENT_ENABLE(JStudio::data::TEOperationData, const void*, u32) = 0;

    /* 0x10 */ TVariableValue mValue[12];

    static u32 const sauVariableValue_3_POSITION_XYZ[3];
    static u32 const sauVariableValue_3_TARGET_POSITION_XYZ[3];
    static u32 sauVariableValue_2_DISTANCE_NEAR_FAR[2];
};

struct TObject_camera : public TObject {
    /* 80286E7C */ TObject_camera(JStudio::stb::data::TParse_TBlock_object const&,
                                  JStudio::TAdaptor_camera*);
    
    /* 802880E4 */ virtual ~TObject_camera();
    /* 80286EB8 */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_fog : public TAdaptor {
    TAdaptor_fog() : TAdaptor(mValue, 6) {}
    /* 8028717C */ virtual ~TAdaptor_fog() = 0;

    /* 0x10 */ TVariableValue mValue[6];

    static u32 const sauVariableValue_3_COLOR_RGB[3];
    static u32 const sauVariableValue_4_COLOR_RGBA[4];
    static u32 sauVariableValue_2_RANGE_BEGIN_END[2];
};

struct TObject_fog : public TObject {
    /* 802871DC */ TObject_fog(JStudio::stb::data::TParse_TBlock_object const&,
                               JStudio::TAdaptor_fog*);
    
    /* 80288084 */ virtual ~TObject_fog();
    /* 80287218 */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_light : public TAdaptor {
    TAdaptor_light() : TAdaptor(mValue, 13) {}
    /* 80287308 */ virtual ~TAdaptor_light() = 0;

    /* 0x10 */ TVariableValue mValue[13];

    static u32 const sauVariableValue_3_COLOR_RGB[3];
    static u32 const sauVariableValue_4_COLOR_RGBA[4];
    static u32 const sauVariableValue_3_POSITION_XYZ[3];
    static u32 const sauVariableValue_3_TARGET_POSITION_XYZ[3];
    static u32 sauVariableValue_2_DIRECTION_THETA_PHI[2];
};

struct TObject_light : public TObject {
    /* 80287368 */ TObject_light(JStudio::stb::data::TParse_TBlock_object const&,
                                 JStudio::TAdaptor_light*);
    
    /* 80288024 */ virtual ~TObject_light();
    /* 802873A4 */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_message : public TAdaptor {
    TAdaptor_message() : TAdaptor(NULL, 0) {}
    /* 802875E0 */ virtual ~TAdaptor_message() = 0;
};

struct TObject_message : public TObject {
    /* 80287640 */ TObject_message(JStudio::stb::data::TParse_TBlock_object const&,
                                   JStudio::TAdaptor_message*);
    
    /* 80287FC4 */ virtual ~TObject_message();
    /* 8028767C */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_particle : public TAdaptor {
    TAdaptor_particle() : TAdaptor(mValue, 20) {}
    /* 8028770C */ virtual ~TAdaptor_particle() = 0;

    /* 0x10 */ TVariableValue mValue[20];

    static u32 const sauVariableValue_3_TRANSLATION_XYZ[3];
    static u32 const sauVariableValue_3_ROTATION_XYZ[3];
    static u32 const sauVariableValue_3_SCALING_XYZ[3];
    static u32 const sauVariableValue_3_COLOR_RGB[3];
    static u32 const sauVariableValue_4_COLOR_RGBA[4];
    static u32 const sauVariableValue_3_COLOR1_RGB[3];
    static u32 const sauVariableValue_4_COLOR1_RGBA[4];
};

struct TObject_particle : public TObject {
    /* 8028776C */ TObject_particle(JStudio::stb::data::TParse_TBlock_object const&,
                                    JStudio::TAdaptor_particle*);
    
    /* 80287F64 */ virtual ~TObject_particle();
    /* 802877A8 */ virtual void do_paragraph(u32, void const*, u32);
};

struct TAdaptor_sound : public TAdaptor {
    TAdaptor_sound() : TAdaptor(mValue, 13) {}
    /* 80287B3C */ virtual ~TAdaptor_sound() = 0;

    /* 0x10 */ TVariableValue mValue[13];

    static u32 const sauVariableValue_3_POSITION_XYZ[3];
};  // Size: 0x114

struct TObject_sound : public TObject {
    /* 80287B9C */ TObject_sound(JStudio::stb::data::TParse_TBlock_object const&,
                                 JStudio::TAdaptor_sound*);
    
    /* 80287F04 */ virtual ~TObject_sound();
    /* 80287BD8 */ virtual void do_paragraph(u32, void const*, u32);
};

};  // namespace JStudio

#endif /* JSTUDIO_OBJECT_H */
