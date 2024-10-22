/**
 * f_pc_node_req.cpp
 * Framework - Process Node Request
 */

#include "f_pc/f_pc_node_req.h"
#include "SSystem/SComponent/c_malloc.h"
#include "SSystem/SStandard/s_basic.h"
#include "f_pc/f_pc_deletor.h"
#include "f_pc/f_pc_executor.h"
#include "f_pc/f_pc_node.h"
#include "f_pc/f_pc_stdcreate_req.h"

/* 800227C4-80022804 0040+00 s=1 e=0 z=0  None .text fpcNdRq_RequestQTo__FP19node_create_request
 */
void fpcNdRq_RequestQTo(node_create_request* i_NdCtReq) {
    fpcLy_CreatedMesg(i_NdCtReq->mpLayerClass);
    fpcLy_CancelQTo(&i_NdCtReq->mProcMthCls);
    cTg_SingleCut(&i_NdCtReq->mCreateTag);
}

/* ############################################################################################## */
/* 803A3A38-803A3A44 000C+00 s=5 e=0 z=0  None .data      l_fpcNdRq_Queue */
static node_list_class l_fpcNdRq_Queue = {NULL, NULL, 0};

/* 80022804-80022850 004C+00 s=1 e=0 z=0  None .text fpcNdRq_ToRequestQ__FP19node_create_request
 */
void fpcNdRq_ToRequestQ(node_create_request* i_NdCtReq) {
    cTg_Addition(&l_fpcNdRq_Queue, &i_NdCtReq->mCreateTag);
    fpcLy_ToCancelQ(i_NdCtReq->mpLayerClass, &i_NdCtReq->mProcMthCls);
    fpcLy_CreatingMesg(i_NdCtReq->mpLayerClass);
}

/* 80022850-800228A8 0058+00 s=2 e=0 z=0  None .text
 * fpcNdRq_phase_IsCreated__FP19node_create_request             */
s32 fpcNdRq_phase_IsCreated(node_create_request* i_NdCtReq) {
    if (fpcCtRq_IsCreatingByID(i_NdCtReq->mCreatingID) == TRUE) {
        return cPhs_INIT_e;
    } else {
        return fpcEx_IsExist(i_NdCtReq->mCreatingID) == TRUE ? 2 : 3;
    }
}

/* 800228A8-80022904 005C+00 s=2 e=0 z=0  None .text fpcNdRq_phase_Create__FP19node_create_request
 */
s32 fpcNdRq_phase_Create(node_create_request* i_NdCtReq) {
    i_NdCtReq->mCreatingID =
        fpcSCtRq_Request(i_NdCtReq->mpLayerClass, i_NdCtReq->mProcName,
                         (stdCreateFunc)i_NdCtReq->mpNodeCrReqMthCls->mpPostMethodFunc, i_NdCtReq,
                         i_NdCtReq->mpUserData);
    return i_NdCtReq->mCreatingID == -1 ? 3 : 2;
}

/* 80022904-8002290C 0008+00 s=2 e=0 z=0  None .text
 * fpcNdRq_phase_IsDeleteTiming__FP19node_create_request        */
s32 fpcNdRq_phase_IsDeleteTiming(node_create_request* i_NdCtReq) {
    return 2;
}

/* 8002290C-8002293C 0030+00 s=2 e=0 z=0  None .text
 * fpcNdRq_phase_IsDeleted__FP19node_create_request             */
s32 fpcNdRq_phase_IsDeleted(node_create_request* i_NdCtReq) {
    return fpcDt_IsComplete() == 0 ? cPhs_INIT_e : 2;
}

/* 8002293C-80022990 0054+00 s=2 e=0 z=0  None .text fpcNdRq_phase_Delete__FP19node_create_request
 */
s32 fpcNdRq_phase_Delete(node_create_request* i_NdCtReq) {
    if (i_NdCtReq->mNodeProc.mpNodeProc != NULL) {
        if (fpcDt_Delete(&i_NdCtReq->mNodeProc.mpNodeProc->mBase) == 0) {
            return cPhs_INIT_e;
        }
        i_NdCtReq->mNodeProc.mpNodeProc = NULL;
    }
    return 2;
}

/* 80022990-800229D8 0048+00 s=1 e=0 z=0  None .text      fpcNdRq_DoPhase__FP19node_create_request
 */
s32 fpcNdRq_DoPhase(node_create_request* i_NdCtReq) {
    s32 result = cPhs_Handler(&i_NdCtReq->mReqPhsProc, i_NdCtReq->mpPhsHandler, i_NdCtReq);
    if (result == 2) {
        return fpcNdRq_DoPhase(i_NdCtReq);
    }
    return result;
}

/* 800229D8-80022A3C 0064+00 s=0 e=1 z=0  None .text      fpcNdRq_Execute__FP19node_create_request
 */
