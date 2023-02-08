#ifndef JKRFILEFINDER_H
#define JKRFILEFINDER_H

#include "dolphin/dvd/dvd.h"
#include "dolphin/types.h"

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
    inline virtual ~JKRFileFinder();

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
    JKRArcFinder(JKRArchive*, s32, s32);
    inline virtual ~JKRArcFinder();

public:
    /* vt[3] */ virtual bool findNextFile(void); /* override */

private:
    /* 0x00 */  // JKRFileFinder_UnknownBase
    /* 0x0C */  // vtable
    /* 0x10 */  // JKRFileFinder
    /* 0x14 */ JKRArchive* mArchive;
    /* 0x18 */ s32 mStartIndex;
    /* 0x1C */ s32 mEndIndex;
    /* 0x20 */ s32 mNextIndex;
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

#endif /* JKRFILEFINDER_H */
