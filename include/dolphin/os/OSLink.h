#ifndef OSLINK_H
#define OSLINK_H

#include "dolphin/types.h"

struct OSSectionInfo {
    u32 mOffset;
    u32 mSize;
};

struct OSModuleInfo {
    u32 mId;
    OSModuleInfo* mNext;
    OSModuleInfo* mPrev;
    u32 mNumSections;
    struct {  // Needed to get an assert correct; very likely bigger
        u32 sectionInfoOffset;
    } info;
    u32 mModuleNameOffset;
    u32 mModuleNameSize;
    u32 mModuleVersion;
    u32 mBssSize;
    u32 mRelocationTableOffset;
    u32 mImportTableOffset;
    u32 mImportTableSize;
    u8 mPrologSection;
    u8 mEpilogSection;
    u8 mUnresolvedSection;
    u8 mBssSection;
    u32 (*prolog)();
    void (*epilog)();
    u32 mUnresolvedFuncOffset;
    u32 mModuleAlignment;
    u32 mBssAlignment;
    u32 fixSize;
};

extern "C" BOOL OSLink(OSModuleInfo*);
extern "C" BOOL OSLinkFixed(OSModuleInfo*, u32);
extern "C" BOOL OSUnlink(OSModuleInfo*);

#endif /* OSLINK_H */
