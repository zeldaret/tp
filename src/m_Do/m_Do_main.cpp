#include "m_Do/m_Do_main/m_Do_main.h"
#include "global.h"

void version_check(void) {  
  if ((!strcmp((char*)lbl_803739A0,(char*)lbl_803739A0)) && (!strcmp(((char*)lbl_803739A0+0xA),((char*)lbl_803739A0+0xA)))) {
      return;
  }

  OSReport_Error((char*)lbl_803739A0+0x11);
  do {

  } while( true );
}

void HeapCheck::CheckHeap1(void) {
    s32 totalUsedSize = this->heap->getTotalUsedSize();
    s32 freeSize = ((JKRHeap*)this->heap)->getFreeSize();

    if (this->max_total_used_size < totalUsedSize) {
        this->max_total_used_size = totalUsedSize;
    }

    if (this->max_total_free_size > freeSize) {
        this->max_total_free_size = freeSize;
    }
}

extern "C" {
    int strcmp(char*,char*);
    void OSReport_Error(char *format,...);
    void mDoMch_HeapCheckAll(void);
    void OSCheckActiveThreads(void);
    // s32 getTotalUsedSize(JKRExpHeap*);
    // s32 getFreeSize(JKRExpHeap*);
}


#ifdef NONMATCHING
extern u8 lbl_803A2EF4[0x4c];
extern u8 lbl_803DD2E8[0x100];

void CheapHeap(u32 param_1) {
    
    HeapCheck* currentHeap;
    s32 unk;

    mDoMch_HeapCheckAll();
    OSCheckActiveThreads();

    unk = 0;

    if ((((lbl_803DD2E8+0x30)[param_1 * 0x10] & 0xffffffef) == 0x60) && (((lbl_803DD2E8+0x30)[param_1 * 0x10] & 0x10) != 0)) {
        unk = 1;
    }

    for (int i = 0; i < 8; i++) {
        ((HeapCheck*)lbl_803A2EF4[i])->CheckHeap1(); 

        if (unk) {
             currentHeap = (HeapCheck*)lbl_803A2EF4[i*4];
            s32 current_used_count = currentHeap->getUsedCount();
            currentHeap->used_count = current_used_count;
            s32 current_total_used_size = currentHeap->heap->getTotalUsedSize();
            currentHeap->total_used_size = current_total_used_size;
        }
    }
}
#else
asm void CheckHeap(u32 param_1) {
    nofralloc
    #include "m_Do/m_Do_main/asm/func_8000578C.s"
}
#endif

asm int countUsed(JKRExpHeap *heap) {
    nofralloc
    #include "m_Do/m_Do_main/asm/func_80005848.s"
}

s32 HeapCheck::getUsedCount(void) const {
    return countUsed(this->heap);
}