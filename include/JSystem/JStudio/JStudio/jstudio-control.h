#ifndef JSTUDIO_CONTROL_H
#define JSTUDIO_CONTROL_H

#include "JSystem/JGadget/binary.h"
#include "JSystem/JStudio/JStudio/fvb.h"
#include "JSystem/JStudio/JStudio/stb.h"
#include "JSystem/JStudio/JStudio/ctb.h"
#include "dolphin/gx/GX.h"

namespace JStudio {
struct TCreateObject {
    /* 80285488 */ virtual ~TCreateObject() = 0;

    /* 0x4 */ JGadget::TLinkListNode mNode;
};  // Size: 0xC

struct TFactory : public stb::TFactory {
    /* 802854D0 */ virtual ~TFactory();
    /* 802855AC */ virtual void create(JStudio::stb::data::TParse_TBlock_object const&);

    /* 80285560 */ void appendCreateObject(JStudio::TCreateObject*);

    /* 0x04 */ JGadget::TLinkList<TCreateObject, -4> mList;
    /* 0x10 */ fvb::TFactory fvb_Factory;
    /* 0x14 */ ctb::TFactory ctb_Factory;
};

class TControl : public stb::TControl {
public:
    struct TTransform_translation_rotation_scaling {};
    struct TTransform_position {};

    /* 80285114 */ TControl();
    /* 802851AC */ virtual ~TControl();
    /* 80285228 */ void setFactory(JStudio::TFactory*);
    /* 80285250 */ void transformOnSet_setOrigin_TxyzRy(Vec const&, f32);
    /* 802852D0 */ void transformOnGet_setOrigin_TxyzRy(Vec const&, f32);
    /* 80285368 */ void transform_setOrigin_ctb(JStudio::ctb::TObject const&);
    /* 8028543C */ void transform_setOrigin_ctb_index(u32);

    /* 0x58 */ f64 mSecondPerFrame;
    /* 0x60 */ fvb::TControl fvb_Control;
    /* 0x74 */ ctb::TControl ctb_Control;
    /* 0x88 */ u8 mTransformOnSet;
    /* 0x89 */ u8 mTransformOnGet;
    /* 0x8C */ Vec field_0x8c;
    /* 0x98 */ Vec field_0x98;
    /* 0xA4 */ f32 mTransformOnSet_RotationY;
    /* 0xA8 */ u8 field_0xa8[4];
    /* 0xAC */ Mtx mTransformOnSet_Matrix;
    /* 0xDC */ Mtx mTransformOnGet_Matrix;
};

struct TParse : public stb::TParse {
    /* 8028566C */ TParse(JStudio::TControl*);
    /* 80285844 */ void parseBlock_block_fvb_(JStudio::stb::data::TParse_TBlock const&, u32);
    /* 802858F0 */ void parseBlock_block_ctb_(JStudio::stb::data::TParse_TBlock const&, u32);

    /* 802856A8 */ virtual ~TParse();
    /* 80285708 */ virtual void parseHeader(JStudio::stb::data::TParse_THeader const&, u32);
    /* 802857E4 */ virtual void parseBlock_block(JStudio::stb::data::TParse_TBlock const&, u32);
};

};  // namespace JStudio

#endif /* JSTUDIO_CONTROL_H */
