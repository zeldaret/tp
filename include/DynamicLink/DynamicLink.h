#ifndef DYNAMIC_LINK_H_
#define DYNAMIC_LINK_H_

#include "JSystem/JSupport/JSUList/JSUList.h"

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

    int force_unlink();
};

extern DynamicModuleControlBase* lbl_80451138; // mFirst
extern DynamicModuleControlBase* lbl_8045113C; // mLast


#endif // DYNAMIC_LINK_H_
