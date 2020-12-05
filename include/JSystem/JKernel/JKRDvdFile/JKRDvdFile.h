#ifndef __JKRDVDFILE_H__
#define __JKRDVDFILE_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRFile/JKRFile.h"
#include "global.h"

class DVDFileInfo;
class JKRDvdFile : public JKRFile {
  public:
    JKRDvdFile();
    JKRDvdFile(char const*);
    JKRDvdFile(long);
    ~JKRDvdFile();

    void initiate(void);
    void sync(void);
    static void doneProcess(long, DVDFileInfo*);

    virtual bool open(char const*);
    virtual void close(void);
    virtual void readData(void*, long, long);
    virtual s32 writeData(void const*, long, long);
    virtual s32 getFileSize(void) const;
    virtual bool open(long);

    int getFileID() const {
        return this->mFileID << 2;
    }

    const u8* getFileInfo() const {
        return this->mDvdCommandBlock;
    }

    int getStatus() {
        return DVDGetCommandBlockStatus(&this->mDvdCommandBlock[0]);
    }

  public:
    u8 mMutex1[24];
    u8 mMutex2[24];
    u32 field_0x4c;
    u32 field_0x50;
    u32 field_0x54;
    u32 field_0x58;
    u8 mDvdCommandBlock[48];
    s32 mFileID;
    s32 mFileSize;
    u32 field_0x94;
    JKRDvdFile* mDvdFile;
    u8 mQueue1[32];
    void* mMessages1[1];
    u8 mQueue2[32];
    void* mMessages2[1];
    JSULink<JKRDvdFile> mDvdLink;
    void* mOSThread;
};

#endif
