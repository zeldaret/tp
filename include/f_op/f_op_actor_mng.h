#ifndef F_OP_ACTOR_MNG_H_
#define F_OP_ACTOR_MNG_H_

#include "d/d_bg_s.h"
#include "d/d_bg_s_gnd_chk.h"
#include "d/d_bg_s_lin_chk.h"
#include "d/d_bg_s_roof_chk.h"
#include "d/d_bg_s_wtr_chk.h"
#include "f_op/f_op_actor.h"
#include "f_op/f_op_actor_iter.h"
#include "f_op/f_op_draw_tag.h"
#include "f_pc/f_pc_manager.h"
#include "m_Do/m_Do_hostIO.h"

#define fopAcM_SetupActor(ptr, ClassName)                                                          \
    if (!fopAcM_CheckCondition(ptr, fopAcCnd_INIT_e)) {                                            \
        new (ptr) ClassName();                                                                     \
        fopAcM_OnCondition(ptr, fopAcCnd_INIT_e);                                                  \
    }

#define fopAcM_SetupActor2(ptr, ClassName, ...)                                                    \
    if (!fopAcM_CheckCondition(ptr, fopAcCnd_INIT_e)) {                                            \
        new (ptr) ClassName(__VA_ARGS__);                                                          \
        fopAcM_OnCondition(ptr, fopAcCnd_INIT_e);                                                  \
    }

#define fopAcM_RegisterDeleteID(i_this, actor_name_str)                                            \
    const fpc_ProcID procID = fopAcM_GetID(i_this);                                                \
    "Delete -> " actor_name_str "(id=%d)\n"

#define fopAcM_RegisterCreateID(actor_class, i_this, actor_name_str)                               \
    static_cast<actor_class*>(i_this);                                                             \
    const fpc_ProcID procID = fopAcM_GetID(i_this);                                                \
    "Create -> " actor_name_str "(id=%d)\n"

#define fopAcM_RegisterDelete(i_this, actor_name_str)                                              \
    "Delete -> " actor_name_str "\n"

#define fopAcM_RegisterCreate(actor_class, i_this, actor_name_str)                                 \
    static_cast<actor_class*>(i_this);                                                             \
    "Create -> " actor_name_str "\n"

class J3DModelData;  // placeholder
class JKRHeap;
class cM3dGPla;

struct fopAcM_prmBase_class {
    /* 0x00 */ u32 field_0x00;
    /* 0x04 */ cXyz field_0x04;
    /* 0x10 */ csXyz field_0x10;
    /* 0x16 */ u16 field_0x16;
};  // Size = 0x18

struct fopAcM_prm_class {
    /* 0x00 */ u32 parameters;
    /* 0x04 */ cXyz position;
    /* 0x10 */ csXyz angle;
    /* 0x16 */ u16 setId;
    /* 0x18 */ u8 scale[3];
    /* 0x1C */ fpc_ProcID parent_id;
    /* 0x20 */ s8 subtype;
    /* 0x21 */ s8 room_no;
};

struct fopAcM_search4ev_prm {
    fopAcM_search4ev_prm() { clear(); }
    void clear() {
        name[0] = 0;
        event_id = -1;
        procname = PROC_PLAY_SCENE;
        subtype = 0;
    }

    /* 0x00 */ char name[30];
    /* 0x1E */ s16 event_id;
    /* 0x20 */ s16 procname;
    /* 0x22 */ s8 subtype;
};

struct fopAcM_search_prm {
    /* 0x00 */ u32 prm0;
    /* 0x04 */ u32 prm1;
    /* 0x08 */ s16 procname;
    /* 0x0A */ s8 subtype;
};

// define to avoid vtable mess in WIP TUs
#ifndef HIO_entry_c_NO_VIRTUAL
struct fOpAcm_HIO_entry_c : public mDoHIO_entry_c {
    virtual ~fOpAcm_HIO_entry_c() {}
};
#else
struct fOpAcm_HIO_entry_c {
    ~fOpAcm_HIO_entry_c();
};
#endif

class l_HIO {
public:
    /* 8001E098 */ ~l_HIO() {}
};

dBgS& dComIfG_Bgsp();

class dKy_tevstr_c;
class cBgS_PolyInfo;
typedef int (*heapCallbackFunc)(fopAc_ac_c*);
typedef int (*createFunc)(void*);

struct DOUBLE_POS {
    double x, y, z;
};

