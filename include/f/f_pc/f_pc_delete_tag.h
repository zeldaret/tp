
#ifndef F_PC_DELETE_TAG_H
#define F_PC_DELETE_TAG_H

#include "global.h"
#include "SComponent/c_tag.h"

struct layer_class;

typedef int (*delete_tag_func)(void*);

struct delete_tag_class : public create_tag_class {
    layer_class *mpLayer;
    s16 mTimer;
};

extern "C" {

bool fpcDtTg_IsEmpty(void);
void fpcDtTg_ToDeleteQ(delete_tag_class *pTag);
void fpcDtTg_DeleteQTo(delete_tag_class *pTag);
int fpcDtTg_Do(delete_tag_class *pTag, delete_tag_func pFunc);
int fpcDtTg_Init(delete_tag_class *pTag, void *pUserData);

};

#endif
