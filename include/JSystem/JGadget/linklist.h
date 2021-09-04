#ifndef LINKLIST_H
#define LINKLIST_H

#include "dolphin/types.h"

namespace JGadget {
struct TLinkListNode {
    TLinkListNode* mNext;
    TLinkListNode* mPrev;
};

struct TNodeLinkList {
    struct iterator {};

    /* 802DCA1C */ ~TNodeLinkList();
    /* 802DCAA0 */ void erase(JGadget::TNodeLinkList::iterator, JGadget::TNodeLinkList::iterator);
    /* 802DCA58 */ void erase(JGadget::TNodeLinkList::iterator);
    /* 802DCB08 */ void splice(JGadget::TNodeLinkList::iterator, JGadget::TNodeLinkList&,
                               JGadget::TNodeLinkList::iterator);
    /* 802DCBA8 */ void Insert(JGadget::TNodeLinkList::iterator, JGadget::TLinkListNode*);
    /* 802DCBD4 */ void Erase(JGadget::TLinkListNode*);
    /* 802DCBF8 */ void Remove(JGadget::TLinkListNode*);
};

};  // namespace JGadget

#endif /* LINKLIST_H */
