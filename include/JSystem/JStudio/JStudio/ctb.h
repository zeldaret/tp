#ifndef CTB_H
#define CTB_H

#include "dolphin/types.h"
#include "JSystem/JGadget/binary.h"
#include "JSystem/JGadget/linklist.h"
#include "JSystem/JStudio/JStudio/object-id.h"

namespace JStudio {
namespace ctb {
struct TObject : public object::TObject_ID {
    /* 80280F18 */ virtual ~TObject() = 0;

    /* 0x08 vtable */
    /* 0x0C */ JGadget::TLinkListNode field_0xc;
    /* 0x14 */ void* pData_;
};

struct data {
    struct TParse_TBlock : public JGadget::binary::TParseData_aligned<4> {};

    static u32 ga4cSignature;
};

struct TObject_TxyzRy : public TObject {
    /* 80280F60 */ TObject_TxyzRy(JStudio::ctb::data::TParse_TBlock const&);
    
    /* 80281554 */ virtual ~TObject_TxyzRy();
    /* 80280FBC */ virtual bool getScheme() const;
};

struct TFactory {
    TFactory() {}

    /* 80281274 */ virtual ~TFactory();
    /* 802812BC */ virtual void create(JStudio::ctb::data::TParse_TBlock const&);
    /* 80281320 */ virtual void destroy(JStudio::ctb::TObject*);
};

struct TControl {
    /* 80280FC4 */ TControl();
    /* 80280FF4 */ virtual ~TControl();
    /* 80281060 */ void appendObject(JStudio::ctb::TObject*);
    /* 802810AC */ void removeObject(JStudio::ctb::TObject*);
    /* 802810DC */ void destroyObject(JStudio::ctb::TObject*);
    /* 8028112C */ void destroyObject_all();
    /* 80281190 */ void getObject(void const*, u32);
    /* 80281230 */ void getObject_index(u32);

    /* 0x4 */ TFactory* pFactory_;
    /* 0x8 */ JGadget::TLinkList<TObject, 2> mList;
};

struct TParse : public JGadget::binary::TParse_header_block {
    /* 8028135C */ TParse(JStudio::ctb::TControl*);
    /* 8028137C */ virtual ~TParse();
    /* 802813DC */ virtual void parseHeader_next(void const**, u32*, u32);
    /* 80281470 */ virtual void parseBlock_next(void const**, u32*, u32);

    /* 0x4 */ TControl* pControl_;
};

};  // namespace ctb
};  // namespace JStudio

#endif /* CTB_H */
