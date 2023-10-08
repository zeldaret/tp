#ifndef FVB_H
#define FVB_H

#include "JSystem/JGadget/linklist.h"
#include "JSystem/JStudio/JStudio/fvb-data-parse.h"
#include "JSystem/JStudio/JStudio/object-id.h"

namespace JStudio {
namespace fvb {

class TControl;

class TParse : public TParse_header_block {
public:
    /* 80284ADC */ TParse(JStudio::fvb::TControl*);
    /* 80284AFC */ virtual ~TParse();
    /* 80284B5C */ virtual bool parseHeader_next(void const**, u32*, u32);
    /* 80284BF0 */ virtual bool parseBlock_next(void const**, u32*, u32);

    TControl* getControl() const { return pControl_; }

private:
    TControl* pControl_;
};

class TObject : public object::TObject_ID {
public:
    TObject(const data::TParse_TBlock& block);
    TObject(void const* id, u32 id_size, TFunctionValue* value);

    explicit TObject(const data::TParse_TBlock& block, TFunctionValue* value)
        : TObject_ID(block.get_ID(), block.get_IDSize()), pfv_(value) {
        ASSERT(pfv_ != NULL);
    }

    virtual ~TObject() = 0;

    virtual void prepare_data_(const data::TParse_TParagraph::TData& data, TControl* control) = 0;

    void prepare(const data::TParse_TBlock& block, TControl* control);

    TFunctionValue* const& referFunctionValue() { return pfv_; }

private:
    /* 0x0C */ JGadget::TLinkListNode mNode;
    /* 0x14 */ TFunctionValue* pfv_;
};

class TFactory {
public:
    TFactory() {}

    /* 80284918 */ virtual ~TFactory();
    /* 80284960 */ virtual TObject* create(JStudio::fvb::data::TParse_TBlock const&);
    /* 80284AA0 */ virtual void destroy(JStudio::fvb::TObject*);
};

class TControl {
public:
    /* 80284668 */ TControl();
    /* 80284698 */ virtual ~TControl();

    /* 80284704 */ void appendObject(JStudio::fvb::TObject*);
    /* 80284750 */ void removeObject(JStudio::fvb::TObject*);
    /* 80284780 */ void destroyObject(JStudio::fvb::TObject*);
    /* 802847D0 */ void destroyObject_all();
    /* 80284834 */ TObject* getObject(void const*, u32);
    /* 802848D4 */ TObject* getObject_index(u32);

    TFactory* getFactory() const { return pFactory; }

private:
    /* 0x4 */ TFactory* pFactory;
    /* 0x8 */ JGadget::TLinkList<TObject, 12> ocObject_;
};  // Size: 0x14

class TObject_composite : public TObject {
public:
    /* 80284254 */ TObject_composite(JStudio::fvb::data::TParse_TBlock const&);
    /* 802842D4 */ virtual void prepare_data_(JStudio::fvb::data::TParse_TParagraph::TData const&,
                                              JStudio::fvb::TControl*);
    /* 80284F78 */ virtual ~TObject_composite() {}

private:
    TFunctionValue_composite fnValue;
};

class TObject_constant : public TObject {
public:
    /* 80284338 */ TObject_constant(data::TParse_TBlock const&);
    /* 80284EF4 */ virtual ~TObject_constant() {}

    /* 802843B8 */ virtual void prepare_data_(data::TParse_TParagraph::TData const&, TControl*);

private:
    TFunctionValue_constant fnValue;
};

class TObject_transition : public TObject {
public:
    /* 802843C8 */ TObject_transition(data::TParse_TBlock const&);
    /* 80284E70 */ virtual ~TObject_transition() {}

    /* 80284448 */ virtual void prepare_data_(data::TParse_TParagraph::TData const&, TControl*);

private:
    TFunctionValue_transition fnValue;
};

class TObject_list : public TObject {
public:
    struct ListData {
        /* 0x0 */ f32 _0;
        /* 0x4 */ u32 _4;
        /* 0x8 */ f32 _8[0];
    };
    /* 80284460 */ TObject_list(data::TParse_TBlock const&);
    /* 80284DEC */ virtual ~TObject_list() {}

    /* 802844E0 */ virtual void prepare_data_(data::TParse_TParagraph::TData const&, TControl*);

private:
    TFunctionValue_list fnValue;
};

class TObject_list_parameter : public TObject {
public:
    struct ListData {
        u32 _0;
        f32 _4[0];
    };
    /* 80284500 */ TObject_list_parameter(data::TParse_TBlock const&);
    /* 80284D68 */ virtual ~TObject_list_parameter() {}

    /* 80284580 */ virtual void prepare_data_(data::TParse_TParagraph::TData const&, TControl*);

private:
    TFunctionValue_list_parameter fnValue;
};

struct TObject_hermite : public TObject {
public:
    struct ListData {
        u32 _0;  // u : 28, uSize : 4
        f32 _4[0];
    };
    /* 802845B0 */ TObject_hermite(data::TParse_TBlock const&);
    /* 80284CE4 */ virtual ~TObject_hermite() {}

    /* 80284630 */ virtual void prepare_data_(data::TParse_TParagraph::TData const&, TControl*);

private:
    TFunctionValue_hermite fnValue;
};

}  // namespace fvb
}  // namespace JStudio

#endif /* FVB_H */
