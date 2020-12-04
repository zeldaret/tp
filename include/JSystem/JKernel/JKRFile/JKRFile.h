#ifndef __JKRFILE_H__
#define __JKRFILE_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"

class JKRFile : public JKRDisposer {
  public:
    JKRFile();
    virtual ~JKRFile();

    virtual bool open(const char*);
    virtual void close();
    virtual void readData(void*, long, long);
    virtual s32 writeData(const void*, long, long);
    virtual s32 getFileSize();
    virtual bool open(long);

    s32 read(void*, long, long);

  private:
    bool field_0x18;
    u8 field_0x19[3];
};

#endif
