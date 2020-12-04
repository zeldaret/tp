#ifndef __JKRARCHIVEPUB_H__
#define __JKRARCHIVEPUB_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRFileLoader/JKRFileLoader.h"

class JKRHeap;
class JKRArchive : public JKRFileLoader {
  public:
    class SDirEntry {};
    enum EMountMode {};
    enum EMountDirection {};

    class SDIFileEntry {};
    class CArcName {
      public:
        CArcName() {
        }
        CArcName(char const** data, char endChar) {
            *data = store(*data, endChar);
        }

        void store(char const* data);
        const char* store(char const* data, char endChar);

        u16 getHash() { return mHash; }
        const char* getString() { return mData; }

        u16 mHash;
        u16 mLength;
        char mData[64];
    };

  public:
    JKRArchive(long, EMountMode);
    virtual ~JKRArchive();

    // virtual unmount from JKRFileLoader
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
    virtual void vt_func_16();
    virtual void vt_func_17();
    virtual void vt_func_18();
    virtual void setExpandSize(SDIFileEntry*, u32);
    virtual void getExpandSize(SDIFileEntry*) const;

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

    void isSameName(CArcName&, u32, unsigned short) const;
    void findResType(u32) const;
    void findDirectory(char const*, u32) const;
    void findTypeResource(u32, char const*) const;
    void findFsResource(char const*, u32) const;
    void findIdxResource(u32) const;
    void findNameResource(char const*) const;
    void findPtrResource(void const*) const;
    void findIdResource(unsigned short) const;
};

#endif
