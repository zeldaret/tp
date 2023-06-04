#ifndef F_F_OP_DRAW_TAG
#define F_F_OP_DRAW_TAG

#include "SSystem/SComponent/c_tree.h"

typedef struct create_tag_class create_tag_class;

extern node_lists_tree_class g_fopDwTg_Queue;

void fopDwTg_DrawQTo(create_tag_class* pTag);
void fopDwTg_CreateQueue();
bool fopDwTg_Init(create_tag_class* pCreateTagClass, void* pActor);
void fopDwTg_ToDrawQ(create_tag_class* pCreateTagClass, int priority);

#endif