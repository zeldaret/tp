#include "global.h"
#include "f/f_pc/f_pc_node_req.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_deletor.h"
#include "f/f_pc/f_pc_creator.h"
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_create_req.h"

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

extern void cMl_NS_free(void *);
extern int fpcSCtRq_Request(layer_class *, s16, int(*)(void*), void*, void*);
extern void sBs_ClearArea(void *pPtr, s32 pSize);
extern void *cMl_NS_memalignB(s32 pAlign, s32 pSize);


void fpcNdRq_RequestQTo(node_create_request *param_1) {
  fpcLy_CreatedMesg(param_1->mpLayerClass);
  fpcLy_CancelQTo(&param_1->mProcMthCls);
  cTg_SingleCut(&param_1->mCreateTag);
}

void fpcNdRq_ToRequestQ(node_create_request *param_1) {
  cTg_Addition(&lbl_803A3A38,&param_1->mCreateTag);
  fpcLy_ToCancelQ(param_1->mpLayerClass,&param_1->mProcMthCls);
  fpcLy_CreatingMesg(param_1->mpLayerClass);
}

#ifdef NON_MATCHING
int fpcNdRq_phase_IsCreated(node_create_request *param_1) {
    if (fpcCtRq_IsCreatingByID(param_1->mCreatingID) == 1) {
        return 0x0;
    }
    else {
        return fpcEx_IsExist(param_1->mCreatingID) == true ? 2 : 3;
    }
}
#else
asm void fpcNdRq_phase_IsCreated(node_create_request *param_1) {
nofralloc
#include "asm/80022850.s"
}
#endif

int fpcNdRq_phase_Create(node_create_request *param_1) {
  param_1->mCreatingID = fpcSCtRq_Request(param_1->mpLayerClass,param_1->unk_0x58,
    param_1->mpNodeCrReqMthCls->mpPostMethodFunc,param_1,param_1->unk_0x5C);
  return param_1->mCreatingID == -1 ? 3 : 2; 
}

int fpcNdRq_phase_IsDeleteTiming(node_create_request *param_1) {
  return 2;
}

int fpcNdRq_phase_IsDeleted(node_create_request *param_1) {
  return fpcDt_IsComplete() == 0 ? 0 : 2; 
}

int fpcNdRq_phase_Delete(node_create_request *param_1) {
  if (param_1->mNodeProc.mpNodeProc != NULL) {
    if (fpcDt_Delete(param_1->mNodeProc.mpNodeProc) == 0) {
      return 0;
    }
    param_1->mNodeProc.mpNodeProc = NULL;
  }
  return 2;
}

int fpcNdRq_DoPhase(node_create_request *param_1) {
  int result = cPhs_Handler(&param_1->mReqPhsProc, param_1->mpPhsHandler,param_1);
  if (result == 0x2) {
    return fpcNdRq_DoPhase(param_1);
  }
  return result;
}