s32 fpcNdRq_Execute(node_create_request* i_NdCtReq) {
    s32 result = fpcNdRq_DoPhase(i_NdCtReq);
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

/* 80022A3C-80022AA4 0068+00 s=2 e=1 z=0  None .text      fpcNdRq_Delete__FP19node_create_request */
s32 fpcNdRq_Delete(node_create_request* i_NdCtReq) {
    fpcNdRq_RequestQTo(i_NdCtReq);
    if (i_NdCtReq->mpNodeCrReqMthCls != NULL && i_NdCtReq->mpNodeCrReqMthCls->mpUnkFunc != NULL &&
        fpcMtd_Method(i_NdCtReq->mpNodeCrReqMthCls->mpUnkFunc, i_NdCtReq) == 0)
    {
        return 0;
    }
    cMl::free(i_NdCtReq);
    return 1;
}

/* 80022AA4-80022AFC 0058+00 s=2 e=0 z=0  None .text      fpcNdRq_Cancel__FP19node_create_request */
s32 fpcNdRq_Cancel(node_create_request* i_NdCtReq) {
    if (i_NdCtReq->mpNodeCrReqMthCls != NULL &&
        fpcMtd_Method(i_NdCtReq->mpNodeCrReqMthCls->mpCancelFunc, i_NdCtReq) == 0)
    {
        return 0;
    }
    return fpcNdRq_Delete(i_NdCtReq);
}

/* 80022AFC-80022BE4 00E8+00 s=0 e=1 z=0  None .text      fpcNdRq_Handler__Fv */
#define NODE_GET_NEXT(pNode) (pNode ? pNode->mpNextNode : NULL)
s32 fpcNdRq_Handler() {
    node_class* currentNode = l_fpcNdRq_Queue.mpHead;
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

/* 80022BE4-80022C50 006C+00 s=3 e=0 z=0  None .text
 * fpcNdRq_IsPossibleTarget__FP18process_node_class             */
s32 fpcNdRq_IsPossibleTarget(process_node_class* i_procNode) {
    s32 bsPcId = i_procNode->mBase.mBsPcId;
    request_node_class* currentNode;
    node_create_request* currentNdCr;
    currentNode = (request_node_class*)l_fpcNdRq_Queue.mpHead;
    while (currentNode != NULL) {
        currentNdCr = currentNode->mNodeCrReq;
        if ((currentNdCr->mParameter == 2 || currentNdCr->mParameter == 4 ||
             currentNdCr->mParameter == 1) &&
            currentNdCr->mNodeProc.mProcId == bsPcId)
        {
            return 0;
        }
        currentNode = (request_node_class*)NODE_GET_NEXT((&currentNode->mBase));
    }
    return 1;
}

/* 80022C50-80022C9C 004C+00 s=2 e=0 z=0  None .text      fpcNdRq_IsIng__FP18process_node_class */
s32 fpcNdRq_IsIng(process_node_class* i_procNode) {
    request_node_class* currentNode;
    node_create_request* currentNodeReq;
    s32 bsPcId = i_procNode->mBase.mBsPcId;
    currentNode = (request_node_class*)l_fpcNdRq_Queue.mpHead;
    while (currentNode != NULL) {
        currentNodeReq = currentNode->mNodeCrReq;
        if (currentNodeReq->mCreatingID == bsPcId) {
            return 1;
        }
        currentNode = (request_node_class*)NODE_GET_NEXT((&currentNode->mBase));
    }
    return 0;
}

/* 80022C9C-80022E14 0178+00 s=3 e=0 z=0  None .text      fpcNdRq_Create__FUl */
node_create_request* fpcNdRq_Create(u32 i_requestSize) {
    static node_create_request clear = {
        NULL, NULL,       NULL, NULL,       0,      NULL, NULL,   NULL, NULL,
        0,    NULL,       NULL, NULL,       0,      0,    NULL,   5,    0xFFFFFFFF,
        NULL, 0xFFFFFFFE, NULL, 0xFFFFFFFE, 0x7FFF, NULL, 0x7FFF,
    };

    node_create_request* req = (node_create_request*)cMl::memalignB(-4, i_requestSize);
    if (req != NULL) {
        static int request_id = 0;
        sBs_ClearArea(req, i_requestSize);
        *req = clear;
        cTg_Create(&req->mCreateTag, req);
        fpcMtdTg_Init(&req->mProcMthCls, (process_method_tag_func)fpcNdRq_Cancel, req);
        req->mRequestId = request_id++;
    }
    return req;
}

/* 80022E14-80022EB0 009C+00 s=1 e=0 z=0  None .text
 * fpcNdRq_ChangeNode__FUlP18process_node_classsPv              */
node_create_request* fpcNdRq_ChangeNode(u32 i_requestSize, process_node_class* i_procNode,
                                        s16 i_procName, void* i_data) {
    static cPhs__Handler methods[6] = {
        (cPhs__Handler)fpcNdRq_phase_IsDeleteTiming, (cPhs__Handler)fpcNdRq_phase_Delete,
        (cPhs__Handler)fpcNdRq_phase_IsDeleted,      (cPhs__Handler)fpcNdRq_phase_Create,
        (cPhs__Handler)fpcNdRq_phase_IsCreated,      NULL,
    };

    if (fpcNdRq_IsPossibleTarget(i_procNode) == 1 && fpcNdRq_IsIng(i_procNode) == 0) {
        node_create_request* req = fpcNdRq_Create(i_requestSize);
        if (req != NULL) {
            req->mpPhsHandler = methods;
            req->mNodeProc.mpNodeProc = i_procNode;
            req->mNodeProc.mProcId = i_procNode->mBase.mBsPcId;
            req->mpLayerClass = i_procNode->mBase.mLyTg.mpLayer;
            req->mProcName = i_procName;
            req->mpUserData = i_data;
        }
        return req;
    } else {
        return NULL;
    }
}

/* 80022EB0-80022F3C 008C+00 s=1 e=0 z=0  None .text fpcNdRq_DeleteNode__FUlP18process_node_class
 */
node_create_request* fpcNdRq_DeleteNode(u32 i_requestSize, process_node_class* i_procNode) {
    static cPhs__Handler methods[4] = {
        (cPhs__Handler)fpcNdRq_phase_IsDeleteTiming,
        (cPhs__Handler)fpcNdRq_phase_Delete,
        (cPhs__Handler)fpcNdRq_phase_IsDeleted,
        NULL,
    };

    if (fpcNdRq_IsPossibleTarget(i_procNode) == 1 && fpcNdRq_IsIng(i_procNode) == 0) {
        node_create_request* req = fpcNdRq_Create(i_requestSize);
        if (req != NULL) {
            req->mpPhsHandler = methods;
            req->mNodeProc.mpNodeProc = i_procNode;
            req->mNodeProc.mProcId = i_procNode->mBase.mBsPcId;
            req->mpLayerClass = i_procNode->mBase.mLyTg.mpLayer;
        }
        return req;
    } else {
        return NULL;
    }
}

/* 80022F3C-80022FE8 00AC+00 s=1 e=0 z=0  None .text      fpcNdRq_CreateNode__FUlsPv */
node_create_request* fpcNdRq_CreateNode(u32 i_requestSize, s16 i_procName, void* i_data) {
    static cPhs__Handler methods[3] = {
        (cPhs__Handler)fpcNdRq_phase_Create,
        (cPhs__Handler)fpcNdRq_phase_IsCreated,
        NULL,
    };

    layer_class* layer = fpcLy_CurrentLayer();
    if (layer->mLayerID != 0 && fpcNdRq_IsPossibleTarget(layer->mpPcNode) == 0) {
        return NULL;
    } else {
        node_create_request* req = fpcNdRq_Create(i_requestSize);
        if (req != NULL) {
            req->mpPhsHandler = methods;
            if (layer->mLayerID != 0) {
                req->mNodeProc.mpNodeProc = layer->mpPcNode;
                req->mNodeProc.mProcId = layer->mpPcNode->mBase.mBsPcId;
            }
            req->mpLayerClass = layer;
            req->mProcName = i_procName;
            req->mpUserData = i_data;
        }
        return req;
    }
}

/* 80022FE8-80023098 00B0+00 s=0 e=1 z=0  None .text
 * fpcNdRq_Request__FUliP18process_node_classsPvP32node_create_request_method_class */
node_create_request* fpcNdRq_Request(u32 i_requestSize, int i_reqType,
                                     process_node_class* i_procNode, s16 i_procName, void* i_data,
                                     node_create_request_method_class* i_nodeCtRqMtd) {
    node_create_request* req;
    switch (i_reqType) {
    case 0:
        req = fpcNdRq_CreateNode(i_requestSize, i_procName, i_data);
        break;
    case 1:
        req = fpcNdRq_DeleteNode(i_requestSize, i_procNode);
        break;
    case 2:
        req = fpcNdRq_ChangeNode(i_requestSize, i_procNode, i_procName, i_data);
        break;
    case 4:
        break;
    }

    if (req != NULL) {
        req->mParameter = i_reqType;
        req->mpNodeCrReqMthCls = i_nodeCtRqMtd;
        fpcNdRq_ToRequestQ(req);
    }

    return req;
}

/* 80023098-80023110 0078+00 s=1 e=0 z=0  None .text      fpcNdRq_ReChangeNode__FUisPv */
s32 fpcNdRq_ReChangeNode(fpc_ProcID i_requestID, s16 i_procName, void* i_data) {
    request_node_class* currentNode;
    node_create_request* found;
    currentNode = (request_node_class*)l_fpcNdRq_Queue.mpHead;
    while (currentNode != NULL) {
        found = currentNode->mNodeCrReq;
        if (found->mParameter == 2 && found->mRequestId == i_requestID) {
            if (found->mCreatingID == -2) {
                found->mProcName = i_procName;
                found->mpUserData = i_data;
                return 1;
            }
            return 0;
        }
        currentNode = (request_node_class*)NODE_GET_NEXT((&currentNode->mBase));
    }
    return 0;
}

/* 80023110-80023130 0020+00 s=0 e=1 z=0  None .text      fpcNdRq_ReRequest__FUisPv */
s32 fpcNdRq_ReRequest(fpc_ProcID i_requestID, s16 i_procName, void* i_data) {
    return fpcNdRq_ReChangeNode(i_requestID, i_procName, i_data);
}
