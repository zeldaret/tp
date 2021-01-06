#ifndef __JKRFILELOADER_H__
#define __JKRFILELOADER_H__

#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
#include "dolphin/types.h"

class JKRFileLoader;
extern JKRFileLoader* lbl_80451418;          // JKRFileLoader::sCurrentVolume
extern JSUList<JKRFileLoader> lbl_80434354;  // JKRFileLoader::sVolumeList

class JKRArcFinder;
class JKRFileLoader : public JKRDisposer {
public:
    JKRFileLoader(void);
    virtual ~JKRFileLoader();

    bool isMounted() const { return this->mIsMounted; }

    u32 getVolumeType() const { return this->mVolumeType; }

public:
    /* vt[03] */ virtual void unmount(void);
    /* vt[04] */ virtual bool becomeCurrent(const char*) = 0;
    /* vt[05] */ virtual void* getResource(const char*) = 0;
    /* vt[06] */ virtual void* getResource(u32, const char*) = 0;
    /* vt[07] */ virtual u32 readResource(void*, u32, const char*) = 0;
    /* vt[08] */ virtual u32 readResource(void*, u32, u32, const char*) = 0;
    /* vt[09] */ virtual void removeResourceAll(void) = 0;
    /* vt[10] */ virtual bool removeResource(void*) = 0;
    /* vt[11] */ virtual bool detachResource(void*) = 0;
    /* vt[12] */ virtual u32 getResSize(const void*) const = 0;
    /* vt[13] */ virtual u32 countFile(const char*) const = 0;
    /* vt[14] */ virtual JKRArcFinder* getFirstFile(const char*) const = 0;

protected:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRDisposer
    /* 0x18 */ JSULink<JKRFileLoader> mFileLoaderLink;
    /* 0x28 */ const char* mVolumeName;
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

    static JKRFileLoader* getCurrentVolume() { return lbl_80451418; }
    static void setCurrentVolume(JKRFileLoader* fileLoader) { lbl_80451418 = fileLoader; }
    static JSUList<JKRFileLoader>& getVolumeList() { return lbl_80434354; }
};

#endif
