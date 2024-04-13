/**
 * DynamicLink.cpp
 * REL Linking Manager
 */

#include "DynamicLink.h"
#include "JSystem/JKernel/JKRDvdRipper.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRFileCache.h"
#include "JSystem/JUtility/JUTConsole.h"
#include "stdio.h"
#include "m_Do/m_Do_dvd_thread.h"
#include "m_Do/m_Do_ext.h"

/* 80451138-8045113C 000638 0004+00 3/3 0/0 0/0 .sbss            mFirst__24DynamicModuleControlBase
 */
DynamicModuleControlBase* DynamicModuleControlBase::mFirst;

/* 8045113C-80451140 00063C 0004+00 2/2 0/0 0/0 .sbss            mLast__24DynamicModuleControlBase
 */
DynamicModuleControlBase* DynamicModuleControlBase::mLast;

/* 802621CC-80262284 25CB0C 00B8+00 1/0 2/2 0/0 .text            __dt__24DynamicModuleControlBaseFv
 */
DynamicModuleControlBase::~DynamicModuleControlBase() {
    force_unlink();
    if (mPrev != NULL) {
        mPrev->mNext = mNext;
    }
    if (mNext != NULL) {
        mNext->mPrev = mPrev;
    }
    if (mFirst == this) {
        mFirst = mNext;
    }
    if (mLast == this) {
        mLast = mPrev;
    }
    mNext = NULL;
    mPrev = NULL;
}

/* 80262284-802622D0 25CBC4 004C+00 1/1 0/0 0/0 .text            __ct__24DynamicModuleControlBaseFv
 */
DynamicModuleControlBase::DynamicModuleControlBase() {
    mLinkCount = 0;
    mDoLinkCount = 0;
    mNext = NULL;
    if (mFirst == NULL) {
        mFirst = this;
    }
    mPrev = mLast;
    if (mPrev != NULL) {
        mPrev->mNext = this;
    }
    mLast = this;
}

/* 802622D0-80262364 25CC10 0094+00 0/0 2/2 0/0 .text            link__24DynamicModuleControlBaseFv
 */
BOOL DynamicModuleControlBase::link() {
    if (mLinkCount == 0) {
        do_load();
        if (do_link() == false) {
            return false;
        }
        if (mDoLinkCount < 0xFFFF) {
            mDoLinkCount++;
        }
    }
    if (mLinkCount < 0xFFFF) {
        mLinkCount++;
    }
    return true;
}

/* 80262364-802623EC 25CCA4 0088+00 0/0 1/1 0/0 .text unlink__24DynamicModuleControlBaseFv */
BOOL DynamicModuleControlBase::unlink() {
    if (mLinkCount != 0) {
        mLinkCount--;
        if (mLinkCount == 0) {
            do_unlink();
            do_unload();
        }
    } else {
        OSReport_Warning("%08x DynamicModuleControlBase::unlink() mLinkCount id already zero.\n",
                         this);
    }
    return true;
}

/* 802623EC-8026242C 25CD2C 0040+00 0/0 1/1 0/0 .text load_async__24DynamicModuleControlBaseFv */
BOOL DynamicModuleControlBase::load_async() {
    if (mLinkCount == 0) {
        return do_load_async();
    }
    return true;
}

/* 8026242C-80262470 25CD6C 0044+00 1/1 0/0 0/0 .text force_unlink__24DynamicModuleControlBaseFv
 */
bool DynamicModuleControlBase::force_unlink() {
    if (mLinkCount != 0) {
        mLinkCount = 0;
        do_unlink();
    }
    return true;
}

/* 80262470-80262660 25CDB0 01F0+00 2/0 2/2 0/0 .text            dump__24DynamicModuleControlBaseFv
 */
void DynamicModuleControlBase::dump() {
    u16 doLinkCount;
    u16 linkCount;
    DynamicModuleControlBase* current = getFirstClass();
    size_t totalSize = 0;
    JUTReportConsole_f("\nDynamicModuleControlBase::dump()\n");
    JUTReportConsole_f("Do  Lnk Size      Name\n");
    while (current != NULL) {
        doLinkCount = current->mDoLinkCount;
        linkCount = current->mLinkCount;
        if (doLinkCount != 0 || linkCount != 0) {
            u32 size = current->getModuleSize();
            const char* name = current->getModuleName();
            if (size < 0xFFFFFFFF) {
                name = (name != NULL) ? name : "(Null)";
                const char* type = current->getModuleTypeString();
                JUTReportConsole_f("%3d%3d%5.1f %05x %-4s %-24s ", doLinkCount, linkCount,
                                   size / 1024.0f, size, type, name);
                totalSize = totalSize + size;
            } else {
                name = (name != NULL) ? name : "(Null)";
                const char* type = current->getModuleTypeString();
                JUTReportConsole_f("%3d%3d ???? ????? %-4s %-24s ", doLinkCount, linkCount, type,
                                   name);
            }
            current->dump2();
            JUTReportConsole_f("\n");
        }
        current = current->getNextClass();
    }
    JUTReportConsole_f("TotalSize %6.2f %06x\n\n", totalSize / 1024.0f, totalSize);
}

