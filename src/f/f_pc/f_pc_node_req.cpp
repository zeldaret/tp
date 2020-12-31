#include "f/f_pc/f_pc_node_req.h"
#include "dolphin/types.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_create_req.h"
#include "f/f_pc/f_pc_creator.h"
#include "f/f_pc/f_pc_deletor.h"
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_layer.h"

// f_pc_node_req::l_fpcNdRq_Queue
extern node_list_class lbl_803A3A38;
// f_pc_node_req::clear$2359
extern node_create_request lbl_803A3A44;
// f_pc_node_req::methods$2376
extern cPhs__Handler lbl_803A3AA8[6];
// f_pc_node_req::methods$2386
extern cPhs__Handler lbl_803A3AC0[4];
// f_pc_node_req::methods$2397
extern cPhs__Handler lbl_803A3AD0[4];
// f_pc_node_req::request_id$2360
extern s32 lbl_80450D48;
extern s8 lbl_80450D4C;

extern "C" {

extern void cMl_NS_free(void*);
extern s32 fpcSCtRq_Request(layer_class*, s16, process_method_func, void*, void*);
extern void sBs_ClearArea(void* pPtr, s32 pSize);
extern void* cMl_NS_memalignB(s32 pAlign, s32 pSize);

void fpcNdRq_RequestQTo(node_create_request* pNodeCreateReq) {
    fpcLy_CreatedMesg(pNodeCreateReq->mpLayerClass);
    fpcLy_CancelQTo(&pNodeCreateReq->mProcMthCls);
    cTg_SingleCut(&pNodeCreateReq->mCreateTag);
}

void fpcNdRq_ToRequestQ(node_create_request* pNodeCreateReq) {
    cTg_Addition(&lbl_803A3A38, &pNodeCreateReq->mCreateTag);
    fpcLy_ToCancelQ(pNodeCreateReq->mpLayerClass, &pNodeCreateReq->mProcMthCls);
    fpcLy_CreatingMesg(pNodeCreateReq->mpLayerClass);
}

s32 fpcNdRq_phase_IsCreated(node_create_request* pNodeCreateReq) {
    if (fpcCtRq_IsCreatingByID(pNodeCreateReq->mCreatingID) == TRUE) {
        return cPhs_ZERO_e;
    } else {
        return fpcEx_IsExist(pNodeCreateReq->mCreatingID) == TRUE ? 2 : 3;
    }
}

s32 fpcNdRq_phase_Create(node_create_request* pNodeCreateReq) {
    pNodeCreateReq->mCreatingID =
        fpcSCtRq_Request(pNodeCreateReq->mpLayerClass, pNodeCreateReq->mProcName,
                         pNodeCreateReq->mpNodeCrReqMthCls->mpPostMethodFunc, pNodeCreateReq,
                         pNodeCreateReq->mpUserData);
    return pNodeCreateReq->mCreatingID == -1 ? 3 : 2;
}

s32 fpcNdRq_phase_IsDeleteTiming(node_create_request* pNodeCreateReq) {
    return 2;
}

s32 fpcNdRq_phase_IsDeleted(node_create_request* pNodeCreateReq) {
    return fpcDt_IsComplete() == 0 ? cPhs_ZERO_e : 2;
}

s32 fpcNdRq_phase_Delete(node_create_request* pNodeCreateReq) {
    if (pNodeCreateReq->mNodeProc.mpNodeProc != NULL) {
        if (fpcDt_Delete(&pNodeCreateReq->mNodeProc.mpNodeProc->mBase) == 0) {
            return cPhs_ZERO_e;
        }
        pNodeCreateReq->mNodeProc.mpNodeProc = NULL;
    }
    return 2;
}

s32 fpcNdRq_DoPhase(node_create_request* pNodeCreateReq) {
    s32 result =
        cPhs_Handler(&pNodeCreateReq->mReqPhsProc, pNodeCreateReq->mpPhsHandler, pNodeCreateReq);
    if (result == 0x2) {
        return fpcNdRq_DoPhase(pNodeCreateReq);
    }
    return result;
}

s32 fpcNdRq_Execute(node_create_request* pNodeCreateReq) {
    s32 result = fpcNdRq_DoPhase(pNodeCreateReq);
    switch (result) {
    case 0:
    case 1:
        return 0;
    case 4:
        return 2;
    case 5:
    case 3:
        return 3;
    default:
        return result;
    }
}

s32 fpcNdRq_Delete(node_create_request* pNodeCreateReq) {
    fpcNdRq_RequestQTo(pNodeCreateReq);
    if (pNodeCreateReq->mpNodeCrReqMthCls != NULL &&
        pNodeCreateReq->mpNodeCrReqMthCls->mpUnkFunc != NULL &&
        fpcMtd_Method(pNodeCreateReq->mpNodeCrReqMthCls->mpUnkFunc, pNodeCreateReq) == 0) {
        return 0;
    }
    cMl_NS_free(pNodeCreateReq);
    return 1;
}

s32 fpcNdRq_Cancel(node_create_request* pNodeCreateReq) {
    if (pNodeCreateReq->mpNodeCrReqMthCls != NULL &&
        fpcMtd_Method(pNodeCreateReq->mpNodeCrReqMthCls->mpCancelFunc, pNodeCreateReq) == 0) {
        return 0;
    }
    return fpcNdRq_Delete(pNodeCreateReq);
}

#define NODE_GET_NEXT(pNode) (pNode ? pNode->mpNextNode : NULL)
s32 fpcNdRq_Handler(void) {
    node_class* currentNode = lbl_803A3A38.mpHead;
    while (currentNode != NULL) {
        node_create_request* req = ((request_node_class*)currentNode)->mNodeCrReq;
        switch (req->mpNodeCrReqMthCls->mpExecuteFunc(req)) {
        case 3:
        case 5:
            currentNode = NODE_GET_NEXT(currentNode);
            if (fpcNdRq_Cancel(req) == 0) {
                return 0;
            }
            break;
        case 4:
            currentNode = NODE_GET_NEXT(currentNode);
            if (fpcNdRq_Delete(req) == 0) {
                return 0;
            }
            break;
        default:
            currentNode = NODE_GET_NEXT(currentNode);
            break;
        }
    }
    return 1;
}

s32 fpcNdRq_IsPossibleTarget(process_node_class* pProcNode) {
    s32 bsPcId = pProcNode->mBase.mBsPcId;
    request_node_class* currentNode;
    node_create_request* currentNdCr;
    currentNode = (request_node_class*)lbl_803A3A38.mpHead;
    while (currentNode != NULL) {
        currentNdCr = currentNode->mNodeCrReq;
        if ((currentNdCr->mParameter == 2 || currentNdCr->mParameter == 4 ||
             currentNdCr->mParameter == 1) &&
            currentNdCr->mNodeProc.mProcId == bsPcId) {
            return 0;
        }
        currentNode = (request_node_class*)NODE_GET_NEXT((&currentNode->mBase));
    }
    return 1;
}

s32 fpcNdRq_IsIng(process_node_class* pProcNode) {
    request_node_class* currentNode;
    node_create_request* currentNodeReq;
    s32 bsPcId = pProcNode->mBase.mBsPcId;
    currentNode = (request_node_class*)lbl_803A3A38.mpHead;
    while (currentNode != NULL) {
        currentNodeReq = currentNode->mNodeCrReq;
        if (currentNodeReq->mCreatingID == bsPcId) {
            return 1;
        }
        currentNode = (request_node_class*)NODE_GET_NEXT((&currentNode->mBase));
    }
    return 0;
}

node_create_request* fpcNdRq_Create(s32 pRequestSize) {
    node_create_request* req = (node_create_request*)cMl_NS_memalignB(-4, pRequestSize);
    if (req != NULL) {
        if (lbl_80450D4C == 0) {
            lbl_80450D48 = 0;
            lbl_80450D4C = 1;
        }
        sBs_ClearArea(req, pRequestSize);
        *req = lbl_803A3A44;
        // req->mCreateTag = lbl_803A3A44.mCreateTag;
        // req->mProcMthCls = lbl_803A3A44.mProcMthCls;
        // req->mReqPhsProc = lbl_803A3A44.mReqPhsProc;
        // req->mpPhsHandler = lbl_803A3A44.mpPhsHandler;
        // req->mpNodeCrReqMthCls = lbl_803A3A44.mpNodeCrReqMthCls;
        // req->mParameter = lbl_803A3A44.mParameter;
        // req->mRequestId = lbl_803A3A44.mRequestId;
        // req->mNodeProc = lbl_803A3A44.mNodeProc;
        // req->mpLayerClass = lbl_803A3A44.mpLayerClass;
        // req->mCreatingID = lbl_803A3A44.mCreatingID;
        // req->mProcName = lbl_803A3A44.mProcName;
        // req->mpUserData = lbl_803A3A44.mpUserData;
        // req->unk_0x60 = lbl_803A3A44.unk_0x60;
        cTg_Create(&req->mCreateTag, req);
        fpcMtdTg_Init(&req->mProcMthCls, (process_method_tag_func)fpcNdRq_Cancel, req);
        req->mRequestId = lbl_80450D48++;
    }
    return req;
}

node_create_request* fpcNdRq_ChangeNode(u32 pRequestSize, process_node_class* pProcNode,
                                        s16 param_3, void* param_4) {
    if (fpcNdRq_IsPossibleTarget(pProcNode) == 1 && fpcNdRq_IsIng(pProcNode) == 0) {
        node_create_request* req = fpcNdRq_Create(pRequestSize);
        if (req != NULL) {
            req->mpPhsHandler = lbl_803A3AA8;
            req->mNodeProc.mpNodeProc = pProcNode;
            req->mNodeProc.mProcId = pProcNode->mBase.mBsPcId;
            req->mpLayerClass = pProcNode->mBase.mLyTg.mpLayer;
            req->mProcName = param_3;
            req->mpUserData = param_4;
        }
        return req;
    } else {
        return NULL;
    }
}

node_create_request* fpcNdRq_DeleteNode(u32 pRequestSize, process_node_class* pProcNode) {
    if (fpcNdRq_IsPossibleTarget(pProcNode) == 1 && fpcNdRq_IsIng(pProcNode) == 0) {
        node_create_request* req = fpcNdRq_Create(pRequestSize);
        if (req != NULL) {
            req->mpPhsHandler = lbl_803A3AC0;
            req->mNodeProc.mpNodeProc = pProcNode;
            req->mNodeProc.mProcId = pProcNode->mBase.mBsPcId;
            req->mpLayerClass = pProcNode->mBase.mLyTg.mpLayer;
        }
        return req;
    } else {
        return NULL;
    }
}

node_create_request* fpcNdRq_CreateNode(u32 pRequestSize, s16 param_2, void* param_3) {
    layer_class* layer = fpcLy_CurrentLayer();
    if (layer->mLayerID != 0 && fpcNdRq_IsPossibleTarget(layer->mpPcNode) == 0) {
        return NULL;
    } else {
        node_create_request* req = fpcNdRq_Create(pRequestSize);
        if (req != NULL) {
            req->mpPhsHandler = lbl_803A3AD0;
            if (layer->mLayerID != 0) {
                req->mNodeProc.mpNodeProc = layer->mpPcNode;
                req->mNodeProc.mProcId = layer->mpPcNode->mBase.mBsPcId;
            }
            req->mpLayerClass = layer;
            req->mProcName = param_2;
            req->mpUserData = param_3;
        }
        return req;
    }
}

node_create_request*
fpcNdRq_Request(u32 param_1, s32 param_2, process_node_class* param_3, s16 param_4, void* param_5,
                node_create_request_method_class* pNodeCreateRequestMethodClass) {
    node_create_request* req;
    switch (param_2) {
    case 0:
        req = fpcNdRq_CreateNode(param_1, param_4, param_5);
        break;
    case 1:
        req = fpcNdRq_DeleteNode(param_1, param_3);
        break;
    case 2:
        req = fpcNdRq_ChangeNode(param_1, param_3, param_4, param_5);
        break;
    case 4:
        break;
    }
    if (req != NULL) {
        req->mParameter = param_2;
        req->mpNodeCrReqMthCls = pNodeCreateRequestMethodClass;
        fpcNdRq_ToRequestQ(req);
    }
    return req;
}

s32 fpcNdRq_ReChangeNode(u32 pRequestId, s16 param_2, void* param_3) {
    request_node_class* currentNode;
    node_create_request* found;
    currentNode = (request_node_class*)lbl_803A3A38.mpHead;
    while (currentNode != NULL) {
        found = currentNode->mNodeCrReq;
        if (found->mParameter == 2 && found->mRequestId == pRequestId) {
            if (found->mCreatingID == -2) {
                found->mProcName = param_2;
                found->mpUserData = param_3;
                return 1;
            }
            return 0;
        }
        currentNode = (request_node_class*)NODE_GET_NEXT((&currentNode->mBase));
    }
    return 0;
}

s32 fpcNdRq_ReRequest(u32 pRequestId, s16 param_2, void* param_3) {
    return fpcNdRq_ReChangeNode(pRequestId, param_2, param_3);
}
}