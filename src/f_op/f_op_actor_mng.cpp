/**
 * f_op_actor_mng.cpp
 * Actor Manager
 */

#include "d/dolzel.h"

#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "SSystem/SComponent/c_malloc.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_obj_carry.h"
#include "d/actor/d_a_player.h"
#include "d/actor/d_a_tag_stream.h"
#include "d/d_item.h"
#include "d/d_path.h"
#include "f_op/f_op_actor_mng.h"
#include "f_op/f_op_scene_mng.h"
#include "m_Do/m_Do_lib.h"

class l_HIO {
public:
    /* 8001E098 */ ~l_HIO() {}
};

#define MAKE_ITEM_PARAMS(itemNo, itemBitNo, param_2, param_3)                                      \
    ((itemNo & 0xFF) << 0 | (itemBitNo & 0xFF) << 0x8 | param_2 << 0x10 | (param_3 & 0xF) << 0x18)

/* 800198A4-800198C4 0141E4 0020+00 0/0 1/1 0/0 .text            fopAcM_FastCreate__FsPFPv_iPvPv */
fopAc_ac_c* fopAcM_FastCreate(s16 i_procName, FastCreateReqFunc i_createFunc, void* i_createData,
                              void* i_append) {
    return (fopAc_ac_c*)fpcM_FastCreate(i_procName, i_createFunc, i_createData, i_append);
}

/* 800198C4-80019934 014204 0070+00 1/1 5/5 18/18 .text            fopAcM_setStageLayer__FPv */
void fopAcM_setStageLayer(void* i_proc) {
    scene_class* stageProc = fopScnM_SearchByID(dStage_roomControl_c::getProcID());
    JUT_ASSERT(0, stageProc != 0);

    fpcM_ChangeLayerID(i_proc, fopScnM_LayerID(stageProc));
}

/* 80019934-800199BC 014274 0088+00 1/1 0/0 2/2 .text            fopAcM_setRoomLayer__FPvi */
void fopAcM_setRoomLayer(void* i_proc, int i_roomNo) {
    if (i_roomNo >= 0) {
        scene_class* roomProc = fopScnM_SearchByID(dStage_roomControl_c::getStatusProcID(i_roomNo));
        JUT_ASSERT(0, roomProc != 0);

        fpcM_ChangeLayerID(i_proc, fopScnM_LayerID(roomProc));
    }
}

/* 800199BC-80019A2C 0142FC 0070+00 0/0 4/4 114/114 .text fopAcM_SearchByID__FUiPP10fopAc_ac_c */
s32 fopAcM_SearchByID(fpc_ProcID i_actorID, fopAc_ac_c** i_outActor) {
    if (fpcM_IsCreating(i_actorID)) {
        *i_outActor = NULL;
    } else {
        *i_outActor = (fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)fpcSch_JudgeByID, &i_actorID);
        if (*i_outActor == NULL) {
            return 0;
        }
    }
    return 1;
}

/* 80019A2C-80019AA8 01436C 007C+00 0/0 0/0 28/28 .text fopAcM_SearchByName__FsPP10fopAc_ac_c */
s32 fopAcM_SearchByName(s16 i_procName, fopAc_ac_c** i_outActor) {
    *i_outActor = (fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)fpcSch_JudgeForPName, &i_procName);
    if (*i_outActor == NULL) {
        return 0;
    } else {
        if (fpcM_IsCreating(fopAcM_GetID(*i_outActor))) {
            *i_outActor = NULL;
        }
        return 1;
    }
}

/* 80019AA8-80019B1C 0143E8 0074+00 1/1 7/7 0/0 .text            fopAcM_CreateAppend__Fv */
fopAcM_prm_class* fopAcM_CreateAppend() {
    fopAcM_prm_class* append = (fopAcM_prm_class*)cMl::memalignB(-4, sizeof(fopAcM_prm_class));
    if (append != NULL) {
        cLib_memSet(append, 0, sizeof(fopAcM_prm_class));
        append->base.setID = 0xFFFF;
        append->room_no = -1;
        append->scale.x = 10;
        append->scale.y = 10;
        append->scale.z = 10;
        append->parent_id = fpcM_ERROR_PROCESS_ID_e;
        append->subtype = -1;
    }
    return append;
}

/* 80019B1C-80019C78 01445C 015C+00 4/4 0/0 0/0 .text
 * createAppend__FUsUlPC4cXyziPC5csXyzPC4cXyzScUi               */
fopAcM_prm_class* createAppend(u16 i_setId, u32 i_parameters, const cXyz* i_pos, int i_roomNo,
                               const csXyz* i_angle, const cXyz* i_scale, s8 i_subtype,
                               fpc_ProcID i_parentId) {
    fopAcM_prm_class* append = fopAcM_CreateAppend();
    if (append == NULL) {
        return NULL;
    }

    append->base.setID = i_setId;

    if (i_pos != NULL) {
        append->base.position = *i_pos;
    } else {
        append->base.position = cXyz::Zero;
    }

    append->room_no = i_roomNo;

    if (i_angle != NULL) {
        append->base.angle = *i_angle;
    } else {
        append->base.angle = csXyz::Zero;
    }

    if (i_scale != NULL) {
        append->scale.x = 10.0f * i_scale->x;
        append->scale.y = 10.0f * i_scale->y;
        append->scale.z = 10.0f * i_scale->z;
    } else {
        append->scale.x = 10;
        append->scale.y = 10;
        append->scale.z = 10;
    }

    append->base.parameters = i_parameters;
    append->parent_id = i_parentId;
    append->subtype = i_subtype;

    return append;
}

/* 80019C78-80019C7C 0145B8 0004+00 3/3 0/0 0/0 .text            fopAcM_Log__FPC10fopAc_ac_cPCc */
void fopAcM_Log(fopAc_ac_c const* i_actor, char const* i_message) {}

/* 80019C7C-80019CB8 0145BC 003C+00 0/0 10/10 483/483 .text            fopAcM_delete__FP10fopAc_ac_c
 */
s32 fopAcM_delete(fopAc_ac_c* i_actor) {
    // "Deleting Actor"
    fopAcM_Log(i_actor, "アクターの削除");
    return fpcM_Delete(i_actor);
}

/* 80019CB8-80019D18 0145F8 0060+00 0/0 3/3 12/12 .text            fopAcM_delete__FUi */
s32 fopAcM_delete(fpc_ProcID i_actorID) {
    void* actor = fopAcM_SearchByID(i_actorID);

    if (actor != NULL) {
        // "Deleting Actor"
        fopAcM_Log((fopAc_ac_c*)actor, "アクターの削除");
        return fpcM_Delete(actor);
    } else {
        return 1;
    }
}

/* 80019D18-80019D98 014658 0080+00 2/2 0/0 0/0 .text
 * fopAcM_create__FsUsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i         */
fpc_ProcID fopAcM_create(s16 i_procName, u16 i_setId, u32 i_parameters, const cXyz* i_pos,
                         int i_roomNo, const csXyz* i_angle, const cXyz* i_scale, s8 i_subtype,
                         createFunc i_createFunc) {
    fopAcM_prm_class* append = createAppend(i_setId, i_parameters, i_pos, i_roomNo, i_angle,
                                            i_scale, i_subtype, fpcM_ERROR_PROCESS_ID_e);
    if (append == NULL) {
        return fpcM_ERROR_PROCESS_ID_e;
    }

    return fpcM_Create(i_procName, i_createFunc, append);
}

/* 80019D98-80019E04 0146D8 006C+00 3/3 11/11 70/70 .text
 * fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc                 */
fpc_ProcID fopAcM_create(s16 i_procName, u32 i_parameters, const cXyz* i_pos, int i_roomNo,
                         const csXyz* i_angle, const cXyz* i_scale, s8 i_subtype) {
    return fopAcM_create(i_procName, 0xFFFF, i_parameters, i_pos, i_roomNo, i_angle, i_scale,
                         i_subtype, NULL);
}

/* 80019E04-80019E6C 014744 0068+00 5/5 6/6 18/18 .text
 * fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv     */
fopAc_ac_c* fopAcM_fastCreate(s16 i_procName, u32 i_parameters, const cXyz* i_pos, int i_roomNo,
                              const csXyz* i_angle, const cXyz* i_scale, s8 i_subtype,
                              createFunc i_createFunc, void* i_createFuncData) {
    fopAcM_prm_class* append = createAppend(0xFFFF, i_parameters, i_pos, i_roomNo, i_angle, i_scale,
                                            i_subtype, fpcM_ERROR_PROCESS_ID_e);
    if (append == NULL) {
        return NULL;
    }

    return (fopAc_ac_c*)fpcM_FastCreate(i_procName, i_createFunc, i_createFuncData, append);
}

/* 80019E6C-80019EF0 0147AC 0084+00 0/0 1/1 0/0 .text
 * fopAcM_fastCreate__FPCcUlPC4cXyziPC5csXyzPC4cXyzPFPv_iPv     */
fopAc_ac_c* fopAcM_fastCreate(const char* i_actorname, u32 i_parameters, const cXyz* i_pos,
                              int i_roomNo, const csXyz* i_angle, const cXyz* i_scale,
                              createFunc i_createFunc, void* i_createFuncData) {
    dStage_objectNameInf* nameInfo = dStage_searchName(i_actorname);
    if (nameInfo == NULL) {
        return NULL;
    }

    return fopAcM_fastCreate(nameInfo->mProcName, i_parameters, i_pos, i_roomNo, i_angle, i_scale,
                             nameInfo->mSubtype, i_createFunc, i_createFuncData);
}

/* 80019EF0-80019F78 014830 0088+00 0/0 1/1 105/105 .text
 * fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i    */
fpc_ProcID fopAcM_createChild(s16 i_procName, fpc_ProcID i_parentID, u32 i_parameters,
                              const cXyz* i_pos, int i_roomNo, const csXyz* i_angle,
                              const cXyz* i_scale, s8 i_subtype, createFunc i_createFunc) {
    fopAcM_prm_class* append = createAppend(0xFFFF, i_parameters, i_pos, i_roomNo, i_angle, i_scale,
                                            i_subtype, i_parentID);
    if (append == NULL) {
        return fpcM_ERROR_PROCESS_ID_e;
    }

    return fpcM_Create(i_procName, i_createFunc, append);
}

/* 80019F78-8001A138 0148B8 01C0+00 0/0 0/0 6/6 .text
 * fopAcM_createChildFromOffset__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i */
fpc_ProcID fopAcM_createChildFromOffset(s16 i_procName, fpc_ProcID i_parentID, u32 i_parameters,
                                        const cXyz* i_pos, int i_roomNo, const csXyz* i_angle,
                                        const cXyz* i_scale, s8 i_subtype,
                                        createFunc i_createFunc) {
    fopAc_ac_c* parent_actor = fopAcM_SearchByID(i_parentID);
    s16 parent_angleY = parent_actor->current.angle.y;

    cXyz offset_pos;
    if (i_pos == NULL) {
        offset_pos = cXyz::Zero;
    } else {
        offset_pos = *i_pos;
    }

    csXyz offset_angle;
    if (i_angle == NULL) {
        offset_angle = csXyz::Zero;
    } else {
        offset_angle = *i_angle;
    }
    cXyz pos = parent_actor->current.pos;
    csXyz angle(offset_angle);

    angle.y += parent_angleY;
    pos.x += offset_pos.z * cM_ssin(parent_angleY) + offset_pos.x * cM_scos(parent_angleY);
    pos.y += offset_pos.y;
    pos.z += offset_pos.z * cM_scos(parent_angleY) - offset_pos.x * cM_ssin(parent_angleY);

    fopAcM_prm_class* append =
        createAppend(0xFFFF, i_parameters, &pos, i_roomNo, &angle, i_scale, i_subtype, i_parentID);
    if (append == NULL) {
        return fpcM_ERROR_PROCESS_ID_e;
    }

    return fpcM_Create(i_procName, i_createFunc, append);
}

