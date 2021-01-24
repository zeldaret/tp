#ifndef DYNAMIC_LINK_H_
#define DYNAMIC_LINK_H_

#include "os/OS.h"
#include "JSystem/JSupport/JSUList/JSUList.h"
#include "m_Do/m_Do_dvd_thread/m_Do_dvd_thread.h"
#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "JSystem/JKernel/JKRFileCache/JKRFileCache.h"

class DynamicModuleControlBase; 
struct DynamicModuleList {
    u16 mLinkCount;
    u16 field_0x2;
    DynamicModuleControlBase* mPrev;
    DynamicModuleControlBase* mNext;
};

class DynamicModuleControlBase : private DynamicModuleList {
public:
    DynamicModuleControlBase();
    virtual ~DynamicModuleControlBase();

    virtual char* getModuleName() const;
    virtual u32 getModuleSize() const;
    virtual char* getModuleTypeString() const;
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
};

class DynamicModuleControl : public DynamicModuleControlBase {
public:
    DynamicModuleControl(const char* pModuleName);

    JKRArchive* mountCallback(void*);
    bool initialize();

    virtual u32 getModuleSize() const;
    virtual char* getModuleTypeString() const;

private:
    OSModuleHeader* mResource;
    void* mBss;
    u32 field_0x18;
    const char* mModuleName;
    u8 mResourceType;
    s8 field_0x21;
    u16 mChecksum;
    u32 mSize;
    mDoDvdThd_command_c* mAsyncLoadCallback;
};

extern DynamicModuleControlBase* lbl_80451138; // mFirst
extern DynamicModuleControlBase* lbl_8045113C; // mLast
extern char lbl_8039A4A0[69]; // "%08x DynamicModuleControlBase::unlink() mLinkCount id already zero.\n"
extern JKRFileCache* lbl_80451148; // DynamicLink::DynamicModuleControl::sFileCache
extern JKRArchive* lbl_80451144; // DynamicLink::DynamicModuleControl::sArchive
extern char lbl_8039A580[19];
extern char lbl_8039A593[9];
extern char lbl_8039A59C[69];
extern char* lbl_803C34B0[4]; // .rodata: module type string table (local to DynamicModuleControl::getModuleTypeString)


#endif // DYNAMIC_LINK_H_
