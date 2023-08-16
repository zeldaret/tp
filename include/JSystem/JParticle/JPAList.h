#ifndef JPALIST_H
#define JPALIST_H


template <class T>
struct JPANode {
    JPANode() {
        mpPrev = NULL;
        mpNext = NULL;
    }
    ~JPANode() {}
    JPANode<T>* mpPrev;
    JPANode<T>* mpNext;
    T mData;
};

template <class T>
struct JPAList {
    JPANode<T>* mpFirst;
    JPANode<T>* mpLast;
    u32 mNum;

    JPAList() : mpFirst(NULL), mpLast(NULL), mNum() {}

    JPANode<T>* getFirst() const { return mpFirst; }
    JPANode<T>* getLast() const { return mpLast; }
    u32 getNum() const { return mNum; }

    void push_front(JPANode<T>* node) {
        if (mpFirst != NULL) {
            node->mpPrev = NULL;
            node->mpNext = mpFirst;
            mpFirst->mpPrev = node;
            mpFirst = node;
        } else {
            mpLast = node;
            mpFirst = node;
            node->mpPrev = NULL;
            node->mpNext = NULL;
        }

        mNum++;
    }

    void push_back(JPANode<T>* node) {
        if (mpLast != NULL) {
            node->mpPrev = mpLast;
            node->mpNext = NULL;
            mpLast->mpNext = node;
            mpLast = node;
        } else {
            mpFirst = node;
            mpLast = node;
            node->mpPrev = NULL;
            node->mpNext = NULL;
        }

        mNum++;
    }

    JPANode<T>* pop_front() {
        JPANode<T>* ret = NULL;

        if (mNum == 1) {
            ret = mpFirst;
            mpLast = NULL;
            mpFirst = NULL;
            mNum--;
        } else if (mNum) {
            ret = mpFirst;
            ret->mpNext->mpPrev = NULL;
            mpFirst = ret->mpNext;
            mNum--;
        }

        return ret;
    }

    JPANode<T>* pop_back() {
        JPANode<T>* ret = NULL;

        if (mNum == 1) {
            ret = mpLast;
            mpLast = NULL;
            mpFirst = NULL;
            mNum--;
        } else if (mNum) {
            ret = mpLast;
            ret->mpPrev->mpNext = NULL;
            mpLast = ret->mpPrev;
            mNum--;
        }

        return ret;
    }
};

#endif