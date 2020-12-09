#ifndef __JKRFILEFINDER_H__
#define __JKRFILEFINDER_H__

#include "dolphin/types.h"

struct JKRFileFinder_UnknownBase {
    u32 field_0x0;
    u32 field_0x4;
    u16 field_0x8;
    u16 field_0xa;
};

class JKRFileFinder : JKRFileFinder_UnknownBase {
  public:
    JKRFileFinder();
    virtual ~JKRFileFinder();

    bool isAvailable() {
        return this->mIsAvailable;
    }

  public:
    /* vt[3] */ virtual bool findNextFile(void) = 0;

  private:
    bool mIsAvailable;
    bool field_0x11;
    u8 padding_0x12[2];
};

class JKRArchive;
class JKRArcFinder : public JKRFileFinder {
  public:
    JKRArcFinder(JKRArchive*, long, long);
    virtual ~JKRArcFinder();

  public:
    /* vt[3] */ virtual bool findNextFile(void); /* override */

  private:
    JKRArchive* mArchive;
    u32 field_0x18;
    u32 field_0x1c;
    u32 field_0x20;
};

class JKRDvdFinder : public JKRFileFinder {
  public:
    JKRDvdFinder(char const*);
    virtual ~JKRDvdFinder();

  public:
    /* vt[3] */ virtual bool findNextFile(void); /* override */

  private:
    u8 mDvd[12];
    bool mDvdIsOpen;
    u8 padding_0x21[3];
};

#endif