enum fopAcM_STATUS {
    /* 0x000001 */ fopAcM_STATUS_UNK_000001 = 1 << 0,
    /* 0x000002 */ fopAcM_STATUS_UNK_000002 = 1 << 1,
    /* 0x000004 */ fopAcM_STATUS_UNK_000004 = 1 << 2,
    /* 0x000008 */ fopAcM_STATUS_UNK_000008 = 1 << 3,
    /* 0x000010 */ fopAcM_STATUS_UNK_000010 = 1 << 4,
    /* 0x000020 */ fopAcM_STATUS_UNK_000020 = 1 << 5,
    /* 0x000040 */ fopAcM_STATUS_UNK_000040 = 1 << 6,
    /* 0x000080 */ fopAcM_STATUS_UNK_000080 = 1 << 7,
    /* 0x000100 */ fopAcM_STATUS_UNK_000100 = 1 << 8,
    /* 0x000200 */ fopAcM_STATUS_UNK_000200 = 1 << 9,
    /* 0x000400 */ fopAcM_STATUS_UNK_000400 = 1 << 10,
    /* 0x000800 */ fopAcM_STATUS_UNK_000800 = 1 << 11,
    /* 0x001000 */ fopAcM_STATUS_UNK_001000 = 1 << 12,
    /* 0x002000 */ fopAcM_STATUS_CARRY_NOW = 1 << 13,
    /* 0x004000 */ fopAcM_STATUS_UNK_004000 = 1 << 14,
    /* 0x008000 */ fopAcM_STATUS_UNK_008000 = 1 << 15,
    /* 0x010000 */ fopAcM_STATUS_UNK_010000 = 1 << 16,
    /* 0x020000 */ fopAcM_STATUS_UNK_200000 = 1 << 17,
    /* 0x040000 */ fopAcM_STATUS_UNK_400000 = 1 << 18,
    /* 0x080000 */ fopAcM_STATUS_UNK_800000 = 1 << 19,
    /* 0x100000 */ fopAcM_STATUS_HOOK_CARRY_NOW = 1 << 20,
};

inline s8 fopAcM_GetRoomNo(const fopAc_ac_c* i_actor) {
    return i_actor->current.roomNo;
}

inline fpc_ProcID fopAcM_GetID(const void* i_actor) {
    return fpcM_GetID(i_actor);
}

inline s16 fopAcM_GetName(void* i_actor) {
    return fpcM_GetName(i_actor);
}

inline MtxP fopAcM_GetMtx(const fopAc_ac_c* i_actor) {
    return i_actor->cullMtx;
}

inline u32 fopAcM_checkStatus(fopAc_ac_c* i_actor, u32 actor_status) {
    return i_actor->actor_status & actor_status;
}

inline u32 fopAcM_checkCarryNow(fopAc_ac_c* i_actor) {
    return i_actor->actor_status & fopAcM_STATUS_CARRY_NOW;
}

enum fopAcM_CARRY {
    /* 0x01 */ fopAcM_CARRY_TYPE_1 = 1,
    /* 0x02 */ fopAcM_CARRY_HEAVY = 2,
    /* 0x04 */ fopAcM_CARRY_SIDE = 4,
    /* 0x08 */ fopAcM_CARRY_TYPE_8 = 8,
    /* 0x10 */ fopAcM_CARRY_LIGHT = 16,  // guess based on context
    /* 0x20 */ fopAcM_CARRY_ITEM = 32,
    /* 0x30 */ fopAcM_CARRY_UNK_30 = 0x30,
    /* 0x40 */ fopAcM_CARRY_UNK_40 = 0x40,
    /* 0x80 */ fopAcM_CARRY_CHICKEN = 0x80,
};

inline u32 fopAcM_CheckCarryType(fopAc_ac_c* actor, fopAcM_CARRY type) {
    return actor->carryType & type;
}

inline u32 fopAcM_checkHookCarryNow(fopAc_ac_c* i_actor) {
    return fopAcM_checkStatus(i_actor, fopAcM_STATUS_HOOK_CARRY_NOW);
}

inline u32 fopAcM_GetParam(const void* i_actor) {
    return fpcM_GetParam(i_actor);
}

inline u32 fopAcM_GetParamBit(void* ac, u8 shift, u8 bit) {
    return (fopAcM_GetParam(ac) >> shift) & ((1 << bit) - 1);
}

inline void fopAcM_SetParam(void* i_actor, u32 param) {
    fpcM_SetParam(i_actor, param);
}

inline void fopAcM_SetJntCol(fopAc_ac_c* i_actorP, dJntCol_c* i_jntColP) {
    i_actorP->jntCol = i_jntColP;
}

inline s16 fopAcM_GetProfName(const void* i_actor) {
    return fpcM_GetProfName(i_actor);
}

inline u8 fopAcM_GetGroup(const fopAc_ac_c* i_actor) {
    return i_actor->group;
}

inline void fopAcM_OnStatus(fopAc_ac_c* i_actor, u32 flag) {
    i_actor->actor_status |= flag;
}

inline void fopAcM_OffStatus(fopAc_ac_c* i_actor, u32 flag) {
    i_actor->actor_status &= ~flag;
}

inline fopAc_ac_c* fopAcM_Search(fopAcIt_JudgeFunc i_judgeFunc, void* i_process) {
    return (fopAc_ac_c*)fopAcIt_Judge(i_judgeFunc, i_process);
}

inline fopAc_ac_c* fopAcM_SearchByID(fpc_ProcID id) {
    return (fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)fpcSch_JudgeByID, &id);
}

inline fpc_ProcID fopAcM_GetLinkId(const fopAc_ac_c* i_actor) {
    return i_actor->parentActorID;
}

inline cXyz* fopAcM_GetPosition_p(fopAc_ac_c* i_actor) {
    return &i_actor->current.pos;
}