BOOL fopAcM_createHeap(fopAc_ac_c* i_this, u32 size, u32 align) {
    JUT_ASSERT(0, i_this);
    JUT_ASSERT(0, i_this->heap == 0);

    // "Creating Actor Heap"
    fopAcM_Log(i_this, "アクターのヒープの生成");
    if (align == 0)
        align = 0x20;

    i_this->heap = mDoExt_createSolidHeapFromGameToCurrent(size, align);
    if (i_this->heap == 0) {
        // "fopAcM_createHeap allocation failure\n"
        OSReport_Error("fopAcM_createHeap 確保失敗\n");
        JUT_CONFIRM(0, i_this->heap != 0);
        return FALSE;
    }

    return TRUE;
}

/* 8001A138-8001A188 014A78 0050+00 0/0 1/1 1/1 .text            fopAcM_DeleteHeap__FP10fopAc_ac_c
 */
void fopAcM_DeleteHeap(fopAc_ac_c* i_actor) {
    // "Destroying actor's heap"
    fopAcM_Log(i_actor, "アクターのヒープの破壊");
    if (i_actor->heap != NULL) {
        mDoExt_destroySolidHeap(i_actor->heap);
        i_actor->heap = NULL;
    }
}

/* 8001A188-8001A1E8 014AC8 0060+00 1/1 0/0 0/0 .text
 * fopAcM_callCallback__FP10fopAc_ac_cPFP10fopAc_ac_c_iP7JKRHeap */
s32 fopAcM_callCallback(fopAc_ac_c* i_actor, heapCallbackFunc i_callback, JKRHeap* i_heap) {
    JKRHeap* oldHeap = mDoExt_setCurrentHeap(i_heap);
    s32 ret = i_callback(i_actor);
    mDoExt_setCurrentHeap(oldHeap);
    return ret;
}

/* 80450CC8-80450CCC -00001 0004+00 2/2 0/0 0/0 .sbss            None */
namespace fopAcM {
bool HeapAdjustEntry;
bool HeapAdjustVerbose;
bool HeapAdjustQuiet;
}  // namespace fopAcM

/* 8001A1E8-8001A4B0 014B28 02C8+00 1/1 0/0 0/0 .text
 * fopAcM_entrySolidHeap___FP10fopAc_ac_cPFP10fopAc_ac_c_iUl    */
bool fopAcM_entrySolidHeap_(fopAc_ac_c* i_actor, heapCallbackFunc i_heapCallback, u32 i_size) {
    const char* procNameString = fopAcM_getProcNameString(i_actor);
    JKRSolidHeap* heap00 = NULL;

    if (fopAcM::HeapAdjustVerbose) {
        OS_REPORT("\x1b[36mfopAcM_entrySolidHeap 開始 [%s] 見積もりサイズ=%08x\n\x1b[m",
                  procNameString, i_size);
    }

    if (i_size != 0) {
        i_size = ALIGN_NEXT(i_size, 0x10);
    }

    while (true) {
        if (i_size != 0) {
            if (fopAcM::HeapAdjustVerbose) {
                OS_REPORT("見積もりヒープサイズで(%08x)確保してみます。 [%s]\n", i_size,
                          procNameString);
            }

            heap00 = mDoExt_createSolidHeapFromGame(i_size, 0x20);
            if (heap00 != NULL) {
                if (fopAcM::HeapAdjustVerbose) {
                    OS_REPORT("見積もりヒープサイズで登録してみます。%08x [%s]\n", heap00,
                              procNameString);
                }

                bool status = fopAcM_callCallback(i_actor, i_heapCallback, heap00) != 0;
                if (!status) {
                    // "Entry for estimated heap size(%08x) failed. %08x[%s]\n"
                    OSReport_Error("見積もりヒープサイズ(%08x)で登録失敗しました。%08x[%s]\n",
                                   i_size, heap00->getFreeSize(), procNameString);
                    mDoExt_destroySolidHeap(heap00);
                    heap00 = NULL;
                }
            } else {
                // "Could not allocate estimated heap. %08x [%s]\n"
                OSReport_Error("見積もりヒープが確保できませんでした。 %08x [%s]\n", i_size,
                               procNameString);
            }
        }

        if (heap00 == NULL) {
            heap00 = mDoExt_createSolidHeapFromGame(0xFFFFFFFF, 0x20);
            if (heap00 == NULL) {
                // "Failed to allocate maximum heap size. [%s]\n"
                OSReport_Error("最大空きヒープサイズで確保失敗。[%s]\n", procNameString);
                return false;
            }

            bool status = fopAcM_callCallback(i_actor, i_heapCallback, heap00) != 0;
            if (!status) {
                // "Entry failed for maximum heap size. %08x[%s]\n"
                OSReport_Error("最大空きヒープサイズで登録失敗。%08x[%s]\n", heap00->getFreeSize(),
                               procNameString);
                mDoExt_destroySolidHeap(heap00);
                return false;
            }
        }

        if (heap00 == NULL) {
            break;
        }

        if (fopAcM::HeapAdjustEntry == 0) {
            mDoExt_adjustSolidHeap(heap00);
            i_actor->heap = heap00;
            return true;
        } else {
            JKRSolidHeap* heap = NULL;
            u32 heap00Size = heap00->getSize();
            u32 alignedSize = ALIGN_NEXT(heap00Size - heap00->getFreeSize(), 0x20);
            if (alignedSize + 0x90 < mDoExt_getGameHeap()->getFreeSize()) {
                heap = mDoExt_createSolidHeapFromGame(alignedSize, 0x20);
            }

            if (heap != NULL) {
                if (heap < heap00) {
                    mDoExt_destroySolidHeap(heap00);
                    heap00 = NULL;
                    bool status = fopAcM_callCallback(i_actor, i_heapCallback, heap) != 0;
                    if (!status) {
                        // "Entry fails at exact size? (Bug)\n"
                        OSReport_Error("ぴったりサイズで、登録失敗？(バグ)\n");
                        mDoExt_destroySolidHeap(heap);
                        heap = NULL;
                    }
                } else {
                    mDoExt_destroySolidHeap(heap);
                    heap = NULL;
                }
            }

            if (heap != NULL) {
                mDoExt_adjustSolidHeap(heap);
                i_actor->heap = heap;
                return true;
            }

            if (heap00 != NULL) {
                mDoExt_adjustSolidHeap(heap00);
                i_actor->heap = heap00;
                return true;
            }

            OSReport_Error("ばぐばぐです\n");  // "There's a big bug\n"
            JUT_ASSERT(0, 0);
            OSReport_Error("緊急回避措置\n");  // "Emergency action\n"
            fopAcM::HeapAdjustEntry = false;
        }
    }
    // "fopAcM_entrySolidHeap didn't work [%s]\n"
    OSReport_Error("fopAcM_entrySolidHeap だめでした [%s]\n", procNameString);
    return false;
}

/* 8001A4B0-8001A528 014DF0 0078+00 0/0 4/4 446/446 .text
 * fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl     */
bool fopAcM_entrySolidHeap(fopAc_ac_c* i_actor, heapCallbackFunc i_heapCallback, u32 i_size) {
    bool var_r31 = fopAcM::HeapAdjustVerbose;
    if (i_size & 0x80000000) {
        fopAcM::HeapAdjustVerbose = true;
    }

    bool var_r30 = fopAcM::HeapAdjustEntry;
    if (i_size & 0x20000000) {
        fopAcM::HeapAdjustEntry = false;
    } else if (i_size & 0x10000000) {
        fopAcM::HeapAdjustEntry = true;
    }

    bool result = fopAcM_entrySolidHeap_(i_actor, i_heapCallback, i_size & 0xFFFFFF);
    fopAcM::HeapAdjustVerbose = var_r31;
    fopAcM::HeapAdjustEntry = var_r30;
    return result;
}

/* 8001A528-8001A538 014E68 0010+00 0/0 0/0 136/136 .text fopAcM_SetMin__FP10fopAc_ac_cfff */
void fopAcM_SetMin(fopAc_ac_c* i_actor, f32 i_minX, f32 i_minY, f32 i_minZ) {
    i_actor->cull.box.min.x = i_minX;
    i_actor->cull.box.min.y = i_minY;
    i_actor->cull.box.min.z = i_minZ;
}

/* 8001A538-8001A548 014E78 0010+00 0/0 0/0 136/136 .text fopAcM_SetMax__FP10fopAc_ac_cfff */
void fopAcM_SetMax(fopAc_ac_c* i_actor, f32 i_maxX, f32 i_maxY, f32 i_maxZ) {
    i_actor->cull.box.max.x = i_maxX;
    i_actor->cull.box.max.y = i_maxY;
    i_actor->cull.box.max.z = i_maxZ;
}

/* 8001A548-8001A564 014E88 001C+00 1/1 0/0 260/260 .text
 * fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff                  */
void fopAcM_setCullSizeBox(fopAc_ac_c* i_actor, f32 i_minX, f32 i_minY, f32 i_minZ, f32 i_maxX,
                           f32 i_maxY, f32 i_maxZ) {
    i_actor->cull.box.min.x = i_minX;
    i_actor->cull.box.min.y = i_minY;
    i_actor->cull.box.min.z = i_minZ;

    i_actor->cull.box.max.x = i_maxX;
    i_actor->cull.box.max.y = i_maxY;
    i_actor->cull.box.max.z = i_maxZ;
}

/* 8001A564-8001A578 014EA4 0014+00 0/0 0/0 4/4 .text fopAcM_setCullSizeSphere__FP10fopAc_ac_cffff
 */
void fopAcM_setCullSizeSphere(fopAc_ac_c* i_actor, f32 i_minX, f32 i_minY, f32 i_minZ, f32 radius) {
    i_actor->cull.sphere.center.x = i_minX;
    i_actor->cull.sphere.center.y = i_minY;
    i_actor->cull.sphere.center.z = i_minZ;
    i_actor->cull.sphere.radius = radius;
}

/* 8001A578-8001A5DC 014EB8 0064+00 0/0 0/0 123/123 .text
 * fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData        */
void fopAcM_setCullSizeBox2(fopAc_ac_c* i_actor, J3DModelData* i_modelData) {
    J3DJoint* jointNode = i_modelData->getJointNodePointer(0);

    f32 minX = i_actor->scale.x * jointNode->getMin()->x;
    f32 minY = i_actor->scale.y * jointNode->getMin()->y;
    f32 minZ = i_actor->scale.z * jointNode->getMin()->z;
    f32 maxX = i_actor->scale.x * jointNode->getMax()->x;
    f32 maxY = i_actor->scale.y * jointNode->getMax()->y;
    f32 maxZ = i_actor->scale.z * jointNode->getMax()->z;

    fopAcM_setCullSizeBox(i_actor, minX, minY, minZ, maxX, maxY, maxZ);
}

/* 8001A5DC-8001A60C 014F1C 0030+00 0/0 0/0 1/1 .text            fopAcM_addAngleY__FP10fopAc_ac_css
 */
bool fopAcM_addAngleY(fopAc_ac_c* i_actor, s16 i_target, s16 i_step) {
    return cLib_chaseAngleS(&fopAcM_GetAngle_p(i_actor)->y, i_target, i_step);
}

/* 8001A60C-8001A660 014F4C 0054+00 1/1 0/0 8/8 .text            fopAcM_calcSpeed__FP10fopAc_ac_c */
void fopAcM_calcSpeed(fopAc_ac_c* i_actor) {
    f32 speedF = fopAcM_GetSpeedF(i_actor);
    f32 gravity = fopAcM_GetGravity(i_actor);
    cXyz* speed = fopAcM_GetSpeed_p(i_actor);

    f32 xSpeed = speedF * cM_ssin(i_actor->current.angle.y);
    f32 ySpeed = speed->y + gravity;
    f32 zSpeed = speedF * cM_scos(i_actor->current.angle.y);

    if (ySpeed < fopAcM_GetMaxFallSpeed(i_actor)) {
        ySpeed = fopAcM_GetMaxFallSpeed(i_actor);
    }
    fopAcM_SetSpeed(i_actor, xSpeed, ySpeed, zSpeed);
}

