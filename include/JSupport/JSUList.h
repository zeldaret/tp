#ifndef __JSULIST_H__
#define __JSULIST_H__

#include "dolphin/types.h"

class JSUPtrList;
class JSUPtrLink {
  public:
    JSUPtrLink(void*);
    ~JSUPtrLink();

  public:
    void* unk0;
    JSUPtrList* list;
    JSUPtrLink* prev;
    JSUPtrLink* next;
};

class JSUPtrList {
  public:
    JSUPtrList(bool should_initiate);
    ~JSUPtrList();

    void initiate();
    void setFirst(JSUPtrLink* first);
    bool append(JSUPtrLink* ptr);
    bool prepend(JSUPtrLink* ptr);
    bool insert(JSUPtrLink* before, JSUPtrLink* ptr);
    bool remove(JSUPtrLink* ptr);
    JSUPtrLink* getNthLink(u32 i) const;

  public:
    JSUPtrLink* head;
    JSUPtrLink* tail;
    u32 length;
};


template <typename T>
class JSUList : JSUPtrList {
  public:
  JSUList() : JSUPtrList(true) {}
  ~JSUList() {};

};

#endif