inline cXyz& fopAcM_GetPosition(fopAc_ac_c* i_actor) {
    return i_actor->current.pos;
}

inline cXyz* fopAcM_GetOldPosition_p(fopAc_ac_c* i_actor) {
    return &i_actor->old.pos;
}

inline cXyz* fopAcM_GetSpeed_p(fopAc_ac_c* i_actor) {
    return &i_actor->speed;
}

inline csXyz* fopAcM_GetAngle_p(fopAc_ac_c* i_actor) {
    return &i_actor->current.angle;
}

inline csXyz* fopAcM_GetShapeAngle_p(fopAc_ac_c* i_actor) {
    return &i_actor->shape_angle;
}

inline u32 fopAcM_CheckCondition(fopAc_ac_c* i_actor, u32 flag) {
    return i_actor->actor_condition & flag;
}

inline void fopAcM_OnCondition(fopAc_ac_c* i_actor, u32 flag) {
    i_actor->actor_condition |= flag;
}

inline void fopAcM_OffCondition(fopAc_ac_c* i_actor, u32 flag) {
    i_actor->actor_condition &= ~flag;
}

inline BOOL fopAcM_IsActor(void* actor) {
    return fopAc_IsActor(actor);
}

inline void fopAcM_SetRoomNo(fopAc_ac_c* actor, s8 roomNo) {
    actor->current.roomNo = roomNo;
}

inline void fopAcM_setHookCarryNow(fopAc_ac_c* actor) {
    fopAcM_OnStatus(actor, fopAcM_STATUS_HOOK_CARRY_NOW);
}

inline void fopAcM_cancelHookCarryNow(fopAc_ac_c* actor) {
    fopAcM_OffStatus(actor, fopAcM_STATUS_HOOK_CARRY_NOW);
}

inline s8 fopAcM_GetHomeRoomNo(const fopAc_ac_c* i_actor) {
    return i_actor->home.roomNo;
}

inline void fopAcM_SetGravity(fopAc_ac_c* actor, f32 gravity) {
    actor->gravity = gravity;
}

inline void fopAcM_SetGroup(fopAc_ac_c* actor, u8 group) {
    actor->group = group;
}

inline void fopAcM_SetMaxFallSpeed(fopAc_ac_c* actor, f32 speed) {
    actor->maxFallSpeed = speed;
}

inline void fopAcM_SetMtx(fopAc_ac_c* actor, MtxP m) {
    actor->cullMtx = m;
}

inline void fopAcM_SetSpeed(fopAc_ac_c* actor, f32 x, f32 y, f32 z) {
    actor->speed.set(x, y, z);
}

inline void fopAcM_SetSpeedF(fopAc_ac_c* actor, f32 f) {
    actor->speedF = f;
}

inline void fopAcM_SetStatus(fopAc_ac_c* actor, u32 actor_status) {
    actor->actor_status = actor_status;
}

inline void fopAcM_SetModel(fopAc_ac_c* actor, J3DModel* model) {
    actor->model = model;
}

inline J3DModel* fopAcM_GetModel(fopAc_ac_c* actor) {
    return actor->model;
}

inline fopAcM_prm_class* fopAcM_GetAppend(void* actor) {
    return (fopAcM_prm_class*)fpcM_GetAppend(actor);
}

inline BOOL fopAcM_IsExecuting(fpc_ProcID id) {
    return fpcM_IsExecuting(id);
}

inline f32 fopAcM_GetSpeedF(const fopAc_ac_c* i_actor) {
    return i_actor->speedF;
}

inline f32 fopAcM_GetGravity(const fopAc_ac_c* i_actor) {
    return i_actor->gravity;
}

inline f32 fopAcM_GetMaxFallSpeed(const fopAc_ac_c* i_actor) {
    return i_actor->maxFallSpeed;
}

inline const cXyz* fopAcM_GetSpeed_p(const fopAc_ac_c* i_actor) {
    return &i_actor->speed;
}

inline cXyz& fopAcM_GetSpeed(fopAc_ac_c* i_actor) {
    return i_actor->speed;
}

inline const cXyz* fopAcM_GetPosition_p(const fopAc_ac_c* i_actor) {
    return &i_actor->current.pos;
}

inline dJntCol_c* fopAcM_GetJntCol(fopAc_ac_c* i_actor) {
    return i_actor->jntCol;
}

inline void fopAcM_setCullSizeFar(fopAc_ac_c* i_actor, f32 i_far) {
    i_actor->cullSizeFar = i_far;
}

inline f32 fopAcM_getCullSizeFar(const fopAc_ac_c* i_actor) {
    return i_actor->cullSizeFar;
}

inline const Vec* fopAcM_getCullSizeBoxMin(const fopAc_ac_c* i_actor) {
    return &i_actor->cull.box.min;
}

inline const Vec* fopAcM_getCullSizeBoxMax(const fopAc_ac_c* i_actor) {
    return &i_actor->cull.box.max;
}

inline void fopAcM_SetCullSize(fopAc_ac_c* i_actor, s8 i_cullsize) {
    i_actor->cullType = i_cullsize;
}