/* 8001A660-8001A6CC 014FA0 006C+00 1/1 1/1 17/17 .text fopAcM_posMove__FP10fopAc_ac_cPC4cXyz */
void fopAcM_posMove(fopAc_ac_c* i_actor, const cXyz* i_movePos) {
    cXyz* pos = fopAcM_GetPosition_p(i_actor);
    cXyz* speed = fopAcM_GetSpeed_p(i_actor);
    pos->x += speed->x;
    pos->y += speed->y;
    pos->z += speed->z;

    if (i_movePos != NULL) {
        pos->x += i_movePos->x;
        pos->y += i_movePos->y;
        pos->z += i_movePos->z;
    }
}

/* 8001A6CC-8001A710 01500C 0044+00 0/0 5/5 137/137 .text fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
 */
void fopAcM_posMoveF(fopAc_ac_c* i_actor, const cXyz* i_movePos) {
    fopAcM_calcSpeed(i_actor);
    fopAcM_posMove(i_actor, i_movePos);
}

/* 8001A710-8001A738 015050 0028+00 1/1 26/26 596/596 .text
 * fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c      */
s16 fopAcM_searchActorAngleY(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB) {
    return cLib_targetAngleY(fopAcM_GetPosition_p(i_actorA), fopAcM_GetPosition_p(i_actorB));
}

/* 8001A738-8001A79C 015078 0064+00 0/0 0/0 13/13 .text
 * fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c      */
s16 fopAcM_searchActorAngleX(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB) {
    const cXyz* posA = fopAcM_GetPosition_p(i_actorA);
    const cXyz* posB = fopAcM_GetPosition_p(i_actorB);

    f32 x_dist = posB->x - posA->x;
    f32 z_dist = posB->z - posA->z;
    return cM_atan2s(posB->y - posA->y, JMAFastSqrt(x_dist * x_dist + z_dist * z_dist));
}

/* 8001A79C-8001A7E0 0150DC 0044+00 0/0 3/3 15/15 .text
 * fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c        */
s32 fopAcM_seenActorAngleY(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB) {
    s16 target_angle =
        cLib_targetAngleY(fopAcM_GetPosition_p(i_actorA), fopAcM_GetPosition_p(i_actorB));
    return abs((s16)(target_angle - i_actorA->shape_angle.y));
}

/* 8001A7E0-8001A914 015120 0134+00 0/0 5/5 188/188 .text
 * fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c    */
f32 fopAcM_searchActorDistance(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB) {
    cXyz dist = (*fopAcM_GetPosition_p(i_actorB) - *fopAcM_GetPosition_p(i_actorA));
    return dist.abs();
}

/* 8001A914-8001A964 015254 0050+00 0/0 0/0 2/2 .text
 * fopAcM_searchActorDistance2__FPC10fopAc_ac_cPC10fopAc_ac_c   */
f32 fopAcM_searchActorDistance2(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB) {
    cXyz dist = (*fopAcM_GetPosition_p(i_actorB) - *fopAcM_GetPosition_p(i_actorA));
    return dist.abs2();
}

/* 8001A964-8001AA94 0152A4 0130+00 0/0 3/3 125/125 .text
 * fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c  */
f32 fopAcM_searchActorDistanceXZ(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB) {
    const cXyz* posA = fopAcM_GetPosition_p(i_actorA);
    const cXyz* posB = fopAcM_GetPosition_p(i_actorB);
    return (*posB - *posA).absXZ();
}

/* 8001AA94-8001AAE0 0153D4 004C+00 1/1 4/4 30/30 .text
 * fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c */
f32 fopAcM_searchActorDistanceXZ2(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB) {
    const cXyz* posA = fopAcM_GetPosition_p(i_actorA);
    const cXyz* posB = fopAcM_GetPosition_p(i_actorB);
    return (*posB - *posA).abs2XZ();
}

/* 8001AAE0-8001AC40 015420 0160+00 0/0 0/0 2/2 .text
 * fopAcM_rollPlayerCrash__FPC10fopAc_ac_cfUlffif               */
BOOL fopAcM_rollPlayerCrash(fopAc_ac_c const* i_crashActor, f32 i_range, u32 i_flag, f32 i_max_y,
                            f32 i_min_y, BOOL param_5, f32 param_6) {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    if (player != dComIfGp_getLinkPlayer()) {
        return FALSE;
    }

    f32 range = i_range + 40.0f;
    if (daPy_py_c::checkNowWolf()) {
        range += 55.0f;
    }

    f32 y_dist = fopAcM_searchPlayerDistanceY(i_crashActor);
    if (y_dist > i_min_y && y_dist < i_max_y &&
        (player->checkFrontRoll() || player->checkWolfDash()) &&
        fopAcM_searchPlayerDistanceXZ2(i_crashActor) < (range * range))
    {
        if (cM_scos(player->current.angle.y - fopAcM_searchPlayerAngleY(i_crashActor)) < param_6) {
            player->onFrollCrashFlg(i_flag, param_5);
            return TRUE;
        }
    }

    return FALSE;
}

/* 8001AC40-8001ACEC 015580 00AC+00 0/0 0/0 2/2 .text fopAcM_checkCullingBox__FPA4_fffffff */
bool fopAcM_checkCullingBox(Mtx m, f32 x1, f32 y1, f32 z1, f32 x2, f32 y2, f32 z2) {
    Vec tmp1 = {x1, y1, z1};
    Vec tmp2 = {x2, y2, z2};
    Mtx tmpMtx;
    cMtx_concat(j3dSys.getViewMtx(), m, tmpMtx);
    
    if (mDoLib_clipper::clip(tmpMtx, &tmp2, &tmp1))
        return true;
    else
        return false;
}

/* 803A35F0-803A3740 000710 0150+00 1/1 0/0 0/0 .data            l_cullSizeBox */
static cull_box l_cullSizeBox[] = {
    {
        {-40.0f, 0.0f, -40.0f},
        {40.0f, 125.0f, 40.0f},
    },
    {
        {-25.0f, 0.0f, -25.0f},
        {25.0f, 50.0f, 25.0f},
    },
    {
        {-50.0f, 0.0f, -50.0f},
        {50.0f, 100.0f, 50.0f},
    },
    {
        {-75.0f, 0.0f, -75.0f},
        {75.0f, 150.0f, 75.0f},
    },
    {
        {-100.0f, 0.0f, -100.0f},
        {100.0f, 800.0f, 100.0f},
    },
    {
        {-125.0f, 0.0f, -125.0f},
        {125.0f, 250.0f, 125.0f},
    },
    {
        {-150.0f, 0.0f, -150.0f},
        {150.0f, 300.0f, 150.0f},
    },
    {
        {-200.0f, 0.0f, -200.0f},
        {200.0f, 400.0f, 200.0f},
    },
    {
        {-600.0f, 0.0f, -600.0f},
        {600.0f, 900.0f, 600.0f},
    },
    {
        {-250.0f, 0.0f, -50.0f},
        {250.0f, 450.0f, 50.0f},
    },
    {
        {-60.0f, 0.0f, -20.0f},
        {40.0f, 130.0f, 150.0f},
    },
    {
        {-75.0f, 0.0f, -75.0f},
        {75.0f, 210.0f, 75.0f},
    },
    {
        {-70.0f, -100.0f, -80.0f},
        {70.0f, 240.0f, 100.0f},
    },
    {
        {-60.0f, -20.0f, -60.0f},
        {60.0f, 160.0f, 60.0f},
    },
#ifdef DEBUG
    {
        {-200.0f, 0.0f, -200.0f},
        {200.0f, 400.0f, 200.0f},
    },
#endif
};

/* 803A3740-803A37C0 000860 0080+00 1/1 0/0 0/0 .data            l_cullSizeSphere */
static cull_sphere l_cullSizeSphere[] = {
    {
        {0.0f, 0.0f, 0.0f},
        80.0f,
    },
    {
        {0.0f, 0.0f, 0.0f},
        50.0f,
    },
    {
        {0.0f, 0.0f, 0.0f},
        100.0f,
    },
    {
        {0.0f, 0.0f, 0.0f},
        150.0f,
    },
    {
        {0.0f, 0.0f, 0.0f},
        200.0f,
    },
    {
        {0.0f, 0.0f, 0.0f},
        250.0f,
    },
    {
        {0.0f, 0.0f, 0.0f},
        300.0f,
    },
    {
        {0.0f, 0.0f, 0.0f},
        400.0f,
    },
#ifdef DEBUG
    {
        {0.0f, 0.0f, 0.0f},
        400.0f,
    },
#endif
};

/* 8001ACEC-8001B058 01562C 036C+00 0/0 1/1 1/1 .text fopAcM_cullingCheck__FPC10fopAc_ac_c */
// NONMATCHING some stack / extra instructions regarding mDoLib_clipper::clip
s32 fopAcM_cullingCheck(fopAc_ac_c const* i_actor) {
    MtxP mtx_p;
    if (fopAcM_GetMtx(i_actor) == NULL) {
        mtx_p = j3dSys.getViewMtx();
    } else {
        Mtx concat_mtx;
        MTXConcat(j3dSys.getViewMtx(), fopAcM_GetMtx(i_actor), concat_mtx);
        mtx_p = concat_mtx;
    }

    f32 cullsize_far = fopAcM_getCullSizeFar(i_actor);
    if (dComIfGp_event_runCheck()) {
        cullsize_far *= dComIfGp_event_getCullRate();
    }

    int cullsize = fopAcM_GetCullSize(i_actor);

    if (fopAcM_CULLSIZE_IS_BOX(cullsize)) {
        if (fopAcM_GetCullSize(i_actor) == 14) {
            if (fopAcM_getCullSizeFar(i_actor) > 0.0f) {
                mDoLib_clipper::changeFar(cullsize_far * mDoLib_clipper::getFar());
                u32 ret =
                    mDoLib_clipper::clip(mtx_p, &i_actor->cull.box.max, &i_actor->cull.box.min);
                mDoLib_clipper::resetFar();
                return ret;
            } else {
                return mDoLib_clipper::clip(mtx_p, &i_actor->cull.box.max, &i_actor->cull.box.min);
            }
        } else {
            cull_box* box = &l_cullSizeBox[cullsize];

            if (fopAcM_getCullSizeFar(i_actor) > 0.0f) {
                mDoLib_clipper::changeFar(cullsize_far * mDoLib_clipper::getFar());
                u32 ret = mDoLib_clipper::clip(mtx_p, &box->max, &box->min);
                mDoLib_clipper::resetFar();
                return ret;
            } else {
                return mDoLib_clipper::clip(mtx_p, &box->max, &box->min);
            }
        }
    } else {
        if (fopAcM_GetCullSize(i_actor) == 23) {
            if (fopAcM_getCullSizeFar(i_actor) > 0.0f) {
                mDoLib_clipper::changeFar(cullsize_far * mDoLib_clipper::getFar());
                u32 ret = mDoLib_clipper::clip(mtx_p, fopAcM_getCullSizeSphereCenter(i_actor),
                                               fopAcM_getCullSizeSphereR(i_actor));
                mDoLib_clipper::resetFar();
                return ret;
            } else {
                return mDoLib_clipper::clip(mtx_p, fopAcM_getCullSizeSphereCenter(i_actor),
                                            fopAcM_getCullSizeSphereR(i_actor));
            }
        } else {
            cull_sphere* sphere = &l_cullSizeSphere[cullsize - 15];

            if (fopAcM_getCullSizeFar(i_actor) > 0.0f) {
                mDoLib_clipper::changeFar(cullsize_far * mDoLib_clipper::getFar());
                u32 ret = mDoLib_clipper::clip(mtx_p, sphere->center, sphere->radius);
                mDoLib_clipper::resetFar();
                return ret;
            } else {
                return mDoLib_clipper::clip(mtx_p, sphere->center, sphere->radius);
            }
        }
    }
}

/* 8001B058-8001B068 015998 0010+00 5/5 0/0 0/0 .text            event_second_actor__FUs */
void* event_second_actor(u16) {
    return dComIfGp_getPlayer(0);
}

/* 8001B068-8001B0FC 0159A8 0094+00 0/0 3/3 0/0 .text
 * fopAcM_orderTalkEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs       */
