#ifndef LINKLIST_H
#define LINKLIST_H

#include "dolphin/types.h"

namespace JGadget {
struct TLinkListNode {
    TLinkListNode() {
        mNext = NULL;
        mPrev = NULL;
    }

    TLinkListNode* mNext;
    TLinkListNode* mPrev;
};

struct TNodeLinkList {
    struct iterator {
        iterator(TLinkListNode* pNode) { node = pNode; }
        iterator(const iterator& iter) { *this = iter; }

        TLinkListNode* node;
    };

    TNodeLinkList() : mListNode() { Initialize_(); }
    void Initialize_() {
        ptr = NULL;
        mListNode.mNext = &mListNode;
        mListNode.mPrev = &mListNode;
    }

    iterator end() {
        iterator iter(&mListNode);
        return iter;
    }

    /* 802DCA1C */ ~TNodeLinkList();
    /* 802DCAA0 */ void erase(JGadget::TNodeLinkList::iterator, JGadget::TNodeLinkList::iterator);
    /* 802DCA58 */ void erase(JGadget::TNodeLinkList::iterator);
    /* 802DCB08 */ void splice(JGadget::TNodeLinkList::iterator, JGadget::TNodeLinkList&,
                               JGadget::TNodeLinkList::iterator);
    /* 802DCBA8 */ void Insert(JGadget::TNodeLinkList::iterator, JGadget::TLinkListNode*);
    /* 802DCBD4 */ void Erase(JGadget::TLinkListNode*);
    /* 802DCBF8 */ void Remove(JGadget::TLinkListNode*);

    /* 0x00 */ TNodeLinkList* ptr;
    /* 0x04 */ TLinkListNode mListNode;
};  // Size: 0xC

template <typename T, int I>
struct TLinkList : public TNodeLinkList {
    TLinkList() : TNodeLinkList() {}

    struct iterator : TNodeLinkList::iterator {
        iterator(TNodeLinkList::iterator iter) : TNodeLinkList::iterator(iter) {}
    };

    TLinkListNode* Element_toNode(T* element) const {
        return &element->mListNode;
    }
    
    void Insert(TLinkList::iterator iter, T* element) {
        TLinkListNode* node = Element_toNode(element);
        TNodeLinkList::Insert(iter, node);
    }

    TLinkList::iterator end() {
        TNodeLinkList::iterator node_iter = TNodeLinkList::end();
        TLinkList::iterator iter(node_iter);
        return iter;
    }

    void Push_back(T* element) {
        TLinkList::iterator iter(TLinkList::end());
        this->Insert(iter, element);
    }
};

};  // namespace JGadget

#endif /* LINKLIST_H */