inline int fopAcM_GetCullSize(const fopAc_ac_c* i_actor) {
    return i_actor->cullType;
}

inline BOOL fopAcM_CULLSIZE_IS_BOX(int i_culltype) {
    return (i_culltype >= 0 && i_culltype < 14) || i_culltype == 14;
}

inline const cXyz& fopAcM_getCullSizeSphereCenter(const fopAc_ac_c* i_actor) {
    return i_actor->cull.sphere.center;
}

inline f32 fopAcM_getCullSizeSphereR(const fopAc_ac_c* i_actor) {
    return i_actor->cull.sphere.radius;
}

inline void dComIfGs_onSwitch(int i_no, int i_roomNo);
inline void dComIfGs_offSwitch(int i_no, int i_roomNo);
inline BOOL dComIfGs_isSwitch(int i_no, int i_roomNo);
inline void dComIfGs_offActor(int i_no, int i_roomNo);

inline void fopAcM_onSwitch(const fopAc_ac_c* i_actor, int sw) {
    return dComIfGs_onSwitch(sw, fopAcM_GetHomeRoomNo(i_actor));
}

inline void fopAcM_offSwitch(const fopAc_ac_c* i_actor, int sw) {
    return dComIfGs_offSwitch(sw, fopAcM_GetHomeRoomNo(i_actor));
}

inline BOOL fopAcM_isSwitch(const fopAc_ac_c* i_actor, int sw) {
    return dComIfGs_isSwitch(sw, fopAcM_GetHomeRoomNo(i_actor));
}

inline fopAc_ac_c* fopAcM_SearchByName(s16 proc_id) {
    return (fopAc_ac_c*)fopAcIt_Judge(fpcSch_JudgeForPName, &proc_id);
}

inline void dComIfGs_onItem(int bitNo, int roomNo);
inline void fopAcM_onItem(const fopAc_ac_c* item, int bitNo) {
    dComIfGs_onItem(bitNo, fopAcM_GetHomeRoomNo(item));
}

inline bool dComIfGs_isItem(int bitNo, int roomNo);
inline bool fopAcM_isItem(const fopAc_ac_c* item, int bitNo) {
    return dComIfGs_isItem(bitNo, fopAcM_GetHomeRoomNo(item));
}

inline f32 fopAcM_searchActorDistanceY(const fopAc_ac_c* actorA, const fopAc_ac_c* actorB) {
    return actorB->current.pos.y - actorA->current.pos.y;
}

inline u16 fopAcM_GetSetId(const fopAc_ac_c* i_actor) {
    return i_actor->setID;
}

inline void dComIfGs_onActor(int bitNo, int roomNo);

inline void fopAcM_onActor(const fopAc_ac_c* i_actor) {
    int setId = fopAcM_GetSetId(i_actor);
    dComIfGs_onActor(setId, fopAcM_GetHomeRoomNo(i_actor));
}

inline void fopAcM_onDraw(fopAc_ac_c* i_actor) {
    fopDwTg_ToDrawQ(&i_actor->draw_tag, fpcM_DrawPriority(i_actor));
}

inline void fopAcM_offDraw(fopAc_ac_c* i_actor) {
    fopDwTg_DrawQTo(&i_actor->draw_tag);
}

void fopAcM_initManager();

fopAc_ac_c* fopAcM_FastCreate(s16 i_procName, FastCreateReqFunc i_createFunc, void* i_createData,
                              void* i_append);

void fopAcM_setStageLayer(void* i_proc);

void fopAcM_setRoomLayer(void* i_proc, int i_roomNo);

s32 fopAcM_SearchByID(fpc_ProcID i_actorID, fopAc_ac_c** i_outActor);

s32 fopAcM_SearchByName(s16 i_procName, fopAc_ac_c** i_outActor);

fopAcM_prm_class* fopAcM_CreateAppend();

fopAcM_prm_class* createAppend(u16 i_setId, u32 i_parameters, const cXyz* i_pos, int i_roomNo,
                               const csXyz* i_angle, const cXyz* i_scale, s8 i_subtype,
                               fpc_ProcID i_parentId);

void fopAcM_Log(fopAc_ac_c const* i_actor, char const* i_message);

void fopAcM_delete(fopAc_ac_c* i_actor);

s32 fopAcM_delete(fpc_ProcID i_actorID);

fpc_ProcID fopAcM_create(s16 i_procName, u16 i_setId, u32 i_parameters, const cXyz* i_pos,
                         int i_roomNo, const csXyz* i_angle, const cXyz* i_scale, s8 i_subtype,
                         createFunc i_createFunc);

fpc_ProcID fopAcM_create(s16 i_procName, u32 i_parameters, const cXyz* i_pos, int i_roomNo,
                         const csXyz* i_angle, const cXyz* i_scale, s8 i_subtype);

fopAc_ac_c* fopAcM_fastCreate(s16 i_procName, u32 i_parameters, const cXyz* i_pos, int i_roomNo,
                              const csXyz* i_angle, const cXyz* i_scale, s8 i_subtype,
                              createFunc i_createFunc, void* i_createFuncData);

