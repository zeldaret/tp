#ifndef JSYSTEM_OBJECTID_H_
#define JSYSTEM_OBJECTID_H_

#include "JSystem/JGadget/binary.h"
#include "JSystem/JGadget/linklist.h"
#include "JSystem/JStudio/object-id.h"
#include "global.h"

using namespace JGadget::binary;

namespace JStudio {
namespace stb {

class TControl;

const int STATUS_STILL = 0;
const int STATUS_UNK1 = 1;
const int STATUS_WAIT = 2;
const int STATUS_SUSPEND = 4;
const int STATUS_INACTIVE = 8;

namespace data {

const int BLOCK_SOUND = 'JSND';
const int BLOCK_ACTOR = 'JACT';
const int BLOCK_AMBIENTLIGHT = 'JABL';
const int BLOCK_CAMERA = 'JCMR';
const int BLOCK_FOG = 'JFOG';
const int BLOCK_LIGHT = 'JLIT';
const int BLOCK_MESSAGE = 'JMSG';
const int BLOCK_PARTICLE = 'JPTC';
const int BLOCK_NONE = -1;

struct THeader {
    struct Target {
        /* 0x00 */ char name[8];  // "jstudio"
        /* 0x08 */ u16 _8[3];
        /* 0x0e */ u16 target_version;  // 0-1 = obselete, 2-7 = OK
    };

    /* 0x00 */ char signature[4];
    /* 0x04 */ u16 byte_order;
    /* 0x06 */ u16 version;
    /* 0x08 */ u32 _8;
    /* 0x0c */ u32 block_number;
    /* 0x10 */ Target target;
    /* 0x20 */ u8 content;
};

struct TBlock {
    /* 0x0 */ u32 size;
    /* 0x4 */ u32 type;  // actually a char[4] - JMSG, JSND, JACT, ...
};

struct TBlock_object : TBlock {
    /* 0x8 */ u16 flag;
    /* 0xa */ u16 id_size;
    /* 0xc */ u8 id[0];  // unique identifier
    ///* ??? */ u8 content[0];
};

// Parses a THeader
struct TParse_THeader : TParseData_aligned<4> {
    TParse_THeader(const void* p) : TParseData_aligned<4>(p) {}

    // inlines
    const THeader* get() const { return (THeader*)getRaw(); }
    const void* getContent() const { return &((THeader*)getRaw())->content; }

    const char* get_signature() const { return get()->signature; }
    u16 get_byteOrder() const { return get()->byte_order; }
    u16 get_version() const { return get()->version; }
    u32 get_blockNumber() const { return get()->block_number; }
};

struct TParse_TBlock : public TParseData_aligned<4> {
    TParse_TBlock(const void* content) : TParseData_aligned<4>(content) {}

    const TBlock* get() const { return (TBlock*)getRaw(); }

    u32 get_size() const { return get()->size; }
    u32 get_type() const { return get()->type; }
};

// Parses a TObject ("demo object")
struct TParse_TBlock_object : public TParse_TBlock {
    TParse_TBlock_object(const void* content) : TParse_TBlock(content) {}

    const TBlock_object* get() const { return (TBlock_object*)getRaw(); }
    const void* getContent() const {  // id is arbitrary size
        return ((TBlock_object*)getRaw())->id + align_roundUp(get_IDSize(), 4);
    }

    u16 get_flag() const { return get()->flag; }
    u16 get_IDSize() const { return get()->id_size; }
    const void* get_ID() const { return get()->id; }
};

struct TParse_TParagraph_dataID : public TParseData_aligned<4> {
    TParse_TParagraph_dataID(const void* pContent) : TParseData_aligned<4>(pContent) {}
};

}  // namespace data

// Delegates handling of STB file blocks
class TParse : public TParse_header_block {
public:
    TParse(TControl* control);
    virtual ~TParse();

    // virtuals
    virtual bool parseHeader_next(const void** ppData_inout, u32* puBlock_out, u32 arg3);
    virtual bool parseBlock_next(const void** ppData_inout, u32* puData_out, u32 arg3);
    virtual bool parseHeader(const data::TParse_THeader& header, u32 arg2);
    virtual bool parseBlock_block(const data::TParse_TBlock& referBlock, u32 arg2);
    virtual bool parseBlock_object(const data::TParse_TBlock_object& referObject, u32 arg2);

