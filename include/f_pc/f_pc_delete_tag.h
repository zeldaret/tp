
#ifndef F_PC_DELETE_TAG_H_
#define F_PC_DELETE_TAG_H_

#include "SSystem/SComponent/c_tag.h"

typedef struct layer_class layer_class;

typedef int (*delete_tag_func)(void*);

typedef struct delete_tag_class {
    create_tag_class mBase;
    layer_class* mpLayer;
    s16 mTimer;
} delete_tag_class;

BOOL fpcDtTg_IsEmpty(void);
void fpcDtTg_ToDeleteQ(delete_tag_class* pTag);
void fpcDtTg_DeleteQTo(delete_tag_class* pTag);
s32 fpcDtTg_Do(delete_tag_class* pTag, delete_tag_func pFunc);
s32 fpcDtTg_Init(delete_tag_class* pTag, void* pUserData);

extern node_list_class g_fpcDtTg_Queue;

#endif
