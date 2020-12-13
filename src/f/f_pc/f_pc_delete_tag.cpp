
#include "global.h"
#include "f/f_pc/f_pc_delete_tag.h"

// g_fpcDtTg_Queue
extern node_list_class lbl_803A39A0;

extern "C" {

bool fpcDtTg_IsEmpty(void)
{
    return lbl_803A39A0.mSize == 0;
}

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
