#ifndef __JKRFILELOADER_H__
#define __JKRFILELOADER_H__

#include "dolphin/types.h"

class JKRFileLoader {
  public:
    JKRFileLoader(void);
    ~JKRFileLoader();
    
    void unmount(void);
    void getGlbResource(char const*);
    void getGlbResource(char const*, JKRFileLoader*);
    void removeResource(void*, JKRFileLoader*);
    void detachResource(void*, JKRFileLoader*);
    void findVolume(char const**);
    void fetchVolumeName(char*, long, char const*);
};

#endif
