
#ifndef F_PC_LINE_TAG_H_
#define F_PC_LINE_TAG_H_

#include "SSystem/SComponent/c_tag.h"

typedef struct line_tag {
    create_tag_class mBase;
    s32 mLineListID;
} line_tag;

s32 fpcLnTg_Move(line_tag* pLineTag, int newLineListID);
void fpcLnTg_QueueTo(line_tag* pLineTag);
s32 fpcLnTg_ToQueue(line_tag* pLineTag, int lineListID);
void fpcLnTg_Init(line_tag* pLineTag, void* pData);

#endif
