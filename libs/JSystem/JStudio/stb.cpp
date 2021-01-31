#include "JSystem/JStudio/stb.h"

extern "C" {
int func_8036608C(const void*, const void*, u32);
void process_sequence___Q37JStudio3stb7TObjectFv();
void process_paragraph_reserved___Q37JStudio3stb7TObjectFUlPCvUl();
void JStudio_NS_stb_NS_data_NS_TParse_TParagraph_NS_getData();
void setFlag_operation__Q37JStudio3stb7TObjectFUci();
void JStudio_NS_stb_NS_data_NS_TParse_TSequence_NS_getData();
void JGadget_NS_TNodeLinkList_NS_Erase();
void Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode();
void destroyObject__Q37JStudio3stb8TControlFPQ37JStudio3stb7TObject();
void std_NS_find_if_X2_();
void reset__Q37JStudio3stb7TObjectFPCv();
void forward__Q37JStudio3stb7TObjectFUl();
void JStudio_NS_object_NS_TIDData_NS_isEqual();
}

extern u8 lbl_804554D0;            // 0xFF
extern const char** lbl_804554D8;  // "STB"\0

namespace JStudio {
namespace stb {

TObject::TObject(u32 arg1, const void* id, u32 id_size)
    : TObject_ID(id, id_size), pControl(NULL), _18(arg1), mFlag(0), bSequence_(0), _20(0),
      _24(NULL), _28(NULL), u32Wait_(0), mStatus(0) {}

TObject::TObject(const data::TParse_TBlock_object& object)
    : TObject_ID(object.get_ID(), object.get_IDSize()), pControl(NULL), _18(object.get_type()),
      mFlag(object.get_flag()), bSequence_(0), _20(0), _24(0), _28(object.getContent()),
      u32Wait_(0), mStatus(0) {}

TObject::~TObject() {}

void TObject::setFlag_operation(u8 op, int val) {
    switch (op) {
    case 1:
        mFlag |= val;
        break;
    case 2:
        mFlag &= val;
        break;
    case 3:
        mFlag ^= val;
        break;
    }
}

void TObject::reset(const void* arg1) {
    bSequence_ = 0;
    mStatus = 0;
    _28 = arg1;
    u32Wait_ = 0;
}

#ifdef NONMATCHING  // control flow reordering
int TObject::forward(u32 arg1) {
    bool temp = false;

    while (true) {
        if ((mFlag & 0x8000)) {
            switch (getStatus()) {
            case STATUS_SUSPEND:
            case STATUS_WAIT:
                setStatus_(STATUS_INACTIVE);

                if (bSequence_ != 0)
                    on_end();

                break;
            case STATUS_STILL:
            case STATUS_UNK1:
            case STATUS_INACTIVE:
            default:
                break;
            }
            return 1;
        }

        if (getStatus() == STATUS_INACTIVE) {
            do_begin();
            setStatus_(STATUS_WAIT);
        }

        TControl* control = getControl();
        if (control != NULL && !control->isSuspended() && !isSuspended()) {
            if (bSequence_ != 0) {
                setStatus_(STATUS_SUSPEND);
                on_wait(arg1);
            }
            return 1;
        }

        while (true) {
            const void* next = getSequence_next();
            setSequence_(next);

            if (next == NULL) {
                if (bSequence_ != 0) {
                    if (!temp)
                        on_wait(0);

                    bSequence_ = 0;
                    setStatus_(STATUS_UNK1);
                    on_end();
                }
                return 0;
            }

            if (bSequence_ == 0) {
                bSequence_ = 1;
                on_begin();
            }

            setStatus_(STATUS_WAIT);

            if (u32Wait_ == 0) {
                process_sequence_();

                if (u32Wait_ == 0)
                    break;
            }

            temp = true;
            u32 wait = u32Wait_;

            if (arg1 > wait) {
                u32Wait_ = wait - arg1;
                on_wait(arg1);
            } else {
                arg1 -= wait;
                u32Wait_ = 0;
                on_wait(wait);
                return 1;
            }
        }
    }
}
#else
asm int TObject::forward(u32 arg1) {
    nofralloc
#include "JSystem/JStudio/asm/forward__Q37JStudio3stb7TObjectFUl.s"
}
#endif

// virtuals
void TObject::do_begin() {}
void TObject::do_end() {}
void TObject::do_paragraph(u32 arg1, const void* arg2, u32 arg3) {}
void TObject::do_wait(u32 arg1) {}
void TObject::do_data(const void* arg1, u32 arg2, const void* arg3, u32 arg4) {}

asm void TObject::process_sequence_() {
    nofralloc
#include "JSystem/JStudio/asm/process_sequence___Q37JStudio3stb7TObjectFv.s"
}

#ifdef NONMATCHING  // really not sure whats going on here
void TObject::process_paragraph_reserved_(u32 arg1, const void* pContent, u32 uSize) {
    switch (arg1) {
    case 0x1:
        setFlag_operation(*(u32*)pContent >> 16, *(u32*)pContent & 0xFFFF);
        break;
    case 0x2:
        setWait(*(u32*)pContent);
        break;
    case 0x3:
        setSequence_next(getSequence_offset(*(s32*)pContent));
        break;
    case 0x80:
        on_data(NULL, 0, pContent, uSize);
        break;
    case 0x81:
        data::TParse_TParagraph_dataID dataID(pContent);
        on_data(dataID.get_ID(), dataID.get_IDSize(), dataID.get_content(),
                uSize - (u32)dataID.get_content() - (u32)(void*)dataID.getRaw());
        break;
    }
}
#else
asm void TObject::process_paragraph_reserved_(u32 arg1, const void* pContent, u32 uSize) {
    nofralloc
#include "JSystem/JStudio/asm/process_paragraph_reserved___Q37JStudio3stb7TObjectFUlPCvUl.s"
}
#endif

TObject_control::TObject_control(const void* arg1, u32 arg2) : TObject(-1, arg1, arg2) {}

TControl::TControl() : _4(0), _8(0), pFactory(NULL), mObject_control(NULL, 0), _54(0) {
    resetStatus_();
    mObject_control.setControl(this);
}

// TObject_control::TObject_control() definition gets inlined here

TControl::~TControl() {
    mObject_control.setControl(NULL);
}

#ifdef NONMATCHING  // Push_back is a rabbit hole of inlining
void TControl::appendObject(TObject* p) {
    p->setControl(this);
    mObjectContainer.Push_back(p);
}
#else
asm void TControl::appendObject(TObject* p) {
    nofralloc
#include "JSystem/JStudio/asm/appendObject__Q37JStudio3stb8TControlFPQ37JStudio3stb7TObject.s"
}
#endif

asm void TControl::removeObject(TObject* p) {
    nofralloc
#include "JSystem/JStudio/asm/removeObject__Q37JStudio3stb8TControlFPQ37JStudio3stb7TObject.s"
}

void TControl::destroyObject(TObject* p) {
    removeObject(p);
    pFactory->destroy(p);
}

asm void TControl::destroyObject_all() {
    nofralloc
#include "JSystem/JStudio/asm/destroyObject_all__Q37JStudio3stb8TControlFv.s"
}

asm TObject* TControl::getObject(const void* arg1, u32 arg2) {
    nofralloc
#include "JSystem/JStudio/asm/getObject__Q37JStudio3stb8TControlFPCvUl.s"
}

asm void TControl::reset() {
    nofralloc
#include "JSystem/JStudio/asm/reset__Q37JStudio3stb8TControlFv.s"
}

// clang format why
asm void TControl::forward(u32 arg1){nofralloc
#include "JSystem/JStudio/asm/forward__Q37JStudio3stb8TControlFUl.s"
}

TFactory::~TFactory() {
}

TObject* TFactory::create(const data::TParse_TBlock_object&) {
    return NULL;
}

void TFactory::destroy(TObject* p) {
    delete p;
}

TParse::TParse(TControl* pControl) : pControl(pControl) {}

TParse::~TParse() {}

#ifdef NONMATCHING  // Close but is missing a temp or something
int TParse::parseHeader_next(const void** ppData_inout, u32* puBlock_out, u32 arg3) {
    const void* pData = *ppData_inout;
    const data::TParse_THeader& header(pData);

    *ppData_inout = header.getContent();
    *puBlock_out = header.get_blockNumber();

    if (func_8036608C(header.get_signature(), lbl_804554D8, 4) != 0)
        return 0;

    if (header.get_byteOrder() != 0xFEFF)
        return 0;

    u16 version = header.get_version();

    if (version <= 1)
        return 0;
    else if (version >= 3)
        return 0;

    return parseHeader(header, arg3);
}
#else
asm int TParse::parseHeader_next(const void** ppData_inout, u32* puBlock_out, u32 arg3) {
    nofralloc
#include "JSystem/JStudio/asm/parseHeader_next__Q37JStudio3stb6TParseFPPCvPUlUl.s"
}
#endif

asm int TParse::parseBlock_next(const void** ppData_inout, u32* puData_out, u32 arg3) {
    nofralloc
#include "JSystem/JStudio/asm/parseBlock_next__Q37JStudio3stb6TParseFPPCvPUlUl.s"
}

int TParse::parseHeader(const data::TParse_THeader& header, u32 arg2) {
    return 1;
}

bool TParse::parseBlock_block(const data::TParse_TBlock& ppBlock, u32 arg2) {
    return parseBlock_object(ppBlock.get(), arg2);
}

bool TParse::parseBlock_object(const data::TParse_TBlock_object& ppObject, u32 arg2) {
    TControl* pControl = getControl();

    if (ppObject.get_type() == data::BLOCK_NONE) {
        TObject_control& ref = pControl->referObject_control();

        ref.reset(ppObject.getContent());
        return true;
    }

    if (arg2 & 0x10) {
        TObject* p = pControl->getObject(ppObject.get_ID(), ppObject.get_IDSize());

        if (p != NULL) {
            p->reset(ppObject.getContent());
            return true;
        }
    }

    if ((arg2 & 0x20))
        return true;

    TFactory* pFactory = pControl->getFactory();

    if (pFactory == NULL)
        return false;

    TObject* p = pFactory->create(ppObject);

    if (p == NULL) {
        if (arg2 & 0x40)
            return true;

        return false;
    }

    pControl->appendObject(p);

    return true;
}

}  // namespace stb
}  // namespace JStudio

extern "C" {
asm void std_NS_find_if_X2_() {
    nofralloc
#include "JSystem/JStudio/asm/std_NS_find_if_X2_.s"
}
}
