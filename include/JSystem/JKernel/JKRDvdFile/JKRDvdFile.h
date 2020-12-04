#ifndef __JKRDVDFILE_H__
#define __JKRDVDFILE_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRFile/JKRFile.h"

class DVDFileInfo;

class JKRDvdFile : public JKRFile {
  public:
    JKRDvdFile();
    JKRDvdFile(char const*);
    JKRDvdFile(long);
    ~JKRDvdFile();

    void initiate(void);
    void sync(void);
    void doneProcess(long, DVDFileInfo*);

    virtual bool open(char const*);
    virtual void close(void);
    virtual void readData(void*, long, long);
    virtual s32 writeData(void const*, long, long);
    virtual s32 getFileSize(void) const;
    virtual bool open(long);

  public:
};

#endif
