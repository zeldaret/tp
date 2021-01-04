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
    JKRDvdFile(char const*);
    JKRDvdFile(long);
    virtual ~JKRDvdFile();

    void initiate(void);
    s32 sync(void);

    int getFileID() const { return this->file_info.start_address << 2; }

    const DVDFileInfo* getFileInfo() const { return &this->file_info; }

    int getStatus() { return DVDGetCommandBlockStatus(&this->file_info); }

public:
    /* vt[03] */ virtual bool open(char const*);                 /* override */
    /* vt[04] */ virtual void close(void);                       /* override */
    /* vt[05] */ virtual s32 readData(void*, long, long);        /* override */
    /* vt[06] */ virtual s32 writeData(void const*, long, long); /* override */
    /* vt[07] */ virtual s32 getFileSize(void) const;            /* override */
    /* vt[08] */ virtual bool open(long);

private:
    OSMutex mMutex1;
    OSMutex mMutex2;
    JKRADCommand* field_0x4c;
    OSThread* field_0x50;
    JSUFileInputStream* field_0x54;
    u32 field_0x58;
    DVDFileInfo file_info;
    // s32 mFileID;
    // s32 mFileSize;
    // u32 field_0x94;
    JKRDvdFile* mDvdFile;
    OSMessageQueue mQueue1;
    OSMessage mMessages1[1];
    OSMessageQueue mQueue2;
    OSMessage mMessages2[1];
    JSULink<JKRDvdFile> mDvdLink;
    OSThread* mOSThread;

public:
    static void doneProcess(long, DVDFileInfo*);
};

#endif
