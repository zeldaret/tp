#ifndef JSTUDIO_FVB_H
#define JSTUDIO_FVB_H

#include "JSystem/JGadget/binary.h"
#include "JSystem/JGadget/linklist.h"
#include "JSystem/JStudio/functionvalue.h"
#include "JSystem/JStudio/object-id.h"
#include "global.h"

using namespace JGadget::binary;

namespace JStudio {
namespace fvb {

namespace data {

const int PARAGRAPH_DATA = 1;

typedef enum TEComposite {
    NONE = 0,
    RAW = 1,
    IDX = 2,
    PARAM = 3,
    ADD = 4,
    SUB = 5,
    MUL = 6,
    DIV = 7,
};

typedef const void* (*CompositeOperation)(TFunctionValue_composite::TData);

struct TBlock {
    /* 0x0 */ u32 _0;
    /* 0x4 */ u16 _4;
    /* 0x6 */ u16 id_size;
};

struct TParse_TBlock : public TParseData_aligned<4> {
    TParse_TBlock(const void* content) : TParseData_aligned<4>(content) {}

    const TBlock* get() const { return (TBlock*)getRaw(); }

    u16 get_IDSize() const { return get()->id_size; }
    const void* getBlockEnd_() const { return (u8*)getRaw() + sizeof(TBlock); }
    const void* get_ID() const {
        const void* ret = 0;
        if (get_IDSize())
            ret = getBlockEnd_();
        return ret;
    }
};

struct TParse_TParagraph {
    struct TData {
        u32 u32Size;
        u32 u32Type;
        const void* pContent;
    };
};

}  // namespace data

struct TControl;

struct TObject : object::TObject_ID {
public:
    TObject(const data::TParse_TBlock& block);
    TObject(void const* id, u32 id_size, TFunctionValue* value);

    explicit TObject(const data::TParse_TBlock& block, TFunctionValue* value)
        : TObject_ID(block.get_ID(), block.get_IDSize()) {
        JUT_ASSERT(pfv_ != NULL);
        pfv_ = value;
    }

    virtual ~TObject();

    virtual void prepare_data_(const data::TParse_TParagraph::TData& data, TControl* control) = 0;

    void prepare(const data::TParse_TBlock& block, TControl* control);

private:
    /* 0x0c */ JGadget::TLinkListNode mNode;
    ///* 0x10 */ void* _10;
    /* 0x14 */ TFunctionValue* pfv_;
};

struct TControl {
    TControl();
    virtual ~TControl() = 0;

    u32 _4;
    JGadget::TLinkList<TObject, -12> ocObject_;
};

struct TObject_composite : TObject, TFunctionValue_composite {
    TObject_composite(const data::TParse_TBlock& block);

    virtual void prepare_data_(const data::TParse_TParagraph::TData& rData, TControl* control);

    TFunctionValue_composite fnValue;
};

struct TObject_constant : TObject {
    TObject_constant(const data::TParse_TBlock& block);

    void prepare_data_(const data::TParse_TParagraph::TData& rData, TControl* control);

    TFunctionValue_constant fnValue;
};

struct TObject_transition : TObject {
    TObject_transition(const data::TParse_TBlock& block);

    void prepare_data_(const data::TParse_TParagraph::TData& rData, TControl* control);

    TFunctionValue_transition fnValue;
};

struct TObject_list : TObject {
    struct ListData {
        f32 _0;
        u32 _4;
        f32 _8[0];
    };

    TObject_list(const data::TParse_TBlock& block);

    void prepare_data_(const data::TParse_TParagraph::TData& rData, TControl* control);

    TFunctionValue_list fnValue;
};

struct TObject_list_parameter : TObject {
    struct ListData {
        u32 _0;
        f32 _4[0];
    };

    TObject_list_parameter(const data::TParse_TBlock& block);

    void prepare_data_(const data::TParse_TParagraph::TData& rData, TControl* control);

    TFunctionValue_list_parameter fnValue;
};

struct TObject_hermite : TObject {
    struct ListData {
        u32 _0;  // u : 28, uSize : 4
        f32 _4[0];
    };

    TObject_hermite(const data::TParse_TBlock& block);

    void prepare_data_(const data::TParse_TParagraph::TData& rData, TControl* control);

    TFunctionValue_hermite fnValue;
};

}  // namespace fvb
}  // namespace JStudio

#endif  // JSTUDIO_FVB_H
