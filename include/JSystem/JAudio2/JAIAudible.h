#ifndef JAIAUDIBLE_H
#define JAIAUDIBLE_H

#include "dolphin/types.h"

struct JASSoundParams;

struct JAIAudible {
    virtual ~JAIAudible();
    virtual JASSoundParams* getOuterParams(int) = 0;
    virtual void calc() = 0;
};

#endif /* JAIAUDIBLE_H */