s32 fopAcM_orderTalkEvent(fopAc_ac_c* i_actorA, fopAc_ac_c* i_actorB, u16 i_priority, u16 i_flag) {
    if (!dComIfGp_getEvent().isOrderOK() &&
        (!(i_flag & 0x400) || !dComIfGp_getEvent().isChangeOK(i_actorA)))
    {
        return 0;
    }

    if (i_priority == 0) {
        i_priority = 0x1FF;
    }

    return dComIfGp_event_order(EVT_TYPE_TALK, i_priority, i_flag, 0x14F, i_actorA, i_actorB, -1,
                                -1);
}

/* 8001B0FC-8001B19C 015A3C 00A0+00 0/0 1/1 0/0 .text
 * fopAcM_orderTalkItemBtnEvent__FUsP10fopAc_ac_cP10fopAc_ac_cUsUs */
s32 fopAcM_orderTalkItemBtnEvent(u16 i_eventType, fopAc_ac_c* i_actorA, fopAc_ac_c* i_actorB,
                                 u16 i_priority, u16 i_flag) {
    if (!dComIfGp_getEvent().isOrderOK() &&
        (!(i_flag & 0x400) || !dComIfGp_getEvent().isChangeOK(i_actorA)))
    {
        return 0;
    }

    if (i_priority == 0) {
        i_priority = 500;
    }

    return dComIfGp_event_order(i_eventType, i_priority, i_flag, 0x14F, i_actorA, i_actorB, -1, -1);
}

/* 8001B19C-8001B244 015ADC 00A8+00 0/0 3/3 16/16 .text fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
 */
s32 fopAcM_orderSpeakEvent(fopAc_ac_c* i_actor, u16 i_priority, u16 i_flag) {
    if (!dComIfGp_getEvent().isOrderOK() &&
        (!(i_flag & 0x400) || !dComIfGp_getEvent().isChangeOK(i_actor)))
    {
        return 0;
    }

    if (i_priority == 0) {
        i_priority = 0x1EA;
    }

    return dComIfGp_event_order(EVT_TYPE_TALK, i_priority, i_flag, 0x14F, dComIfGp_getPlayer(0),
                                i_actor, -1, -1);
}

/* 8001B244-8001B334 015B84 00F0+00 0/0 2/2 0/0 .text
 * fopAcM_orderDoorEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs       */
s32 fopAcM_orderDoorEvent(fopAc_ac_c* i_actorA, fopAc_ac_c* i_actorB, u16 i_priority, u16 i_flag) {
    if (!dComIfGp_getEvent().isOrderOK() &&
        (!(i_flag & 0x400) || !dComIfGp_getEvent().isChangeOK(i_actorA)))
    {
        return 0;
    }

    if (i_priority == 0) {
        i_priority = 0xFF;
    }

    s16 eventID = i_actorB->eventInfo.getEventId();
    u8 toolID = i_actorB->eventInfo.getMapToolId();

    if (fopAcM_GetProfName(i_actorB) == 0x55 && toolID != 0xFF) {
        eventID = dComIfGp_getEventManager().getEventIdx(i_actorA, NULL, toolID);
    }

    return dComIfGp_event_order(EVT_TYPE_DOOR, i_priority, i_flag, -1, i_actorA, i_actorB, eventID,
                                toolID);
}

/* 8001B334-8001B3CC 015C74 0098+00 0/0 1/1 0/0 .text
 * fopAcM_orderCatchEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs      */
s32 fopAcM_orderCatchEvent(fopAc_ac_c* i_actorA, fopAc_ac_c* i_actorB, u16 i_priority, u16 i_flag) {
    if (!dComIfGp_getEvent().isOrderOK() &&
        (!(i_flag & 0x400) || !dComIfGp_getEvent().isChangeOK(i_actorA)))
    {
        return 0;
    }

    if (i_priority == 0) {
        i_priority = 2;
    }

    return dComIfGp_event_order(EVT_TYPE_CATCH, i_priority, i_flag, -1, i_actorA, i_actorB, -1, -1);
}

/* 8001B3CC-8001B4E0 015D0C 0114+00 0/0 2/2 6/6 .text
 * fopAcM_orderOtherEvent__FP10fopAc_ac_cPCcUsUsUs              */
s32 fopAcM_orderOtherEvent(fopAc_ac_c* i_actor, char const* i_eventName, u16 param_2, u16 i_flag,
                           u16 i_priority) {
    if (!dComIfGp_getEvent().isOrderOK() &&
        (!(i_flag & 0x400) || !dComIfGp_getEvent().isChangeOK(i_actor)))
    {
        return 0;
    }

    s16 eventIdx = dComIfGp_getEventManager().getEventIdx(i_actor, i_eventName, -1);
    if (eventIdx < 0) {
        return 0;
    }

    u16 eventPrio = dComIfGp_getEventManager().getEventPrio(i_actor, eventIdx);
    if (eventPrio == 0) {
        eventPrio = 0xFF;
    }

    if (i_priority != 0) {
        eventPrio = i_priority;
    }

    return dComIfGp_event_order(EVT_TYPE_OTHER, eventPrio, i_flag, param_2, i_actor,
                                event_second_actor(i_flag), eventIdx, -1);
}

/* 8001B4E0-8001B5E4 015E20 0104+00 0/0 1/1 2/2 .text
 * fopAcM_orderOtherEvent__FP10fopAc_ac_cP10fopAc_ac_cPCcUsUsUs */
s32 fopAcM_orderOtherEvent(fopAc_ac_c* i_actorA, fopAc_ac_c* i_actorB, char const* i_eventName,
                           u16 param_3, u16 i_flag, u16 i_priority) {
    if (!dComIfGp_getEvent().isOrderOK() &&
        (!(i_flag & 0x400) || !dComIfGp_getEvent().isChangeOK(i_actorA)))
    {
        return 0;
    }

    s16 eventIdx = dComIfGp_getEventManager().getEventIdx(i_actorA, i_eventName, -1);
    if (eventIdx < 0) {
        return 0;
    }

    u16 eventPrio = dComIfGp_getEventManager().getEventPrio(i_actorA, eventIdx);
    if (eventPrio == 0) {
        eventPrio = 0xFF;
    }

    if (i_priority != 0) {
        eventPrio = i_priority;
    }

    return dComIfGp_event_order(EVT_TYPE_OTHER, eventPrio, i_flag, param_3, i_actorA, i_actorB,
                                eventIdx, -1);
}

/* 8001B5E4-8001B67C 015F24 0098+00 0/0 2/2 41/41 .text
 * fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs               */
s32 fopAcM_orderChangeEventId(fopAc_ac_c* i_actor, s16 i_eventID, u16 i_flag, u16 param_3) {
    u16 eventPrio = dComIfGp_getEventManager().getEventPrio(i_actor, i_eventID);
    if (eventPrio == 0) {
        eventPrio = 0xFF;
    }

    return dComIfGp_event_order(EVT_TYPE_OTHER, eventPrio, i_flag | 0x400, param_3, i_actor,
                                event_second_actor(i_flag), i_eventID, -1);
}

/* 8001B67C-8001B7B4 015FBC 0138+00 0/0 10/10 101/101 .text
 * fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs            */
s32 fopAcM_orderOtherEventId(fopAc_ac_c* i_actor, s16 i_eventID, u8 i_mapToolID, u16 param_3,
                             u16 i_priority, u16 i_flag) {
    if (!dComIfGp_getEvent().isOrderOK() &&
        (!(i_flag & 0x400) || !dComIfGp_getEvent().isChangeOK(i_actor)))
    {
        return 0;
    }

    u16 newPriority = 50;
    s32 roomNo = dComIfGp_roomControl_getStayNo();
    if (i_actor != NULL) {
        roomNo = fopAcM_GetRoomNo(i_actor);
    }

    if (i_priority != 0) {
        newPriority = i_priority;
    } else if (i_actor != NULL) {
        u16 eventPrio = dComIfGp_getEventManager().getEventPrio(i_actor, i_eventID);

        if (eventPrio != 0) {
            newPriority = eventPrio;
        } else if (i_mapToolID != 0xFF) {
            dStage_MapEvent_dt_c* dt = dEvt_control_c::searchMapEventData(i_mapToolID, roomNo);

            if (dt != NULL) {
                newPriority = dt->mPriority;
            }
        }
    }

    return dComIfGp_event_order(EVT_TYPE_OTHER, newPriority, i_flag, param_3, i_actor,
                                event_second_actor(i_flag), i_eventID, i_mapToolID);
}

/* 8001B7B4-8001B8E0 0160F4 012C+00 1/1 1/1 4/4 .text
 * fopAcM_orderMapToolEvent__FP10fopAc_ac_cUcsUsUsUs            */
s32 fopAcM_orderMapToolEvent(fopAc_ac_c* i_actor, u8 param_1, s16 i_eventID, u16 param_3,
                             u16 i_flag, u16 param_5) {
    if (!dComIfGp_getEvent().isOrderOK() &&
        (!(i_flag & 0x400) || !dComIfGp_getEvent().isChangeOK(i_actor)))
    {
        return 0;
    }

    u16 newPriority = 100;
    s32 roomNo = dComIfGp_roomControl_getStayNo();
    if (i_actor != NULL) {
        roomNo = fopAcM_GetRoomNo(i_actor);
    }

    dStage_MapEvent_dt_c* dt = dEvt_control_c::searchMapEventData(param_1, roomNo);
    if (dt != NULL) {
        newPriority = dt->mPriority;

        if (i_eventID == 0xFF) {
            i_eventID = dComIfGp_getEventManager().getEventIdx(i_actor, param_1);
        }
    }

    if (i_flag & 0x100) {
        newPriority = 3;
    }

    if (param_5 != 0) {
        newPriority = param_5;
    }

    return dComIfGp_event_order(EVT_TYPE_OTHER, newPriority, i_flag, param_3, i_actor,
                                event_second_actor(i_flag), i_eventID, param_1);
}

/* 8001B8E0-8001B908 016220 0028+00 0/0 1/1 1/1 .text
 * fopAcM_orderMapToolAutoNextEvent__FP10fopAc_ac_cUcsUsUsUs    */
s32 fopAcM_orderMapToolAutoNextEvent(fopAc_ac_c* i_actor, u8 param_1, s16 i_eventID, u16 param_3,
                                     u16 i_flag, u16 param_5) {
    return fopAcM_orderMapToolEvent(i_actor, param_1, i_eventID, param_3, i_flag | 0x100, param_5);
}

/* 8001B908-8001B9D0 016248 00C8+00 0/0 0/0 106/106 .text
 * fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs             */
s32 fopAcM_orderPotentialEvent(fopAc_ac_c* i_actor, u16 i_flag, u16 param_2, u16 i_priority) {
    if (!dComIfGp_getEvent().isOrderOK() &&
        (!(i_flag & 0x400) || !dComIfGp_getEvent().isChangeOK(i_actor)))
    {
        return 0;
    }

    if (i_priority == 0) {
        i_priority = 0xFF;
    }

    return dComIfGp_event_order(EVT_TYPE_POTENTIAL, i_priority, i_flag, param_2, i_actor,
                                event_second_actor(i_flag), -1, -1);
}

/* 8001B9D0-8001BA7C 016310 00AC+00 0/0 3/3 12/12 .text fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
 */
s32 fopAcM_orderItemEvent(fopAc_ac_c* i_actor, u16 i_priority, u16 i_flag) {
    if (!dComIfGp_getEvent().isOrderOK() &&
        (!(i_flag & 0x400) || !dComIfGp_getEvent().isChangeOK(i_actor)))
    {
        return 0;
    }

    if (i_priority == 0) {
        i_priority = 0xFF;
    }

    return dComIfGp_event_order(EVT_TYPE_ITEM, i_priority, i_flag, -1, dComIfGp_getPlayer(0),
                                i_actor, -1, -1);
}

/* 8001BA7C-8001BB14 0163BC 0098+00 0/0 1/1 0/0 .text
 * fopAcM_orderTreasureEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs   */
