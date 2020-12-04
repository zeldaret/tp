#include "include/JSystem/JKernel/JKRFileFinder/JKRFileFinder.h"
#include "global.h"

asm  JKRArcFinder::JKRArcFinder(JKRArchive *, long, long) {
    nofralloc
    #include "include/JSystem/JKernel/JKRFileFinder/asm/func_802D4638.s"
}

asm bool JKRArcFinder::findNextFile(void) {
    nofralloc
    #include "include/JSystem/JKernel/JKRFileFinder/asm/func_802D46C4.s"
}

asm  JKRDvdFinder::JKRDvdFinder(char const *) {
    nofralloc
    #include "include/JSystem/JKernel/JKRFileFinder/asm/func_802D4770.s"
}

asm  JKRDvdFinder:: ~JKRDvdFinder() {
    nofralloc
    #include "include/JSystem/JKernel/JKRFileFinder/asm/func_802D47F4.s"
}

asm bool JKRDvdFinder::findNextFile(void) {
    nofralloc
    #include "include/JSystem/JKernel/JKRFileFinder/asm/func_802D4874.s"
}

asm  JKRFileFinder::~JKRFileFinder() {
    nofralloc
    #include "include/JSystem/JKernel/JKRFileFinder/asm/func_802D4910.s"
}

asm  JKRArcFinder::~JKRArcFinder() {
    nofralloc
    #include "include/JSystem/JKernel/JKRFileFinder/asm/func_802D4958.s"
}

