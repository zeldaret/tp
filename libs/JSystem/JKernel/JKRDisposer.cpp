#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"

JKRDisposer::JKRDisposer() : mLink(this) {
    mHeap = JKRHeap::findFromRoot(this);
    if (mHeap) {
        mHeap->appendDisposer(this);
    }
}

JKRDisposer::~JKRDisposer() {
    JKRHeap* heap = mHeap;
    if (heap) {
        heap->removeDisposer(this);
    }
}
