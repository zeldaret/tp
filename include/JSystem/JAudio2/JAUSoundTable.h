#ifndef JAUSOUNDTABLE_H
#define JAUSOUNDTABLE_H

#include "JSystem/JAudio2/JAISound.h"

struct JAUSoundTable {
    /* 802A7114 */ void init(void const*);
    /* 802A7160 */ void getTypeID(JAISoundID) const;
    /* 802A728C */ void getData(JAISoundID) const;
};

struct JAUSoundNameTable {
    /* 802A73D4 */ void init(void const*);
};

/**
 * this is supposed to be:
 * JASGlobalInstance<JAUSoundNameTable>::sInstance
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>
 */
extern JAUSoundNameTable* data_80450B54;

/**
 * this is supposed to be:
 * JASGlobalInstance<JAUSoundTable>::sInstance
 * sInstance__34JASGlobalInstance<13JAUSoundTable>
 */
extern JAUSoundTable* data_80450B58;

#endif /* JAUSOUNDTABLE_H */
