#ifndef JAUSOUNDTABLE_H
#define JAUSOUNDTABLE_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JASGadget.h"

class JAUSoundTable : public JASGlobalInstance<JAUSoundTable> {
public:
    JAUSoundTable(bool param_0) : JASGlobalInstance<JAUSoundTable>(param_0) {
        field_0x0 = NULL;
        field_0x4 = 0;
    }
    ~JAUSoundTable() {}
    /* 802A7114 */ void init(void const*);
    /* 802A7160 */ u8 getTypeID(JAISoundID) const;
    /* 802A728C */ void getData(JAISoundID) const;

    void* field_0x0;
    int field_0x4;
};

struct JAUSoundNameTable : public JASGlobalInstance<JAUSoundNameTable> {
    JAUSoundNameTable(bool param_0) : JASGlobalInstance<JAUSoundNameTable>(param_0) {
        field_0x0 = NULL;
        field_0x4 = 0;
    }
    ~JAUSoundNameTable() {}
    /* 802A73D4 */ void init(void const*);

    void* field_0x0;
    int field_0x4;
};

#endif /* JAUSOUNDTABLE_H */
