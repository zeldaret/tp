#ifndef __JKRARCHIVEPUB_H__
#define __JKRARCHIVEPUB_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRFileLoader/JKRFileLoader.h"

class JKRHeap;
class JKRArchive : public JKRFileLoader {
public:
    class SDirEntry {};
    enum EMountMode {};
    enum EMountDirection{};

  public:
    JKRArchive();
    virtual ~JKRArchive();

    virtual void becomeCurrent(char const*);
    virtual void getResource(char const*);
    virtual void getResource(u32, char const*);
    virtual void readResource(void*, u32, char const*);
    virtual void readResource(void*, u32, u32, char const*);
    virtual void removeResourceAll(void);
    virtual void removeResource(void*);
    virtual void detachResource(void*);
    virtual void getResSize(void const*) const;
    virtual void countFile(char const*) const;
    virtual void getFirstFile(char const*) const;

    void check_mount_already(long, JKRHeap*);
    void mount(char const*, EMountMode, JKRHeap*, EMountDirection);
    void mount(void*, JKRHeap*, EMountDirection);
    void mount(long, EMountMode, JKRHeap*, EMountDirection);
    void getDirEntry(SDirEntry*, u32) const;
    void getGlbResource(u32, char const*, JKRArchive*);

    void getIdxResource(u32);
    void getResource(unsigned short);

    void readIdxResource(void*, u32, u32);
    void readResource(void*, u32, unsigned short);

    void countResource(void) const;
    void getFileAttribute(u32) const;
};

#endif
