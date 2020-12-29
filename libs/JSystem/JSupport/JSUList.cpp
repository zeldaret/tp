#include "JSystem/JSupport/JSUList/JSUList.h"
#include "global.h"

// #include "JSupport/asm/func_802DBDFC.s"
JSUPtrLink::JSUPtrLink(void* object) {
    this->mList = NULL;
    this->mObject = object;
    this->mPrev = NULL;
    this->mNext = NULL;
}

// #include "JSupport/asm/func_802DBE14.s"
JSUPtrLink::~JSUPtrLink() {
    if (this->mList != NULL) {
        this->mList->remove(this);
    }
}

//
//
//

// #include "JSupport/asm/func_802DBE74.s"
JSUPtrList::JSUPtrList(bool init) {
    if (init) {
        this->initiate();
    }
}

// #include "JSupport/asm/func_802DBEAC.s"
JSUPtrList::~JSUPtrList() {
    JSUPtrLink* node = this->mHead;
    s32 removed = 0;
    while (this->mLength > removed) {
        node->mList = NULL;
        node = node->getNext();
        removed += 1;
    }
}

// #include "JSupport/asm/func_802DBF14.s"
void JSUPtrList::initiate() {
    this->mHead = NULL;
    this->mTail = NULL;
    this->mLength = 0;
}

// #include "JSupport/asm/func_802DBF28.s"
void JSUPtrList::setFirst(JSUPtrLink* first) {
    first->mList = this;
    first->mPrev = NULL;
    first->mNext = NULL;
    this->mTail = first;
    this->mHead = first;
    this->mLength = 1;
}

// #include "JSupport/asm/func_802DBF4C.s"
bool JSUPtrList::append(JSUPtrLink* ptr) {
    JSUPtrList* list = ptr->mList;
    bool result = (NULL == list);
    if (!result) {
        result = list->remove(ptr);
    }

    if (result) {
        if (this->mLength == 0) {
            this->setFirst(ptr);
        } else {
            ptr->mList = this;
            ptr->mPrev = this->mTail;
            ptr->mNext = NULL;
            this->mTail->mNext = ptr;
            this->mTail = ptr;
            this->mLength++;
        }
    }

    return result;
}

// #include "JSupport/asm/func_802DBFF0.s"
bool JSUPtrList::prepend(JSUPtrLink* ptr) {
    JSUPtrList* list = ptr->mList;
    bool result = (NULL == list);
    if (!result) {
        result = list->remove(ptr);
    }

    if (result) {
        if (this->mLength == 0) {
            this->setFirst(ptr);
        } else {
            ptr->mList = this;
            ptr->mPrev = NULL;
            ptr->mNext = this->mHead;
            this->mHead->mPrev = ptr;
            this->mHead = ptr;
            this->mLength++;
        }
    }

    return result;
}

// #include "JSupport/asm/func_802DC094.s"
bool JSUPtrList::insert(JSUPtrLink* before, JSUPtrLink* ptr) {
    if (before == this->mHead) {
        return this->prepend(ptr);
    } else if (before == NULL) {
        return this->append(ptr);
    }

    if (before->mList != this) {
        return false;
    }

    bool result = (NULL == ptr->mList);
    if (!result) {
        result = ptr->mList->remove(ptr);
    }

    if (result) {
        JSUPtrLink* prev = before->mPrev;
        ptr->mList = this;
        ptr->mPrev = prev;
        ptr->mNext = before;
        prev->mNext = ptr;
        before->mPrev = ptr;
        this->mLength++;
    }

    return result;
}

// #include "JSupport/asm/func_802DC15C.s"
bool JSUPtrList::remove(JSUPtrLink* ptr) {
    bool is_parent = (ptr->mList == this);
    if (is_parent) {
        if (this->mLength == 1) {
            this->mHead = NULL;
            this->mTail = NULL;
        } else if (ptr == this->mHead) {
            ptr->mNext->mPrev = NULL;
            this->mHead = ptr->mNext;
        } else if (ptr == this->mTail) {
            ptr->mPrev->mNext = NULL;
            this->mTail = ptr->mPrev;
        } else {
            ptr->mPrev->mNext = ptr->mNext;
            ptr->mNext->mPrev = ptr->mPrev;
        }

        ptr->mList = NULL;
        this->mLength--;
    }

    return is_parent;
}

// #include "JSupport/asm/func_802DC20C.s"
JSUPtrLink* JSUPtrList::getNthLink(u32 index) const {
    if (index >= this->mLength) {
        return NULL;
    }

    JSUPtrLink* node = this->mHead;
    for (u32 i = 0; i < index; i++) {
        node = node->getNext();
    }

    return node;
}
