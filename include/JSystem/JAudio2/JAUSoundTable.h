#ifndef JAUSOUNDTABLE_H
#define JAUSOUNDTABLE_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JASGadget.h"

template<typename Root, typename Section, typename Group, typename Typename_0>
struct JAUSoundTable_ {
    JAUSoundTable_() {
        field_0x0 = NULL;
        field_0x4 = 0;
    }

    void reset() {
        field_0x0 = NULL;
        field_0x4 = NULL;
    }

    void init(const void* param_0) {
        field_0x0 = param_0;
        // magic number is not in debug rom. I'm not sure what this comparison is (maybe some sort of '' number?)
        // I also do not know how it is different between JAUSoundTable and JAUSoundNameTable
        if (*(u32*)field_0x0 + 0xbdad0000 != Root::magicNumber()) {
            field_0x0 = NULL;
        } else {
            field_0x4 = (Root*)((u8*)field_0x0 + *((u32*)field_0x0 + 3));
        }
    }

    Section* getSection(int index) const {
        if (index < 0) {
            return NULL;
        }
        if ((u32)index >= field_0x4->mSectionNumber) {
            return NULL;
        }
        u32 offset = field_0x4->mSectionOffsets[index];
        if (offset == 0) {
            return NULL;
        } 
        return (Section*)((u8*)field_0x0 + offset);
    }

    Group* getGroup(Section* param_1, int index) const {
        int iVar1;

        if (index < 0) {
            return NULL;
        } 
        if ((u32)index >= param_1->mNumGroups) {
            return NULL;
        }
        u32 offset = param_1->getGroupOffset(index);
        if (offset == 0) {
            return NULL;
        } 
        return (Group*)((u8*)field_0x0 + offset);
    }

    const void* field_0x0;
    Root* field_0x4;
    u32 field_0x8;
    u32 field_0xc;
};

struct JAUSoundTableRoot {
    static inline u32 magicNumber() { return 0x5420; }
    u32 mSectionNumber;
    u32 mSectionOffsets[0];
};
struct JAUSoundTableSection {
    int getGroupOffset(int index) const {
        if (index < 0) {
            return 0;
        }
        if (index >= mNumGroups) {
            return 0;
        }
        return mGroupOffsets[index];
    }

    u32 mNumGroups;
    u32 mGroupOffsets[0];
};

struct JAUSoundTableGroup {
    u8 getTypeID(int index) const {
        if (index < 0) {
            return 0;
        }
        if (index >= mNumItems) {
            return 0xff;
        }
        return mTypeIds[index * 4];
    }

    u32 getItemOffset(int index) const {
        if (index < 0) {
            return 0;
        }
        if (index >= mNumItems) {
            return 0;
        }
        return *(u32*)(mTypeIds + index * 4) & 0xffffff;
    }

    u32 mNumItems;
    u32 field_0x4;
    u8 mTypeIds[0];
};

struct JAUSoundTable : public JASGlobalInstance<JAUSoundTable> {
    JAUSoundTable(bool param_0) : JASGlobalInstance<JAUSoundTable>(param_0) {
    }
    ~JAUSoundTable() {}
    
    /* 802A7114 */ void init(void const*);
    /* 802A7160 */ u8 getTypeID(JAISoundID) const;
    /* 802A728C */ void* getData(JAISoundID) const;

    void* getItem(JAUSoundTableGroup* group, int index) const {
        u32 offset = group->getItemOffset(index);
        if (offset == 0) {
            return NULL;
        }
        return (void*)((u8*)field_0x0.field_0x0 + offset);
    }

    JAUSoundTable_<JAUSoundTableRoot,JAUSoundTableSection,JAUSoundTableGroup,void> field_0x0;
};

struct JAUSoundNameTableRoot {
    static inline u32 magicNumber() { return 0x544e; }
    u32 mSectionNumber;
    u32 mSectionOffsets[0];
};
struct JAUSoundNameTableSection {};
struct JAUSoundNameTableGroup {};

struct JAUSoundNameTable : public JASGlobalInstance<JAUSoundNameTable> {
    JAUSoundNameTable(bool param_0) : JASGlobalInstance<JAUSoundNameTable>(param_0) {
    }
    ~JAUSoundNameTable() {}
    /* 802A73D4 */ void init(void const*);

    JAUSoundTable_<JAUSoundNameTableRoot,JAUSoundNameTableSection,JAUSoundNameTableGroup,void> field_0x0;
};

#endif /* JAUSOUNDTABLE_H */
