#ifndef __JKRFILELOADER_H__
#define __JKRFILELOADER_H__

#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
#include "dolphin/types.h"

class JKRFileLoader : public JKRDisposer {
public:
    JKRFileLoader(void);
    virtual ~JKRFileLoader();

    bool isMounted() const { return this->mIsMounted; }

    u32 getVolumeType() const { return this->mVolumeType; }

public:
    /* vt[03] */ virtual void unmount(void);
    /* vt[04] */ virtual void becomeCurrent(char const*) = 0;
    /* vt[05] */ virtual void* getResource(char const*) = 0;
    /* vt[06] */ virtual void* getResource(u32, char const*) = 0;
    /* vt[07] */ virtual void readResource(void*, u32, char const*) = 0;
    /* vt[08] */ virtual void readResource(void*, u32, u32, char const*) = 0;
    /* vt[09] */ virtual void removeResourceAll(void) = 0;
    /* vt[10] */ virtual bool removeResource(void*) = 0;
    /* vt[11] */ virtual bool detachResource(void*) = 0;
    /* vt[12] */ virtual void getResSize(void const*) const = 0;
    /* vt[13] */ virtual void countFile(char const*) const = 0;
    /* vt[14] */ virtual void getFirstFile(char const*) const = 0;

private:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRDisposer
    /* 0x18 */ JSULink<JKRFileLoader> mFileLoaderLink;
    /* 0x28 */ char* mVolumeName;
    /* 0x2C */ u32 mVolumeType;
    /* 0x30 */ bool mIsMounted;
    /* 0x31 */ u8 field_0x31[3];
    /* 0x34 */ u32 mMountCount;

public:
    static void* getGlbResource(char const*);
    static void* getGlbResource(char const*, JKRFileLoader*);
    static bool removeResource(void*, JKRFileLoader*);
    static bool detachResource(void*, JKRFileLoader*);
    static JKRFileLoader* findVolume(char const**);
    static const char* fetchVolumeName(char*, long, char const*);
};

#endif
