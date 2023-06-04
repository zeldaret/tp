/**
 * f_op_draw_iter.cpp
 *
 */

#include "f_op/f_op_draw_iter.h"
#include "SSystem/SComponent/c_list.h"
#include "SSystem/SComponent/c_tag.h"
#include "f_op/f_op_draw_tag.h"

/* ############################################################################################## */
/* 80450CF8-80450D00 0001F8 0004+04 2/2 0/0 0/0 .sbss            l_fopDwTg_id */
static s32 l_fopDwTg_id;

/* 80020400-80020444 01AD40 0044+00 2/2 0/0 0/0 .text            fopDwIt_GetTag__Fv */
create_tag_class* fopDwIt_GetTag() {
    while (l_fopDwTg_id + 1 < g_fopDwTg_Queue.mNumLists) {
        l_fopDwTg_id++;
        node_class* tmp = g_fopDwTg_Queue.mpLists[l_fopDwTg_id].mpHead;
    
        if (tmp != NULL) {
            return (create_tag_class*)tmp;
        }
    }

    return NULL;
}

/* 80020444-80020480 01AD84 003C+00 0/0 1/1 0/0 .text            fopDwIt_Begin__Fv */
create_tag_class* fopDwIt_Begin() {
    create_tag_class* createTagClass = (create_tag_class*)g_fopDwTg_Queue.mpLists->mpHead;
    l_fopDwTg_id = 0;

    if (createTagClass) {
        return createTagClass;
    }
    return createTagClass = fopDwIt_GetTag();
}

/* 80020480-800204AC 01ADC0 002C+00 0/0 1/1 0/0 .text            fopDwIt_Next__FP16create_tag_class
 */
create_tag_class* fopDwIt_Next(create_tag_class* i_createTag) {
    create_tag_class* createTagClass = (create_tag_class*)i_createTag->mpNode.mpNextNode;
    if (!createTagClass) {
        createTagClass = fopDwIt_GetTag();
    }
    return createTagClass;
}
