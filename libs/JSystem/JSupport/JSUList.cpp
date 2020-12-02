#include "JSystem/JSupport/JSUList/JSUList.h"
#include "global.h"

// #include "JSupport/asm/func_802DBDFC.s"
JSUPtrLink::JSUPtrLink(void* owner) {
    this->list = NULL;
    this->owner = owner;
    this->prev = NULL;
    this->next = NULL;
}

// #include "JSupport/asm/func_802DBE14.s"
JSUPtrLink::~JSUPtrLink() {
    if (this->list != NULL) {
        this->list->remove(this);
    }
}

//
//
//

// #include "JSupport/asm/func_802DBE74.s"
JSUPtrList::JSUPtrList(bool should_initiate) {
    if (should_initiate != false) {
        this->initiate();
    }
}

// #include "JSupport/asm/func_802DBEAC.s"
JSUPtrList::~JSUPtrList() {
    JSUPtrLink* node = this->head;
    s32 removed      = 0;
    while (this->length > removed) {
        node->list = NULL;
        node       = node->next;
        removed += 1;
    }
}

// #include "JSupport/asm/func_802DBF14.s"
void JSUPtrList::initiate() {
    this->head   = NULL;
    this->tail   = NULL;
    this->length = 0;
}

// #include "JSupport/asm/func_802DBF28.s"
void JSUPtrList::setFirst(JSUPtrLink* first) {
    first->list  = this;
    first->prev  = NULL;
    first->next  = NULL;
    this->tail   = first;
    this->head   = first;
    this->length = 1;
}

// #include "JSupport/asm/func_802DBF4C.s"
bool JSUPtrList::append(JSUPtrLink* ptr) {
    JSUPtrList* list = ptr->list;
    bool result = (NULL == list);
    if (!result) {
        result = list->remove(ptr);
    }

    if (result) { 
        if (this->length == 0) {
            this->setFirst(ptr);
        } else {
            ptr->list        = this;
            ptr->prev        = this->tail;
            ptr->next        = NULL;
            this->tail->next = ptr;
            this->tail       = ptr;
            this->length++;
        } 
    }

    return result;
}

// #include "JSupport/asm/func_802DBFF0.s"
bool JSUPtrList::prepend(JSUPtrLink* ptr) {
    JSUPtrList* list = ptr->list;
    bool result = (NULL == list);
    if (!result) {
        result = list->remove(ptr);
    }

    if (result) { 
        if (this->length == 0) {
            this->setFirst(ptr);
        } else {
            ptr->list = this;
            ptr->prev = (JSUPtrLink*)NULL;
            ptr->next = this->head;
            this->head->prev = ptr;
            this->head = ptr;
            this->length++;
        } 
    }

    return result;
}

// #include "JSupport/asm/func_802DC094.s"
bool JSUPtrList::insert(JSUPtrLink* before, JSUPtrLink* ptr) {
    if (before == this->head) {
         return this->prepend(ptr);
    } else if (before == NULL) {
        return this->append(ptr);
    }
    
    if (before->list != this) {
        return false;
    }
    
    bool result = (NULL == ptr->list);
    if (!result) {
        result = ptr->list->remove(ptr);
    }

    if (result) {
        JSUPtrLink* prev = before->prev;
        ptr->list = this;
        ptr->prev = prev;
        ptr->next = before;
        prev->next = ptr;
        before->prev = ptr;
        this->length++;
    }

    return result;
}

// #include "JSupport/asm/func_802DC15C.s"
bool JSUPtrList::remove(JSUPtrLink* ptr) {
    bool is_parent = (ptr->list == this);
    if (is_parent) {
        if (this->length == 1) {
            this->head = NULL;
            this->tail = NULL;
        } else if (ptr == this->head) {
            ptr->next->prev = NULL;
            this->head      = ptr->next;
        } else if (ptr == this->tail) {
            ptr->prev->next = NULL;
            this->tail      = ptr->prev;
        } else {
            ptr->prev->next = ptr->next;
            ptr->next->prev = ptr->prev;
        }

        ptr->list = NULL;
        this->length--;
    }

    return is_parent;
}

// #include "JSupport/asm/func_802DC20C.s"
JSUPtrLink* JSUPtrList::getNthLink(u32 index) const {
    if (index >= this->length) {
        return NULL;
    }

    JSUPtrLink* node = this->head;
    for(u32 i = 0; i < index; i++) {
        node = node->next;
    }

    return node;
}

