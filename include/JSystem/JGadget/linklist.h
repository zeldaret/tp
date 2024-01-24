#ifndef LINKLIST_H
#define LINKLIST_H

#include "dolphin/types.h"

namespace JGadget {
struct TLinkListNode {
    TLinkListNode() {
        mNext = NULL;
        mPrev = NULL;
    }

    TLinkListNode* getNext() const { return mNext; }
    TLinkListNode* getPrev() const { return mPrev; }

public:
    /* 0x0 */ TLinkListNode* mNext;
    /* 0x4 */ TLinkListNode* mPrev;
};  // Size: 0x8

struct TNodeLinkList {
    struct iterator {
        explicit iterator(TLinkListNode* pNode) { node = pNode; }

        iterator& operator++() {
            node = node->getNext();
            return *this;
        }
        iterator& operator--() {
            node = node->getPrev();
            return *this;
        }
        iterator operator++(int) {
            const iterator old(*this);
            (void)++*this;
            return old;
        }
        iterator operator--(int) {
            const iterator old(*this);
            (void)--*this;
            return old;
        }
        friend bool operator==(iterator a, iterator b) { return a.node == b.node; }
        friend bool operator!=(iterator a, iterator b) { return !(a == b); }

        TLinkListNode* operator->() const { return node; }
        TLinkListNode& operator*() const { return *node; }

    public:
        /* 0x00 */ TLinkListNode* node;
    };

    struct const_iterator {
        explicit const_iterator(TLinkListNode* pNode) { node = pNode; }
        const_iterator(const const_iterator& iter) { *this = iter; }
        explicit const_iterator(iterator it) { node = it.node; }

        const_iterator& operator++() {
            node = node->getNext();
            return *this;
        }
        const_iterator& operator--() {
            node = node->getPrev();
            return *this;
        }
        const_iterator operator++(int) {
            const const_iterator old(*this);
            (void)++*this;
            return old;
        }
        const_iterator operator--(int) {
            const const_iterator old(*this);
            (void)--*this;
            return old;
        }
        friend bool operator==(const_iterator a, const_iterator b) { return a.node == b.node; }
        friend bool operator!=(const_iterator a, const_iterator b) { return !(a == b); }

        friend bool operator==(const_iterator a, iterator b) { return a.node == b.node; }
        friend bool operator!=(const_iterator a, iterator b) { return !(a == b); }

        const TLinkListNode* operator->() const { return node; }
        const TLinkListNode& operator*() const { return *node; }

    public:
        /* 0x00 */ TLinkListNode* node;
    };

    TNodeLinkList() : ocObject_() { Initialize_(); }
    ~TNodeLinkList();

    void Initialize_() {
        count = 0;
        ocObject_.mNext = &ocObject_;
        ocObject_.mPrev = &ocObject_;
    }

    iterator begin() { return iterator(ocObject_.getNext()); }
    const_iterator begin() const { return const_iterator(ocObject_.getNext()); }
    iterator end() { return iterator(&ocObject_); }
    const_iterator end() const { return const_iterator((TLinkListNode*)(&ocObject_)); }
    u32 size() { return count; }
    bool empty() { return size() == 0; }
    iterator pop_front() { return erase(begin()); }

    iterator erase(JGadget::TNodeLinkList::iterator, JGadget::TNodeLinkList::iterator);
    iterator erase(JGadget::TNodeLinkList::iterator);
    void splice(JGadget::TNodeLinkList::iterator, JGadget::TNodeLinkList&,
                JGadget::TNodeLinkList::iterator);
    iterator Find(const JGadget::TLinkListNode*);
    iterator Insert(JGadget::TNodeLinkList::iterator, JGadget::TLinkListNode*);
    iterator Erase(JGadget::TLinkListNode*);
    void Remove(JGadget::TLinkListNode*);

    bool Iterator_isEnd_(const_iterator it) const { return it.node == &ocObject_; }
    template <typename Predicate>
    void Remove_if(Predicate predicate, TNodeLinkList& tList) {
        iterator it = begin();

        while (!Iterator_isEnd_(const_iterator(it))) {
            if (predicate(*it)) {
                iterator itPrev = it;
                ++it;
                tList.splice(tList.end(), *this, itPrev);
            } else {
                ++it;
            }
        }
    }

    template <typename Predicate>
    void remove_if(Predicate predicate) {
        TNodeLinkList list;
        Remove_if(predicate, list);
    }

public:
    /* 0x00 */ u32 count;
    /* 0x04 */ TLinkListNode ocObject_;
};  // Size: 0xC

template <typename T, int I>
struct TLinkList : public TNodeLinkList {
    TLinkList() : TNodeLinkList() {}

