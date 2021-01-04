#ifndef __JKRARCHIVEPUB_H__
#define __JKRARCHIVEPUB_H__

#include "JSystem/JKernel/JKRFileLoader/JKRFileLoader.h"
#include "dolphin/types.h"

struct SArcDataInfo {
    u32 num_nodes;
    u32 node_offset;
    u32 num_file_entries;
    u32 file_entry_offset;
    u32 string_table_length;
    u32 string_trable_offset;
    u16 next_free_file_id;
    bool sync_file_ids_and_indices;
    u8 field_1b[5];
};

struct SDirEntry {
    union {
        u32 type;
        struct {
            u8 flags;
            u8 padding;
            u16 id;
        } other;
    };

    u32 name;
    u16 field_0x8;
    u16 num_entries;
    s32 first_file_index;
};

struct SDIFileEntry {
    u16 file_id;
    u16 name_hash;
    u32 type_flags_and_name_offset;
    u32 data_offset;
    u32 data_size;
    void* data;

    u32 getNameOffset() const { return type_flags_and_name_offset & 0xFFFFFF; }
    u16 getNameHash() const { return name_hash; }
    u32 getFlags() const { return type_flags_and_name_offset >> 24; }
    bool isDirectory() const { return (getFlags() & 2) != 0; }
    bool isUnknownFlag1() const { return (getFlags() & 1) != 0; }
};

extern u32 lbl_80451420;  // JKRArchive::sCurrentDirID

class JKRHeap;
class JKRDvdFile;
class JKRArchive : public JKRFileLoader {
public:
    enum EMountMode {
        UNKNOWN_MOUNT_MODE = 0,
        MEM = 1,
        ARAM = 2,
        DVD = 3,
        COMP = 4,
    };

    enum EMountDirection {
        UNKNOWN_MOUNT_DIRECTION = 0,
        HEAD = 1,
        TAIL = 2,

        __EMOUNT_DIRECTION_PADDING_FOR_32BIT = 0xFFFFFFFF
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
    void getIdxResource(u32);
    void getResource(unsigned short);
    void readIdxResource(void*, u32, u32);
    void readResource(void*, u32, unsigned short);
    void countResource(void) const;
    void getFileAttribute(u32) const;
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
    /* vt[04] */ virtual void becomeCurrent(char const*);                 /* override */
    /* vt[05] */ virtual void* getResource(char const*);                  /* override */
    /* vt[06] */ virtual void* getResource(u32, char const*);             /* override */
    /* vt[07] */ virtual void readResource(void*, u32, char const*);      /* override */
    /* vt[08] */ virtual void readResource(void*, u32, u32, char const*); /* override */
    /* vt[09] */ virtual void removeResourceAll(void);                    /* override */
    /* vt[10] */ virtual bool removeResource(void*);                      /* override */
    /* vt[11] */ virtual bool detachResource(void*);                      /* override */
    /* vt[12] */ virtual void getResSize(void const*) const;              /* override */
    /* vt[13] */ virtual void countFile(char const*) const;               /* override */
    /* vt[14] */ virtual void getFirstFile(char const*) const;            /* override */
    /* vt[15] */ virtual void getExpandedResSize(void const*) const;
    /* vt[16] */ virtual void fetchResource(SDIFileEntry*, u32) = 0;
    /* vt[17] */ virtual void fetchResource(void*, u32, SDIFileEntry*, u32*) = 0;
    /* vt[18] */ virtual void setExpandSize(SDIFileEntry*, u32);
    /* vt[19] */ virtual void getExpandSize(SDIFileEntry*) const;

private:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRFileLoader
    /* 0x38 */ JKRHeap* mHeap;
    /* 0x3C */ EMountMode mMountMode;
    /* 0x40 */ s32 mEntryNum;
    /* 0x44 */ SArcDataInfo* mArcInfoBlock;
    /* 0x48 */ SDirEntry* mNodes;
    /* 0x4C */ SDIFileEntry* mFiles;
    /* 0x50 */ s32* mExpandedSize;
    /* 0x54 */ char* mStringTable;
    /* 0x58 */ u32 field_0x58;

public:
    static void check_mount_already(long, JKRHeap*);
    static void mount(char const*, EMountMode, JKRHeap*, EMountDirection);
    static void mount(void*, JKRHeap*, EMountDirection);
    static void mount(long, EMountMode, JKRHeap*, EMountDirection);
    static void getGlbResource(u32, char const*, JKRArchive*);

    static u32 getCurrentDirID() { return lbl_80451420; }
    static void setCurrentDirID(u32 dirID) { lbl_80451420 = dirID; }
};

#endif
