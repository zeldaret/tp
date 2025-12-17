#ifndef _REVOLUTION_MEM_LIST_H_
#define _REVOLUTION_MEM_LIST_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <revolution/types.h>

typedef struct {
    void* prev;
    void* next;
} MEMLink;

typedef struct {
    void* head;
    void* tail;
    u16 num;
    u16 offs;
} MEMList;

void MEMInitList(MEMList*, u16);
void MEMAppendListObject(MEMList*, void*);
void MEMRemoveListObject(MEMList*, void*);
void* MEMGetNextListObject(MEMList*, void*);

#ifdef __cplusplus
}
#endif

#endif  // _REVOLUTION_MEM_LIST_H_