int fpcNdRq_Execute(node_create_request *param_1) {
  int result = fpcNdRq_DoPhase(param_1);
  switch (result)
  {
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

int fpcNdRq_Delete(node_create_request *param_1) {
  fpcNdRq_RequestQTo(param_1);
  if (param_1->mpNodeCrReqMthCls != NULL && 
    param_1->mpNodeCrReqMthCls->mpUnkFunc != NULL &&
    fpcMtd_Method(param_1->mpNodeCrReqMthCls->mpUnkFunc, param_1) == 0) {
      return 0;
  }
  cMl_NS_free(param_1);
  return 1;
}

int fpcNdRq_Cancel(node_create_request *param_1) {
  if (param_1->mpNodeCrReqMthCls != NULL && 
    fpcMtd_Method(param_1->mpNodeCrReqMthCls->mpCancelFunc, param_1) == 0) {
      return 0;
  }
  return fpcNdRq_Delete(param_1);
}

#define NODE_GET_NEXT(pNode) (pNode ? pNode->mpNextNode : NULL)
int fpcNdRq_Handler(void) {
  node_class *currentNode = lbl_803A3A38.mpHead;
  while (currentNode != NULL) {
    node_create_request *req = ((request_node_class*)currentNode)->mNodeCrReq;
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
int fpcNdRq_IsPossibleTarget(process_node_class *);
#ifdef NON_MATCHING
int fpcNdRq_IsPossibleTarget(process_node_class *param_1) {
  // registers are mixed up, lbl_803A3A38.mpHead is loaded directly, instead of loading lbl_803A3A38 first
  int bsPcId = param_1->mBsPcId;
  for (request_node_class *currentNode = (request_node_class *)lbl_803A3A38.mpHead;currentNode != NULL;currentNode = (request_node_class*)NODE_GET_NEXT(currentNode)) {
    if ((currentNode->mNodeCrReq->unk_0x40 == 2 || 
      currentNode->mNodeCrReq->unk_0x40 == 4 ||
      currentNode->mNodeCrReq->unk_0x40 == 1) && currentNode->mNodeCrReq->mNodeProc.mProcId == bsPcId) {
        return 0;
      }
  }
  return 1;
}
#else
asm int fpcNdRq_IsPossibleTarget(process_node_class *) {
nofralloc
#include "asm/80022BE4.s"
}
#endif
int fpcNdRq_IsIng(process_node_class *);
asm int fpcNdRq_IsIng(process_node_class *) {
nofralloc
#include "asm/80022C50.s"
}

node_create_request *fpcNdRq_Create(s32 param_1) {
  node_create_request *req = (node_create_request*) cMl_NS_memalignB(-4, param_1);
  if (req != NULL) {
    if (lbl_80450D4C == 0) {
      lbl_80450D48 = 0;
      lbl_80450D4C = 1;
    }
    sBs_ClearArea(req, param_1);
    *req = lbl_803A3A44;
    cTg_Create(&req->mCreateTag, req);
    fpcMtdTg_Init(&req->mProcMthCls, (process_method_tag_func) fpcNdRq_Cancel, req);
    req->mRequestId = lbl_80450D48++;
  }
  return req;
}

node_create_request *fpcNdRq_ChangeNode(u32 param_1, process_node_class *param_2, s16 param_3, void *param_4) {
  if (fpcNdRq_IsPossibleTarget(param_2) == 1 && fpcNdRq_IsIng(param_2) == 0) {
    node_create_request *req = fpcNdRq_Create(param_1);
    if (req != NULL) {
      req->mpPhsHandler = lbl_803A3AA8;
      req->mNodeProc.mpNodeProc = param_2;
      req->mNodeProc.mProcId = param_2->mBsPcId;
      req->mpLayerClass = param_2->mLyTg.mpLayer;
      req->unk_0x58 = param_3;
      req->unk_0x5C = param_4;
    }
    return req;
  } else {
    return NULL;
  }
}

node_create_request *fpcNdRq_DeleteNode(u32 param_1, process_node_class *param_2) {
  if (fpcNdRq_IsPossibleTarget(param_2) == 1 && fpcNdRq_IsIng(param_2) == 0) {
    node_create_request *req = fpcNdRq_Create(param_1);
    if (req != NULL) {
      req->mpPhsHandler = lbl_803A3AC0;
      req->mNodeProc.mpNodeProc = param_2;
      req->mNodeProc.mProcId = param_2->mBsPcId;
      req->mpLayerClass = param_2->mLyTg.mpLayer;
    }
    return req;
  } else {
    return NULL; 
  }
}

node_create_request *fpcNdRq_CreateNode(u32 param_1, s16 param_2, void *param_3) {
  layer_class *layer = fpcLy_CurrentLayer();
  if (layer->mLayerID != 0 && fpcNdRq_IsPossibleTarget(layer->mpPcNode) == 0) {
    return NULL;
  } else {
    node_create_request *req = fpcNdRq_Create(param_1);
    if (req != NULL) {
      req->mpPhsHandler = lbl_803A3AD0;
      if (layer->mLayerID != 0) {
        req->mNodeProc.mpNodeProc = layer->mpPcNode;
        req->mNodeProc.mProcId = layer->mpPcNode->mBsPcId;
      }
      req->mpLayerClass = layer;
      req->unk_0x58 = param_2;
      req->unk_0x5C = param_3;
    }
    return req;
  }
}

#ifdef NON_MATCHING
#else
asm void fpcNdRq_Request(void) {
nofralloc
#include "asm/80022FE8.s"
}
#endif
asm void fpcNdRq_ReChangeNode(void) {
nofralloc
#include "asm/80023098.s"
}
asm void fpcNdRq_ReRequest(void) {
nofralloc
#include "asm/80023110.s"
}

}