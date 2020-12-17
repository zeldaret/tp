
#ifndef F_PC_DELETE_TAG_H
#define F_PC_DELETE_TAG_H

#include "global.h"
#include "SComponent/c_tag.h"
#include "f/f_pc/f_pc_layer.h"

typedef s32 (*delete_tag_func)(void*);

typedef struct delete_tag_class {
    create_tag_class mBase;
    layer_class *mpLayer;
    s16 mTimer;
} delete_tag_class;

BEGIN_C_DECLARATIONS

BOOL fpcDtTg_IsEmpty(void);
void fpcDtTg_ToDeleteQ(delete_tag_class *pTag);
void fpcDtTg_DeleteQTo(delete_tag_class *pTag);
s32 fpcDtTg_Do(delete_tag_class *pTag, delete_tag_func pFunc);
s32 fpcDtTg_Init(delete_tag_class *pTag, void *pUserData);

END_C_DECLARATIONS

#endif