/* 80262660-802626D0 25CFA0 0070+00 0/0 2/2 0/0 .text            __ct__20DynamicModuleControlFPCc */
DynamicModuleControl::DynamicModuleControl(char const* name) {
    mModule = NULL;
    mBss = NULL;
    unk_24 = 0;
    mName = name;
    mResourceType = 0;
    unk_33 = 0;
    mChecksum = 0;
    mSize = 0;
    mAsyncLoadCallback = NULL;
}

/* ############################################################################################## */
/* 80451140-80451144 000640 0004+00 3/3 0/0 0/0 .sbss            sAllocBytes__20DynamicModuleControl
 */
u32 DynamicModuleControl::sAllocBytes;

/* 80451144-80451148 000644 0004+00 3/3 0/0 0/0 .sbss            sArchive__20DynamicModuleControl */
JKRArchive* DynamicModuleControl::sArchive;

/* 80451148-80451150 000648 0004+04 3/3 0/0 0/0 .sbss            sFileCache__20DynamicModuleControl
 */
JKRFileCache* DynamicModuleControl::sFileCache;

static const char* baseString = "Base";

/* 802626D0-8026275C 25D010 008C+00 1/1 0/0 0/0 .text mountCallback__20DynamicModuleControlFPv */
JKRArchive* DynamicModuleControl::mountCallback(void* param_0) {
    JKRExpHeap* heap = mDoExt_getArchiveHeap();
    sFileCache = JKRFileCache::mount("/rel/Final/Release", heap, NULL);
    sArchive = JKRArchive::mount("RELS.arc", JKRArchive::MOUNT_COMP, heap,
                                 JKRArchive::MOUNT_DIRECTION_HEAD);
    if (sArchive == NULL) {
        // "Mount failure, but if the archive isn't created, it was too slow %s\n"
        OSReport_Warning("マウント失敗ですが単にアーカイブを作ってないだけなら遅いだけです %s\n",
                         "RELS.arc");
    }
    return sArchive;
}

/* 8026275C-80262794 25D09C 0038+00 0/0 1/1 0/0 .text initialize__20DynamicModuleControlFv */
bool DynamicModuleControl::initialize() {
    sFileCache = NULL;
    sAllocBytes = 0;
    sArchive = NULL;
    mountCallback(NULL);
    return true;
}

/* 80262794-802627C0 25D0D4 002C+00 1/1 0/0 0/0 .text            callback__20DynamicModuleControlFPv
 */
bool DynamicModuleControl::callback(void* moduleControlPtr) {
    DynamicModuleControl* moduleControl = (DynamicModuleControl*)moduleControlPtr;
    return moduleControl->do_load();
}

/* 802627C0-802627E8 25D100 0028+00 1/1 0/0 0/0 .text            calcSum2__FPCUsUl */
static u32 calcSum2(u16 const* data, u32 size) {
    u32 sum = 0;
    while (size > 0) {
        sum = sum + *data;
        size = size - 2;
        data++;
    }
    return sum;
}

/* 802627E8-80262AFC 25D128 0314+00 1/0 0/0 0/0 .text            do_load__20DynamicModuleControlFv
 */
