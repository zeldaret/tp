#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JStudio/JStudio/stb.h"
#include "JSystem/JStudio/JStudio/jstudio-object.h"
#include "JSystem/JUtility/JUTException.h"
#include <algorithm>
#include <cstring>

namespace JStudio {
namespace stb {

// unchecked, in debug dol
const char* TObject::toString_status(int status) {
    switch (status) {
    case 0:
        return "still";
    case 1:
        return "end";
    case 2:
        return "wait";
    case 4:
        return "suspend";
    case 8:
        return "inactive";
    default:
        return "(undefined)";
    }
}

TObject::TObject(u32 arg1, const void* id, u32 id_size)
    : TObject_ID(id, id_size), pControl(NULL), signature(arg1), mFlag(0), bSequence_(0), _20(0),
      pSequence(NULL), pSequence_next(NULL), u32Wait_(0), mStatus(STATUS_STILL) {}

TObject::TObject(const data::TParse_TBlock_object& object)
    : TObject_ID(object.get_ID(), object.get_IDSize()), pControl(NULL),
      signature(object.get_type()), mFlag(object.get_flag()), bSequence_(0), _20(0), pSequence(0),
      pSequence_next(object.getContent()), u32Wait_(0), mStatus(STATUS_STILL) {}

TObject::~TObject() {
    JGADGET_ASSERTWARN(69, getControl()==NULL);
}

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
    default:
        JGADGET_WARNMSG1(92, "unknown flag-operation : ", uint(op));
        break;
    }
}

#if !PLATFORM_SHIELD || DEBUG
void TObject::reset(const void* arg1) {
    bSequence_ = 0;
    setStatus_(STATUS_STILL);
    setSequence_next(arg1);
    setWait(0);
}
#endif

#if DEBUG
void TObject::reset() {
    reset(NULL);
}
#endif

bool TObject::forward(u32 arg1) {
    bool temp = false;

    while (true) {
        if (mFlag & 0x8000) {
            switch (getStatus()) {
            case STATUS_STILL:
            case STATUS_END:
                break;
            case STATUS_WAIT:
            case STATUS_SUSPEND:
                setStatus_(STATUS_INACTIVE);
                if (bSequence_) {
                    on_end();
                }
                break;
            case STATUS_INACTIVE:
                break;
            default:
                JUT_ASSERT(132, false);
                break;
            }
            return true;
        }

        if (getStatus() == STATUS_INACTIVE) {
            JUT_ASSERT(139, bSequence_);
            on_begin();
            setStatus_(STATUS_WAIT);
        }
        JUT_ASSERT(143, getStatus()!=STATUS_INACTIVE);

        TControl* control = getControl();
        if ((control != NULL && control->isSuspended()) || isSuspended()) {
            if (bSequence_) {
                JUT_ASSERT(155, (getStatus()==STATUS_WAIT)|| (getStatus()==STATUS_SUSPEND));
                setStatus_(STATUS_SUSPEND);
                on_wait(arg1);
            }
            return true;
        }

        while (true) {
            void* nextseq = (void*)getSequence_next();
            setSequence_(nextseq);

            if (nextseq == NULL) {
                if (bSequence_) {
                    JUT_ASSERT(173, getStatus()!=STATUS_STILL);
                    if (!temp) {
                        on_wait(0);
                    }
                    bSequence_ = false;
                    setStatus_(STATUS_END);
                    on_end();
                }
                return false;
            }

            if (!bSequence_) {
                JUT_ASSERT(184, getStatus()==STATUS_STILL);
                bSequence_ = true;
                on_begin();
            }
            setStatus_(STATUS_WAIT);
            if (u32Wait_ == 0) {
                process_sequence_();
                if (u32Wait_ == 0) {
                    break;
                }
            }
            JUT_ASSERT(201, u32Wait_>0);

            temp = true;
            if (arg1 >= u32Wait_) {
                u32 wait = u32Wait_;
                arg1 -= u32Wait_;
                u32Wait_ = 0;
                on_wait(wait);
            } else {
                u32Wait_ -= arg1;
                on_wait(arg1);
                return true;
            }
        }
    }
}

void TObject::do_begin() {
    /* empty function */
}

void TObject::do_end() {
    /* empty function */
}

void TObject::do_paragraph(u32 param_0, void const* param_1, u32 param_2) {
    /* empty function */
}

void TObject::do_wait(u32 param_0) {
    /* empty function */
}

void TObject::do_data(void const* param_0, u32 param_1, void const* param_2, u32 param_3) {
    /* empty function */
}

