
#ifndef F_PC_LINE_TAG_H
#define F_PC_LINE_TAG_H

#include "SComponent/c_tag.h"

struct line_tag : public create_tag_class {
    int mLineListID;
};

extern "C" {

int fpcLnTg_Move(line_tag *pLineTag, int newLineListID);
void fpcLnTg_QueueTo(line_tag *pLineTag);
int fpcLnTg_ToQueue(line_tag *pLineTag, int lineListID);
void fpcLnTg_Init(line_tag *pLineTag, void *pData);

};

#endif
