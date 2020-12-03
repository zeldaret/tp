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

    void* getObjectPtr() const {
        return mObject;
    }

    JSUPtrList* getList() const {
        return mList;
    }

    JSUPtrLink* getNext() const {
        return mNext;
    }

    JSUPtrLink* getPrev() const {
        return mPrev;
    }

  public:
    void* mObject;
    JSUPtrList* mList;
    JSUPtrLink* mPrev;
    JSUPtrLink* mNext;
};

template <typename T>
class JSULink : public JSUPtrLink {
  public:
    JSULink(T* object) : JSUPtrLink((void*)object) {
    }

    T* getObject() const {
        return (T*)getObjectPtr();
    }

    JSULink<T>* getNext() const {
        return (JSULink<T>*)this->JSUPtrLink::getNext();
    }

    JSULink<T>* getPrev() const {
        return (JSULink<T>*)this->JSUPtrLink::getPrev();
    }
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

    JSUPtrLink* getFirstLink() const {
        return mHead;
    }

    JSUPtrLink* getLastLink() const {
        return mTail;
    }

    u32 getNumLinks() const {
        return mLength;
    }

  private:
    JSUPtrLink* mHead;
    JSUPtrLink* mTail;
    u32 mLength;
};

template <typename T>
class JSUList : protected JSUPtrList {
  public:
    JSUList() : JSUPtrList() {
    }

    JSUList(bool init) : JSUPtrList(init) {
    }

    bool append(JSULink<T>* link) {
        return this->JSUPtrList::append((JSUPtrLink*)link);
    }

    bool prepend(JSULink<T>* link) {
        return this->JSUPtrList::prepend((JSUPtrLink*)link);
    }

    bool insert(JSULink<T>* before, JSULink<T>* link) {
        return this->JSUPtrList::insert((JSUPtrLink*)before, (JSUPtrLink*)link);
    }

    bool remove(JSULink<T>* link) {
        return this->JSUPtrList::remove((JSUPtrLink*)link);
    }

    JSULink<T>* getFirst() const {
        return (JSULink<T>*)getFirstLink();
    }

    JSULink<T>* getLast() const {
        return (JSULink<T>*)getLastLink();
    }

    JSULink<T>* getEnd() const {
        return NULL;
    }

    u32 getNumLinks() const {
        return this->JSUPtrList::getNumLinks();
    }
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

    JSUTree<T>* getEndChild() const {
        return NULL;
    }

    JSUTree<T>* getFirstChild() const {
        JSULink<T>* link = this->mList.getFirst();
        return link ? JSU_TREE_FROM_LINK(T, link) : (JSUTree<T>*)link;
    }

    JSUTree<T>* getLastChild() const {
        JSULink<T>* link = this->mList.getLast();
        return link ? JSU_TREE_FROM_LINK(T, link) : (JSUTree<T>*)link;
    }

    JSUTree<T>* getNextChild() const {
        JSULink<T>* link = this->mLink.getNext();
        return link ? JSU_TREE_FROM_LINK(T, link) : (JSUTree<T>*)link;
    }

    JSUTree<T>* getPrevChild() const {
        JSULink<T>* link = this->mLink.getPrev();
        return link ? JSU_TREE_FROM_LINK(T, link) : (JSUTree<T>*)link;
    }

    u32 getNumChildren() const {
        return this->mList.getNumLinks();
    }

    T* getObject() const {
        return this->mLink.getObject();
    }

    JSUTree<T>* getParent() const {
        return (JSUTree<T>*)this->mLink.getList();
    }

  private:
    JSUList<T> mList;
    JSULink<T> mLink;
};

template <typename T>
class JSUTreeIterator {
  public:
    JSUTreeIterator() : mTree(NULL) {
    }
    JSUTreeIterator(JSUTree<T>* tree) : mTree(tree) {
    }

    JSUTreeIterator<T>& operator=(JSUTree<T>* tree) {
        this->mTree = tree;
        return *this;
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
