#include "include/JSystem/JKernel/JKRDvdFile/JKRDvdFile.h"
#include "global.h"


asm  JKRDvdFile::JKRDvdFile(void) {
    nofralloc
    #include "include/JSystem/JKernel/JKRDvdFile/asm/func_802D9584.s"
}

asm  JKRDvdFile::JKRDvdFile(char const *) {
    nofralloc
    #include "include/JSystem/JKernel/JKRDvdFile/asm/func_802D95F8.s"
}

asm  JKRDvdFile::JKRDvdFile(long) {
    nofralloc
    #include "include/JSystem/JKernel/JKRDvdFile/asm/func_802D96A0.s"
}

asm  JKRDvdFile::~JKRDvdFile() {
    nofralloc
    #include "include/JSystem/JKernel/JKRDvdFile/asm/func_802D9748.s"
}

asm void JKRDvdFile::initiate(void) {
    nofralloc
    #include "include/JSystem/JKernel/JKRDvdFile/asm/func_802D97E4.s"
}

asm void JKRDvdFile::open(char const *) {
    nofralloc
    #include "include/JSystem/JKernel/JKRDvdFile/asm/func_802D9850.s"
}

asm void JKRDvdFile::open(long) {
    nofralloc
    #include "include/JSystem/JKernel/JKRDvdFile/asm/func_802D98C4.s"
}

asm void JKRDvdFile::close(void) {
    nofralloc
    #include "include/JSystem/JKernel/JKRDvdFile/asm/func_802D9938.s"
}

asm void JKRDvdFile::readData(void *, long, long) {
    nofralloc
    #include "include/JSystem/JKernel/JKRDvdFile/asm/func_802D99B4.s"
}

asm void JKRDvdFile::writeData(void const *, long, long) {
    nofralloc
    #include "include/JSystem/JKernel/JKRDvdFile/asm/func_802D9A68.s"
}

asm void JKRDvdFile::sync(void) {
    nofralloc
    #include "include/JSystem/JKernel/JKRDvdFile/asm/func_802D9A70.s"
}

asm void JKRDvdFile::doneProcess(long, DVDFileInfo *) {
    nofralloc
    #include "include/JSystem/JKernel/JKRDvdFile/asm/func_802D9AC4.s"
}

asm void JKRDvdFile::getFileSize(void) const {
    nofralloc
    #include "include/JSystem/JKernel/JKRDvdFile/asm/func_802D9AF8.s"
}