fopAc_ac_c* fopAcM_fastCreate(const char* i_actorname, u32 i_parameters, const cXyz* i_pos,
                              int i_roomNo, const csXyz* i_angle, const cXyz* i_scale,
                              createFunc i_createFunc, void* i_createFuncData);

fpc_ProcID fopAcM_createChild(s16 i_procName, fpc_ProcID i_parentID, u32 i_parameters,
                              const cXyz* i_pos, int i_roomNo, const csXyz* i_angle,
                              const cXyz* i_scale, s8 i_subtype, createFunc i_createFunc);

fpc_ProcID fopAcM_createChildFromOffset(s16 i_procName, fpc_ProcID i_parentID, u32 i_parameters,
                                        const cXyz* i_pos, int i_roomNo, const csXyz* i_angle,
                                        const cXyz* i_scale, s8 i_subtype, createFunc i_createFunc);

void fopAcM_DeleteHeap(fopAc_ac_c* i_actor);

s32 fopAcM_callCallback(fopAc_ac_c* i_actor, heapCallbackFunc i_heapCallback, JKRHeap* i_heap);

bool fopAcM_entrySolidHeap_(fopAc_ac_c* i_actor, heapCallbackFunc i_heapCallback, u32 i_size);

bool fopAcM_entrySolidHeap(fopAc_ac_c* i_actor, heapCallbackFunc i_heapCallback, u32 i_size);

void fopAcM_SetMin(fopAc_ac_c* i_actor, f32 minX, f32 minY, f32 minZ);

void fopAcM_SetMax(fopAc_ac_c* i_actor, f32 maxX, f32 maxY, f32 maxZ);

void fopAcM_setCullSizeBox(fopAc_ac_c* i_actor, f32 minX, f32 minY, f32 minZ, f32 maxX, f32 maxY,
                           f32 maxZ);

void fopAcM_setCullSizeSphere(fopAc_ac_c* i_actor, f32 minX, f32 minY, f32 minZ, f32 radius);

void fopAcM_setCullSizeBox2(fopAc_ac_c* i_actor, J3DModelData* i_modelData);

bool fopAcM_addAngleY(fopAc_ac_c* i_actor, s16 i_target, s16 i_step);

void fopAcM_calcSpeed(fopAc_ac_c* i_actor);

void fopAcM_posMove(fopAc_ac_c* i_actor, const cXyz* i_movePos);

void fopAcM_posMoveF(fopAc_ac_c* i_actor, const cXyz* i_movePos);

s16 fopAcM_searchActorAngleY(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB);

s16 fopAcM_searchActorAngleX(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB);

s32 fopAcM_seenActorAngleY(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB);

f32 fopAcM_searchActorDistance(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB);

f32 fopAcM_searchActorDistance2(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB);

f32 fopAcM_searchActorDistanceXZ(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB);

f32 fopAcM_searchActorDistanceXZ2(const fopAc_ac_c* i_actorA, const fopAc_ac_c* i_actorB);

BOOL fopAcM_rollPlayerCrash(fopAc_ac_c const* i_crashActor, f32 i_range, u32 i_flag, f32 i_max_y,
                            f32 i_min_y, BOOL param_5, f32 param_6);
s32 fopAcM_checkCullingBox(f32[3][4], f32, f32, f32, f32, f32, f32);
s32 fopAcM_cullingCheck(const fopAc_ac_c* i_actor);
s32 fopAcM_orderTalkEvent(fopAc_ac_c* i_actorA, fopAc_ac_c* i_actorB, u16 i_priority, u16 i_flag);
s32 fopAcM_orderTalkItemBtnEvent(u16 i_eventType, fopAc_ac_c* i_actorA, fopAc_ac_c* i_actorB,
                                 u16 i_priority, u16 i_flag);
s32 fopAcM_orderSpeakEvent(fopAc_ac_c* i_actor, u16 i_priority, u16 i_flag);
s32 fopAcM_orderDoorEvent(fopAc_ac_c* i_actorA, fopAc_ac_c* i_actorB, u16 i_priority, u16 i_flag);
s32 fopAcM_orderCatchEvent(fopAc_ac_c* i_actorA, fopAc_ac_c* i_actorB, u16 i_priority, u16 i_flag);
s32 fopAcM_orderOtherEvent(fopAc_ac_c* i_actor, char const* i_eventName, u16 param_2, u16 i_flag,
                           u16 i_priority);
s32 fopAcM_orderOtherEvent(fopAc_ac_c* i_actorA, fopAc_ac_c* i_actorB, char const* i_eventName,
                           u16 param_3, u16 i_flag, u16 i_priority);
s32 fopAcM_orderChangeEventId(fopAc_ac_c* i_actor, s16 i_eventID, u16 i_flag, u16 param_3);
s32 fopAcM_orderOtherEventId(fopAc_ac_c* i_actor, s16 i_eventID, u8 i_mapToolID, u16 param_3,
                             u16 i_priority, u16 i_flag);
s32 fopAcM_orderMapToolEvent(fopAc_ac_c* i_actor, u8 param_1, s16 i_eventID, u16 param_3,
                             u16 i_flag, u16 param_5);
