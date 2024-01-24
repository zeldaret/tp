#include "JSystem/JKernel/JKRDisposer.h"
#include "JSystem/JKernel/JKRHeap.h"

/* 802D147C-802D14E4 2CBDBC 0068+00 0/0 12/12 0/0 .text            __ct__11JKRDisposerFv */
JKRDisposer::JKRDisposer() : mLink(this) {
    mHeap = JKRHeap::findFromRoot(this);
    if (mHeap) {
        mHeap->appendDisposer(this);
    }
}

/* 802D14E4-802D1568 2CBE24 0084+00 1/0 10/10 0/0 .text            __dt__11JKRDisposerFv */
JKRDisposer::~JKRDisposer() {
    JKRHeap* heap = mHeap;
    if (heap) {
        heap->removeDisposer(this);
    }
}
