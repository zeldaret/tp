#ifndef __JKRFILECACHE_H__
#define __JKRFILECACHE_H__

#include "JSystem/JKernel/JKRFileLoader/JKRFileLoader.h"
#include "dolphin/types.h"

class JKRHeap;
class JKRFileCache : public JKRFileLoader {
public:
    class CCacheBlock {
    public:
        CCacheBlock(u32, u32, void const*);

    private:
        JSULink<CCacheBlock> mLink;
        u32 field_0x10;
        u32 mFileId;
        u32 mFileSize;
        void const* mMemoryPtr;
    };

protected:
    JKRFileCache(char const*, char const*);
    virtual ~JKRFileCache();

    void findCacheBlock(void const*) const;
    void findCacheBlock(u32) const;
    void findFile(char*, char const*) const;
    void getDvdPathName(char const*) const;
    void convStrLower(char*) const;

public:
    /* vt[04] */ virtual void becomeCurrent(char const*);                 /* override */
    /* vt[05] */ virtual void getResource(char const*);                   /* override */
    /* vt[06] */ virtual void getResource(u32, char const*);              /* override */
    /* vt[07] */ virtual void readResource(void*, u32, char const*);      /* override */
    /* vt[08] */ virtual void readResource(void*, u32, u32, char const*); /* override */
    /* vt[09] */ virtual void removeResourceAll(void);                    /* override */
    /* vt[10] */ virtual void removeResource(void*);                      /* override */
    /* vt[11] */ virtual void detachResource(void*);                      /* override */
    /* vt[12] */ virtual void getResSize(void const*) const;              /* override */
    /* vt[13] */ virtual void countFile(char const*) const;               /* override */
    /* vt[14] */ virtual void getFirstFile(char const*) const;            /* override */
    /* vt[15] */ virtual void getFsResource(char const*);
    /* vt[16] */ virtual void getNameResource(u32, char const*);
    /* vt[17] */ virtual void readFsResource(void*, u32, char const*);
    /* vt[18] */ virtual void readNameResource(void*, u32, u32, char const*);

private:
    JKRHeap* mParentHeap;
    JSUList<CCacheBlock> mCacheBlockList;
    char* field_0x40;
    char* field_0x4c;
    char* field_0x50;

public:
    static void mount(char const*, JKRHeap*, char const*);
};

#endif