s32 fopAcM_orderTreasureEvent(fopAc_ac_c* i_actorA, fopAc_ac_c* i_actorB, u16 i_priority,
                              u16 i_flag) {
    if (!dComIfGp_getEvent().isOrderOK() &&
        (!(i_flag & 0x400) || !dComIfGp_getEvent().isChangeOK(i_actorA)))
    {
        return 0;
    }

    if (i_priority == 0) {
        i_priority = 0xFF;
    }

    return dComIfGp_event_order(EVT_TYPE_TREASURE, i_priority, i_flag, -1, i_actorA, i_actorB, -1,
                                -1);
}

/* 8001BB14-8001BB44 016454 0030+00 0/0 11/11 10/10 .text
 * fopAcM_getTalkEventPartner__FPC10fopAc_ac_c                  */
fopAc_ac_c* fopAcM_getTalkEventPartner(fopAc_ac_c const*) {
    return (fopAc_ac_c*)dComIfGp_event_getTalkPartner();
}

/* 8001BB44-8001BB74 016484 0030+00 0/0 5/5 0/0 .text fopAcM_getItemEventPartner__FPC10fopAc_ac_c
 */
fopAc_ac_c* fopAcM_getItemEventPartner(fopAc_ac_c const*) {
    return (fopAc_ac_c*)dComIfGp_event_getItemPartner();
}

/* 8001BB74-8001BBE8 0164B4 0074+00 0/0 1/1 0/0 .text fopAcM_getEventPartner__FPC10fopAc_ac_c */
fopAc_ac_c* fopAcM_getEventPartner(fopAc_ac_c const* i_actor) {
    if (dComIfGp_event_getPt1() != i_actor) {
        return (fopAc_ac_c*)dComIfGp_event_getPt1();
    }

    return (fopAc_ac_c*)dComIfGp_event_getPt2();
}

/* 8001BBE8-8001BC74 016528 008C+00 0/0 5/5 43/43 .text
 * fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz */
fpc_ProcID fopAcM_createItemForPresentDemo(cXyz const* i_pos, int i_itemNo, u8 param_2,
                                           int i_itemBitNo, int i_roomNo, csXyz const* i_angle,
                                           cXyz const* i_scale) {
    dComIfGp_event_setGtItm(i_itemNo);

    if (i_itemNo == fpcNm_ITEM_NONE) {
        return fpcM_ERROR_PROCESS_ID_e;
    }

    return fopAcM_createDemoItem(i_pos, i_itemNo, i_itemBitNo, i_angle, i_roomNo, i_scale, param_2);
}

/* 8001BC74-8001BCFC 0165B4 0088+00 0/0 2/2 10/10 .text
 * fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz    */
fpc_ProcID fopAcM_createItemForTrBoxDemo(cXyz const* i_pos, int i_itemNo, int i_itemBitNo,
                                         int i_roomNo, csXyz const* i_angle, cXyz const* i_scale) {
    dComIfGp_event_setGtItm(i_itemNo);

    if (i_itemNo == fpcNm_ITEM_NONE) {
        return fpcM_ERROR_PROCESS_ID_e;
    }

    return fopAcM_createDemoItem(i_pos, i_itemNo, i_itemBitNo, i_angle, i_roomNo, i_scale, 0);
}

struct ItemTableList {
    /* 0x00 */ char mListName[11];
    /* 0x0B */ u8 mTableNum;
    /* 0x0C */ u8 padding[4];
    /* 0x10 */ u8 mTables[255][16];
};

/* 8001BCFC-8001BE14 01663C 0118+00 2/2 0/0 0/0 .text            fopAcM_getItemNoFromTableNo__FUc */
u8 fopAcM_getItemNoFromTableNo(u8 i_tableNo) {
    u8 tableNo = i_tableNo;
    ItemTableList* tableList = (ItemTableList*)dComIfGp_getItemTable();

    if (i_tableNo == 255) {
        return i_tableNo;
    }

#ifdef DEBUG
    if (tableList->mTableNum - 1 < i_tableNo) {
        // "Table Num<%d>, Specified Table<%d>, over table num!\n"
        OSReport_Error("テーブル数<%d>、指定テーブル番号<%d>で、テーブル数オーバーしています！\n",
                       tableList->mTableNum, i_tableNo);
        i_tableNo = 0;
    }
#endif

    u8 hp_percent = (dComIfGs_getLife() * 100) / (((dComIfGs_getMaxLife() / 5) * 4) & 0xFC);

    switch (i_tableNo) {
    case 150:
    case 160:
    case 170:
    case 180:
    case 190:
        if (hp_percent < 80) {
            if (hp_percent >= 60) {
                tableNo = i_tableNo + 1;
            } else if (hp_percent >= 40) {
                tableNo = i_tableNo + 2;
            } else if (hp_percent >= 20) {
                tableNo = i_tableNo + 3;
            } else {
                tableNo = i_tableNo + 4;
            }
        }
        break;
    }

    return tableList->mTables[tableNo][(int)cM_rndF(15.9999f)];
}

struct EnemyTableList {
    /* 0x0 */ u32 mTag;
    /* 0x4 */ int field_0x4;  // mTableNum?
    /* 0x8 */ u8 mData;
};

struct EnemyTable {
    /* 0x0 */ u8 mEnemyID;
    /* 0x1 */ u8 mItemTableNo;
    /* 0x2 */ char mStage[8];
};

/* 8001BE14-8001BF64 016754 0150+00 0/0 0/0 9/9 .text
 * fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf */
fpc_ProcID fopAcM_createItemFromEnemyID(u8 i_enemyID, cXyz const* i_pos, int i_itemBitNo,
                                        int i_roomNo, csXyz const* i_angle, cXyz const* i_scale,
                                        f32* i_speedF, f32* i_speedY) {
    int tableNo = 0xFF;
    EnemyTableList* tblList = (EnemyTableList*)dEnemyItem_c::mData;
    int tableNum = tblList->field_0x4;
    EnemyTable* table = (EnemyTable*)&tblList->mData;

    for (u32 i = 0; i < tableNum; i++) {
        if (i_enemyID == table->mEnemyID) {
            if (table->mStage[0] == '#') {
                tableNo = table->mItemTableNo;
            } else if (!strcmp(dComIfGp_getStartStageName(), table->mStage)) {
                tableNo = table->mItemTableNo;
                break;
            }
        }
        table++;
    }

    if (daPy_getPlayerActorClass()->checkHorseRide()) {
        int itemNo = fopAcM_getItemNoFromTableNo(tableNo);
        void* actor =
            fopAcM_createItemForDirectGet(i_pos, itemNo, i_roomNo, NULL, NULL, 0.0f, 0.0f);
        return fopAcM_GetID(actor);
    }

    return fopAcM_createItemFromTable(i_pos, tableNo, i_itemBitNo, i_roomNo, i_angle, 0, i_scale,
                                      i_speedF, i_speedY, false);
}

/* 8001BF64-8001C078 0168A4 0114+00 1/1 0/0 11/11 .text
 * fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb */
fpc_ProcID fopAcM_createItemFromTable(cXyz const* i_pos, int i_itemNo, int i_itemBitNo,
                                      int i_roomNo, csXyz const* i_angle, int param_5,
                                      cXyz const* i_scale, f32* i_speedF, f32* i_speedY,
                                      bool i_createDirect) {
    // clang-format off
    JUT_ASSERT(0, 0 <= i_itemNo && i_itemNo <= 255 && (-1 <= i_itemBitNo && i_itemBitNo < (dSv_info_c::DAN_ITEM + dSv_info_c::MEMORY_ITEM + dSv_info_c::ZONE_ITEM )) || i_itemBitNo == 255);
    // clang-format on

    ItemTableList* tableList = (ItemTableList*)dComIfGp_getItemTable();

    if (i_itemNo == 0xFF) {
        return fpcM_ERROR_PROCESS_ID_e;
    }

#ifdef DEBUG
    if (tableList->mTableNum - 1 < i_itemNo) {
        // "Table Num<%d>, Specified Table<%d>, over table num!\n"
        OSReport_Error("テーブル数<%d>、指定テーブル番号<%d>で、テーブル数オーバーしています！\n",
                       tableList->mTableNum, i_itemNo);
        i_itemNo = 0;
    }
#endif

    int itemNo = fopAcM_getItemNoFromTableNo(i_itemNo);
    if (itemNo == fpcNm_ITEM_NONE) {
        return fpcM_ERROR_PROCESS_ID_e;
    }

    void* create_actor;
    if (i_createDirect) {
        create_actor =
            fopAcM_createItemForDirectGet(i_pos, itemNo, i_roomNo, NULL, NULL, 0.0f, 0.0f);
    } else if (i_speedF == NULL && i_speedY == NULL) {
        create_actor =
            fopAcM_fastCreateItem2(i_pos, itemNo, i_itemBitNo, i_roomNo, param_5, i_angle, i_scale);
    } else {
        create_actor = fopAcM_fastCreateItem(i_pos, itemNo, i_roomNo, i_angle, i_scale, i_speedF,
                                             i_speedY, i_itemBitNo, param_5, NULL);
    }

    return fopAcM_GetID(create_actor);
}

/* 8001C078-8001C0D4 0169B8 005C+00 2/2 0/0 0/0 .text
 * fopAcM_createDemoItem__FPC4cXyziiPC5csXyziPC4cXyzUc          */
fpc_ProcID fopAcM_createDemoItem(const cXyz* i_pos, int i_itemNo, int i_itemBitNo,
                                 const csXyz* i_angle, int i_roomNo, const cXyz* scale,
                                 u8 param_7) {
    // clang-format off
    JUT_ASSERT(0, 0 <= i_itemNo && i_itemNo < 256 && (-1 <= i_itemBitNo && i_itemBitNo < (dSv_info_c::DAN_ITEM + dSv_info_c::MEMORY_ITEM + dSv_info_c::ZONE_ITEM )) || i_itemBitNo == 255);
    // clang-format on

    if (i_itemNo == fpcNm_ITEM_NONE) {
        return fpcM_ERROR_PROCESS_ID_e;
    }

    return fopAcM_create(PROC_Demo_Item,
                         (i_itemNo & 0xFF) | (i_itemBitNo & 0x7F) << 0x8 | (param_7 << 0x10), i_pos,
                         i_roomNo, i_angle, scale, -1);
}

/* 8001C0D4-8001C174 016A14 00A0+00 0/0 0/0 18/18 .text
 * fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi       */
fpc_ProcID fopAcM_createItemForBoss(const cXyz* i_pos, int i_itemNo, int i_roomNo,
                                    const csXyz* i_angle, const cXyz* i_scale, f32 i_speedF,
                                    f32 i_speedY, int param_8) {
    fopAc_ac_c* actor =
        fopAcM_fastCreate(PROC_Obj_LifeContainer, 0xFFFF0000 | param_8 << 0x8 | (i_itemNo & 0xFF),
                          i_pos, i_roomNo, i_angle, i_scale, -1, NULL, NULL);
    if (actor != NULL) {
        actor->speedF = i_speedF;
        actor->speed.y = i_speedY;
    }

    return fopAcM_GetID(actor);
}

/* 8001C174-8001C1B8 016AB4 0044+00 0/0 0/0 2/2 .text
 * fopAcM_createItemForMidBoss__FPC4cXyziiPC5csXyzPC4cXyzii     */
fpc_ProcID fopAcM_createItemForMidBoss(const cXyz* i_pos, int i_itemNo, int i_roomNo,
                                       const csXyz* i_angle, const cXyz* i_scale, int param_6,
                                       int param_7) {
    csXyz angle(csXyz::Zero);
    return fopAcM_createItem(i_pos, i_itemNo, param_7, i_roomNo, &angle, i_scale, 0x6);
}

/* 8001C1B8-8001C1FC 016AF8 0044+00 2/2 0/0 1/1 .text
 * fopAcM_createItemForDirectGet__FPC4cXyziiPC5csXyzPC4cXyzff   */
