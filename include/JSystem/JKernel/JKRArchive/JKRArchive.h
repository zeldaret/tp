#ifndef __JKRARCHIVEPUB_H__
#define __JKRARCHIVEPUB_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRFileLoader/JKRFileLoader.h"

class JKRHeap;
class JKRDvdFile;
class JKRArchive : public JKRFileLoader {
  public:
    class SDirEntry {};
    class SDIFileEntry {};

    enum EMountMode {
        UNKNOWN_MOUNT_MODE = 0,
        MEM                = 1,
        ARAM               = 2,
        DVD                = 3,
        COMP               = 4,

        __EMOUNT_MODE_PADDING_FOR_32BIT = 0xFFFFFFFF        
    };

    enum EMountDirection {
        UNKNOWN_MOUNT_DIRECTION = 0,
        HEAD                    = 1,
        TAIL                    = 2,

        __EMOUNT_DIRECTION_PADDING_FOR_32BIT = 0xFFFFFFFF
    };

    class CArcName {
      public:
        CArcName() {
        }
        CArcName(char const* data) {
            this->store(data);
        }
        CArcName(char const** data, char endChar) {
            *data = this->store(*data, endChar);
        }

        void store(char const* data);
        const char* store(char const* data, char endChar);

        u16 getHash() {
            return mHash;
        }
        const char* getString() {
            return mData;
        }

        u16 mHash;
        u16 mLength;
        char mData[64];
    };

  public:
    JKRArchive(long, EMountMode);
    virtual ~JKRArchive();

    /* vt[03] */
    /* vt[04] */ virtual void becomeCurrent(char const*);
    /* vt[05] */ virtual void getResource(char const*);
    /* vt[06] */ virtual void getResource(u32, char const*);
    /* vt[07] */ virtual void readResource(void*, u32, char const*);
    /* vt[08] */ virtual void readResource(void*, u32, u32, char const*);
    /* vt[09] */ virtual void removeResourceAll(void);
    /* vt[10] */ virtual void removeResource(void*);
    /* vt[11] */ virtual void detachResource(void*);
    /* vt[12] */ virtual void getResSize(void const*) const;
    /* vt[13] */ virtual void countFile(char const*) const;
    /* vt[14] */ virtual void getFirstFile(char const*) const;
    /* vt[15] */ virtual void getExpandedResSize(void const*) const;
    /* vt[16] */ virtual void fetchResource(SDIFileEntry*, u32)              = 0;
    /* vt[17] */ virtual void fetchResource(void*, u32, SDIFileEntry*, u32*) = 0;
    /* vt[18] */ virtual void setExpandSize(SDIFileEntry*, u32);
    /* vt[19] */ virtual void getExpandSize(SDIFileEntry*) const;

    void check_mount_already(long, JKRHeap*);
    void mount(char const*, EMountMode, JKRHeap*, EMountDirection);
    void mount(void*, JKRHeap*, EMountDirection);
    void mount(long, EMountMode, JKRHeap*, EMountDirection);
    bool getDirEntry(SDirEntry*, u32) const;
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

  private:
    JKRHeap* mHeap;
    EMountMode mMountMode;
    int mEntryNum;
    void* mArcInfoBlock;
    void* mNodes;
    SDIFileEntry* mDirs;
    int* mExpandedSize;
    char* mStringTable;
    u32 field_0x58;
    u32 field_0x5c;
    EMountDirection mMountDirection;
    u32 field_0x64;
    JKRDvdFile* mDvdFile;
};

#endif
