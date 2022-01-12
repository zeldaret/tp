#ifndef DYNAMICLINK_H
#define DYNAMICLINK_H

#include "dolphin/types.h"
#include "dolphin/os/OSLink.h"
#include "m_Do/m_Do_dvd_thread.h"
#include "JSystem/JKernel/JKRFileCache.h"

struct DynamicModuleControlBase {
    u16 mLinkCount; //0x0
    u16 mDoLinkCount; //0x2
    DynamicModuleControlBase* mPrev; //0x4
    DynamicModuleControlBase* mNext; //0x8

    /* 802621CC */ virtual ~DynamicModuleControlBase(); //0xC
    /* 800188DC */ virtual const char* getModuleName() const;
    /* 80263210 */ virtual int getModuleSize() const;
    /* 80263200 */ virtual const char* getModuleTypeString() const;
    /* 80262470 */ virtual void dump();
    /* 802631FC */ virtual void dump2();
    /* 802631DC */ virtual bool do_load();
    /* 802631F4 */ virtual bool do_load_async();
    /* 802631E4 */ virtual bool do_unload();
    /* 802631D4 */ virtual BOOL do_link();
    /* 802631EC */ virtual bool do_unlink();
    /* 80262284 */ DynamicModuleControlBase();
    /* 802622D0 */ bool link();
    /* 80262364 */ bool unlink();
    /* 802623EC */ bool load_async();
    /* 8026242C */ bool force_unlink();

    static inline DynamicModuleControlBase* getFirstClass() {return mFirst;}
    inline DynamicModuleControlBase* getNextClass() {return mNext;}


    static DynamicModuleControlBase* mFirst;
    static DynamicModuleControlBase* mLast;
};

struct DynamicModuleControl : DynamicModuleControlBase {
    /* 800188E4 */ virtual ~DynamicModuleControl();
    /* 80263218 */ virtual const char* getModuleName() const;
    /* 80263000 */ virtual int getModuleSize() const;
    /* 80263070 */ virtual const char* getModuleTypeString() const;
    virtual void dump() = 0;
    /* 80262C0C */ virtual void dump2();
    /* 802627E8 */ virtual bool do_load();
    /* 80262AFC */ virtual bool do_load_async();
    /* 80262BC4 */ virtual bool do_unload();
    /* 80262C5C */ virtual BOOL do_link();
    /* 80262F28 */ virtual bool do_unlink();
    /* 80262660 */ DynamicModuleControl(char const*);
    /* 802626D0 */ static JKRArchive* mountCallback(void*);
    /* 8026275C */ bool initialize();
    /* 80262794 */ static void* callback(void*);
    
    OSModuleInfo* mModule; //0x10
    void* mBss; //0x14
    u32 unk_24; //0x18
    const char* mName; //0x1c
    u8 mResourceType; //0x20
    u8 unk_33; //0x21
    u16 mChecksum; //0x22
    s32 mSize; //0x24
    mDoDvdThd_callback_c* mAsyncLoadCallback; //0x28

    static u32 sAllocBytes;
    static JKRArchive* sArchive;
    static JKRFileCache* sFileCache;
};


#endif /* DYNAMICLINK_H */
