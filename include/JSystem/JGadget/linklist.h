#ifndef JSYSTEM_JGADGET_LINKLIST_H
#define JSYSTEM_JGADGET_LINKLIST_H

#include "dolphin/types.h"

namespace JGadget {

struct TLinkListNode {
    TLinkListNode() : pNext_(NULL), pPrev_(NULL) {}

    TLinkListNode* getPrev() const { return pPrev_; }

    TLinkListNode* pNext_;
    TLinkListNode* pPrev_;
};

struct TNodeLinkList {
    struct iterator {
        iterator() {}
        iterator(TLinkListNode* p) { node = p; }

        TLinkListNode* node;
    };

    TNodeLinkList() { Initialize_(); }
    ~TNodeLinkList();

    void Initialize_() {
        iter.node = NULL;
        oNode_.pNext_ = &oNode_;
        oNode_.pPrev_ = &oNode_;
    }

    void Insert(iterator iter, TLinkListNode* node);

    iterator end() { return iterator(oNode_.pNext_); }

    iterator iter;
    TLinkListNode oNode_;
};

// Currently non matching, but its a rough idea
template <class T, int U, int V>
struct TLinkList : TNodeLinkList {
    TLinkListNode* Element_toNode(T* p) { return &static_cast<JStudio::stb::TObject*>(p)->mNode; }

    iterator end() { return ((TNodeLinkList*)this)->end(); }

    iterator Insert(iterator pIt, T* p) {
        ((TNodeLinkList*)this)->Insert(pIt, Element_toNode(p));
        return iterator(iter.node);
    }

    void Push_back(T* p) { Insert(end(), p); };
};

}  // namespace JGadget

#endif
