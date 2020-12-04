#ifndef __JKRFILELOADER_H__
#define __JKRFILELOADER_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"

class JKRFileLoader : public JKRDisposer {
  public:
    JKRFileLoader(void);
    virtual ~JKRFileLoader();

    virtual void unmount(void);
    virtual void becomeCurrent(char const*)                 = 0;
    virtual void getResource(char const*)                   = 0;
    virtual void getResource(u32, char const*)              = 0;
    virtual void readResource(void*, u32, char const*)      = 0;
    virtual void readResource(void*, u32, u32, char const*) = 0;
    virtual void removeResourceAll(void)                    = 0;
    virtual void removeResource(void*)                      = 0;
    virtual void detachResource(void*)                      = 0;
    virtual void getResSize(void const*) const              = 0;
    virtual void countFile(char const*) const               = 0;
    virtual void getFirstFile(char const*) const            = 0;

    bool isMounted() {
        return this->mIsMounted;
    }

    u32 getVolumeType() {
        return this->mVolumeType;
    }

    static void* getGlbResource(char const*);
    static void* getGlbResource(char const*, JKRFileLoader*);
    static bool removeResource(void*, JKRFileLoader*);
    static bool detachResource(void*, JKRFileLoader*);
    static JKRFileLoader* findVolume(char const**);
    static char* fetchVolumeName(char*, long, char const*);

  private:
    JSULink<JKRFileLoader> mFileLoaderLink;
    char* mVolumeName;
    u32 mVolumeType;
    bool mIsMounted;
    u8 padding_0x31[3];
};

#endif
