#ifndef __JSULIST_H__
#define __JSULIST_H__

#include "dolphin/types.h"

//
// Link
//

class JSUPtrList;
class JSUPtrLink {
  public:
    JSUPtrLink(void* object);
    ~JSUPtrLink();

    void* getObjectPtr() {
        return mObject;
    }

    JSUPtrList* getList() {
        return mList;
    }

    JSUPtrLink* getNext() {
        return mNext;
    }

    JSUPtrLink* getPrev() {
        return mPrev;
    }

  public:
    void* mObject;
    JSUPtrList* mList;
    JSUPtrLink* mPrev;
    JSUPtrLink* mNext;
};

template <typename T>
class JSULink {
  public:
    JSULink(T* object) : mLink((void*)object) {
    }

    T* getObject() {
        return (T*)mLink.getObjectPtr();
    }

    JSUPtrList* getList() {
        return mLink.getList();
    }

    JSULink<T>* getNext() {
        return (JSULink<T>*)mLink.getNext();
    }

    JSULink<T>* getPrev() {
        return (JSULink<T>*)mLink.getPrev();
    }

  private:
    JSUPtrLink mLink;
};

//
// List
//

class JSUPtrList {
  public:
    JSUPtrList() {
        this->initiate();
    }

    JSUPtrList(bool init);
    ~JSUPtrList();

    void initiate();
    void setFirst(JSUPtrLink* first);
    bool append(JSUPtrLink* ptr);
    bool prepend(JSUPtrLink* ptr);
    bool insert(JSUPtrLink* before, JSUPtrLink* ptr);
    bool remove(JSUPtrLink* ptr);
    JSUPtrLink* getNthLink(u32 i) const;

    JSUPtrLink* getFirstLink() {
        return mHead;
    }
    JSUPtrLink* getLastLink() {
        return mTail;
    }
    int getNumLinks() {
        return mLength;
    }

  private:
    JSUPtrLink* mHead;
    JSUPtrLink* mTail;
    u32 mLength;
};

template <typename T>
class JSUList {
  public:
    JSUList() : mList() {
    }

    JSUList(bool init) : mList(init) {
    }

    bool append(JSULink<T>* link) {
        return mList.append((JSUPtrLink*)link);
    }

    bool prepend(JSULink<T>* link) {
        return mList.prepend((JSUPtrLink*)link);
    }

    bool insert(JSULink<T>* before, JSULink<T>* link) {
        return mList.append((JSUPtrLink*)before, (JSUPtrLink*)link);
    }

    bool remove(JSULink<T>* link) {
        return mList.remove((JSUPtrLink*)link);
    }

    JSULink<T>* getFirst() {
        return (JSULink<T>*)mList.getFirstLink();
    }

    JSULink<T>* getLast() {
        return (JSULink<T>*)mList.getLastLink();
    }

    JSULink<T>* getEnd() {
        return NULL;
    }

    int getNumLinks() {
        return mList.getNumLinks();
    }

  private:
    JSUPtrList mList;
};

template <typename T>
class JSUListIterator {
  public:
    JSUListIterator() : mLink() {
    }
    JSUListIterator(JSULink<T>* link) : mLink(link) {
    }
    JSUListIterator(JSUList<T>* list) : JSUListIterator(list->getFirst()) {
    }

    JSUListIterator<T>& operator=(JSULink<T>* link) {
        this->mLink = link;
        return *this;
    }

    T* getObject() {
        return this->mLink->getObject();
    }

    bool operator==(JSULink<T> const* other) const {
        return this->mLink == other;
    }

    bool operator!=(JSULink<T> const* other) const {
        return this->mLink != other;
    }

    bool operator==(JSUListIterator<T> const& other) const {
        return this->mLink == other.mLink;
    }

    bool operator!=(JSUListIterator<T> const& other) const {
        return this->mLink != other.other;
    }

    JSUListIterator<T> operator++(int) {
        JSUListIterator<T> prev = *this;
        this->mLink             = this->mLink->getNext();
        return prev;
    }

    JSUListIterator<T>& operator++() {
        this->mLink = this->mLink->getNext();
        return *this;
    }

    T& operator*() {
        return this->getObject();
    }

    T* operator->() {
        return this->getObject();
    }

  private:
    JSULink<T>* mLink;
};

//
// Tree
//

#define JSU_TREE_FROM_LINK(T, LINK) (JSUTree<T>*)(((u8*)(LINK)) - 12)
#define JSU_TREE_LINK_IF_NOT_NULL(TREE)                                                                                \
    if (TREE) {                                                                                                        \
        TREE = (JSUTree<T>*)(&(TREE)->mLink);                                                                          \
    }

#define _JSU_TREE_AS_LINK(TREE) ((JSULink<T>*)(TREE))

template <typename T>
class JSUTree {
  public:
    JSUTree(T* owner) : mList(), mLink(owner) {
    }

    bool appendChild(JSUTree<T>* child) {
        JSU_TREE_LINK_IF_NOT_NULL(child);
        return this->mList.append(_JSU_TREE_AS_LINK(child));
    }

    bool removeChild(JSUTree<T>* child) {
        JSU_TREE_LINK_IF_NOT_NULL(child);
        return this->mList.remove(_JSU_TREE_AS_LINK(child));
    }

    bool insertChild(JSUTree<T>* before, JSUTree<T>* child) {
        JSU_TREE_LINK_IF_NOT_NULL(before);
        JSU_TREE_LINK_IF_NOT_NULL(child);
        return this->mList.insert(_JSU_TREE_AS_LINK(before), _JSU_TREE_AS_LINK(child));
    }

    JSUTree<T>* getEndChild() {
        return NULL;
    }

    JSUTree<T>* getFirstChild() {
        JSULink<T>* link = this->mList.getFirst();
        if (!link) return NULL;
        return JSU_TREE_FROM_LINK(T, link);
    }

    JSUTree<T>* getLastChild() {
        JSULink<T>* link = this->mList.getLast();
        if (!link) return NULL;
        return JSU_TREE_FROM_LINK(T, link);
    }

    JSUTree<T>* getNextChild() {
        JSULink<T>* link = this->mLink.getNext();
        if (!link) return NULL;
        return JSU_TREE_FROM_LINK(T, link);
    }

    JSUTree<T>* getPrevChild() {
        JSULink<T>* link = this->mLink.getPrev();
        if (!link) return NULL;
        return JSU_TREE_FROM_LINK(T, link);
    }

    int getNumChildren() {
        return this->mList.getNumLinks();
    }

    T* getObject() {
        return this->mList.getObject();
    }

    JSUTree<T>* getParent() {
        return (JSUTree<T>*)this->mList.getList();
    }

  private:
    JSUList<T> mList;
    JSULink<T> mLink;
};

template <typename T>
class JSUTreeIterator {
  public:
    JSUTreeIterator(JSUTree<T>* tree) : mTree(tree) {
    }

    T* getObject() {
        return this->mTree->getObject();
    }

    bool operator==(JSUTree<T>* other) {
        return this->mTree == other;
    }

    bool operator!=(JSUTree<T>* other) {
        return this->mTree != other;
    }

    JSUTreeIterator<T> operator++(int) {
        JSUTreeIterator<T> prev = *this;
        this->mTree             = this->mTree->getNextChild();
        return prev;
    }

    JSUTreeIterator<T>& operator++() {
        this->mTree = this->mTree->getNextChild();
        return *this;
    }

    T& operator*() {
        return this->getObject();
    }

    T* operator->() {
        return this->getObject();
    }

  private:
    JSUTree<T>* mTree;
};

#endif
