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

      private:
        u16 mHash;
        u16 mLength;
        char mData[64];
    };

  protected:
    JKRArchive();
    JKRArchive(long, EMountMode);
    virtual ~JKRArchive();

  public:
    bool getDirEntry(SDirEntry*, u32) const;
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
    /* vt[15] */ virtual void getExpandedResSize(void const*) const;
    /* vt[16] */ virtual void fetchResource(SDIFileEntry*, u32)              = 0;
    /* vt[17] */ virtual void fetchResource(void*, u32, SDIFileEntry*, u32*) = 0;
    /* vt[18] */ virtual void setExpandSize(SDIFileEntry*, u32);
    /* vt[19] */ virtual void getExpandSize(SDIFileEntry*) const;

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

  public:
    static void check_mount_already(long, JKRHeap*);
    static void mount(char const*, EMountMode, JKRHeap*, EMountDirection);
    static void mount(void*, JKRHeap*, EMountDirection);
    static void mount(long, EMountMode, JKRHeap*, EMountDirection);
    static void getGlbResource(u32, char const*, JKRArchive*);
};

#endif