    struct iterator {
        explicit iterator(TNodeLinkList::iterator iter) : base(iter) {}

        iterator& operator++() {
            ++base;
            return *this;
        }
        iterator& operator--() {
            --base;
            return *this;
        }
        iterator operator++(int) {
            const iterator old(*this);
            ++*this;
            return old;
        }
        iterator operator--(int) {
            const iterator old(*this);
            --*this;
            return old;
        }
        friend bool operator==(iterator a, iterator b) { return a.base == b.base; }
        friend bool operator!=(iterator a, iterator b) { return !(a == b); }

        T* operator->() const { return Element_toValue(base.operator->()); }
        T& operator*() const { return *operator->(); }

    public:
        /* 0x00 */ TNodeLinkList::iterator base;
    };

    struct const_iterator {
        explicit const_iterator(TNodeLinkList::const_iterator iter) : base(iter) {}
        explicit const_iterator(iterator iter) : base(iter.base) {}

        const_iterator& operator++() {
            ++base;
            return *this;
        }
        const_iterator& operator--() {
            --base;
            return *this;
        }
        const_iterator operator++(int) {
            const const_iterator old(*this);
            ++*this;
            return old;
        }
        const_iterator operator--(int) {
            const const_iterator old(*this);
            --*this;
            return old;
        }
        friend bool operator==(const_iterator a, const_iterator b) { return a.base == b.base; }
        friend bool operator!=(const_iterator a, const_iterator b) { return !(a == b); }

        const T* operator->() const { return Element_toValue(base.operator->()); }
        const T& operator*() const { return *operator->(); }

    public:
        /* 0x00 */ TNodeLinkList::const_iterator base;
    };

    static const TLinkListNode* Element_toNode(const T* element) {
        (void)element;  // Debug-only assert
        return reinterpret_cast<const TLinkListNode*>(reinterpret_cast<const char*>(element) - I);
    }
    static TLinkListNode* Element_toNode(T* element) {
        (void)element;  // Debug-only assert
        return reinterpret_cast<TLinkListNode*>(reinterpret_cast<char*>(element) - I);
    }
    static const T* Element_toValue(const TLinkListNode* node) {
        (void)node;  // Debug-only assert
        return reinterpret_cast<const T*>(reinterpret_cast<const char*>(node) + I);
    }
    static T* Element_toValue(TLinkListNode* node) {
        (void)node;  // Debug-only assert
        return reinterpret_cast<T*>(reinterpret_cast<char*>(node) + I);
    }

    iterator Insert(iterator iter, T* element) {
        return iterator(TNodeLinkList::Insert(iter.base, Element_toNode(element)));
    }
    iterator Erase(T* element) { return iterator(TNodeLinkList::Erase(Element_toNode(element))); }

    iterator begin() { return iterator(TNodeLinkList::begin()); }
    const_iterator begin() const { return const_iterator(const_cast<TLinkList*>(this)->begin()); }
    iterator end() { return iterator(TNodeLinkList::end()); }
    const_iterator end() const { return const_iterator(const_cast<TLinkList*>(this)->end()); }
    T& front() { return *begin(); }
    T& back() { return *--end(); }
    void Push_front(T* element) { Insert(begin(), element); }
    void Push_back(T* element) { Insert(end(), element); }
    iterator Find(const T* element) {
        return iterator(TNodeLinkList::Find(Element_toNode(element)));
    }
    void Remove(T* element) { TNodeLinkList::Remove(Element_toNode(element)); }
};

template <typename T, int I>
struct TLinkList_factory : public TLinkList<T, I> {
    virtual ~TLinkList_factory() {}
    virtual T* Do_create() = 0;
    virtual void Do_destroy(T*) = 0;
    void Clear_destroy() {
        while (!empty()) {
            T* item = &front();
            pop_front();
            Do_destroy(item);
        }
    }
};

template <typename T, int I>
struct TEnumerator {
    inline TEnumerator(typename TLinkList<T, I>::const_iterator _current,
                       typename TLinkList<T, I>::const_iterator _end)
        : current(_current), end(_end) {}

    bool isEnd() const { return current.node == end.node; }
    operator bool() const { return isEnd(); }
    T& operator*() {
        T& rv = (T&)*current;
        ++current;
        return rv;
    }

    TLinkList<T, I>::const_iterator current;
    TLinkList<T, I>::const_iterator end;
};

template <typename T, int I>
struct TContainerEnumerator_const : public TEnumerator<T, I> {
    inline TContainerEnumerator_const(const T* param_0)
        : TEnumerator<T, I>(param_0->begin(), param_0->end()) {}
};

};  // namespace JGadget

#endif /* LINKLIST_H */