s32 fopAcM_orderMapToolAutoNextEvent(fopAc_ac_c* i_actor, u8 param_1, s16 i_eventID, u16 param_3,
                                     u16 i_flag, u16 param_5);
s32 fopAcM_orderPotentialEvent(fopAc_ac_c* i_actor, u16 i_flag, u16 param_2, u16 i_priority);
s32 fopAcM_orderItemEvent(fopAc_ac_c* i_actor, u16 i_priority, u16 i_flag);
s32 fopAcM_orderTreasureEvent(fopAc_ac_c* i_actorA, fopAc_ac_c* i_actorB, u16 i_priority,
                              u16 i_flag);
fopAc_ac_c* fopAcM_getTalkEventPartner(const fopAc_ac_c*);
fopAc_ac_c* fopAcM_getItemEventPartner(const fopAc_ac_c*);
fopAc_ac_c* fopAcM_getEventPartner(const fopAc_ac_c*);

fpc_ProcID fopAcM_createItemForPresentDemo(cXyz const* i_pos, int i_itemNo, u8 param_2,
                                           int i_itemBitNo, int i_roomNo, csXyz const* i_angle,
                                           cXyz const* i_scale);

fpc_ProcID fopAcM_createItemForTrBoxDemo(cXyz const* i_pos, int i_itemNo, int i_itemBitNo,
                                         int i_roomNo, csXyz const* i_angle, cXyz const* i_scale);

u8 fopAcM_getItemNoFromTableNo(u8 i_tableNo);

fpc_ProcID fopAcM_createItemFromEnemyID(u8 i_enemyID, cXyz const* i_pos, int i_itemBitNo,
                                        int i_roomNo, csXyz const* i_angle, cXyz const* i_scale,
                                        f32* i_speedF, f32* i_speedY);

fpc_ProcID fopAcM_createItemFromTable(cXyz const* i_pos, int i_tableNo, int i_itemBitNo,
                                      int i_roomNo, csXyz const* i_angle, int param_5,
                                      cXyz const* i_scale, f32* i_speedF, f32* i_speedY,
                                      bool i_createDirect);

fpc_ProcID fopAcM_createDemoItem(const cXyz* i_pos, int i_itemNo, int i_itemBitNo,
                                 const csXyz* i_angle, int i_roomNo, const cXyz* scale,
                                 u8 param_7);

fpc_ProcID fopAcM_createItemForBoss(const cXyz* i_pos, int i_itemNo, int i_roomNo,
                                    const csXyz* i_angle, const cXyz* i_scale, f32 i_speedF,
                                    f32 i_speedY, int param_8);

fpc_ProcID fopAcM_createItemForMidBoss(const cXyz* i_pos, int i_itemNo, int i_roomNo,
                                       const csXyz* i_angle, const cXyz* i_scale, int param_6,
                                       int param_7);

fopAc_ac_c* fopAcM_createItemForDirectGet(const cXyz* i_pos, int i_itemNo, int i_roomNo,
                                          const csXyz* i_angle, const cXyz* i_scale, f32 i_speedF,
                                          f32 i_speedY);

fopAc_ac_c* fopAcM_createItemForSimpleDemo(const cXyz* i_pos, int i_itemNo, int i_roomNo,
                                           const csXyz* i_angle, const cXyz* i_scale, f32 i_speedF,
                                           f32 i_speedY);

fpc_ProcID fopAcM_createItem(const cXyz* i_pos, int i_itemNo, int i_itemBitNo, int i_roomNo,
                             const csXyz* i_angle, const cXyz* i_scale, int param_7);

fopAc_ac_c* fopAcM_fastCreateItem2(const cXyz* i_pos, int i_itemNo, int i_itemBitNo, int i_roomNo,
                                   int param_5, const csXyz* i_angle, const cXyz* i_scale);

fopAc_ac_c* fopAcM_fastCreateItem(const cXyz* i_pos, int i_itemNo, int i_roomNo,
                                  const csXyz* i_angle, const cXyz* i_scale, f32* i_speedF,
                                  f32* i_speedY, int i_itemBitNo, int param_9,
                                  createFunc i_createFunc);

fpc_ProcID fopAcM_createBokkuri(u16 i_setId, const cXyz* i_pos, int param_3, int param_4,
                                int i_roomNo, const cXyz* param_6, int param_7, int param_8);
fpc_ProcID fopAcM_createWarpHole(const cXyz* i_pos, const csXyz* i_angle, int i_roomNo, u8 param_4,
                                 u8 param_5, u8 param_6);

fopAc_ac_c* fopAcM_myRoomSearchEnemy(s8 roomNo);

fpc_ProcID fopAcM_createDisappear(const fopAc_ac_c* i_actor, const cXyz* i_pos, u8 i_size,
                                  u8 i_type, u8 i_enemyID);