bool DynamicModuleControl::do_load() {
    if (mModule != NULL) {
        return true;
    }
    JKRExpHeap* heap = mDoExt_getArchiveHeap();
    s32 i = 0;
    while (true) {
        if (mModule != NULL) {
            JKRFree(mModule);
            mModule = NULL;
        }
        char buffer[64];
        snprintf(buffer, 64, "%s.rel", mName);
        if (mModule == NULL && sArchive != NULL) {
            if (mModule == NULL) {
                mModule = (OSModuleHeader*)JKRGetResource('MMEM', buffer, sArchive);
                if (mModule != NULL) {
                    mResourceType = 1;
                }
            }
            if (mModule == NULL) {
                mModule = (OSModuleHeader*)JKRGetResource('AMEM', buffer, sArchive);
                if (mModule != NULL) {
                    mResourceType = 2;
                }
            }
            if (mModule == NULL) {
                mModule = (OSModuleHeader*)JKRGetResource('DMEM', buffer, sArchive);
                if (mModule != NULL) {
                    mResourceType = 3;
                }
            }
        }
        if (mModule != NULL) {
            mSize = sArchive->getExpandedResSize(mModule);
            JKRDetachResource(mModule, NULL);
        } else {
            if (mModule == NULL) {
                snprintf(buffer, 64, "/rel/Final/Release/%s.rel", mName);
                mModule = (OSModuleHeader*)JKRDvdToMainRam(
                    buffer, NULL, EXPAND_SWITCH_UNKNOWN1, NULL, heap,
                    JKRDvdRipper::ALLOC_DIRECTION_FORWARD, 0, NULL, NULL);
                if (mModule != NULL) {
                    mSize = 0;
                    mResourceType = 7;
                }
            }
            if (mModule == NULL && sFileCache != NULL) {
                mModule = (OSModuleHeader*)sFileCache->getResource('rels', buffer);
                if (mModule != NULL) {
                    mSize = 0;
                    mResourceType = 11;
                    JKRDetachResource(mModule, NULL);
                }
            }
        }
        if (mModule == NULL) {
            // "DynamicModuleControl::do_load() Resource load failure [%s]\n"
            OSReport_Error(
                "\x44\x79\x6E\x61\x6D\x69\x63\x4D\x6F\x64\x75\x6C\x65\x43\x6F\x6E\x74\x72\x6F\x6C"
                "\x3A\x3A\x64\x6F\x5F\x6C\x6F\x61\x64\x28\x29\x20\x83\x8A\x83\x5C\x81\x5B\x83\x58"
                "\x93\xC7\x82\xDD\x8D\x9E\x82\xDD\x8E\xB8\x94\x73\x20\x5B\x25\x73\x5D\x0A",
                mName);
            return false;
        }
        if (mSize > 0) {
            u32 sum = calcSum2((u16*)mModule, mSize);
            if (unk_33 == 0) {
                mChecksum = sum;
                unk_33++;
            } else {
                u32 newsum = sum & 0xFFFF;
                if (newsum != mChecksum) {
                    OSReport_Error(
                        // "DynamicModuleControl::do_load() Checksum Error %04x %04x[%s]\n"
                        "DynamicModuleControl::do_load() チェックサムエラー %04x %04x[%s]\n",
                        newsum, mChecksum, mName);
                    unk_33 = 0;
                    i++;
                    if (i >= 3) {
                        return false;
                    }
                } else {
                    if (unk_33 < 0xFF) {
                        unk_33++;
                    }
                    break;
                }
            }
        } else {
            if (unk_33 < 0xFF) {
                unk_33++;
            }
            break;
        }
    }
    return true;
}

/* 80262AFC-80262BC4 25D43C 00C8+00 1/0 0/0 0/0 .text do_load_async__20DynamicModuleControlFv */
BOOL DynamicModuleControl::do_load_async() {
    if (mAsyncLoadCallback == NULL) {
        if (mModule != NULL) {
            return true;
        }
        mAsyncLoadCallback = mDoDvdThd_callback_c::create((mDoDvdThd_callback_func)DynamicModuleControl::callback, this);
        if (mAsyncLoadCallback == NULL) {
            OSReport_Error(
                // "DynamicModuleControl::do_load_async() async load callback entry failure [%s]\n"
                "DynamicModuleControl::do_load_async() 非同期読み込みコールバック登録失敗 [%s]\n",
                mName);
        }
    }
    if (mAsyncLoadCallback != NULL && mAsyncLoadCallback->sync()) {
        mAsyncLoadCallback->destroy();
        mAsyncLoadCallback = NULL;
        return true;
    } else {
        return false;
    }
}

/* 80262BC4-80262C0C 25D504 0048+00 1/0 0/0 0/0 .text            do_unload__20DynamicModuleControlFv
 */
bool DynamicModuleControl::do_unload() {
    if (mModule != NULL) {
        JKRFree(mModule);
        mModule = NULL;
    }
    return true;
}

