#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
#include "global.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"

// #include "JSystem/JKernel/asm/func_802D147C.s"
JKRDisposer::JKRDisposer() : mLink(this) {
    this->mHeap = JKRHeap::findFromRoot(this);
    if (this->mHeap) {
        this->mHeap->appendDisposer(this);
    }
}

// #include "JSystem/JKernel/JKRDisposer/asm/func_802D14E4.s"
JKRDisposer::~JKRDisposer() {
    JKRHeap* heap = this->mHeap;
    if (heap) {
        heap->removeDisposer(this);
    }
}