void fopAcM_setCarryNow(fopAc_ac_c* i_actor, int);
void fopAcM_cancelCarryNow(fopAc_ac_c* i_actor);
BOOL fopAcM_otoCheck(const fopAc_ac_c* i_actor, f32);
BOOL fopAcM_otherBgCheck(const fopAc_ac_c*, const fopAc_ac_c*);
BOOL fopAcM_wayBgCheck(const fopAc_ac_c*, f32, f32);
BOOL fopAcM_plAngleCheck(const fopAc_ac_c* i_actor, s16 i_angle);
void fopAcM_effSmokeSet1(u32*, u32*, const cXyz*, const csXyz*, f32, const dKy_tevstr_c*, int);
void fopAcM_effHamonSet(u32*, const cXyz*, f32, f32);
s32 fopAcM_riverStream(cXyz*, s16*, f32*, f32);
s32 fopAcM_carryOffRevise(fopAc_ac_c*);
void fopAcM_setEffectMtx(const fopAc_ac_c*, const J3DModelData*);

static const char* fopAcM_getProcNameString(const fopAc_ac_c* i_actor);

static const fopAc_ac_c* fopAcM_findObjectCB(fopAc_ac_c const* i_actor, void* i_data);

fopAc_ac_c* fopAcM_searchFromName(char const* name, u32 param0, u32 param1);

fopAc_ac_c* fopAcM_findObject4EventCB(fopAc_ac_c* i_actor, void* i_data);

fopAc_ac_c* fopAcM_searchFromName4Event(char const* i_name, s16 i_eventID);

s32 fopAcM_getWaterY(const cXyz*, f32* o_waterY);
void fpoAcM_relativePos(fopAc_ac_c const* i_actor, cXyz const* i_pos, cXyz* o_pos);
s32 fopAcM_getWaterStream(const cXyz*, const cBgS_PolyInfo&, cXyz*, int*, int);
s16 fopAcM_getPolygonAngle(const cBgS_PolyInfo&, s16);
s16 fopAcM_getPolygonAngle(cM3dGPla const* param_0, s16 param_1);

inline void make_prm_warp_hole(u32* o_params, u8 prm1, u8 prm2, u8 prm3) {
    u32 pprm1 = (prm3 << 0x8);
    u32 pprm2 = (prm2 << 0x10);
    u32 pprm3 = (prm1 << 0x1B) | 0x170000FF;
    *o_params = pprm2 | pprm3 | pprm1;
}

inline void make_prm_bokkuri(u32* i_params, csXyz* i_angle, u8 param_2, u8 param_3, u8 param_4,
                             u8 param_5, u8 param_6) {
    i_angle->x = (param_4 << 0x8) | (param_3 & 0xFF);
    i_angle->z = (param_6 << 0xD) | (param_2 << 0x1) | param_5;
}

inline fopAc_ac_c* dComIfGp_getPlayer(int);

inline s16 fopAcM_searchPlayerAngleY(const fopAc_ac_c* actor) {
    return fopAcM_searchActorAngleY(actor, dComIfGp_getPlayer(0));
}

inline s16 fopAcM_searchPlayerAngleX(const fopAc_ac_c* actor) {
    return fopAcM_searchActorAngleX(actor, dComIfGp_getPlayer(0));
}

inline f32 fopAcM_searchPlayerDistanceY(const fopAc_ac_c* actor) {
    return fopAcM_searchActorDistanceY(actor, dComIfGp_getPlayer(0));
}

inline f32 fopAcM_searchPlayerDistanceXZ2(const fopAc_ac_c* actor) {
    return fopAcM_searchActorDistanceXZ2(actor, dComIfGp_getPlayer(0));
}

inline f32 fopAcM_searchPlayerDistanceXZ(const fopAc_ac_c* actor) {
    return fopAcM_searchActorDistanceXZ(actor, dComIfGp_getPlayer(0));
}

inline f32 fopAcM_searchPlayerDistance(const fopAc_ac_c* actor) {
    return fopAcM_searchActorDistance(actor, dComIfGp_getPlayer(0));
}

inline s32 fopAcM_seenPlayerAngleY(const fopAc_ac_c* i_actor) {
    return fopAcM_seenActorAngleY(i_actor, dComIfGp_getPlayer(0));
}

s8 dComIfGp_getReverb(int roomNo);

inline void fopAcM_seStartCurrent(const fopAc_ac_c* actor, u32 sfxID, u32 param_2) {
    mDoAud_seStart(sfxID, &actor->current.pos, param_2,
                   dComIfGp_getReverb(fopAcM_GetRoomNo(actor)));
}

inline void fopAcM_seStart(const fopAc_ac_c* actor, u32 sfxID, u32 param_2) {
    mDoAud_seStart(sfxID, &actor->eyePos, param_2, dComIfGp_getReverb(fopAcM_GetRoomNo(actor)));
}

inline void fopAcM_seStartLevel(const fopAc_ac_c* actor, u32 sfxID, u32 param_2) {
    mDoAud_seStartLevel(sfxID, &actor->eyePos, param_2,
                        dComIfGp_getReverb(fopAcM_GetRoomNo(actor)));
}

inline void fopAcM_seStartCurrentLevel(const fopAc_ac_c* actor, u32 sfxID, u32 param_2) {
    mDoAud_seStartLevel(sfxID, &actor->current.pos, param_2,
                        dComIfGp_getReverb(fopAcM_GetRoomNo(actor)));
}

