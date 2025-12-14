#include "LinkList.h"

#include <revolution/types.h>

namespace nw4hbm {
    namespace ut {
        namespace detail {

            LinkListImpl::~LinkListImpl() {
                Clear();
            }

            LinkListImpl::Iterator LinkListImpl::Erase(Iterator it) {
                Iterator itNext(it);

                itNext.operator++();

                return Erase(it, itNext);
            }

            LinkListImpl::Iterator LinkListImpl::Erase(Iterator itFirst, Iterator itLast) {
                LinkListNode *pIt = itFirst.mPointer, *pItLast = itLast.mPointer, *pNext;

                while (pIt != pItLast) {
                    pNext = pIt->mNext;
                    Erase(pIt);
                    pIt = pNext;
                }

                return itLast;
            }

            void LinkListImpl::Clear() {
                Erase(GetBeginIter(), GetEndIter());
            }

            void LinkListImpl::Reverse() {
                if (IsEmpty())
                    return;

                LinkListNode *p = mNode.mNext, *pNext;

                for (Initialize_(); p != &mNode; p = pNext) {
                    pNext = p->mNext;

                    p->mNext = NULL;
                    p->mPrev = NULL;

                    PushFront(p);
                }
            }

            LinkListImpl::Iterator LinkListImpl::Insert(Iterator it, LinkListNode* p) {
                LinkListNode* pIt = it.mPointer;

                LinkListNode* pItPrev = pIt->mPrev;

                p->mNext = pIt;
                p->mPrev = pItPrev;

                pIt->mPrev = p;
                pItPrev->mNext = p;

                ++mSize;

                return p;
            }

            LinkListImpl::Iterator LinkListImpl::Erase(LinkListNode* p) {
                LinkListNode *pNext = p->mNext, *pPrev = p->mPrev;

                pNext->mPrev = pPrev;
                pPrev->mNext = pNext;

                --mSize;

                p->mNext = NULL;
                p->mPrev = NULL;

                return pNext;
            }

        }  // namespace detail
    }  // namespace ut
}  // namespace nw4hbm
