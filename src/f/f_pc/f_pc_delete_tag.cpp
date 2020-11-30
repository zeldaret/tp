
#include "global.h"
#include "f/f_pc/f_pc_delete_tag.h"

// g_fpcDtTg_Queue
extern node_list_class lbl_803A39A0;

extern "C" {

#if NON_MATCHING
int fpcDtTg_IsEmpty(delete_tag_class *pTag)
{
    return lbl_803A39A0.mSize == 0;
}
#else
asm int fpcDtTg_IsEmpty(delete_tag_class *pTag)
{
    nofralloc
/* 80020F30 0001DE70  3C 60 80 3A */	lis r3, lbl_803A39A0@ha
/* 80020F34 0001DE74  38 63 39 A0 */	addi r3, r3, lbl_803A39A0@l
/* 80020F38 0001DE78  80 03 00 08 */	lwz r0, 8(r3)
/* 80020F3C 0001DE7C  7C 00 00 34 */	cntlzw r0, r0
/* 80020F40 0001DE80  54 03 D9 7E */	srwi r3, r0, 5
/* 80020F44 0001DE84  4E 80 00 20 */	blr 
}
#endif

void fpcDtTg_ToDeleteQ(delete_tag_class *pTag)
{
    pTag->mTimer = 1;
    cTg_Addition(&lbl_803A39A0, pTag);
}

void fpcDtTg_DeleteQTo(delete_tag_class *pTag)
{
    cTg_SingleCut(pTag);
}

int fpcDtTg_Do(delete_tag_class *pTag, delete_tag_func pFunc)
{
    if (pTag->mTimer <= 0) {
        fpcDtTg_DeleteQTo(pTag);
        int ret = pFunc(pTag->mpTagData);
        if (ret == 0) {
            fpcDtTg_ToDeleteQ(pTag);
            return 0;
        } else {
            return 1;
        }
    } else {
        pTag->mTimer--;
        return 0;
    }
}

int fpcDtTg_Init(delete_tag_class *pTag, void *pUserData)
{
    cTg_Create(pTag, pUserData);
    return 1;
}

};
