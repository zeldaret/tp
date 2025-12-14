#ifndef NW4HBM_UT_LINK_LIST_H
#define NW4HBM_UT_LINK_LIST_H

#include "global.h"

#include <revolution/types.h>

#include "inlines.h"

/* Range-for loop macros */

// Sort of like C++11's range for, except now it's a macro for nw4r iterators.
#define NW4HBM_RANGE_FOR(it_, list_)                                                               \
    for (decltype((list_).GetBeginIter())(it_) = (list_).GetBeginIter();                           \
         (it_) != (list_).GetEndIter(); ++(it_))

/* This macro specifically is for the for loops which declare an
 * Iterator currIt = it++; in the body, so that it does not get incremented
 * twice.
 */
#define NW4HBM_RANGE_FOR_NO_AUTO_INC(it_, list_)                                                   \
    for (decltype((list_).GetBeginIter())(it_) = (list_).GetBeginIter();                           \
         (it_) != (list_).GetEndIter();)

namespace nw4hbm {
    namespace ut {
        // forward declarations
        namespace detail {
            class LinkListImpl;
        }

        class LinkListNode : private NonCopyable {
            // methods
        public:
            // cdtors
            LinkListNode() : mNext(NULL), mPrev(NULL) {}

            /* ~LinkListNode() = default; */

            // methods
            LinkListNode* GetNext() const { return mNext; }

            // members
        private:
            /* base NonCopyable */  // EBO
            LinkListNode* mNext;    // size 0x04, offset 0x00
            LinkListNode* mPrev;    // size 0x04, offset 0x04

            // friends
        private:
            friend class detail::LinkListImpl;
        };  // size 0x08

        namespace detail {
            namespace dummy {
                class Iterator {};
            }  // namespace dummy

            class LinkListImpl : private NonCopyable {
                // nested types
            public:
                class Iterator : public dummy::Iterator {
                    // methods
                public:
                    // cdtors
                    Iterator(LinkListNode* p) : mPointer(p) {}

                    /* ~Iterator() = default; */

                    // operators
                    Iterator const& operator++() {
                        mPointer = mPointer->GetNext();

                        return *this;
                    }

                    LinkListNode* operator->() const { return mPointer; }

                    friend bool operator==(Iterator it1, Iterator it2) {
                        return it1.mPointer == it2.mPointer;
                    }

                    // members
                private:
                    /* base dummy::Iterator */  // EBO
                    LinkListNode* mPointer;     // size 0x04, offset 0x00

                    // friends
                private:
                    friend class LinkListImpl;
                };  // size 0x04

                // methods
            public:
                // cdtors
                LinkListImpl() { Initialize_(); }
                ~LinkListImpl();

                // methods
                Iterator GetBeginIter() { return mNode.GetNext(); }
                Iterator GetEndIter() { return &mNode; }
                bool IsEmpty() const { return mSize == 0; }

                Iterator Insert(Iterator it, LinkListNode* p);
                void PushFront(LinkListNode* p) { Insert(GetBeginIter(), p); }

                Iterator Erase(Iterator it);
                Iterator Erase(Iterator itFirst, Iterator itLast);
                Iterator Erase(LinkListNode* p);
                void Clear();

                void Reverse();

                // static methods
                static Iterator GetIteratorFromPointer(LinkListNode* p) { return p; }

            private:
                void Initialize_() {
                    mSize = 0;
                    mNode.mNext = &mNode;
                    mNode.mPrev = &mNode;
                }

                // members
            private:
                /* base NonCopyable */  // EBO
                u32 mSize;              // size 0x04, offset 0x00
                LinkListNode mNode;     // size 0x08, offset 0x04
            };  // size 0x0c
        }  // namespace detail

        /* assumed to be templated, since each LinkList::Iterator refers to a
         * different instance
         */
        namespace dummy {
            template <typename, int>
            class Iterator {};
        }  // namespace dummy

        template <typename T, int I>
        class LinkList : private detail::LinkListImpl {
            // nested types
        public:
            class Iterator : public dummy::Iterator<T, I> {
                // methods
            public:
                // cdtors
                Iterator(detail::LinkListImpl::Iterator it) : it_(it) {}

                /* ~Iterator() = default; */

                // operators
                Iterator const& operator++() {
                    it_.operator++();

                    return *this;
                }

                Iterator operator++(int) {
                    Iterator it = *this;

                    operator++();

                    return it;
                }

                T& operator*() const {
                    T* p = (*this).operator->();

                    return *p;
                }

                T* operator->() const { return GetPointerFromNode(it_.operator->()); }

                friend bool operator==(Iterator it1, Iterator it2) {
                    return operator==(it1.it_, it2.it_);
                }

                friend bool operator!=(Iterator it1, Iterator it2) { return !operator==(it1, it2); }

                // members
            private:
                /* base dummy::Iterator */           // EBO
                detail::LinkListImpl::Iterator it_;  // size 0x04, offset 0x00

                // friends
            private:
                friend class LinkList<T, I>;
            };  // size 0x04

            // methods
        public:
            // cdtors
            LinkList() {}
            /* ~LinkList() = default; */

            // methods
            Iterator GetBeginIter() { return LinkListImpl::GetBeginIter(); }
            Iterator GetEndIter() { return LinkListImpl::GetEndIter(); }

            Iterator Insert(Iterator it, T* p) {
                return LinkListImpl::Insert(it.it_, GetNodeFromPointer(p));
            }

            void PushBack(T* p) { Insert(GetEndIter(), p); }

            Iterator Erase(Iterator it) { return LinkListImpl::Erase(it.it_); }
            Iterator Erase(T* p) { return LinkListImpl::Erase(GetNodeFromPointer(p)); }

            // static methods
            static LinkListNode* GetNodeFromPointer(T* p) {
                return POINTER_ADD_TYPE(LinkListNode*, p, I);
            }

            static T* GetPointerFromNode(LinkListNode* p) { return POINTER_ADD_TYPE(T*, p, -I); }

            static Iterator GetIteratorFromPointer(T* p) {
                return GetIteratorFromPointer(GetNodeFromPointer(p));
            }

            static Iterator GetIteratorFromPointer(LinkListNode* p) {
                return LinkListImpl::GetIteratorFromPointer(p);
            }

            // members
        private:
            /* base LinkListImpl */  // size 0x0c, offset 0x00
        };  // size 0x0c
    }  // namespace ut
}  // namespace nw4hbm

#endif  // NW4HBM_UT_LINK_LIST_H