void TObject::process_sequence_() {
    JUT_ASSERT(245, getWait()==0);
    data::TParse_TSequence seq(getSequence());

    data::TParse_TSequence::TData dat;

    seq.getData(&dat);
    u8 type = dat.type;
    u32 u32Value = dat.param;
    const void* pContent = dat.content;
    const void* pNext = dat.next;
    setSequence_next(dat.next);

    switch (type) {
    case 0:
        JGADGET_ASSERTWARN(259, u32Value==0);
        JGADGET_ASSERTWARN(260, pContent==NULL);
        break;
    case 1:
        JGADGET_ASSERTWARN(264, pContent==NULL);
        setFlag_operation_(u32Value);
        break;
    case 2:
        JGADGET_ASSERTWARN(269, pContent==NULL);
        setWait(u32Value);
        break;
    case 3: {
        JGADGET_ASSERTWARN(274, pContent==NULL);
        setSequence_next(getSequence_offset(toInt32FromUInt24_(u32Value)));
        break;
    }
    case 4: {
        JGADGET_ASSERTWARN(279, pContent==NULL);
        suspend(toInt32FromUInt24_(u32Value));
        break;
    }
    case 0x80: {
        JUT_ASSERT(0, pContent!=NULL);
        void* p = (void*)pContent;
        data::TParse_TParagraph para(NULL);
        while (p < pNext) {
            para.setRaw(p);

            data::TParse_TParagraph::TData para_dat;
            para.getData(&para_dat);
            if (para_dat.type <= 0xff) {
                process_paragraph_reserved_(para_dat.type, para_dat.content, para_dat.param);
            } else {
                on_paragraph(para_dat.type, para_dat.content, para_dat.param);
            }
            p = (void*)para_dat.next;
            JUT_ASSERT(301, p!=NULL);
        }
        JGADGET_ASSERTWARN(303, p==pNext);
        break;
    }
    default:
        JGADGET_WARNMSG1(309, "unknown sequence : ", dat.type);
        break;
    }
}

void TObject::process_paragraph_reserved_(u32 arg1, const void* pContent, u32 uSize) {
    switch (arg1) {
    case 0x1:
        JUT_ASSERT(320, pContent!=NULL);
        JUT_ASSERT(321, uSize==4);
        setFlag_operation_(*(u32*)pContent);
        break;
    case 0x2:
        JUT_ASSERT(326, pContent!=NULL);
        JUT_ASSERT(327, uSize==4);
        setWait(*(u32*)pContent);
        break;
    case 0x3: {
        JUT_ASSERT(332, pContent!=NULL);
        JUT_ASSERT(333, uSize==4);
        setSequence_next(getSequence_offset(*(s32*)pContent));
        break;
    }
    case 0x80:
        on_data(NULL, 0, pContent, uSize);
        break;
    case 0x81: {
        data::TParse_TParagraph_dataID dataID(pContent);
        const void* r26 = dataID.getContent();
        u32 r25 = dataID.get_IDSize();
        on_data(dataID.get_ID(), r25, r26,
                uSize - ((uintptr_t)r26 - (uintptr_t)dataID.getRaw()));
        break;
    }
    case 0x82:
        JUT_ASSERT(355, pContent!=NULL);
        JGADGET_WARNMSG1(356, "not implemented : ", arg1);
        break;
    default:
        JGADGET_WARNMSG1(360, "unknown paragraph : ", arg1);
    }
}

TObject_control::TObject_control(const void* arg1, u32 arg2) : TObject(-1, arg1, arg2) {}

TControl::TControl() : _4(0), _8(0), mFactory(NULL), mObject_control(NULL, 0), _54(0) {
    resetStatus_();
    mObject_control.setControl_(this);
}

// TObject_control::TObject_control() definition gets inlined here

TControl::~TControl() {
    mObject_control.setControl_(NULL);
    JGADGET_ASSERTWARN(422, ocObject_.empty());
}

void TControl::appendObject(TObject* p) {
    JUT_ASSERT(434, p!=NULL);
    JUT_ASSERT(435, p->getControl()==NULL);
    p->setControl_(this);
    ocObject_.Push_back(p);
}

void TControl::removeObject(TObject* p) {
    JUT_ASSERT(443, p!=NULL);
    JUT_ASSERT(444, p->getControl()==this);
    p->setControl_(NULL);
    ocObject_.Erase(p);
}

void TControl::destroyObject(TObject* p) {
    removeObject(p);
    TFactory* pFactory = getFactory();
    JUT_ASSERT(461, pFactory!=NULL);
    pFactory->destroy(p);
}

void TControl::destroyObject_all() {
    while (!ocObject_.empty()) {
        destroyObject(&ocObject_.back());
    }
}

// NONMATCHING - TPRObject_ID_equal copy issue
TObject* TControl::getObject(void const* param_0, u32 param_1) {
    JGadget::TLinkList<TObject, -12>::iterator begin = ocObject_.begin();
    JGadget::TLinkList<TObject, -12>::iterator end = ocObject_.end();
    JGadget::TLinkList<TObject, -12>::iterator local_50 = std::find_if(begin, end, object::TPRObject_ID_equal(param_0, param_1));
    return local_50 != end ? &*local_50 : NULL;
}

