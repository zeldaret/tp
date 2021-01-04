#ifndef __JKRFILEFINDER_H__
#define __JKRFILEFINDER_H__

#include "dolphin/types.h"
#include "dvd/dvd.h"

struct JKRFileFinder_UnknownBase {
    const char* mEntryName;
    s32 mEntryFileIndex;
    u16 mEntryId;
    u16 mEntryTypeFlags;
};

class JKRFileFinder : public JKRFileFinder_UnknownBase {
public:
    JKRFileFinder() {
        mIsAvailable = false;
        mIsFileOrDirectory = false;
    }
    virtual ~JKRFileFinder();

    bool isAvailable() const { return mIsAvailable; }
    bool isFile() const { return mIsFileOrDirectory; }
    bool isDirectory() const { return mIsFileOrDirectory; }

public:
    /* vt[3] */ virtual bool findNextFile(void) = 0;

protected:
    /* 0x00 */  // JKRFileFinder_UnknownBase
    /* 0x0C */  // vtable
    /* 0x10 */ bool mIsAvailable;
    /* 0x11 */ bool mIsFileOrDirectory;
    /* 0x12 */ u8 field_0x12[2];
};

class JKRArchive;
class JKRArcFinder : public JKRFileFinder {
public:
    JKRArcFinder(JKRArchive*, long, long);
    virtual ~JKRArcFinder();

public:
    /* vt[3] */ virtual bool findNextFile(void); /* override */

private:
    /* 0x00 */  // JKRFileFinder_UnknownBase
    /* 0x0C */  // vtable
    /* 0x10 */  // JKRFileFinder
    /* 0x14 */ JKRArchive* mArchive;
    /* 0x18 */ u32 field_0x18;
    /* 0x1C */ u32 field_0x1c;
    /* 0x20 */ u32 field_0x20;
};

class JKRDvdFinder : public JKRFileFinder {
public:
    JKRDvdFinder(const char*);
    virtual ~JKRDvdFinder();

public:
    /* vt[3] */ virtual bool findNextFile(void); /* override */

private:
    /* 0x00 */  // JKRFileFinder_UnknownBase
    /* 0x0C */  // vtable
    /* 0x10 */  // JKRFileFinder
    /* 0x14 */ DVDDirectory mDvdDirectory;
    /* 0x20 */ bool mDvdIsOpen;
    /* 0x21 */ u8 field_0x21[3];
};

#endif