inline void fopAcM_offActor(fopAc_ac_c* i_actor, u32 flag) {
    dComIfGs_offActor(flag, fopAcM_GetHomeRoomNo(i_actor));
}

inline void fopAcM_OnCarryType(fopAc_ac_c* i_actor, fopAcM_CARRY param_2) {
    i_actor->carryType |= param_2;
}

inline void fopAcM_OffCarryType(fopAc_ac_c* i_actor, fopAcM_CARRY param_2) {
    i_actor->carryType &= ~param_2;
}

enum fopAcM_FOOD {
    fopAcM_FOOD_0,
    fopAcM_FOOD_1,
    fopAcM_FOOD_2,
    fopAcM_FOOD_3,
    fopAcM_FOOD_4,
    fopAcM_FOOD_5,
};

inline void fopAcM_SetFoodStatus(fopAc_ac_c* actor, fopAcM_FOOD status) {
    actor->field_0x567 = status;
}

inline bool fopAcM_CheckFoodStatus(const fopAc_ac_c* actor, fopAcM_FOOD status) {
    return actor->field_0x567 == status;
}

inline void fopAcM_effSmokeSet2(u32* param_0, u32* param_1, cXyz const* param_2,
                                csXyz const* param_3, f32 param_4, dKy_tevstr_c const* param_5) {
    fopAcM_effSmokeSet1(param_0, param_1, param_2, param_3, param_4, param_5, 0);
}

inline void fopAcM_setWarningMessage_f(const fopAc_ac_c* i_actor, const char* i_filename, int i_line, const char* i_msg, ...) {
#ifdef DEBUG
    /* va_list args;
    va_start(args, i_msg);

    char buf[64];
    snprintf(buf, sizeof(buf), "<%s> %s", dStage_getName(fopAcM_GetProfName(i_actor), i_actor->subtype), i_msg);
    setWarningMessage_f_va(JUTAssertion::getSDevice(), i_filename, i_line, buf, args);

    va_end(args); */
#endif
}

#ifdef DEBUG
#define fopAcM_setWarningMessage(i_actor, i_filename, i_line, i_msg, ...) \
    fopAcM_setWarningMessage_f(i_actor, i_filename, i_line, i_msg, __VA_ARGS__)
#else
#define fopAcM_setWarningMessage(...)
#endif

class fopAcM_lc_c {
public:
    fopAcM_lc_c() { mLineCheck.ClrSttsRoofOff(); }

    static dBgS_ObjLinChk* getLineCheck() { return &mLineCheck; }
    static bool checkMoveBG() { return dComIfG_Bgsp().ChkMoveBG(mLineCheck); }
    static cXyz* getCrossP() { return mLineCheck.GetCrossP(); }
    static bool lineCheck(const cXyz*, const cXyz*, const fopAc_ac_c*);
    static bool getTriPla(cM3dGPla* o_tri) { return dComIfG_Bgsp().GetTriPla(mLineCheck, o_tri); }
    static bool checkWallHit() {
        cM3dGPla poly;
        getTriPla(&poly);
        return cBgW_CheckBWall(poly.mNormal.y);
    }

    static dBgS_ObjLinChk mLineCheck;
};

class dBgS_RoofChk;
class fopAcM_rc_c {
public:
    static dBgS_ObjRoofChk* getRoofCheck() { return &mRoofCheck; }
    static f32 getRoofY() { return mRoofY; }
    static bool roofCheck(const cXyz*);

    static dBgS_ObjRoofChk mRoofCheck;
    static f32 mRoofY;
};

class dBgS_GndChk;
class fopAcM_gc_c {
public:
    static bool gndCheck(const cXyz*);
    static dBgS_ObjGndChk mGndCheck;
    static f32 mGroundY;

    static bool getTriPla(cM3dGPla* i_plane) {
        return dComIfG_Bgsp().GetTriPla(mGndCheck, i_plane);
    }

    static s16 getGroundAngleDirection(s16 param_0) {
        cM3dGPla spC;
        getTriPla(&spC);
        return fopAcM_getPolygonAngle(&spC, param_0);
    }

    static int getRoomId() { return dComIfG_Bgsp().GetRoomId(mGndCheck); }
    static int getPolyColor() { return dComIfG_Bgsp().GetPolyColor(mGndCheck); }
    static int getPolyAtt0() { return dComIfG_Bgsp().GetPolyAtt0(mGndCheck); }
    static int getHorseNoEntry() { return dComIfG_Bgsp().GetHorseNoEntry(mGndCheck); }
    static dBgS_ObjGndChk* getGroundCheck() { return &mGndCheck; }
    static f32 getGroundY() { return mGroundY; }
};

class fopAcM_wt_c {
public:
    static dBgS_WtrChk* getWaterCheck() { return &mWaterCheck; }
    static f32 getWaterY() { return mWaterY; }
    static int getPolyAtt0() { return dComIfG_Bgsp().GetPolyAtt0(mWaterCheck); }

    static bool waterCheck(const cXyz*);
    static dBgS_WtrChk mWaterCheck;
    static f32 mWaterY;
};

#endif
