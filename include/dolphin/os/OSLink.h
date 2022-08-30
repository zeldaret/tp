#ifndef OSLINK_H
#define OSLINK_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSSectionInfo {
    u32 mOffset;
    u32 mSize;
} OSSectionInfo;

typedef struct OSModuleInfo {
    u32 mId;
    u32 mNext;
    u32 mPrev;
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
    u32 prolog;
    u32 epilog;
    u32 mUnresolvedFuncOffset;
    u32 mModuleAlignment;
    u32 mBssAlignment;
    u32 fixSize;
} OSModuleInfo;

BOOL OSLink(OSModuleInfo* module);
BOOL OSLinkFixed(OSModuleInfo* module, u32 param_1);
BOOL OSUnlink(OSModuleInfo* module);
static void OSNotifyLink(void);
static void OSNotifyUnlink(void);
void OSSetStringTable(void* string_table);
static BOOL Relocate(OSModuleInfo* param_0, OSModuleInfo* param_1);
static BOOL Link(OSModuleInfo* module, u32 param_1);
static BOOL Undo(OSModuleInfo* param_0, OSModuleInfo* param_1);
void __OSModuleInit(void);

#ifdef __cplusplus
};
#endif

#endif /* OSLINK_H */
