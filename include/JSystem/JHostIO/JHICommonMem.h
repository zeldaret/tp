#ifndef JHICOMMONMEM_H
#define JHICOMMONMEM_H

#include <dolphin/types.h>

inline u32 JHIhtonl(u32 v) {
#if __BYTE_ORDER__ == __ORDER_BIG_ENDIAN__
    return v;
#else
    // todo
#endif
}

template <typename T>
struct JHITag {
    JHITag(u32 tag) {
        m_tag = tag;
        mp_data = NULL;
    }

    // NONMATCHING - stack stuff
    const void* send(const void* param_0, s32 param_1) {
        u32 sp10 = JHIhtonl(m_tag);
        u32 sp14 = JHIhtonl(param_1);

        if (mp_data->sendBegin() >= param_1 + 8) {
            mp_data->sendCont(&sp10, 8);
            mp_data->sendCont(param_0, param_1);
            mp_data->sendEnd();
        }

        return param_0;
    }
    
    virtual ~JHITag() {}
    virtual void receive(const char*, s32);

    /* 0x4 */ u32 m_tag;
    /* 0x8 */ T* mp_data;
};

class JHIMemBuf;

class JHICommonMem {
public:
    virtual ~JHICommonMem() {}
    virtual int create() = 0;
    virtual int open() = 0;
    virtual void close() = 0;
    virtual u8* getPointer() const = 0;
    virtual void readIO(u32 position, u32* out_data) const = 0;
    virtual u32 readIO(u32 position) const = 0;
    virtual void writeIO(u32 position, u32 data) const = 0;
    virtual void writeIO(u32 position, u8* src_data, u32 length) const = 0;

    static JHIMemBuf* Instance();
    static JHIMemBuf* instance;
};

class JHIMemBuf : public JHICommonMem {
public:
    JHIMemBuf();

    virtual ~JHIMemBuf();
    virtual int create();
    virtual int open();
    virtual void close();
    virtual u8* getPointer() const;
    virtual void readIO(u32 position, u32* out_data) const;
    virtual u32 readIO(u32 position) const;
    virtual void writeIO(u32 position, u32 data) const;
    virtual void writeIO(u32 position, u8* src_data, u32 length) const;

    /* 0x4 */ u8* mp_buffer;
};

#endif /* JHICOMMONMEM_H */