    // inlines
    TControl* getControl() const { return pControl; }

private:
    TControl* pControl;
};

class TObject : public object::TObject_ID {
public:
    TObject(u32 arg1, const void* id, u32 id_size);
    explicit TObject(const data::TParse_TBlock_object& object);
    virtual ~TObject();

    // virtuals
    virtual void do_begin();
    virtual void do_end();
    virtual void do_paragraph(u32 arg1, const void* arg2, u32 arg3);
    virtual void do_wait(u32 arg1);
    virtual void do_data(const void* arg1, u32 arg2, const void* arg3, u32 arg4);

    void on_begin() { do_begin(); }
    void on_end() { do_end(); }
    void on_paragraph(u32 arg1, const void* arg2, u32 arg3) { do_paragraph(arg1, arg2, arg3); }
    void on_wait(u32 arg1) { do_wait(arg1); }
    void on_data(const void* arg1, u32 arg2, const void* arg3, u32 arg4) {
        do_data(arg1, arg2, arg3, arg4);
    }

    // member functions
    void setFlag_operation(u8 op, int val);
    void reset(const void* arg1);
    int forward(u32 arg1);
    void process_sequence_();
    void process_paragraph_reserved_(u32 arg1, const void* pContent, u32 arg3);

    // inlines
    TControl* getControl() const { return pControl; }
    void setControl(TControl* control) { pControl = control; }

    int getSuspend() const { return _20; }
    bool isSuspended() const { return getSuspend() == 0; }

    const void* getSequence() const { return _24; }
    void setSequence_(const void* arg1) { _24 = arg1; }
    const void* getSequence_offset(s32 i_no) const { return &((u32*)getSequence())[i_no]; }

    const void* getSequence_next() const { return _28; }
    void setSequence_next(const void* seq) { _24 = seq; }

    u32 getWait() const { return u32Wait_; }
    void setWait(u32 wait) { u32Wait_ = wait; }

    u32 getStatus() const { return mStatus; }
    void setStatus_(u32 status) { mStatus = status; }

private:
    /* 0x10 */ JGadget::TLinkListNode mNode;
    /* 0x14 */ TControl* pControl;
    /* 0x18 */ u32 _18;
    /* 0x1c */ u16 mFlag;
    /* 0x1e */ u8 bSequence_;
    /* 0x20 */ u32 _20;  // "second per frame"?
    /* 0x24 */ const void* _24;
    /* 0x28 */ const void* _28;
    /* 0x2c */ u32 u32Wait_;
    /* 0x30 */ u32 mStatus;
};

// Creates and deletes TObjects from parsed input
class TFactory {
public:
    TFactory();
    virtual ~TFactory();

    virtual TObject* create(const data::TParse_TBlock_object& p);
    virtual void destroy(TObject* p);
};

class TObject_control : public TObject {
public:
    TObject_control(const void* arg1, u32 arg2);
    ~TObject_control() {}
};

// Manages TObjects
class TControl {
public:
    TControl();
    virtual ~TControl();

    // member functions
    TObject* getObject(const void* arg1, u32 arg2);
    void appendObject(TObject* p);
    void removeObject(TObject* p);
    void destroyObject(TObject* p);
    void destroyObject_all();
    void reset();
    void forward(u32 arg1);

    // inlines
    void setStatus_(u32 status) { mStatus = status; }
    void resetStatus_() { setStatus_(0); }
    bool isSuspended() const { return _54 == 0; }
    TFactory* getFactory() const { return pFactory; }
    TObject_control& referObject_control() { return mObject_control; }

private:
    /* 0x04 */ u32 _4;
    /* 0x08 */ u32 _8;
    /* 0x0c */ TFactory* pFactory;
    /* 0x10 */ JGadget::TLinkList<TObject, -12> mObjectContainer;
    /* 0x1c */ u32 mStatus;
    /* 0x20 */ TObject_control mObject_control;
    /* 0x54 */ u32 _54;  // "second per frame"?
};

}  // namespace stb
}  // namespace JStudio

#endif
