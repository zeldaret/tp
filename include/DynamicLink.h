#ifndef DYNAMICLINK_H
#define DYNAMICLINK_H

#include "dolphin/os.h"

class JKRArchive;
class JKRFileCache;
class mDoDvdThd_callback_c;

struct DynamicModuleControlBase {
    /* 0x00 */ u16 mLinkCount;
    /* 0x02 */ u16 mDoLinkCount;
    /* 0x04 */ DynamicModuleControlBase* mPrev;
    /* 0x08 */ DynamicModuleControlBase* mNext;

    /* 0x0C */ /*vtable*/
    /* 802621CC */ virtual ~DynamicModuleControlBase();
    /* 800188DC */ virtual const char* getModuleName() const { return NULL; };
    /* 80263210 */ virtual int getModuleSize() const { return 0; };
    /* 80263200 */ virtual const char* getModuleTypeString() const {return "Base";};
                   virtual void dump();
    /* 80262470 */ static void dump();
    /* 802631FC */ virtual void dump2() {};
    /* 802631DC */ virtual bool do_load() {return true;};
    /* 802631F4 */ virtual BOOL do_load_async() {return true;};
    /* 802631E4 */ virtual bool do_unload() {return true;};
    /* 802631D4 */ virtual BOOL do_link() {return TRUE;};
    /* 802631EC */ virtual bool do_unlink() {return true; };
    /* 80262284 */ DynamicModuleControlBase();
    /* 802622D0 */ BOOL link();
    /* 80262364 */ BOOL unlink();
    /* 802623EC */ BOOL load_async();
    /* 8026242C */ bool force_unlink();

    static inline DynamicModuleControlBase* getFirstClass() { return mFirst; }
    inline DynamicModuleControlBase* getNextClass() { return mNext; }
    bool isLinked() const { return mLinkCount != 0; }

    static DynamicModuleControlBase* mFirst;
    static DynamicModuleControlBase* mLast;
};

struct DynamicModuleControl : DynamicModuleControlBase {
    /* 80263218 */ virtual const char* getModuleName() const { return mName; };
    /* 800188E4 */ virtual ~DynamicModuleControl() {}
    /* 80263000 */ virtual int getModuleSize() const;
    /* 80263070 */ virtual const char* getModuleTypeString() const;
    // virtual void dump();
    /* 80262C0C */ virtual void dump2();
    /* 802627E8 */ virtual bool do_load();
    /* 80262AFC */ virtual BOOL do_load_async();
    /* 80262BC4 */ virtual bool do_unload();
    /* 80262C5C */ virtual BOOL do_link();
    /* 80262F28 */ virtual bool do_unlink();
    /* 80262660 */ DynamicModuleControl(char const*);
    /* 802626D0 */ static JKRArchive* mountCallback(void*);
    /* 8026275C */ static bool initialize();
    /* 80262794 */ static bool callback(void*);

    /* 0x10 */ OSModuleHeader* mModule;
    /* 0x14 */ void* mBss;
    /* 0x18 */ u32 unk_24;
    /* 0x1c */ const char* mName;
    /* 0x20 */ u8 mResourceType;
    /* 0x21 */ u8 unk_33;
    /* 0x22 */ u16 mChecksum;
    /* 0x24 */ s32 mSize;
    /* 0x28 */ mDoDvdThd_callback_c* mAsyncLoadCallback;

    static u32 sAllocBytes;
    static JKRArchive* sArchive;
    static JKRFileCache* sFileCache;
};

#endif /* DYNAMICLINK_H */
