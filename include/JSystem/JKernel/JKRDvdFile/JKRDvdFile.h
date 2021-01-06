#ifndef __JKRDVDFILE_H__
#define __JKRDVDFILE_H__

#include "JSystem/JKernel/JKRFile/JKRFile.h"
#include "dolphin/types.h"
#include "dvd/dvd.h"
#include "global.h"

class JKRADCommand;
class JSUFileInputStream;
class JKRDvdFile : public JKRFile {
public:
    JKRDvdFile();
    JKRDvdFile(const char*);
    JKRDvdFile(long);
    virtual ~JKRDvdFile();

    void initiate(void);
    s32 sync(void);

    u32 getFileID() const { return mFileInfo.start_address; }
    const DVDFileInfo& getFileInfo() const { return mFileInfo; }
    int getStatus() { return DVDGetCommandBlockStatus(&mFileInfo.block); }

public:
    /* vt[03] */ virtual bool open(const char*);               /* override */
    /* vt[04] */ virtual void close(void);                     /* override */
    /* vt[05] */ virtual s32 readData(void*, s32, s32);        /* override */
    /* vt[06] */ virtual s32 writeData(const void*, s32, s32); /* override */
    /* vt[07] */ virtual s32 getFileSize(void) const;          /* override */
    /* vt[08] */ virtual bool open(s32);

private:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRFile
    /* 0x1C */ OSMutex mMutex1;
    /* 0x34 */ OSMutex mMutex2;
    /* 0x4C */ u32 field_0x4c;
    /* 0x50 */ u32 field_0x50;
    /* 0x54 */ u32 field_0x54;
    /* 0x58 */ u32 field_0x58;
    /* 0x5C */ DVDFileInfo mFileInfo;
    /* 0x98 */ JKRDvdFile* mDvdFile;
    /* 0x9C */ OSMessageQueue mMessageQueue1;
    /* 0xBC */ OSMessage mMessage1;
    /* 0xC0 */ OSMessageQueue mMessageQueue2;
    /* 0xE0 */ OSMessage mMessage2;
    /* 0xE4 */ JSULink<JKRDvdFile> mDvdLink;
    /* 0xF4 */ OSThread* mOSThread;

public:
    static void doneProcess(long, DVDFileInfo*);
};

#endif