/* 80262C0C-80262C5C 25D54C 0050+00 1/0 0/0 0/0 .text            dump2__20DynamicModuleControlFv */
void DynamicModuleControl::dump2() {
    if (mModule != NULL) {
        OSSectionInfo* section = (OSSectionInfo*)mModule->info.sectionInfoOffset;
        OSSectionInfo* section2 = section + 1;
        u32 offset = section2->offset & ~(1);
        OSReport("%08x-%08x %08x %08x", mModule, offset, offset + section2->size);
    }
}

/* 80262C5C-80262F28 25D59C 02CC+00 1/0 0/0 0/0 .text            do_link__20DynamicModuleControlFv
 */
BOOL DynamicModuleControl::do_link() {
    OSGetTime();
    if (mModule == NULL) {
        do_load();
    }
    if (mModule != NULL) {
        ASSERT(mModule->info.sectionInfoOffset < 0x80000000);
        ASSERT((u32)mModule + mModule->fixSize < 0x82000000);
        OSGetTime();
        OSGetTime();
        if (mModule->info.version >= 3) {
            u32 fixSizePtr;
            u32 fixSize = mModule->fixSize;
            u32 fixSize2 = (fixSize + 0x1f) & ~0x1f;
            fixSizePtr = (u32)mModule + fixSize2;
            s32 size = JKRGetMemBlockSize(NULL, mModule);
            if (size < 0) {
                void* bss = JKRAlloc(mModule->bssSize, 0x20);
                if (bss == NULL) {
                    // "BSS Memory allocation failed\n"
                    OSReport_Error("BSSメモリ確保失敗\n", bss);
                    goto error;
                }
                mBss = bss;
                BOOL linkResult = OSLink(&mModule->info, bss);
                if (linkResult == FALSE) {
                    // "link failed\n"
                    OSReport_Error("リンク失敗\n");
                    goto error;
                }
            } else {
                if (fixSize2 + mModule->bssSize < size) {
                    BOOL linkResult = OSLinkFixed(&mModule->info, (void*)fixSizePtr);
                    if (linkResult == FALSE) {
                        // "link failed\n"
                        OSReport_Error("リンク失敗\n");
                        goto error;
                    }
                    s32 result = JKRResizeMemBlock(NULL, mModule, fixSize2 + mModule->bssSize);
                    if (result < 0) {
                        // "Module size (resize) failed\n"
                        OSReport_Error("モジュールリサイズ(縮小)失敗\n");
                    }
                } else {
                    s32 result = JKRResizeMemBlock(NULL, mModule, fixSize2 + mModule->bssSize);
                    if (result > 0) {
                        BOOL linkResult = OSLinkFixed(&mModule->info, (void*)fixSizePtr);
                        if (linkResult == FALSE) {
                            // "link failed\n"
                            OSReport_Error("リンク失敗\n");
                            goto error;
                        }
                    } else {
                        void* bss = JKRAlloc(mModule->bssSize, 0x20);
                        if (bss == NULL) {
                            // "BSS Memory allocation failure [%x]\n"
                            OSReport_Error("BSSメモリ確保失敗 [%x]\n", mModule->bssSize);
                            goto error;
                        }
                        mBss = bss;
                        BOOL linkResult = OSLinkFixed(&mModule->info, bss);
                        if (linkResult == FALSE) {
                            // "link failed\n"
                            OSReport_Error("リンク失敗\n");
                            goto error;
                        }
                        s32 result = JKRResizeMemBlock(NULL, mModule, fixSize);
                        if (result < 0) {
                            // "Module size (resize) failed\n"
                            OSReport_Error("モジュールリサイズ(縮小)失敗\n");
                        }
                    }
                }
            }
        }
        OSGetTime();
        sAllocBytes = sAllocBytes + getModuleSize();
        OSGetTime();
        unk_24 = ((u32(*)())mModule->prolog)();
        OSGetTime();
        return TRUE;
    }

error:
    unk_33 = 0;
    if (mBss != NULL) {
        JKRHeap::free(mBss, NULL);
        mBss = NULL;
    }
    if (mModule != NULL) {
        JKRHeap::free(mModule, NULL);
        mModule = NULL;
    }
    return FALSE;
}

/* 80262F28-80263000 25D868 00D8+00 1/0 0/0 0/0 .text            do_unlink__20DynamicModuleControlFv
 */
