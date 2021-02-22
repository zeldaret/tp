#ifndef DYNAMIC_LINK_H_
#define DYNAMIC_LINK_H_

#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "JSystem/JKernel/JKRFileCache/JKRFileCache.h"
#include "JSystem/JSupport/JSUList/JSUList.h"
#include "m_Do/m_Do_dvd_thread/m_Do_dvd_thread.h"
#include "os/OS.h"

class DynamicModuleControlBase;
struct DynamicModuleList {
    u16 mLinkCount;
    u16 mDoLinkCount;
    DynamicModuleControlBase* mPrev;
    DynamicModuleControlBase* mNext;
};

class DynamicModuleControlBase : private DynamicModuleList {
public:
    DynamicModuleControlBase();
    virtual ~DynamicModuleControlBase();

    virtual const char* getModuleName() const;
    virtual s32 getModuleSize() const;
    virtual const char* getModuleTypeString() const;
    virtual void dump();
    virtual void dump2();
    virtual int do_load();
    virtual int do_load_async();
    virtual int do_unload();
    virtual int do_link();
    virtual int do_unlink();

    bool link();
    bool unlink();
    bool force_unlink();
    int load_async();

private:
    u16 getLinkCount() const { return mLinkCount; }
    u16 getDoLinkCount() const { return mDoLinkCount; }
    DynamicModuleControlBase* getNextClass() const { return mNext; }
    DynamicModuleControlBase* getPrevClass() const { return mPrev; }
};

class DynamicModuleControl : public DynamicModuleControlBase {
public:
    DynamicModuleControl(const char* pModuleName);
    virtual ~DynamicModuleControl();

    static JKRArchive* mountCallback(void*);
    bool initialize();

    static void* callback(void*);

    virtual const char* getModuleName() const;
    virtual s32 getModuleSize() const;
    virtual const char* getModuleTypeString() const;
    // virtual void dump();
    virtual int do_unload();
    virtual int do_load();
    virtual int do_load_async();

private:
    void* mResource; // i think this is OSModuleHeader*, but it's sometimes assigned JKRDvdFile*
    void* mBss;
    u32 field_0x18;
    const char* mModuleName;
    u8 mResourceType;
    u8 field_0x21;
    u16 mChecksum;
    s32 mSize;
    mDoDvdThd_command_c* mAsyncLoadCallback;
};

extern DynamicModuleControlBase* lbl_80451138;  // mFirst
extern DynamicModuleControlBase* lbl_8045113C;  // mLast
extern JKRFileCache* lbl_80451148;  // DynamicLink::DynamicModuleControl::sFileCache
extern JKRArchive* lbl_80451144;    // DynamicLink::DynamicModuleControl::sArchive
extern u32 lbl_80451140;            // DynamicLink::DynamicModuleControl::sAllocBytes;
extern char* lbl_803C34B0[4];  // .rodata: module type string table (local to
                               // DynamicModuleControl::getModuleTypeString)

#endif  // DYNAMIC_LINK_H_