void TControl::reset() {
    resetStatus_();
    mObject_control.reset();
    JGadget::TContainerEnumerator<JGadget::TLinkList<JStudio::stb::TObject, -12> > aTStack_18(ocObject_);
    while (aTStack_18) {
        TObject& obj = *aTStack_18;
        obj.reset();
    }
}

bool TControl::forward(u32 param_0) {
    _54 = mObject_control.getSuspend();
    bool rv = mObject_control.forward(param_0);
    int uVar7 = 0xf;
    int uVar6 = 0;
    JGadget::TContainerEnumerator<JGadget::TLinkList<JStudio::stb::TObject, -12> > aTStack_38(ocObject_);
    while (aTStack_38) {
        JStudio::stb::TObject& this_00 = *aTStack_38;
        rv = this_00.forward(param_0) || rv;
        int uVar3 = this_00.getStatus();
        uVar7 &= uVar3;
        uVar6 |= uVar3;
    }
    setStatus_(uVar7 | (uVar6 << 0x10));
    return rv;
}

TFactory::~TFactory() {}

JStudio::TObject* TFactory::create(data::TParse_TBlock_object const& param_0) {
    return NULL;
}

void TFactory::destroy(TObject* p) {
    JUT_ASSERT(561, (p==NULL)||(p->getControl()==NULL));
    delete p;
}

TParse::TParse(TControl* pControl) : pControl(pControl) {}

TParse::~TParse() {}

bool TParse::parseHeader_next(const void** ppData_inout, u32* puBlock_out, u32 flags) {
    JUT_ASSERT(590, ppData_inout!=NULL);
    JUT_ASSERT(591, puBlock_out!=NULL);
    const void* pData = *ppData_inout;
    JUT_ASSERT(593, pData!=NULL);

    const data::TParse_THeader header(pData);
    *ppData_inout = header.getContent();
    *puBlock_out = header.get_blockNumber();

    if (memcmp(header.get_signature(), &data::ga4cSignature, 4) != 0) {
        JGADGET_WARNMSG(601, "unknown signature");
        return false;
    }

    if (header.get_byteOrder() != 0xFEFF) {
        JGADGET_WARNMSG(606, "illegal byte-order");
        return false;
    }
    u16 version = header.get_version();
    if (version < 1) {
        JGADGET_WARNMSG1(613, "obsolete version : ", version);
        return false;
    } else if (version > 3) {
        JGADGET_WARNMSG1(618, "unknown version : ", version);
        return false;
    }
    return parseHeader(header, flags);
}

bool TParse::parseBlock_next(void const** ppData_inout, u32* puData_out, u32 flags) {
    JUT_ASSERT(629, ppData_inout!=NULL);
    JUT_ASSERT(630, puData_out!=NULL);
    const void* pData = *ppData_inout;
    JUT_ASSERT(632, pData!=NULL);

    data::TParse_TBlock blk(pData);
    *ppData_inout = blk.getNext();
    *puData_out = blk.get_size();
    return parseBlock_block(blk, flags);
}

bool TParse::parseHeader(data::TParse_THeader const& param_0, u32 flags) {
    return true;
}

bool TParse::parseBlock_block(const data::TParse_TBlock& ppBlock, u32 flags) {
    return parseBlock_object(ppBlock.get(), flags);
}

bool TParse::parseBlock_object(const data::TParse_TBlock_object& ppObject, u32 flags) {
    TControl* pControl = getControl();
    JUT_ASSERT(662, pControl!=NULL);

    if (ppObject.get_type() == data::BLOCK_NONE) {
        TObject_control& ref = pControl->referObject_control();
        ref.reset(ppObject.getContent());
        return true;
    }

    if (flags & 0x10) {
        TObject* p = pControl->getObject(ppObject.get_ID(), ppObject.get_IDSize());
        if (p != NULL) {
            p->reset(ppObject.getContent());
            return true;
        }
    }

    if (flags & 0x20)
        return true;

    TFactory* pFactory = pControl->getFactory();
    if (pFactory == NULL) {
        JGADGET_WARNMSG(690, "factory not specified");
        return false;
    }

    JStudio::TObject* p = pFactory->create(ppObject);
    if (p == NULL) {
        if (flags & 0x40)
            return true;

        char a5c[8];
        char t[16];
        int type = ppObject.get_type();
        data::toString_block(a5c, type);
#if DEBUG
        sprintf(t, "%08x", type);
#endif

        JGADGET_WARNMSG4(706, "can't create object : ", a5c, "(0x", t, ")");
        return false;
    }
    pControl->appendObject(p);
    return true;
}

}  // namespace stb
}  // namespace JStudio
