#ifndef JSTUDIO_CONTROL_H
#define JSTUDIO_CONTROL_H

#include "JSystem/JStudio/JStudio/fvb.h"
#include "JSystem/JStudio/JStudio/stb.h"
#include "JSystem/JStudio/JStudio/ctb.h"
#include "dolphin/gx.h"

namespace JStudio {
struct TObject;
struct TCreateObject {
    TCreateObject() {}
    /* 80285488 */ virtual ~TCreateObject() = 0;
    virtual bool create(TObject**, JStudio::stb::data::TParse_TBlock_object const&) = 0;

    /* 0x4 */ JGadget::TLinkListNode mNode;
};  // Size: 0xC

struct TFactory : public stb::TFactory {
    TFactory() {}

    /* 802854D0 */ virtual ~TFactory();
    /* 802855AC */ virtual TObject* create(JStudio::stb::data::TParse_TBlock_object const&);

    /* 80285560 */ void appendCreateObject(JStudio::TCreateObject*);

    /* 0x04 */ JGadget::TLinkList<TCreateObject, -4> mList;
    /* 0x10 */ fvb::TFactory fvb_Factory;
    /* 0x14 */ ctb::TFactory ctb_Factory;
};

class TControl : public stb::TControl {
public:
    struct TTransform_translation_rotation_scaling {};
    struct TTransform_position : public Vec {};

    /* 80285114 */ TControl();
    /* 802851AC */ virtual ~TControl();
    /* 80285228 */ void setFactory(JStudio::TFactory*);
    /* 80285250 */ int transformOnSet_setOrigin_TxyzRy(Vec const&, f32);
    /* 802852D0 */ int transformOnGet_setOrigin_TxyzRy(Vec const&, f32);
    /* 80285368 */ int transform_setOrigin_ctb(JStudio::ctb::TObject const&);
    /* 8028543C */ bool transform_setOrigin_ctb_index(u32);

    void stb_destroyObject_all() { stb::TControl::destroyObject_all(); }
    void fvb_destroyObject_all() { fvb_Control.destroyObject_all(); }
    void ctb_destroyObject_all() { ctb_Control.destroyObject_all(); }

    void destroyObject_all() {
        stb_destroyObject_all();
        fvb_destroyObject_all();
        ctb_destroyObject_all();
    }

    void transformOnSet_enable(bool param_0) { mTransformOnSet = param_0; }
    void transformOnGet_enable(bool param_0) { mTransformOnGet = param_0; }

    void transform_enable(bool param_0) {
        transformOnSet_enable(param_0);
        transformOnGet_enable(param_0);
    }

    void transform_setOrigin_TxyzRy(const Vec& xyz, f32 rotY) {
        transformOnSet_setOrigin_TxyzRy(xyz, rotY);
        transformOnGet_setOrigin_TxyzRy(xyz, rotY);
    }

    void transform_setOrigin(const Vec& xyz, f32 rotY) {
        transform_setOrigin_TxyzRy(xyz, rotY);
    }

    void setSecondPerFrame(f64 param_0) { mSecondPerFrame = param_0; }
    f64 getSecondPerFrame() const { return mSecondPerFrame; }

    ctb::TObject* ctb_getObject_index(u32 index) {
        return ctb_Control.getObject_index(index);
    }

    fvb::TObject* fvb_getObject(const void* param_1, u32 param_2) {
        return fvb_Control.getObject(param_1, param_2);
    }

    fvb::TObject* fvb_getObject_index(u32 index) {
        return fvb_Control.getObject_index(index);
    }

    TFunctionValue* getFunctionValue(const void* param_1, u32 param_2) {
        fvb::TObject* obj = fvb_getObject(param_1, param_2);
        if (obj == NULL) {
            return NULL;
        } 
        return obj->referFunctionValue();
    }

    TFunctionValue* getFunctionValue_index(u32 index) {
        fvb::TObject* obj = fvb_getObject_index(index);
        if (obj == NULL) {
            return NULL;
        } 
        return obj->referFunctionValue();
    }

    bool transformOnSet_isEnabled() const { return mTransformOnSet; }
    CMtxP transformOnSet_getMatrix() const { return mTransformOnSet_Matrix; }

    void transformOnSet_transformTranslation(const Vec& rSrc, Vec* pDst) const {
        JUT_ASSERT(226, pDst!=0);
        JUT_ASSERT(227, &rSrc!=pDst);
        MTXMultVec(transformOnSet_getMatrix(), &rSrc, pDst);
    }

    void transformOnSet_transform(TTransform_position* param_1, TTransform_position* param_2) const {
        transformOnSet_transformTranslation(*param_1, param_2);
    }

    TTransform_position* transformOnSet_transform_ifEnabled(TTransform_position* param_1,
                                                            TTransform_position* param_2) const {
        if (!transformOnSet_isEnabled()) {
            return param_1;
        }
        transformOnSet_transform(param_1, param_2);
        return param_2;
    }

    /* 0x58 */ f64 mSecondPerFrame;
    /* 0x60 */ fvb::TControl fvb_Control;
    /* 0x74 */ ctb::TControl ctb_Control;
    /* 0x88 */ bool mTransformOnSet;
    /* 0x89 */ bool mTransformOnGet;
    /* 0x8C */ Vec field_0x8c;
    /* 0x98 */ Vec field_0x98;
    /* 0xA4 */ f32 mTransformOnSet_RotationY;
    /* 0xA8 */ f32 field_0xa8;
    /* 0xAC */ Mtx mTransformOnSet_Matrix;
    /* 0xDC */ Mtx mTransformOnGet_Matrix;
};

struct TParse : public stb::TParse {
    /* 8028566C */ TParse(JStudio::TControl*);
    /* 80285844 */ bool parseBlock_block_fvb_(JStudio::stb::data::TParse_TBlock const&, u32);
    /* 802858F0 */ bool parseBlock_block_ctb_(JStudio::stb::data::TParse_TBlock const&, u32);

    /* 802856A8 */ virtual ~TParse();
    /* 80285708 */ virtual bool parseHeader(JStudio::stb::data::TParse_THeader const&, u32);
    /* 802857E4 */ virtual bool parseBlock_block(JStudio::stb::data::TParse_TBlock const&, u32);

    TControl* getControl() { return (TControl*)stb::TParse::getControl(); }
};

};  // namespace JStudio

#endif /* JSTUDIO_CONTROL_H */
