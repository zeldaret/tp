#ifndef __JKRFILE_H__
#define __JKRFILE_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"

class JKRFile : public JKRDisposer {
  public:
    JKRFile() : mIsOpen(false) {}
    virtual ~JKRFile() {}

    virtual bool open(const char*);
    virtual void close();
    virtual s32 readData(void*, long, long);
    virtual s32 writeData(const void*, long, long);
    virtual s32 getFileSize();
    virtual bool open(long);

    s32 read(void*, long, long);

  protected:
    bool mIsOpen;
    u8 field_0x19[3];
};

#endif
