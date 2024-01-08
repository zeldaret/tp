#ifndef LINKLIST_H
#define LINKLIST_H

#include "dolphin/types.h"
#include "JSystem/JUtility/JUTAssert.h"

namespace JGadget {
struct TLinkListNode {
    TLinkListNode() {
        mNext = NULL;
        mPrev = NULL;
    }

    TLinkListNode* getNext() { return mNext; }

    /* 0x0 */ TLinkListNode* mNext;
    /* 0x4 */ TLinkListNode* mPrev;
};  // Size: 0x8

struct TNodeLinkList {
    struct iterator {
        iterator(TLinkListNode* pNode) { node = pNode; }
        iterator(const iterator& iter) { *this = iter; }
        iterator& operator++() {
            node = node->getNext();
            return *this; 
        }
        TLinkListNode* operator->() { return node; }

        TLinkListNode* node;
    };

    struct const_iterator {
        const_iterator(TLinkListNode* pNode) { node = pNode; }
        const_iterator(const const_iterator& iter) { *this = iter; }
        const_iterator(iterator iter) { *this = iter; }
        TLinkListNode* operator->() const { return node; }
        const_iterator& operator++() {
            node = node->getNext();
            return *this; 
        }

        TLinkListNode* node;
    };

    TNodeLinkList() : ocObject_() { Initialize_(); }

    void Initialize_() {
        count = 0;
        ocObject_.mNext = &ocObject_;
        ocObject_.mPrev = &ocObject_;
    }

    iterator end() {
        iterator iter(&ocObject_);
        return iter;
    }

    iterator begin() {
        return iterator(ocObject_.getNext());
    }

    u32 size() { return count; }
    bool empty() { return size() == 0; }
    iterator pop_front() { 
        return erase(begin()); 
    }

    /* 802DCA1C */ ~TNodeLinkList();
    /* 802DCAA0 */ iterator erase(JGadget::TNodeLinkList::iterator, JGadget::TNodeLinkList::iterator);
    /* 802DCA58 */ iterator erase(JGadget::TNodeLinkList::iterator);
    /* 802DCB08 */ void splice(JGadget::TNodeLinkList::iterator, JGadget::TNodeLinkList&,
                               JGadget::TNodeLinkList::iterator);
    /* 802DCBA8 */ iterator Insert(JGadget::TNodeLinkList::iterator, JGadget::TLinkListNode*);
    /* 802DCBD4 */ iterator Erase(JGadget::TLinkListNode*);
    /* 802DCBF8 */ void Remove(JGadget::TLinkListNode*);

    /* 0x00 */ int count;
    /* 0x04 */ TLinkListNode ocObject_;
};  // Size: 0xC

template <typename T, int I>
struct TLinkList : public TNodeLinkList {
    TLinkList() : TNodeLinkList() {}

    struct iterator : TNodeLinkList::iterator {
        iterator(TNodeLinkList::iterator iter) : TNodeLinkList::iterator(iter) {}
        T& operator*() { return *operator->(); }
        T* operator->() {
            TLinkListNode* node = TNodeLinkList::iterator::operator->();
            JUT_ASSERT(541, node != 0);
            return Element_toValue(node);
        }
    };

    struct const_iterator : TNodeLinkList::const_iterator {
        const_iterator(TNodeLinkList::const_iterator iter) : TNodeLinkList::const_iterator(iter) {}
        const_iterator(iterator iter) : TNodeLinkList::const_iterator(iter) {}
        const T* operator->() const {
            return Element_toValue(TNodeLinkList::const_iterator::operator->());
        }
        const T& operator*() const { return *operator->(); }
        const_iterator& operator++() {
            TNodeLinkList::const_iterator::operator++();
            return *this;
        }
    };

    TLinkListNode* Element_toNode(T* element) const { return &element->ocObject_; }
    static T* Element_toValue(TLinkListNode* node) { return (T*)node; }

    iterator Insert(TLinkList::iterator iter, T* element) {
        TLinkListNode* node = Element_toNode(element);
        return TNodeLinkList::Insert(iter, node);
    }

    iterator Erase(T* element) {
        TLinkListNode* node = Element_toNode(element);
        return ((TNodeLinkList*)this)->Erase(node);
    }

    TLinkList::iterator end() {
        TNodeLinkList::iterator node_iter = TNodeLinkList::end();
        TLinkList::iterator iter(node_iter);
        return iter;
    }

    TLinkList::const_iterator end() const {
        return TLinkList::const_iterator(((TLinkList*)this)->end());
    }

    TLinkList::iterator begin() {
        return iterator(TNodeLinkList::begin());
    }

    TLinkList::const_iterator begin() const {
        return TLinkList::const_iterator(((TLinkList*)this)->begin());
    }

    void Push_back(T* element) {
        TLinkList::iterator iter(TLinkList::end());
        this->Insert(iter, element);
    }

    T& front() {
        JUT_ASSERT(642, !empty());
        return *begin();
    }
};

template<typename T, int I>
bool operator==(const typename TLinkList<T, I>::const_iterator iter1, const typename TLinkList<T, I>::const_iterator iter2) {
    return iter1->node == iter2->node;
}

template<typename T, int I>
bool operator!=(const typename TLinkList<T, I>::const_iterator iter1, const typename TLinkList<T, I>::const_iterator iter2) {
    return !(iter1 == iter2);
}

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
    inline TEnumerator(typename TLinkList<T,I>::const_iterator _current, typename TLinkList<T,I>::const_iterator _end) :
        current(_current), end(_end)
    {}

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
    inline TContainerEnumerator_const(const T* param_0) : TEnumerator<T,I>(param_0->begin(), param_0->end())
    {}
};

};  // namespace JGadget

#endif /* LINKLIST_H */
