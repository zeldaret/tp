#ifndef __JKRFILECACHE_H__
#define __JKRFILECACHE_H__

#include "dolphin/types.h"

class JKRHeap;
class JKRFileCache {
  public:
    JKRFileCache(char const*, char const*);
    ~JKRFileCache();

    void becomeCurrent(char const*);
    void getResource(char const*);
    void getResource(unsigned long, char const*);
    void readResource(void*, unsigned long, char const*);
    void readResource(void*, unsigned long, unsigned long, char const*);
    void removeResourceAll(void);
    void removeResource(void*);
    void detachResource(void*);
    void getResSize(void const*) const;
    void countFile(char const*) const;
    void getFirstFile(char const*) const;
    void findCacheBlock(void const*) const;
    void findCacheBlock(unsigned long) const;
    void findFile(char*, char const*) const;
    void getDvdPathName(char const*) const;
    void convStrLower(char*) const;
    void getFsResource(char const*);
    void getNameResource(unsigned long, char const*);
    void readFsResource(void*, unsigned long, char const*);
    void readNameResource(void*, unsigned long, unsigned long, char const*);

    void mount(char const *, JKRHeap *, char const *);

    class CCacheBlock {
      public:
        CCacheBlock(unsigned long, unsigned long, void const*);
    };
};

#endif