fopAc_ac_c* fopAcM_createItemForDirectGet(const cXyz* i_pos, int i_itemNo, int i_roomNo,
                                          const csXyz* i_angle, const cXyz* i_scale, f32 i_speedF,
                                          f32 i_speedY) {
    return fopAcM_fastCreateItem(i_pos, i_itemNo, i_roomNo, i_angle, i_scale, &i_speedF, &i_speedY, -1,
                                 0x7, NULL);
}

/* 8001C1FC-8001C240 016B3C 0044+00 0/0 2/2 3/3 .text
 * fopAcM_createItemForSimpleDemo__FPC4cXyziiPC5csXyzPC4cXyzff  */
fopAc_ac_c* fopAcM_createItemForSimpleDemo(const cXyz* i_pos, int i_itemNo, int i_roomNo,
                                           const csXyz* i_angle, const cXyz* i_scale, f32 i_speedF,
                                           f32 i_speedY) {
    return fopAcM_fastCreateItem(i_pos, i_itemNo, i_roomNo, i_angle, i_scale, &i_speedF, &i_speedY, -1,
                                 0x4, NULL);
}

/* 8001C240-8001C3E0 016B80 01A0+00 1/1 1/1 17/17 .text
 * fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi               */
fpc_ProcID fopAcM_createItem(const cXyz* i_pos, int i_itemNo, int i_itemBitNo, int i_roomNo,
                             const csXyz* i_angle, const cXyz* i_scale, int param_7) {
    // clang-format off
    JUT_ASSERT(0, 0 <= i_itemNo && i_itemNo < 256 && (-1 <= i_itemBitNo && i_itemBitNo < (dSv_info_c::DAN_ITEM + dSv_info_c::MEMORY_ITEM + dSv_info_c::ZONE_ITEM )) || i_itemBitNo == 255);
    // clang-format on

    if (i_itemNo == fpcNm_ITEM_NONE) {
        return fpcM_ERROR_PROCESS_ID_e;
    }

    csXyz item_angle(csXyz::Zero);
    if (i_angle != NULL) {
        item_angle = *i_angle;
    } else {
        item_angle.y = cM_rndFX(0x7FFF);
    }
    item_angle.z = 0xFF;

    u8 item_no = check_itemno(i_itemNo);
    u32 params = MAKE_ITEM_PARAMS(item_no, i_itemBitNo, 0xFF, param_7);

    switch (i_itemNo) {
    case fpcNm_ITEM_RECOVERY_FAILY:
        return fopAcM_create(PROC_Obj_Yousei, 0xFFFFFFFF, i_pos, i_roomNo, i_angle, i_scale, -1);
#ifdef DEBUG
    case fpcNm_ITEM_SMALL_KEY:
        // "Small Key: Can't support map display, so program generation is prohibited!\n"
        OS_REPORT_ERROR("小さい鍵：マップ表示対応出来ないので、プログラム生成禁止！\n");
        JUT_ASSERT(0, 0);
        break;
    case fpcNm_ITEM_KANTERA:
        // "Lantern: Program generation is prohibited!\n"
        OS_REPORT_ERROR("カンテラ：プログラム生成禁止！\n");
        JUT_ASSERT(0, 0);
        break;
    case fpcNm_ITEM_LIGHT_DROP:
        // "Light Drop: Program generation is prohibited!\n"
        OS_REPORT_ERROR("光の雫：プログラム生成禁止！\n");
        JUT_ASSERT(0, 0);
        break;
#endif
    case fpcNm_ITEM_KAKERA_HEART:
    case fpcNm_ITEM_UTAWA_HEART:
        return fopAcM_create(PROC_Obj_LifeContainer, params, i_pos, i_roomNo, i_angle, i_scale, -1);
    case fpcNm_ITEM_TRIPLE_HEART:
        for (int i = 0; i < 2; i++) {
            fopAcM_create(PROC_ITEM, params, i_pos, i_roomNo, &item_angle, i_scale, -1);
            item_angle.y = cM_rndFX(0x7FFF);
        }
    default:
        return fopAcM_create(PROC_ITEM, params, i_pos, i_roomNo, &item_angle, i_scale, -1);
    }
}

/* 8001C3E0-8001C5B0 016D20 01D0+00 1/1 0/0 0/0 .text
 * fopAcM_fastCreateItem2__FPC4cXyziiiiPC5csXyzPC4cXyz          */
fopAc_ac_c* fopAcM_fastCreateItem2(const cXyz* i_pos, int i_itemNo, int i_itemBitNo, int i_roomNo,
                                   int param_5, const csXyz* i_angle, const cXyz* i_scale) {
    // clang-format off
    JUT_ASSERT(0, 0 <= i_itemNo && i_itemNo < 256 && (-1 <= i_itemBitNo && i_itemBitNo < (dSv_info_c::DAN_ITEM + dSv_info_c::MEMORY_ITEM + dSv_info_c::ZONE_ITEM )) || i_itemBitNo == 255);
    // clang-format on

    csXyz item_angle(csXyz::Zero);

    if (i_itemNo == fpcNm_ITEM_NONE) {
        return NULL;
    }

    if (i_angle != NULL) {
        item_angle = *i_angle;
    } else {
        item_angle.y = cM_rndFX(0x7FFF);
    }
    item_angle.z = 0xFF;

    u8 item_no = check_itemno(i_itemNo);
    u32 params = MAKE_ITEM_PARAMS(item_no, i_itemBitNo, 0xFF, param_5);

    switch (i_itemNo) {
    case fpcNm_ITEM_RECOVERY_FAILY:
        return fopAcM_fastCreate(PROC_Obj_Yousei, 0xFFFFFFFF, i_pos, i_roomNo, i_angle, i_scale, -1,
                                 NULL, NULL);
#ifdef DEBUG
    case fpcNm_ITEM_SMALL_KEY:
        // "Small Key: Can't support map display, so program generation is prohibited!\n"
        OS_REPORT_ERROR("小さい鍵：マップ表示対応出来ないので、プログラム生成禁止！\n");
        JUT_ASSERT(0, 0);
        break;
    case fpcNm_ITEM_KANTERA:
        // "Lantern: Program generation is prohibited!\n"
        OS_REPORT_ERROR("カンテラ：プログラム生成禁止！\n");
        JUT_ASSERT(0, 0);
        break;
    case fpcNm_ITEM_LIGHT_DROP:
        // "Light Drop: Program generation is prohibited!\n"
        OS_REPORT_ERROR("光の雫：プログラム生成禁止！\n");
        JUT_ASSERT(0, 0);
        break;
#endif
    case fpcNm_ITEM_KAKERA_HEART:
    case fpcNm_ITEM_UTAWA_HEART:
        return fopAcM_fastCreate(PROC_Obj_LifeContainer, params, i_pos, i_roomNo, i_angle, i_scale,
                                 -1, NULL, NULL);
    case fpcNm_ITEM_TRIPLE_HEART:
        for (int i = 0; i < 2; i++) {
            fopAcM_fastCreate(PROC_ITEM, params, i_pos, i_roomNo, &item_angle, i_scale, -1, NULL,
                              NULL);
            item_angle.y = cM_rndFX(0x7FFF);
        }
    default:
        return fopAcM_fastCreate(PROC_ITEM, params, i_pos, i_roomNo, &item_angle, i_scale, -1, NULL,
                                 NULL);
    }
}

/* 8001C5B0-8001C870 016EF0 02C0+00 3/3 0/0 4/4 .text
 * fopAcM_fastCreateItem__FPC4cXyziiPC5csXyzPC4cXyzPfPfiiPFPv_i */
fopAc_ac_c* fopAcM_fastCreateItem(const cXyz* i_pos, int i_itemNo, int i_roomNo,
                                  const csXyz* i_angle, const cXyz* i_scale, f32* i_speedF,
                                  f32* i_speedY, int i_itemBitNo, int param_9,
                                  createFunc i_createFunc) {
    JUT_ASSERT(0, 0 <= i_itemNo && i_itemNo < 256);

    csXyz angle;
    if (i_itemNo == fpcNm_ITEM_NONE) {
        return NULL;
    }

    int i;

    u8 item_no = check_itemno(i_itemNo);
    u8 item_bit_no = i_itemBitNo;
    u32 params = MAKE_ITEM_PARAMS(item_no, item_bit_no, 0xFF, param_9);

    if (i_speedF != NULL && isHeart(i_itemNo)) {
        *i_speedF = 2.0f * *i_speedF;
    }

    switch (i_itemNo) {
    case fpcNm_ITEM_RECOVERY_FAILY:
        return fopAcM_fastCreate(PROC_Obj_Yousei, 0xFFFFFFFF, i_pos, i_roomNo, i_angle, i_scale, -1,
                                 NULL, NULL);
#ifdef DEBUG
    case fpcNm_ITEM_SMALL_KEY:
        // "Small Key: Can't support map display, so program generation is prohibited!\n"
        OS_REPORT_ERROR("小さい鍵：マップ表示対応出来ないので、プログラム生成禁止！\n");
        JUT_ASSERT(0, 0);
        break;
    case fpcNm_ITEM_KANTERA:
        // "Lantern: Program generation is prohibited!\n"
        OS_REPORT_ERROR("カンテラ：プログラム生成禁止！\n");
        JUT_ASSERT(0, 0);
        break;
    case fpcNm_ITEM_LIGHT_DROP:
        // "Light Drop: Program generation is prohibited!\n"
        OS_REPORT_ERROR("光の雫：プログラム生成禁止！\n");
        JUT_ASSERT(0, 0);
        break;
#endif
    case fpcNm_ITEM_KAKERA_HEART:
    case fpcNm_ITEM_UTAWA_HEART:
        return fopAcM_fastCreate(PROC_Obj_LifeContainer, params, i_pos, i_roomNo, i_angle, i_scale,
                                 -1, NULL, NULL);
    case fpcNm_ITEM_TRIPLE_HEART:
        for (i = 0; i < 2; i++) {
            if (i_angle != NULL) {
                angle = *i_angle;
            } else {
                angle = csXyz::Zero;
            }
            angle.z = 0xFF;
            angle.y += (s16)cM_rndFX(0x2000);

            fopAc_ac_c* actor = (fopAc_ac_c*)fopAcM_fastCreate(
                PROC_ITEM, params, i_pos, i_roomNo, &angle, i_scale, -1, i_createFunc, NULL);

            if (actor != NULL) {
                if (i_speedF != NULL) {
                    actor->speedF = *i_speedF * (1.0f + cM_rndFX(0.3f));
                }

                if (i_speedY != NULL) {
                    actor->speed.y = *i_speedY * (1.0f + cM_rndFX(0.2f));
                }
            }
        }
    default:
        if (i_angle != NULL) {
            angle = *i_angle;
        } else {
            angle = csXyz::Zero;
        }
        angle.z = 0xFF;

        fopAc_ac_c* actor = (fopAc_ac_c*)fopAcM_fastCreate(PROC_ITEM, params, i_pos, i_roomNo,
                                                           &angle, i_scale, -1, i_createFunc, NULL);

        if (actor != NULL) {
            if (i_speedF != NULL) {
                actor->speedF = *i_speedF;
            }

            if (i_speedY != NULL) {
                actor->speed.y = *i_speedY;
            }
        }

        return actor;
    }
}

/* 8001C870-8001C95C 0171B0 00EC+00 0/0 0/0 1/1 .text fopAcM_createBokkuri__FUsPC4cXyziiiPC4cXyzii
 */
fpc_ProcID fopAcM_createBokkuri(u16 i_setId, const cXyz* i_pos, int i_itemNo, int i_itemBit,
                                int i_roomNo, const cXyz* param_6, int i_itemType, int param_8) {
    csXyz params_ex(0, 0, 0);
    if (param_6 != NULL) {
        params_ex.y = param_6->atan2sX_Z();
        params_ex.y += (s16)(2048.0f * cM_rndFX(1.0f));
        param_8 = 1;
    }

    u32 params = 0;
    daObjCarry_c::make_prm_bokkuri(&params, &params_ex, i_itemNo, i_itemBit, i_itemType, param_8);
    return fopAcM_create(PROC_Obj_Carry, i_setId, params, i_pos, i_roomNo, &params_ex, NULL, -1, NULL);
}

