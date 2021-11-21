#ifndef STB_H
#define STB_H

#include "JSystem/JGadget/linklist.h"
#include "JSystem/JStudio/JStudio/object-id.h"
#include "JSystem/JStudio/JStudio/stb-data-parse.h"
#include "global.h"

namespace JStudio {
namespace stb {

class TControl;

class TParse : public TParse_header_block {
public:
    /* 80289640 */ TParse(TControl*);
    /* 80289660 */ virtual ~TParse();
    /* 802896C0 */ virtual bool parseHeader_next(void const**, u32*, u32);
    /* 8028978C */ virtual bool parseBlock_next(void const**, u32*, u32);
    /* 802897E0 */ virtual bool parseHeader(data::TParse_THeader const&, u32);
    /* 802897E8 */ virtual bool parseBlock_block(data::TParse_TBlock const&, u32);
    /* 80289820 */ virtual bool parseBlock_object(data::TParse_TBlock_object const&, u32);

    TControl* getControl() const { return pControl; }

private:
    TControl* pControl;
};

class TObject : public object::TObject_ID {
public:
    enum TEStatus {
        STATUS_STILL = 0,
        STATUS_END = 1,
        STATUS_WAIT = 2,
        STATUS_SUSPEND = 4,
        STATUS_INACTIVE = 8,
    };

    /* 80288AC0 */ TObject(data::TParse_TBlock_object const&);
    /* 80288A78 */ explicit TObject(u32, void const*, u32);
    /* 80288B30 */ virtual ~TObject();

    /* 80288B78 */ void setFlag_operation(u8, int);
    /* 80288BD0 */ void reset(void const*);
    /* 80288BE8 */ int forward(u32);
    /* 80288E18 */ virtual void do_begin();
    /* 80288E1C */ virtual void do_end();
    /* 80288E20 */ virtual void do_paragraph(u32, void const*, u32);
    /* 80288E24 */ virtual void do_wait(u32);
    /* 80288E28 */ virtual void do_data(void const*, u32, void const*, u32);
    /* 80288E2C */ void process_sequence_();
    /* 80288F80 */ void process_paragraph_reserved_(u32, void const*, u32);

    const char* toString_status(int status);

    void on_begin() { do_begin(); }
    void on_end() { do_end(); }
    void on_paragraph(u32 arg1, const void* arg2, u32 arg3) { do_paragraph(arg1, arg2, arg3); }
    void on_wait(u32 arg1) { do_wait(arg1); }
    void on_data(const void* arg1, u32 arg2, const void* arg3, u32 arg4) {
        do_data(arg1, arg2, arg3, arg4);
    }

    TControl* getControl() const { return pControl; }
    void setControl_(TControl* control) { pControl = control; }
    int getSuspend() const { return _20; }
    void setSuspend(s32 val) { _20 = val; }
    bool isSuspended() const { return getSuspend() > 0; }
    void suspend(s32 val) { _20 += val; }
    const void* getSequence() const { return pSequence; }
    void setSequence_(const void* arg1) { pSequence = arg1; }
    const void* getSequence_offset(s32 i_no) const {
        int s32Val = (s32)getSequence();
        return (const void*)(s32Val + i_no);
    }
    const void* getSequence_next() const { return pSequence_next; }
    void setSequence_next(const void* seq) { pSequence_next = seq; }
    u32 getWait() const { return u32Wait_; }
    void setWait(u32 wait) { u32Wait_ = wait; }
    TEStatus getStatus() const { return mStatus; }
    void setStatus_(TEStatus status) { mStatus = status; }
    u32 toInt32FromUInt24_(u32 val) {
        if (val & 0x800000) {
            val |= data::gu32Mask_TSequence_value_signExpansion;
        }
        return val;
    }
    void setFlag_operation_(u32 u32Data) {
        ASSERT((u32Data >> data::guBit_TSequence_type) == 0);
        setFlag_operation(u32Data >> 16, u32Data & 0xFFFF);
    }

    /* 0x10 */ JGadget::TLinkListNode ocObject_;

private:
    /* 0x14 */ TControl* pControl;
    /* 0x18 */ u32 signature;
    /* 0x1c */ u16 mFlag;
    /* 0x1e */ u8 bSequence_;
    /* 0x20 */ u32 _20;  // "second per frame"?
    /* 0x24 */ const void* pSequence;
    /* 0x28 */ const void* pSequence_next;
    /* 0x2c */ u32 u32Wait_;
    /* 0x30 */ TEStatus mStatus;
};

struct TFactory {
    /* 802895B4 */ virtual ~TFactory();
    /* 802895FC */ virtual TObject* create(data::TParse_TBlock_object const&);
    /* 80289604 */ virtual void destroy(TObject*);
};

struct TObject_control : public TObject {
    /* 80289068 */ TObject_control(void const*, u32);
    /* 80289134 */ ~TObject_control() {}
};

// Manages TObjects
class TControl {
public:
    /* 802890B4 */ TControl();
    /* 80289194 */ virtual ~TControl();

    /* 80289228 */ void appendObject(TObject*);
    /* 80289278 */ void removeObject(TObject*);
    /* 802892B0 */ void destroyObject(TObject*);
    /* 80289300 */ void destroyObject_all();
    /* 80289364 */ TObject* getObject(void const*, u32);
    /* 80289404 */ void reset();
    /* 802894B4 */ void forward(u32);

    void setStatus_(u32 status) { mStatus = status; }
    void resetStatus_() { setStatus_(0); }
    bool isSuspended() const { return _54 > 0; }
    TFactory* getFactory() const { return pFactory; }
    TObject_control& referObject_control() { return mObject_control; }

private:
    /* 0x04 */ u32 _4;
    /* 0x08 */ u32 _8;
    /* 0x0c */ TFactory* pFactory;
    /* 0x10 */ JGadget::TLinkList<TObject, 12> mObjectContainer;
    /* 0x1c */ u32 mStatus;
    /* 0x20 */ TObject_control mObject_control;
    /* 0x54 */ s32 _54;  // "second per frame"?
};

}  // namespace stb
}  // namespace JStudio

#endif /* STB_H */
