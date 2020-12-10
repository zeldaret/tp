
#include "f/f_pc/f_pc_create_req.h"

#include "SComponent/c_phase.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_create_iter.h"
#include "f/f_pc/f_pc_deletor.h"
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_method.h"

extern "C" {

bool fpcCtRq_isCreatingByID(create_tag* pTag, int* pId) {
    create_request* pReq = (create_request*)(pTag->mpTagData);
    return pReq->mBsPcId == *pId;
}

bool fpcCtRq_IsCreatingByID(unsigned int id) {
    return fpcCtIt_Judge((cNdIt_JudgeFunc)fpcCtRq_isCreatingByID, &id) != NULL;
}

void fpcCtRq_CreateQTo(create_request* pReq) {
    fpcCtTg_CreateQTo(pReq);
    fpcLy_CreatedMesg(pReq->mpLayer);
    fpcLy_CancelQTo(&pReq->mMtdTg);
}

void fpcCtRq_ToCreateQ(create_request* pReq) {
    fpcLy_CreatingMesg(pReq->mpLayer);
    fpcLy_ToCancelQ(pReq->mpLayer, &pReq->mMtdTg);
    fpcCtTg_ToCreateQ(pReq);
}

extern void cMl_NS_free(void* pPtr);

#if NON_MATCHING
bool fpcCtRq_Delete(create_request* pReq) {
    fpcCtRq_CreateQTo(pReq);
    if (pReq->mpCtRqMtd != NULL) {
        // flow control
        if (fpcMtd_Method(pReq->mpCtRqMtd->mpDelete, pReq) == 0)
            return 0;

        if (pReq->mpRes)
            pReq->mpRes->mpCtRq = NULL;
        cMl_NS_free(pReq);
        return 1;
    }

    return 0;
}
#else
// clang-format off
asm bool fpcCtRq_Delete(create_request* pReq) {
    nofralloc
/* 80020BA0 0001DAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020BA4 0001DAE4  7C 08 02 A6 */	mflr r0
/* 80020BA8 0001DAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020BAC 0001DAEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80020BB0 0001DAF0  7C 7F 1B 78 */	mr r31, r3
/* 80020BB4 0001DAF4  4B FF FF 6D */	bl fpcCtRq_CreateQTo
/* 80020BB8 0001DAF8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80020BBC 0001DAFC  28 03 00 00 */	cmplwi r3, 0
/* 80020BC0 0001DB00  41 82 00 20 */	beq lbl_80020BE0
/* 80020BC4 0001DB04  80 63 00 08 */	lwz r3, 8(r3)
/* 80020BC8 0001DB08  7F E4 FB 78 */	mr r4, r31
/* 80020BCC 0001DB0C  48 00 18 5D */	bl fpcMtd_Method
/* 80020BD0 0001DB10  2C 03 00 00 */	cmpwi r3, 0
/* 80020BD4 0001DB14  40 82 00 0C */	bne lbl_80020BE0
/* 80020BD8 0001DB18  38 60 00 00 */	li r3, 0
/* 80020BDC 0001DB1C  48 00 00 24 */	b lbl_80020C00
lbl_80020BE0:
/* 80020BE0 0001DB20  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80020BE4 0001DB24  28 03 00 00 */	cmplwi r3, 0
/* 80020BE8 0001DB28  41 82 00 0C */	beq lbl_80020BF4
/* 80020BEC 0001DB2C  38 00 00 00 */	li r0, 0
/* 80020BF0 0001DB30  90 03 00 14 */	stw r0, 0x14(r3)
lbl_80020BF4:
/* 80020BF4 0001DB34  7F E3 FB 78 */	mr r3, r31
/* 80020BF8 0001DB38  48 24 26 69 */	bl cMl_NS_free
/* 80020BFC 0001DB3C  38 60 00 01 */	li r3, 1
lbl_80020C00:
/* 80020C00 0001DB40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80020C04 0001DB44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020C08 0001DB48  7C 08 03 A6 */	mtlr r0
/* 80020C0C 0001DB4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80020C10 0001DB50  4E 80 00 20 */	blr 
}
// clang-format on
#endif

bool fpcCtRq_Cancel(create_request* pReq) {
    if (pReq != NULL && !pReq->mbIsCancelling) {
        pReq->mbIsCancelling = true;
        base_process_class* pProc = pReq->mpRes;

        if (pProc != NULL && !fpcDt_Delete(pProc))
            return false;

        if (pReq->mpCtRqMtd != NULL && !fpcMtd_Method(pReq->mpCtRqMtd->mpCancel, pReq))
            return false;

        return fpcCtRq_Delete(pReq);
    } else {
        return true;
    }
}

int fpcCtRq_IsDoing(create_request* pReq) {
    if (pReq != NULL)
        return pReq->mbIsCreating;
    else
        return false;
}

static bool fpcCtRq_Do(create_request* pReq) {
    int ret = cPhs_COMPLEATE_e;

    if (pReq->mpCtRqMtd != NULL) {
        cPhs__Handler pHandler = pReq->mpCtRqMtd->mpHandler;
        if (pHandler != NULL) {
            pReq->mbIsCreating = true;
            ret = pHandler(pReq);
            pReq->mbIsCreating = false;
        }
    }

    switch (ret) {
    case cPhs_COMPLEATE_e: {
        int success = fpcEx_ToExecuteQ(pReq->mpRes);
        if (success == 0)
            return fpcCtRq_Cancel(pReq);
        else
            return fpcCtRq_Delete(pReq);
    }
    case 3:
    case cPhs_ERROR_e:
        return fpcCtRq_Cancel(pReq);
    }

    return 1;
}

void fpcCtRq_Handler(void) {
    fpcCtIt_Method((cNdIt_MethodFunc)fpcCtRq_Do, NULL);
}

extern void* cMl_NS_memalignB(int, unsigned long);
extern int fpcBs_MakeOfId(void);

create_request* fpcCtRq_Create(layer_class* pLayer, unsigned long size,
                               create_request_method_class* pMthd) {
    create_request* pReq = (create_request*)cMl_NS_memalignB(-4, size);

    if (pReq != NULL) {
        fpcCtTg_Init(pReq, pReq);
        fpcMtdTg_Init(&pReq->mMtdTg, (process_method_tag_func)fpcCtRq_Cancel, pReq);
        pReq->mpLayer = pLayer;
        pReq->mpCtRqMtd = pMthd;
        pReq->mBsPcId = fpcBs_MakeOfId();
        pReq->mpRes = NULL;
        pReq->mbIsCancelling = false;
        fpcCtRq_ToCreateQ(pReq);
    }

    return pReq;
}
};