/* 8001C95C-8001C9CC 01729C 0070+00 0/0 0/0 12/12 .text
 * fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc               */
fpc_ProcID fopAcM_createWarpHole(const cXyz* i_pos, const csXyz* i_angle, int i_roomNo, u8 param_4,
                                 u8 param_5, u8 param_6) {
    if (param_6 == 0xFF) {
        param_6 = param_4;
    }
    u32 actorParams;
    make_prm_warp_hole(&actorParams, param_5, param_6, param_4);
    return fopAcM_create(PROC_Obj_BossWarp, actorParams, i_pos, i_roomNo, i_angle, NULL, -1);
}

/* 8001C9CC-8001CA1C 01730C 0050+00 1/1 0/0 0/0 .text            enemySearchJugge__FPvPv */
void* enemySearchJugge(void* i_actor, void* i_data) {
    if (i_actor != NULL && fopAc_IsActor(i_actor) && ((fopAc_ac_c*)i_actor)->group == fopAc_ENEMY_e)
    {
        return i_actor;
    } else {
        return NULL;
    }
}

/* 8001CA1C-8001CAD8 01735C 00BC+00 0/0 0/0 6/6 .text            fopAcM_myRoomSearchEnemy__FSc */
fopAc_ac_c* fopAcM_myRoomSearchEnemy(s8 roomNo) {
    JUT_ASSERT(0, roomNo >= 0);

    int procID = dStage_roomControl_c::getStatusProcID(roomNo);
    scene_class* roomProc = fopScnM_SearchByID(procID);
    JUT_ASSERT(0, roomProc != 0);

    u32 actorID = ((daPy_py_c*)dComIfGp_getPlayer(0))->getGrabActorID();
    fopAc_ac_c* actor = fopAcM_SearchByID(actorID);

    if (actor != NULL && fopAcM_GetGroup(actor) == 2) {
        return actor;
    }

    return (fopAc_ac_c*)fpcM_JudgeInLayer(fpcM_LayerID(roomProc), enemySearchJugge, NULL);
}

/* 8001CAD8-8001CB48 017418 0070+00 0/0 0/0 81/81 .text
 * fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc         */
fpc_ProcID fopAcM_createDisappear(const fopAc_ac_c* i_actor, const cXyz* i_pos, u8 i_size,
                                  u8 i_type, u8 i_enemyID) {
    return fopAcM_GetID(fopAcM_fastCreate(
        PROC_DISAPPEAR, (i_enemyID << 0x10) | (i_size << 0x8) | i_type, i_pos,
        fopAcM_GetRoomNo(i_actor), &i_actor->current.angle, NULL, 0xFF, NULL, NULL));
}

/* 8001CB48-8001CBA0 017488 0058+00 0/0 6/6 7/7 .text            fopAcM_setCarryNow__FP10fopAc_ac_ci
 */
void fopAcM_setCarryNow(fopAc_ac_c* i_actor, int param_1) {
    i_actor->actor_status |= 0x2000;

    if (param_1 != 0) {
        fopAcM_setStageLayer(i_actor);
        fopAcM_onActor(i_actor);
    }
}

/* 8001CBA0-8001CC5C 0174E0 00BC+00 0/0 5/5 21/21 .text fopAcM_cancelCarryNow__FP10fopAc_ac_c */
void fopAcM_cancelCarryNow(fopAc_ac_c* i_actor) {
    if (fopAcM_checkCarryNow(i_actor)) {
        i_actor->actor_status &= ~0x2000;

        s8 roomNo = fopAcM_GetHomeRoomNo(i_actor);
        if (roomNo != -1) {
            int procID = dStage_roomControl_c::getStatusProcID(fopAcM_GetRoomNo(i_actor));
            scene_class* roomProc = fopScnM_SearchByID(procID);

            if (roomProc != NULL) {
                fopAcM_setRoomLayer(i_actor, fopAcM_GetRoomNo(i_actor));
            }
        }

        i_actor->shape_angle.z = 0;
        i_actor->shape_angle.x = 0;

        if (dComIfGp_event_runCheck() && fopAcM_GetGroup(i_actor) != 2) {
            i_actor->actor_status |= 0x800;
        }
    }
}

/* 8001CC5C-8001CDFC 01759C 01A0+00 0/0 0/0 9/9 .text            fopAcM_otoCheck__FPC10fopAc_ac_cf
 */
BOOL fopAcM_otoCheck(fopAc_ac_c const* i_actor, f32 param_1) {
    SND_INFLUENCE* sound = dKy_Sound_get();

    if (sound->actor_id != fpcM_ERROR_PROCESS_ID_e && fopAcM_GetID(i_actor) != sound->actor_id) {
        cXyz tmp = sound->position - i_actor->current.pos;

        if (tmp.abs() < param_1) {
            return sound->field_0xc;
        }
    }

    return FALSE;
}

/* 8001CDFC-8001CED0 01773C 00D4+00 0/0 0/0 49/49 .text
 * fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c           */
BOOL fopAcM_otherBgCheck(fopAc_ac_c const* param_0, fopAc_ac_c const* param_1) {
    dBgS_LinChk linChk;
    cXyz start;
    cXyz end;

    end = param_1->current.pos;
    end.y += 100.0f;

    start = param_0->current.pos;
    start.y = param_0->eyePos.y;

    linChk.Set(&start, &end, param_0);

    if (dComIfG_Bgsp().LineCross(&linChk)) {
        return TRUE;
    }

    return FALSE;
}

/* 8001CED0-8001CFD8 017810 0108+00 0/0 0/0 18/18 .text fopAcM_wayBgCheck__FPC10fopAc_ac_cff */
BOOL fopAcM_wayBgCheck(fopAc_ac_c const* param_0, f32 param_1, f32 param_2) {
    dBgS_LinChk linChk;
    cXyz offset;
    cXyz start;
    cXyz end;

    start = param_0->current.pos;
    start.y += param_2;
    mDoMtx_YrotS((MtxP)calc_mtx, param_0->shape_angle.y);

    offset.x = 0.0f;
    offset.y = 50.0f;
    offset.z = param_1;

    MtxPosition(&offset, &end);
    VECAdd(&end, &param_0->current.pos, &end);

    linChk.Set(&start, &end, param_0);

    if (dComIfG_Bgsp().LineCross(&linChk)) {
        return TRUE;
    }

    return FALSE;
}

/* 8001CFD8-8001D020 017918 0048+00 0/0 0/0 2/2 .text fopAcM_plAngleCheck__FPC10fopAc_ac_cs */
BOOL fopAcM_plAngleCheck(fopAc_ac_c const* i_actor, s16 i_angle) {
    s16 angle = i_actor->shape_angle.y - dComIfGp_getPlayer(0)->shape_angle.y;
    if (angle <= i_angle && angle >= (s16)-i_angle) {
        return FALSE;
    }

    return TRUE;
}

/* 80450CCC-80450CD0 0001CC 0001+03 1/1 0/0 0/0 .sbss            l_hio */
static l_HIO l_hio;

static fopAcM_lc_c l_actorLC;

// stripped function
void fopAcM_GetRealMin(const fopAc_ac_c*) {
    static cXyz min;
}

// stripped function
void fopAcM_GetRealMax(const fopAc_ac_c*) {
    static cXyz max;
}

/* 803F1C48-803F1CB8 01E968 0070+00 1/2 4/4 9/9 .bss             mLineCheck__11fopAcM_lc_c */
dBgS_ObjLinChk fopAcM_lc_c::mLineCheck;

/* 803F1CC4-803F1D18 01E9E4 0054+00 2/3 6/6 26/26 .bss             mGndCheck__11fopAcM_gc_c */
dBgS_ObjGndChk fopAcM_gc_c::mGndCheck;

/* 80450CD0-80450CD4 0001D0 0004+00 2/2 7/7 103/103 .sbss            mGroundY__11fopAcM_gc_c */
f32 fopAcM_gc_c::mGroundY;

/* 8001D020-8001D10C 017960 00EC+00 0/0 0/0 96/96 .text
 * fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci */
void fopAcM_effSmokeSet1(u32* param_0, u32* param_1, cXyz const* param_2, csXyz const* param_3,
                         f32 param_4, dKy_tevstr_c const* param_5, int param_6) {
    cXyz p2(param_2->x, param_2->y + 100.0f, param_2->z);
    if (fopAcM_gc_c::gndCheck(&p2)) {
        p2.y = fopAcM_gc_c::getGroundY();
        cXyz stack_18(param_4, param_4, param_4);
        *param_0 =
            dComIfGp_particle_setSimpleFoot(*param_0, param_1, *fopAcM_gc_c::getGroundCheck(), &p2,
                                            param_5, param_6, param_3, &stack_18, NULL, 0xff, NULL);
    }
}

/* 8001D10C-8001D1F4 017A4C 00E8+00 0/0 1/1 41/41 .text            fopAcM_effHamonSet__FPUlPC4cXyzff
 */
void fopAcM_effHamonSet(u32* param_0, cXyz const* param_1, f32 param_2, f32 emitRate) {
    cXyz tmp(param_2, param_2, param_2);
    static u16 const hamon_name[2] = {0x01B2, 0x01B3};

    for (int i = 0; i < 2; i++) {
        *param_0 = dComIfGp_particle_set(*param_0, hamon_name[i], param_1, NULL, &tmp);

        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(*param_0);
        if (emitter != NULL) {
            emitter->setRate(emitRate);
        }
        param_0++;
    }
}

/* 8001D1F4-8001D1FC 017B34 0008+00 0/0 0/0 7/7 .text            fopAcM_riverStream__FP4cXyzPsPff */
s32 fopAcM_riverStream(cXyz* param_0, s16* param_1, f32* param_2, f32 param_3) {
    return 0;
}

/* 8001D1FC-8001D32C 017B3C 0130+00 0/0 0/0 12/12 .text fopAcM_carryOffRevise__FP10fopAc_ac_c */
s32 fopAcM_carryOffRevise(fopAc_ac_c* param_0) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    dBgS_LinChk linChk;
    cXyz offset;
    cXyz start;
    cXyz end;

    start = player->current.pos;
    start.y = param_0->current.pos.y;
    mDoMtx_YrotS((MtxP)calc_mtx, player->shape_angle.y);

    offset.x = 0.0f;
    offset.y = param_0->current.pos.y - player->current.pos.y;
    offset.z = 150.0f;

    MtxPosition(&offset, &end);
    VECAdd(&end, &player->current.pos, &end);

    linChk.Set(&start, &end, param_0);

    if (dComIfG_Bgsp().LineCross(&linChk)) {
        param_0->current.pos.x = player->current.pos.x;
        param_0->current.pos.z = player->current.pos.z;
        param_0->old.pos = param_0->current.pos;
        param_0->speedF = 0.0f;
        return 1;
    }

    return 0;
}

/* 8001D32C-8001D3D4 017C6C 00A8+00 1/1 0/0 0/0 .text            vectle_calc__FPC10DOUBLE_POSP4cXyz
 */
static void vectle_calc(const DOUBLE_POS* pDpos, cXyz* pOut) {
    f64 len = sqrt(pDpos->x * pDpos->x + pDpos->y * pDpos->y + pDpos->z * pDpos->z);
    if (len != 0.0) {
        pOut->x = pDpos->x / len;
        pOut->y = pDpos->y / len;
        pOut->z = pDpos->z / len;
    } else {
        pOut->x = 0.0f;
        pOut->y = 0.0f;
        pOut->z = 0.0f;
    }
}

/* 8001D3D4-8001D42C 017D14 0058+00 1/1 0/0 0/0 .text get_vectle_calc__FPC4cXyzPC4cXyzP4cXyz */
static void get_vectle_calc(const cXyz* pXyzA, const cXyz* pXyzB, cXyz* pOut) {
    DOUBLE_POS dPos;
    dPos.x = pXyzB->x - pXyzA->x;
    dPos.y = pXyzB->y - pXyzA->y;
    dPos.z = pXyzB->z - pXyzA->z;
    vectle_calc(&dPos, pOut);
}

