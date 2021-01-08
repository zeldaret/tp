#ifndef __JKRARCHIVEPUB_H__
#define __JKRARCHIVEPUB_H__

#include "JSystem/JKernel/JKRDecomp/JKRDecomp.h"
#include "JSystem/JKernel/JKRFileLoader/JKRFileLoader.h"
#include "JSystem/JKernel/SArc.h"
#include "dolphin/types.h"

extern u32 lbl_80451420;  // JKRArchive::sCurrentDirID

class JKRHeap;
class JKRDvdFile;
class JKRArchive : public JKRFileLoader {
public:
    enum EMountMode {
        UNKNOWN_MOUNT_MODE = 0,
        MOUNT_MEM = 1,
        MOUNT_ARAM = 2,
        MOUNT_DVD = 3,
        MOUNT_COMP = 4,
    };

    enum EMountDirection {
        UNKNOWN_MOUNT_DIRECTION = 0,
        MOUNT_DIRECTION_HEAD = 1,
        MOUNT_DIRECTION_TAIL = 2,
    };

    class CArcName {
    public:
        CArcName() {}
        CArcName(char const* data) { this->store(data); }
        CArcName(char const** data, char endChar) { *data = this->store(*data, endChar); }

        void store(char const* data);
        const char* store(char const* data, char endChar);

        u16 getHash() const { return mHash; }

        const char* getString() const { return mData; }

    private:
        u16 mHash;
        u16 mLength;
        char mData[256];
    };

protected:
    JKRArchive();
    JKRArchive(long, EMountMode);
    virtual ~JKRArchive();

public:
    bool getDirEntry(SDirEntry*, u32) const;
    void* getIdxResource(u32);
    void* getResource(u16);
    u32 readIdxResource(void*, u32, u32);
    u32 readResource(void*, u32, u16);
    u32 countResource(void) const;
    u32 getFileAttribute(u32) const;

    u32 getMountMode() const { return mMountMode; }

protected:
    bool isSameName(CArcName&, u32, u16) const;
    SDirEntry* findResType(u32) const;
    SDirEntry* findDirectory(const char*, u32) const;
    SDIFileEntry* findTypeResource(u32, const char*) const;
    SDIFileEntry* findFsResource(const char*, u32) const;
    SDIFileEntry* findIdxResource(u32) const;
    SDIFileEntry* findNameResource(const char*) const;
    SDIFileEntry* findPtrResource(const void*) const;
    SDIFileEntry* findIdResource(u16) const;

public:
    /* vt[04] */ virtual bool becomeCurrent(const char*);                /* override */
    /* vt[05] */ virtual void* getResource(const char*);                 /* override */
    /* vt[06] */ virtual void* getResource(u32, const char*);            /* override */
    /* vt[07] */ virtual u32 readResource(void*, u32, const char*);      /* override */
    /* vt[08] */ virtual u32 readResource(void*, u32, u32, const char*); /* override */
    /* vt[09] */ virtual void removeResourceAll(void);                   /* override */
    /* vt[10] */ virtual bool removeResource(void*);                     /* override */
    /* vt[11] */ virtual bool detachResource(void*);                     /* override */
    /* vt[12] */ virtual u32 getResSize(const void*) const;              /* override */
    /* vt[13] */ virtual u32 countFile(const char*) const;               /* override */
    /* vt[14] */ virtual JKRFileFinder* getFirstFile(const char*) const; /* override */
    /* vt[15] */ virtual u32 getExpandedResSize(const void*);
    /* vt[16] */ virtual void* fetchResource(SDIFileEntry*, u32*) = 0;
    /* vt[17] */ virtual void* fetchResource(void*, u32, SDIFileEntry*, u32*) = 0;
    /* vt[18] */ virtual void setExpandSize(SDIFileEntry*, u32);
    /* vt[19] */ virtual u32 getExpandSize(SDIFileEntry*) const;

protected:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRFileLoader
    /* 0x38 */ JKRHeap* mHeap;
    /* 0x3C */ u8 mMountMode;
    /* 0x3D */ u8 field_0x3d[3];
    /* 0x40 */ s32 mEntryNum;
    /* 0x44 */ SArcDataInfo* mArcInfoBlock;
    /* 0x48 */ SDirEntry* mNodes;
    /* 0x4C */ SDIFileEntry* mFiles;
    /* 0x50 */ s32* mExpandedSize;
    /* 0x54 */ char* mStringTable;
    /* 0x58 */ u32 field_0x58;

public:
    static JKRArchive* check_mount_already(s32, JKRHeap*);
    static JKRArchive* mount(const char*, EMountMode, JKRHeap*, EMountDirection);
    static JKRArchive* mount(void*, JKRHeap*, EMountDirection);
    static JKRArchive* mount(s32, EMountMode, JKRHeap*, EMountDirection);
    static void* getGlbResource(u32, const char*, JKRArchive*);

#define FLAG_HAS(V, F) (((V) & (F)) == 0)

    static JKRCompression convertAttrToCompressionType(u32 attr) {
#define JKRARCHIVE_ATTR_COMPRESSION 0x04
#define JKRARCHIVE_ATTR_YAY0 0x80

        JKRCompression compression;
        if (FLAG_HAS(attr, JKRARCHIVE_ATTR_COMPRESSION)) {
            compression = COMPRESSION_NONE;
        } else if (!FLAG_HAS(attr, JKRARCHIVE_ATTR_YAY0)) {
            compression = COMPRESSION_YAZ0;
        } else {
            compression = COMPRESSION_YAY0;
        }
        return compression;
    }

    static u32 getCurrentDirID() { return lbl_80451420; }
    static void setCurrentDirID(u32 dirID) { lbl_80451420 = dirID; }
};

inline JKRCompression JKRConvertAttrToCompressionType(u32 attr) {
    return JKRArchive::convertAttrToCompressionType(attr);
}

#endif