bool DynamicModuleControl::do_unlink() {
    OSTime time1 = OSGetTime();
    ((void (*)())mModule->epilog)();
    OSTime time2 = OSGetTime();
    BOOL unklink = OSUnlink(&mModule->info);
    OSTime time3 = OSGetTime();
    if (unklink == FALSE) {
        // "Unlink failed mModule=%08x mBss=%08x\n"
        OSReport_Error("アンリンク失敗 mModule=%08x mBss=%08x\n", mModule, mBss);
        return false;
    }
    sAllocBytes = sAllocBytes - getModuleSize();
    if (mBss != NULL) {
        JKRFree(mBss);
        mBss = NULL;
    }
    do_unload();
    return true;
}

/* 80263000-80263070 25D940 0070+00 1/0 0/0 0/0 .text getModuleSize__20DynamicModuleControlCFv */
int DynamicModuleControl::getModuleSize() const {
    if (mModule != NULL) {
        u32 size = JKRGetMemBlockSize(NULL, mModule);
        if (mBss != NULL) {
            JKRGetMemBlockSize(NULL, mBss);
        }
        return size + mModule->bssSize;
    } else {
        return 0;
    }
}

/* 80263070-80263088 25D9B0 0018+00 1/0 0/0 0/0 .text
 * getModuleTypeString__20DynamicModuleControlCFv               */
const char* DynamicModuleControl::getModuleTypeString() const {
    static const char* strings[4] = {"????", "MEM", "ARAM", "DVD"};
    return strings[mResourceType & 3];
}

/* 80263088-8026308C 25D9C8 0004+00 0/0 0/0 756/756 .text            ModuleProlog */
extern "C" void ModuleProlog() {
    /* empty function */
}

/* 8026308C-80263090 25D9CC 0004+00 0/0 0/0 756/756 .text            ModuleEpilog */
extern "C" void ModuleEpilog() {
    /* empty function */
}

/* 80263090-8026314C 25D9D0 00BC+00 0/0 0/0 757/757 .text            ModuleUnresolved */
extern "C" void ModuleUnresolved() {
    // "\nError: Unlinked function was called.\n"
    OSReport_Error("\nError: リンクされていない関数が呼び出されました.\n");
    OSReport_Error("Address:      Back Chain    LR Save\n");
    u32 i = 0;
    u32* stackPtr = (u32*)OSGetStackPointer();
    while ((stackPtr != NULL) && ((u32)stackPtr != 0xFFFFFFFF) && (i++ < 0x10)) {
        OSReport_Error("0x%08x:   0x%08x    0x%08x\n", stackPtr, *stackPtr, *(stackPtr + 1));
        stackPtr = (u32*)*stackPtr;
    }
    OSReport_Error("\n");
}

/* 8026314C-80263190 25DA8C 0044+00 0/0 0/0 757/757 .text            ModuleConstructorsX */
extern "C" void ModuleConstructorsX(void (**ctors)()) {
    while (*ctors != 0) {
        (**ctors)();
        ctors++;
    }
}

/* 80263190-802631D4 25DAD0 0044+00 0/0 0/0 757/757 .text            ModuleDestructorsX */
extern "C" void ModuleDestructorsX(void (**dtors)()) {
    while (*dtors != 0) {
        (**dtors)();
        dtors++;
    }
}

/* 802631D4-802631DC 25DB14 0008+00 1/0 0/0 0/0 .text do_link__24DynamicModuleControlBaseFv */

/* 802631DC-802631E4 25DB1C 0008+00 1/0 0/0 0/0 .text do_load__24DynamicModuleControlBaseFv */

/* 802631E4-802631EC 25DB24 0008+00 1/0 0/0 0/0 .text do_unload__24DynamicModuleControlBaseFv */

/* 802631EC-802631F4 25DB2C 0008+00 1/0 0/0 0/0 .text do_unlink__24DynamicModuleControlBaseFv */

/* 802631F4-802631FC 25DB34 0008+00 1/0 0/0 0/0 .text do_load_async__24DynamicModuleControlBaseFv
 */

/* 802631FC-80263200 25DB3C 0004+00 1/0 0/0 0/0 .text            dump2__24DynamicModuleControlBaseFv
 */

/* 80263200-80263210 25DB40 0010+00 1/0 0/0 0/0 .text
 * getModuleTypeString__24DynamicModuleControlBaseCFv           */

/* 80263210-80263218 25DB50 0008+00 1/0 0/0 0/0 .text getModuleSize__24DynamicModuleControlBaseCFv
 */

/* 80263218-80263220 25DB58 0008+00 1/0 0/0 0/0 .text getModuleName__20DynamicModuleControlCFv */
