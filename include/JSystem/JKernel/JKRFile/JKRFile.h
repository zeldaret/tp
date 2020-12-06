#ifndef __JKRFILE_H__
#define __JKRFILE_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"

class JKRFile : public JKRDisposer {
  public:
    JKRFile() : mIsAvailable(false) {}
    virtual ~JKRFile() {}

    s32 read(void*, long, long);

    bool isAvailable() {
        return this->mIsAvailable;
    }

  public:
    /* vt[03] */ virtual bool open(const char*) = 0;
    /* vt[04] */ virtual void close() = 0;
    /* vt[05] */ virtual s32 readData(void*, long, long) = 0;
    /* vt[06] */ virtual s32 writeData(const void*, long, long) = 0;
    /* vt[07] */ virtual s32 getFileSize() const = 0;

  protected:
    bool mIsAvailable;
    u8 field_0x19[3];
};

#endif
