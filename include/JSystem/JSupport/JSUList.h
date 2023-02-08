#ifndef JSULIST_H
#define JSULIST_H

#include "dolphin/types.h"

template <typename T>
class JSUList;

//
// Link
//

class JSUPtrList;
class JSUPtrLink {
public:
    JSUPtrLink(void* object);
    ~JSUPtrLink();

    void* getObjectPtr() const { return mObject; }

    JSUPtrList* getList() const { return mList; }

    JSUPtrLink* getNext() const { return mNext; }

    JSUPtrLink* getPrev() const { return mPrev; }

public:
    void* mObject;
    JSUPtrList* mList;
    JSUPtrLink* mPrev;
    JSUPtrLink* mNext;
};

template <typename T>
class JSULink : public JSUPtrLink {
public:
    JSULink(T* object) : JSUPtrLink((void*)object) {}

    T* getObject() const { return (T*)getObjectPtr(); }

    JSUList<T>* getSupervisor() const { return (JSUList<T>*)this->getList(); }

    JSULink<T>* getNext() const { return (JSULink<T>*)this->JSUPtrLink::getNext(); }

    JSULink<T>* getPrev() const { return (JSULink<T>*)this->JSUPtrLink::getPrev(); }
};

//
// List
//

class JSUPtrList {
public:
    JSUPtrList() { this->initiate(); }
    JSUPtrList(bool init);
    ~JSUPtrList();

    void initiate();
    void setFirst(JSUPtrLink* first);
    bool append(JSUPtrLink* ptr);
    bool prepend(JSUPtrLink* ptr);
    bool insert(JSUPtrLink* before, JSUPtrLink* ptr);
    bool remove(JSUPtrLink* ptr);
    JSUPtrLink* getNthLink(u32 i) const;

    JSUPtrLink* getFirstLink() const { return mHead; }

    JSUPtrLink* getLastLink() const { return mTail; }

    u32 getNumLinks() const { return mLength; }

private:
    JSUPtrLink* mHead;
    JSUPtrLink* mTail;
    u32 mLength;
};

template <typename T>
class JSUList : public JSUPtrList {
public:
    JSUList() : JSUPtrList() {}
    JSUList(bool init) : JSUPtrList(init) {}

    ~JSUList() {}

    bool append(JSULink<T>* link) { return this->JSUPtrList::append((JSUPtrLink*)link); }

    bool prepend(JSULink<T>* link) { return this->JSUPtrList::prepend((JSUPtrLink*)link); }

    bool insert(JSULink<T>* before, JSULink<T>* link) {
        return this->JSUPtrList::insert((JSUPtrLink*)before, (JSUPtrLink*)link);
    }

    bool remove(JSULink<T>* link) { return this->JSUPtrList::remove((JSUPtrLink*)link); }

    JSULink<T>* getFirst() const { return (JSULink<T>*)getFirstLink(); }

    JSULink<T>* getLast() const { return (JSULink<T>*)getLastLink(); }

    JSULink<T>* getEnd() const { return NULL; }

    u32 getNumLinks() const { return this->JSUPtrList::getNumLinks(); }
};

template <typename T>
class JSUListIterator {
public:
    JSUListIterator() : mLink(NULL) {}
    JSUListIterator(JSULink<T>* link) : mLink(link) {}
    JSUListIterator(JSUList<T>* list) : mLink(list->getFirst()) {}

    JSUListIterator<T>& operator=(JSULink<T>* link) {
        this->mLink = link;
        return *this;
    }

    T* getObject() { return this->mLink->getObject(); }

    bool operator==(JSULink<T> const* other) const { return this->mLink == other; }
    bool operator!=(JSULink<T> const* other) const { return this->mLink != other; }
    bool operator==(JSUListIterator<T> const& other) const { return this->mLink == other.mLink; }
    bool operator!=(JSUListIterator<T> const& other) const { return this->mLink != other.mLink; }

    JSUListIterator<T> operator++(int) {
        JSUListIterator<T> prev = *this;
        this->mLink = this->mLink->getNext();
        return prev;
    }

    JSUListIterator<T>& operator++() {
        this->mLink = this->mLink->getNext();
        return *this;
    }

    JSUListIterator<T> operator--(int) {
        JSUListIterator<T> prev = *this;
        this->mLink = this->mLink->getPrev();
        return prev;
    }

    JSUListIterator<T>& operator--() {
        this->mLink = this->mLink->getPrev();
        return *this;
    }

    T& operator*() { return *this->getObject(); }

    T* operator->() { return this->getObject(); }

// private:
    JSULink<T>* mLink;
};

//
// Tree
//

template <typename T>
class JSUTree : public JSUList<T>, public JSULink<T> {
public:
    JSUTree(T* owner) : JSUList<T>(), JSULink<T>(owner) {}
    ~JSUTree() {}

    bool appendChild(JSUTree<T>* child) { return this->append(child); }

    bool removeChild(JSUTree<T>* child) { return this->remove(child); }

    bool insertChild(JSUTree<T>* before, JSUTree<T>* child) { return this->insert(before, child); }

    JSUTree<T>* getEndChild() const { return NULL; }

    JSUTree<T>* getFirstChild() const { return (JSUTree<T>*)this->getFirst(); }

    JSUTree<T>* getLastChild() const { return (JSUTree<T>*)this->getLast(); }

    JSUTree<T>* getNextChild() const { return (JSUTree<T>*)this->getNext(); }

    JSUTree<T>* getPrevChild() const { return (JSUTree<T>*)this->getPrev(); }

    u32 getNumChildren() const { return this->getNumLinks(); }

    T* getObject() const { return (T*)this->getObjectPtr(); }

    JSUTree<T>* getParent() const { return (JSUTree<T>*)this->getList(); }
};

template <typename T>
class JSUTreeIterator {
public:
    JSUTreeIterator() : mTree(NULL) {}
    JSUTreeIterator(JSUTree<T>* tree) : mTree(tree) {}

    JSUTreeIterator<T>& operator=(JSUTree<T>* tree) {
        this->mTree = tree;
        return *this;
    }

    T* getObject() { return this->mTree->getObject(); }

    bool operator==(JSUTree<T>* other) { return this->mTree == other; }

    bool operator!=(JSUTree<T>* other) { return this->mTree != other; }

    JSUTreeIterator<T> operator++(int) {
        JSUTreeIterator<T> prev = *this;
        this->mTree = this->mTree->getNextChild();
        return prev;
    }

    JSUTreeIterator<T>& operator++() {
        this->mTree = this->mTree->getNextChild();
        return *this;
    }

    T& operator*() { return *this->getObject(); }

    T* operator->() { return this->getObject(); }

private:
    JSUTree<T>* mTree;
};

#endif /* JSULIST_H */
