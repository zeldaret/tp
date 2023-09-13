#ifndef JAUSOUNDTABLE_H
#define JAUSOUNDTABLE_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JASGadget.h"

struct JAUSoundTable : public JASGlobalInstance<JAUSoundTable> {
    /* 802A7114 */ void init(void const*);
    /* 802A7160 */ u8 getTypeID(JAISoundID) const;
    /* 802A728C */ void getData(JAISoundID) const;
};

struct JAUSoundNameTable : public JASGlobalInstance<JAUSoundNameTable> {
    /* 802A73D4 */ void init(void const*);
};

#endif /* JAUSOUNDTABLE_H */
