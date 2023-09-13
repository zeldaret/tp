#ifndef JASBANKLIST_H
#define JASBANKLIST_H

#include "dolphin/types.h"

class JASBank;

class JASBankList {
public:
    virtual JASBank* getBank(u32 param_0) const = 0;
};

#endif /* JASBANKLIST_H */