/* 8001D42C-8001D5A4 017D6C 0178+00 0/0 3/3 40/40 .text
 * fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData         */
void fopAcM_setEffectMtx(const fopAc_ac_c* i_actor, const J3DModelData* modelData) {
    const cXyz* pEyePos = &i_actor->eyePos;
    camera_class* camera = dCam_getCamera();
    cXyz v1 = *pEyePos - camera->lookat.eye;
    cXyz v2;
    get_vectle_calc(&i_actor->tevStr.field_0x32c, pEyePos, &v2);
    Vec half;
    C_VECHalfAngle(&v1, &v2, &half);
    Mtx mtx;
    C_MTXLookAt(mtx, &cXyz::Zero, &cXyz::BaseY, &half);
    mDoMtx_stack_c::scaleS(1.0, 1.0, 1.0);
    static Mtx const mtx_adj = {
        {0.5f, 0.0f, 0.0f, 0.5f},
        {0.0f, -0.5f, 0.0f, 0.5f},
        {0.0f, 0.0f, 1.0f, 0.0f},
    };
    mDoMtx_stack_c::concat(mtx_adj);
    mDoMtx_stack_c::concat(mtx);
    MtxP currentMtx = mDoMtx_stack_c::get();
    currentMtx[0][3] = 0.0;
    currentMtx[1][3] = 0.0;
    currentMtx[2][3] = 0.0;

    Mtx mtx2;
    mDoMtx_copy(currentMtx, mtx2);
    for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
        J3DMaterial* material = modelData->getMaterialNodePointer(i);
        for (u32 j = 0; j < 8; j++) {
            J3DTexMtx* texMtx = material->getTexMtx(j);
            if (texMtx != NULL) {
                switch (texMtx->getTexMtxInfo().mInfo) {
                case 6:
                    texMtx->setEffectMtx(mtx2);
                    break;
                }
            }
        }
    }
}

/* 8001D5A4-8001D5EC 017EE4 0048+00 1/1 0/0 0/0 .text fopAcM_getProcNameString__FPC10fopAc_ac_c */
static const char* fopAcM_getProcNameString(const fopAc_ac_c* i_actor) {
    const char* name = dStage_getName2(i_actor->base.profname, i_actor->subtype);
    return name != NULL ? name : "UNKOWN";
}

/* 8001D5EC-8001D698 017F2C 00AC+00 1/1 0/0 0/0 .text fopAcM_findObjectCB__FPC10fopAc_ac_cPv */
static const fopAc_ac_c* fopAcM_findObjectCB(fopAc_ac_c const* i_actor, void* i_data) {
    fopAcM_search_prm* prm = (fopAcM_search_prm*)i_data;

    if (!fopAcM_IsExecuting(fopAcM_GetID(i_actor))) {
        return NULL;
    }

    if (prm->procname == fopAcM_GetProfName(i_actor) && prm->subtype == i_actor->subtype) {
        if (prm->prm0 == 0 || prm->prm1 == (prm->prm0 & fopAcM_GetParam(i_actor))) {
            return i_actor;
        }
    }

    return NULL;
}

/* 8001D698-8001D6F0 017FD8 0058+00 0/0 1/1 1/1 .text            fopAcM_searchFromName__FPCcUlUl */
fopAc_ac_c* fopAcM_searchFromName(char const* name, u32 param0, u32 param1) {
    fopAcM_search_prm prm;
    prm.prm0 = param0;
    prm.prm1 = param1;

    dStage_objectNameInf* objInf = dStage_searchName(name);
    if (objInf == NULL) {
        return NULL;
    }

    prm.procname = objInf->mProcName;
    prm.subtype = objInf->mSubtype;
    return fopAcM_Search((fopAcIt_JudgeFunc)fopAcM_findObjectCB, &prm);
}

/* 8001D6F0-8001D7A0 018030 00B0+00 1/1 0/0 0/0 .text fopAcM_findObject4EventCB__FP10fopAc_ac_cPv
 */
fopAc_ac_c* fopAcM_findObject4EventCB(fopAc_ac_c* i_actor, void* i_data) {
    fopAcM_search4ev_prm* prm = (fopAcM_search4ev_prm*)i_data;

    if (i_data == NULL || !fopAcM_IsExecuting(fopAcM_GetID(i_actor))) {
        return NULL;
    }

    if (prm->procname == fopAcM_GetProfName(i_actor) && prm->subtype == i_actor->subtype) {
        if (prm->event_id < 0 || prm->event_id == i_actor->eventInfo.getIdx()) {
            return i_actor;
        }
    }

    return NULL;
}

/* 8001D7A0-8001D890 0180E0 00F0+00 0/0 7/7 0/0 .text            fopAcM_searchFromName4Event__FPCcs
 */
fopAc_ac_c* fopAcM_searchFromName4Event(char const* i_name, s16 i_eventID) {
    fopAcM_search4ev_prm prm;
    prm.event_id = i_eventID;
    strcpy(prm.name, i_name);

    char* chr = strchr(prm.name, ':');
    if (chr != NULL) {
        chr[0] = 0;
        prm.event_id = 0;

        chr++;
        for (; *chr != 0; chr++) {
            if (*chr < '0' || *chr > '9') {
                prm.event_id = 0xFFFF;
                break;
            }
            prm.event_id = prm.event_id * 10 + (chr[0] - 0x30);
        }
    }

    dStage_objectNameInf* objInf = dStage_searchName(prm.name);
    if (objInf == NULL) {
        return 0;
    }

    prm.procname = objInf->mProcName;
    prm.subtype = objInf->mSubtype;
    return fopAcM_Search((fopAcIt_JudgeFunc)fopAcM_findObject4EventCB, &prm);
}

/* 803F1D24-803F1D74 01EA44 0050+00 1/2 1/1 1/1 .bss             mRoofCheck__11fopAcM_rc_c */
dBgS_ObjRoofChk fopAcM_rc_c::mRoofCheck;

/* 803F1D80-803F1DD8 01EAA0 0054+04 2/3 3/3 4/4 .bss             mWaterCheck__11fopAcM_wt_c */
dBgS_WtrChk fopAcM_wt_c::mWaterCheck;

/* 80450CD4-80450CD8 0001D4 0004+00 1/1 0/0 3/3 .sbss            mRoofY__11fopAcM_rc_c */
f32 fopAcM_rc_c::mRoofY;

/* 80450CD8-80450CE0 0001D8 0004+04 2/2 4/4 19/19 .sbss            mWaterY__11fopAcM_wt_c */
f32 fopAcM_wt_c::mWaterY;

/* 8001D890-8001D900 0181D0 0070+00 0/0 2/2 19/19 .text            fopAcM_getWaterY__FPC4cXyzPf */
s32 fopAcM_getWaterY(cXyz const* param_0, f32* o_waterY) {
    if (fopAcM_wt_c::waterCheck(param_0) && fopAcM_wt_c::getPolyAtt0() != 6) {
        *o_waterY = fopAcM_wt_c::getWaterY();
        return 1;
    } else {
        *o_waterY = -1000000000.0f;
        return 0;
    }
}

/* 8001D900-8001D9A8 018240 00A8+00 0/0 2/2 2/2 .text
 * fpoAcM_relativePos__FPC10fopAc_ac_cPC4cXyzP4cXyz             */
void fpoAcM_relativePos(fopAc_ac_c const* i_actor, cXyz const* i_pos, cXyz* o_pos) {
    s16 angle = -i_actor->shape_angle.y;
    cXyz pos = *i_pos - i_actor->current.pos;

    o_pos->x = (pos.z * cM_ssin(angle)) + (pos.x * cM_scos(angle));
    o_pos->y = pos.y;
    o_pos->z = (pos.z * cM_scos(angle)) - (pos.x * cM_ssin(angle));
}

/* 8001D9A8-8001DAE4 0182E8 013C+00 0/0 1/1 9/9 .text
 * fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii    */
s32 fopAcM_getWaterStream(cXyz const* pos, cBgS_PolyInfo const& polyinfo, cXyz* speed,
                          int* power, BOOL param_4) {
    daTagStream_c* stream = daTagStream_c::getTop();
    if (stream != NULL) {
        for (stream = daTagStream_c::getTop(); stream != NULL; stream = stream->getNext()) {
            if (stream->checkStreamOn() && (!param_4 || stream->checkCanoeOn()) &&
                stream->checkArea(pos))
            {
                *speed = stream->speed;
                *power = stream->getPower() & 0xff;
                return 1;
            }
        }
    }

    if (param_4) {
        return 0;
    }

    if (dComIfG_Bgsp().ChkPolySafe(polyinfo)) {
        if (dPath_GetPolyRoomPathVec(polyinfo, speed, power)) {
            speed->normalizeZP();
            return 1;
        }
    } else {
        *speed = cXyz::Zero;
        *power = 0;
    }

    return 0;
}

/* 8001DAE4-8001DB90 018424 00AC+00 0/0 2/2 8/8 .text fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos
 */
s16 fopAcM_getPolygonAngle(cBgS_PolyInfo const& poly, s16 param_1) {
    if (!dComIfG_Bgsp().ChkPolySafe(poly)) {
        return 0;
    }

    cM3dGPla plane;
    if (!dComIfG_Bgsp().GetTriPla(poly, &plane)) {
        return 0;
    }

    return fopAcM_getPolygonAngle(&plane, param_1);
}

/* 8001DBD8-8001DC68 018518 0090+00 1/1 5/5 18/18 .text fopAcM_getPolygonAngle__FPC8cM3dGPlas */
s16 fopAcM_getPolygonAngle(cM3dGPla const* p_plane, s16 param_1) {
    if (p_plane == NULL) {
        return 0;
    }

    f32 cos = cM_scos(p_plane->mNormal.atan2sX_Z() - param_1);
    f32 xz = JMAFastSqrt(p_plane->mNormal.x * p_plane->mNormal.x +
                         p_plane->mNormal.z * p_plane->mNormal.z);
    xz *= cos;
    return cM_atan2s(xz, p_plane->mNormal.y);
}

/* 8001DC68-8001DCBC 0185A8 0054+00 0/0 5/5 21/21 .text
 * lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c        */
bool fopAcM_lc_c::lineCheck(cXyz const* i_start, cXyz const* i_end, fopAc_ac_c const* i_actor) {
    mLineCheck.Set(i_start, i_end, i_actor);
    return dComIfG_Bgsp().LineCross(&mLineCheck);
}

/* 8001DCBC-8001DD1C 0185FC 0060+00 1/1 10/10 108/108 .text gndCheck__11fopAcM_gc_cFPC4cXyz */
bool fopAcM_gc_c::gndCheck(cXyz const* i_pos) {
    mGndCheck.SetPos(i_pos);
    mGroundY = dComIfG_Bgsp().GroundCross(&mGndCheck);
    return -1000000000.0f != mGroundY;
}

/* 8001DD1C-8001DD84 01865C 0068+00 0/0 0/0 3/3 .text            roofCheck__11fopAcM_rc_cFPC4cXyz */
bool fopAcM_rc_c::roofCheck(cXyz const* i_pos) {
    mRoofCheck.SetPos(*i_pos);
    mRoofY = dComIfG_Bgsp().RoofChk(&mRoofCheck);
    return 1000000000.0f != mRoofY;
}

/* 8001DD84-8001DE10 0186C4 008C+00 1/1 4/4 22/22 .text            waterCheck__11fopAcM_wt_cFPC4cXyz
 */
bool fopAcM_wt_c::waterCheck(cXyz const* i_pos) {
    cXyz pos(i_pos->x, i_pos->y - 500.0f, i_pos->z);
    mWaterCheck.Set(pos, i_pos->y + 500.0f);

    if (dComIfG_Bgsp().WaterChk(&mWaterCheck)) {
        mWaterY = mWaterCheck.GetHeight();
        return true;
    }

    return false;
}

/* 8001DE10-8001DE14 018750 0004+00 0/0 1/1 0/0 .text            fopAcM_initManager__Fv */
void fopAcM_initManager() {}
