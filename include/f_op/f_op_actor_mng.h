#ifndef F_OP_ACTOR_MNG_H_
#define F_OP_ACTOR_MNG_H_

#include "f_op/f_op_actor.h"
#include "f_op/f_op_actor_iter.h"
#include "f_pc/f_pc_manager.h"
#include "f_pc/f_pc_searcher.h"
#include "d/bg/d_bg_s.h"
#include "d/bg/d_bg_s_lin_chk.h"
#include "d/bg/d_bg_s_wtr_chk.h"

#define fopAcM_SetupActor(ptr,ClassName) \
    if (!fopAcM_CheckCondition(ptr, fopAcCnd_INIT_e)) { \
        new (ptr) ClassName(); \
        fopAcM_OnCondition(ptr, fopAcCnd_INIT_e); \
    }

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
    /* 0x00 */ u32 mParameter;  // single U32 Parameter
    /* 0x04 */ cXyz mPos;
    /* 0x10 */ csXyz mAngle;  // rotation
    /* 0x16 */ u16 mEnemyNo;
    /* 0x18 */ u8 mScale[3];
    /* 0x1B */ u8 mGbaName;     // from WW, maybe a different parameter here
    /* 0x1C */ s32 mParentPId;  // parent process ID
    /* 0x20 */ s8 mSubtype;
    /* 0x21 */ s8 mRoomNo;
};

struct fopAcM_search4ev_prm {
    fopAcM_search4ev_prm() { clear(); }
    void clear() {
        mName[0] = 0;
        mEventID = -1;
        mProcName = 11;
        mSubType = 0;
    }

    /* 0x00 */ char mName[30];
    /* 0x1E */ s16 mEventID;
    /* 0x20 */ s16 mProcName;
    /* 0x22 */ s8 mSubType;
};

struct fopAcM_search_prm {
    /* 0x00 */ u32 mParam0;
    /* 0x04 */ u32 mParam1;
    /* 0x08 */ s16 mProcName;
    /* 0x0A */ s8 mSubType;
};

dBgS& dComIfG_Bgsp();

class fopAcM_lc_c {
public:
    static dBgS_LinChk* getLineCheck() { return (dBgS_LinChk*)&mLineCheck; }
    static bool checkMoveBG() { return dComIfG_Bgsp().ChkMoveBG(*(dBgS_LinChk*)&mLineCheck); }
    static cXyz* getCrossP() { return ((dBgS_LinChk*)&mLineCheck)->GetCrossP(); }
    static bool lineCheck(const cXyz*, const cXyz*, const fopAc_ac_c*);
    static u8 mLineCheck[112];
};

class dBgS_RoofChk;
class fopAcM_rc_c {
public:
    static dBgS_RoofChk* getRoofCheck() { return (dBgS_RoofChk*)&mRoofCheck; }
    static f32 getRoofY() { return mRoofY; }
    static bool roofCheck(const cXyz*);
    static u8 mRoofCheck[80];
    static f32 mRoofY;
};

class dBgS_GndChk;
class fopAcM_gc_c {
public:
    static bool gndCheck(const cXyz*);
    static u8 mGndCheck[84]; // this is dBgS_GndChk but all static data in the TU probably needs to be setup first (otherwise causes a reordering problem with the __sinit function)
    static f32 mGroundY;

    // this avoids having to include d_bg_s.h here
    static inline bool getTriPla(cM3dGPla* pPlane);
    static inline int getRoomId();
    static inline int getPolyColor();

    static dBgS_GndChk* getGroundCheck() { return (dBgS_GndChk*)&mGndCheck; }
    static f32 getGroundY() { return mGroundY; }
};

class fopAcM_wt_c {
public:
    static dBgS_WtrChk* getWaterCheck() { return (dBgS_WtrChk*)&mWaterCheck; }
    static f32 getWaterY() { return mWaterY[0]; }
    static int getPolyAtt0() { return dComIfG_Bgsp().GetPolyAtt0(*(dBgS_WtrChk*)&mWaterCheck); }

    static bool waterCheck(const cXyz*);
    static u8 mWaterCheck[84 + 4 /* padding */];
    static f32 mWaterY[1 + 1 /* padding */];
};

class dKy_tevstr_c;
class cBgS_PolyInfo;
typedef int (*heapCallbackFunc)(fopAc_ac_c*);
typedef int (*createFunc)(void*);

struct DOUBLE_POS {
    double x, y, z;
};

inline s32 fopAcM_GetRoomNo(const fopAc_ac_c* pActor) {
    return (s8)pActor->current.roomNo;
}

inline u32 fopAcM_GetID(const void* pActor) {
    return fpcM_GetID(pActor);
}

inline s16 fopAcM_GetName(void* pActor) {
    return fpcM_GetName(pActor);
}

inline MtxP fopAcM_GetMtx(const fopAc_ac_c* pActor) {
    return pActor->mCullMtx;
}

inline u32 fopAcM_checkStatus(fopAc_ac_c* pActor, u32 status) {
    return pActor->mStatus & status;
}

inline u32 fopAcM_checkCarryNow(fopAc_ac_c* pActor) {
    return pActor->mStatus & 0x2000;
}

enum fopAcM_CARRY {
    /* 0x01 */ fopAcM_CARRY_TYPE_1 = 1,
    /* 0x02 */ fopAcM_CARRY_HEAVY = 2,
    /* 0x04 */ fopAcM_CARRY_SIDE = 4,
    /* 0x08 */ fopAcM_CARRY_TYPE_8 = 8,
    /* 0x10 */ fopAcM_CARRY_LIGHT = 16, // guess based on context
    /* 0x20 */ fopAcM_CARRY_ITEM = 32,
    /* 0x30 */ fopAcM_CARRY_UNK_30 = 0x30,
};

inline u32 fopAcM_CheckCarryType(fopAc_ac_c* actor, fopAcM_CARRY type) {
    return actor->mCarryType & type;
}

inline u32 fopAcM_checkHookCarryNow(fopAc_ac_c* pActor) {
    return fopAcM_checkStatus(pActor, 0x100000);
}

inline u32 fopAcM_GetParam(const void* pActor) {
    return fpcM_GetParam(pActor);
}

inline u32 fopAcM_GetParamBit(void* ac, u8 shift, u8 bit) {
    return (fopAcM_GetParam(ac) >> shift) & ((1 << bit) - 1);
}

inline void fopAcM_SetParam(void* p_actor, u32 param) {
    fpcM_SetParam(p_actor, param);
}

inline void fopAcM_SetJntCol(fopAc_ac_c* i_actorP, dJntCol_c* i_jntColP) {
    i_actorP->mJntCol = i_jntColP;
}

inline s16 fopAcM_GetProfName(const void* pActor) {
    return fpcM_GetProfName(pActor);
}

inline u8 fopAcM_GetGroup(const fopAc_ac_c* p_actor) {
    return p_actor->mGroup;
}

inline void fopAcM_OnStatus(fopAc_ac_c* pActor, u32 flag) {
    pActor->mStatus |= flag;
}

inline void fopAcM_OffStatus(fopAc_ac_c* pActor, u32 flag) {
    pActor->mStatus &= ~flag;
}

inline fopAc_ac_c* fopAcM_Search(fopAcIt_JudgeFunc func, void* param) {
    return (fopAc_ac_c*)fopAcIt_Judge(func, param);
}

inline fopAc_ac_c* fopAcM_SearchByID(unsigned int id) {
    return (fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)fpcSch_JudgeByID, &id);
}

inline cXyz& fopAcM_GetPosition_p(fopAc_ac_c* pActor) {
    return pActor->current.pos;
}

inline cXyz& fopAcM_GetPosition(fopAc_ac_c* pActor) {
    return pActor->current.pos;
}

inline cXyz& fopAcM_GetOldPosition_p(fopAc_ac_c* pActor) {
    return pActor->next.pos;
}

inline cXyz& fopAcM_GetSpeed_p(fopAc_ac_c* pActor) {
    return pActor->speed;
}

inline csXyz& fopAcM_GetAngle_p(fopAc_ac_c* pActor) {
    return pActor->current.angle;
}

inline csXyz& fopAcM_GetShapeAngle_p(fopAc_ac_c* pActor) {
    return pActor->shape_angle;
}

inline bool fopAcM_CheckCondition(fopAc_ac_c* p_actor, u32 flag) {
    return p_actor->mCondition & flag;
}

inline void fopAcM_OnCondition(fopAc_ac_c* p_actor, u32 flag) {
    p_actor->mCondition |= flag;
}

inline void fopAcM_OffCondition(fopAc_ac_c* p_actor, u32 flag) {
    p_actor->mCondition &= ~flag;
}

inline BOOL fopAcM_IsActor(void* actor) {
    return fopAc_IsActor(actor);
}

inline void fopAcM_SetRoomNo(fopAc_ac_c* actor, s8 roomNo) {
    actor->current.roomNo = roomNo;
}

inline void fopAcM_setHookCarryNow(fopAc_ac_c* actor) {
    fopAcM_OnStatus(actor, 0x100000);
}

inline void fopAcM_cancelHookCarryNow(fopAc_ac_c* actor) {
    fopAcM_OffStatus(actor, 0x100000);
}

inline s8 fopAcM_GetHomeRoomNo(const fopAc_ac_c* pActor) {
    return pActor->orig.roomNo;
}

inline void fopAcM_SetGravity(fopAc_ac_c* actor, f32 gravity) {
    actor->mGravity = gravity;
}

inline void fopAcM_SetMaxFallSpeed(fopAc_ac_c* actor, f32 speed) {
    actor->mMaxFallSpeed = speed;
}

inline void fopAcM_SetMtx(fopAc_ac_c* actor, MtxP m) {
    actor->mCullMtx = m;
}

inline void fopAcM_SetSpeed(fopAc_ac_c* actor, f32 x, f32 y, f32 z) {
    actor->speed.set(x, y, z);
}

inline void fopAcM_SetSpeedF(fopAc_ac_c* actor, f32 f) {
    actor->speedF = f;
}

inline void fopAcM_SetStatus(fopAc_ac_c* actor, u32 status) {
    actor->mStatus = status;
}

inline void fopAcM_SetModel(fopAc_ac_c* actor, J3DModel* model) {
    actor->model = model;
}

inline fopAcM_prm_class* fopAcM_GetAppend(void* actor) {
    return (fopAcM_prm_class*)fpcM_GetAppend(actor);
}

inline BOOL fopAcM_IsExecuting(unsigned int id) {
    return fpcM_IsExecuting(id);
}

inline f32 fopAcM_GetSpeedF(const fopAc_ac_c* p_actor) {
    return p_actor->speedF;
}

inline f32 fopAcM_GetGravity(const fopAc_ac_c* p_actor) {
    return p_actor->mGravity;
}

inline f32 fopAcM_GetMaxFallSpeed(const fopAc_ac_c* p_actor) {
    return p_actor->mMaxFallSpeed;
}

inline const cXyz& fopAcM_GetSpeed_p(const fopAc_ac_c* p_actor) {
    return p_actor->speed;
}

inline const cXyz& fopAcM_GetPosition_p(const fopAc_ac_c* p_actor) {
    return p_actor->current.pos;
}

inline dJntCol_c* fopAcM_GetJntCol(fopAc_ac_c* i_actor) {
    return i_actor->mJntCol;
}

inline void fopAcM_setCullSizeFar(fopAc_ac_c* i_actor, f32 i_far) {
    i_actor->mCullSizeFar = i_far;
}

inline f32 fopAcM_getCullSizeFar(const fopAc_ac_c* i_actor) {
    return i_actor->mCullSizeFar;
}

inline void fopAcM_SetCullSize(fopAc_ac_c* i_actor, s8 i_cullsize) {
    i_actor->mCullType = i_cullsize;
}

inline int fopAcM_GetCullSize(const fopAc_ac_c* i_actor) {
    return i_actor->mCullType;
}

inline BOOL fopAcM_CULLSIZE_IS_BOX(int i_culltype) {
    return (i_culltype >= 0 && i_culltype < 14) || i_culltype == 14;
}

inline Vec fopAcM_getCullSizeSphereCenter(const fopAc_ac_c* i_actor) {
    return i_actor->mCull.mSphere.mCenter;
}

inline f32 fopAcM_getCullSizeSphereR(const fopAc_ac_c* i_actor) {
    return i_actor->mCull.mSphere.mRadius;
}

inline void dComIfGs_onSwitch(int i_no, int i_roomNo);
inline void dComIfGs_offSwitch(int i_no, int i_roomNo);
inline BOOL dComIfGs_isSwitch(int i_no, int i_roomNo);
inline void dComIfGs_offActor(int i_no, int i_roomNo);

inline void i_fopAcM_onSwitch(const fopAc_ac_c* pActor, int sw) {
    return dComIfGs_onSwitch(sw, fopAcM_GetHomeRoomNo(pActor));
}

inline void i_fopAcM_offSwitch(const fopAc_ac_c* pActor, int sw) {
    return dComIfGs_offSwitch(sw, fopAcM_GetHomeRoomNo(pActor));
}

inline BOOL i_fopAcM_isSwitch(const fopAc_ac_c* item, int sw) {
    return dComIfGs_isSwitch(sw, fopAcM_GetHomeRoomNo(item));
}

inline fopAc_ac_c* i_fopAcM_SearchByName(s16 proc_id) {
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

inline u16 fopAcM_GetSetId(const fopAc_ac_c* p_actor) {
    return p_actor->mSetID;
}

inline void dComIfGs_onActor(int bitNo, int roomNo);

inline void fopAcM_onActor(const fopAc_ac_c* p_actor) {
    int setId = fopAcM_GetSetId(p_actor);
    dComIfGs_onActor(setId, fopAcM_GetHomeRoomNo(p_actor));
}

void fopAcM_initManager();

void* fopAcM_FastCreate(s16 pProcTypeID, FastCreateReqFunc param_2, void* param_3, void* pData);

void fopAcM_setStageLayer(void* p_proc);

void fopAcM_setRoomLayer(void* p_proc, int roomNo);

s32 fopAcM_SearchByID(unsigned int id, fopAc_ac_c** p_actor);

s32 fopAcM_SearchByName(s16 procName, fopAc_ac_c** p_actor);

fopAcM_prm_class* fopAcM_CreateAppend();

fopAcM_prm_class* createAppend(u16 enemyNo, u32 parameters, const cXyz* p_pos, int roomNo,
                               const csXyz* p_angle, const cXyz* p_scale, s8 subType,
                               unsigned int parentPId);

void fopAcM_Log(fopAc_ac_c const* p_actor, char const* str);

void fopAcM_delete(fopAc_ac_c* p_actor);

s32 fopAcM_delete(unsigned int actorID);

s32 fopAcM_create(s16 procName, u16 enemyNo, u32 parameter, const cXyz* p_pos, int roomNo,
                  const csXyz* p_angle, const cXyz* p_scale, s8 subType, createFunc p_createFunc);

s32 fopAcM_create(s16 procName, u32 parameter, const cXyz* p_pos, int roomNo, const csXyz* p_angle,
                  const cXyz* p_scale, s8 subType);

void* fopAcM_fastCreate(s16 procName, u32 parameter, const cXyz* p_pos, int roomNo,
                        const csXyz* p_angle, const cXyz* p_scale, s8 subType,
                        createFunc p_createFunc, void* p_createFuncData);

void* fopAcM_fastCreate(const char* p_actorName, u32 parameter, const cXyz* pActorPos, int roomNo,
                        const csXyz* p_angle, const cXyz* p_scale, createFunc p_createFunc,
                        void* p_createFuncData);

s32 fopAcM_createChild(s16 procName, unsigned int parentPId, u32 parameters, const cXyz* p_pos,
                       int roomNo, const csXyz* p_angle, const cXyz* p_scale, s8 subType,
                       createFunc p_createFunc);

s32 fopAcM_createChildFromOffset(s16 procName, unsigned int parentProcID, u32 actorParams,
                                 const cXyz* p_pos, int roomNo, const csXyz* p_angle,
                                 const cXyz* p_scale, s8 subType, createFunc p_createFunc);

void fopAcM_DeleteHeap(fopAc_ac_c* p_actor);

s32 fopAcM_callCallback(fopAc_ac_c* p_actor, heapCallbackFunc p_callbackFunc, JKRHeap* p_heap);

bool fopAcM_entrySolidHeap_(fopAc_ac_c* p_actor, heapCallbackFunc p_heapCallback, u32 size);

bool fopAcM_entrySolidHeap(fopAc_ac_c* p_actor, heapCallbackFunc p_heapCallback, u32 size);

void fopAcM_SetMin(fopAc_ac_c* p_actor, f32 minX, f32 minY, f32 minZ);

void fopAcM_SetMax(fopAc_ac_c* p_actor, f32 maxX, f32 maxY, f32 maxZ);

void fopAcM_setCullSizeBox(fopAc_ac_c* p_actor, f32 minX, f32 minY, f32 minZ, f32 maxX, f32 maxY,
                           f32 maxZ);

void fopAcM_setCullSizeSphere(fopAc_ac_c* p_actor, f32 minX, f32 minY, f32 minZ, f32 radius);

void fopAcM_setCullSizeBox2(fopAc_ac_c* p_actor, J3DModelData* p_modelData);

bool fopAcM_addAngleY(fopAc_ac_c* p_actor, s16 target, s16 step);

void fopAcM_calcSpeed(fopAc_ac_c* p_actor);

void fopAcM_posMove(fopAc_ac_c* p_actor, const cXyz* p_movePos);

void fopAcM_posMoveF(fopAc_ac_c* p_actor, const cXyz* p_movePos);

s16 fopAcM_searchActorAngleY(const fopAc_ac_c* p_actorA, const fopAc_ac_c* p_actorB);

s16 fopAcM_searchActorAngleX(const fopAc_ac_c* p_actorA, const fopAc_ac_c* p_actorB);

s32 fopAcM_seenActorAngleY(const fopAc_ac_c*, const fopAc_ac_c*);

f32 fopAcM_searchActorDistance(const fopAc_ac_c* p_actorA, const fopAc_ac_c* p_actorB);

f32 fopAcM_searchActorDistance2(const fopAc_ac_c* p_actorA, const fopAc_ac_c* p_actorB);

f32 fopAcM_searchActorDistanceXZ(const fopAc_ac_c* p_actorA, const fopAc_ac_c* p_actorB);

f32 fopAcM_searchActorDistanceXZ2(const fopAc_ac_c* p_actorA, const fopAc_ac_c* p_actorB);

s32 fopAcM_rollPlayerCrash(const fopAc_ac_c*, f32, u32, f32, f32, int, f32);
s32 fopAcM_checkCullingBox(f32[3][4], f32, f32, f32, f32, f32, f32);
s32 fopAcM_cullingCheck(const fopAc_ac_c*);
void* event_second_actor(u16);
s32 fopAcM_orderTalkEvent(fopAc_ac_c*, fopAc_ac_c*, u16, u16);
s32 fopAcM_orderTalkItemBtnEvent(u16, fopAc_ac_c*, fopAc_ac_c*, u16, u16);
s32 fopAcM_orderSpeakEvent(fopAc_ac_c* i_actor, u16 i_priority, u16 i_flag);
s32 fopAcM_orderDoorEvent(fopAc_ac_c*, fopAc_ac_c*, u16, u16);
s32 fopAcM_orderCatchEvent(fopAc_ac_c*, fopAc_ac_c*, u16, u16);
s32 fopAcM_orderOtherEvent(fopAc_ac_c*, const char*, u16, u16, u16);
s32 fopAcM_orderOtherEvent(fopAc_ac_c*, fopAc_ac_c*, const char*, u16, u16, u16);
s32 fopAcM_orderChangeEventId(fopAc_ac_c*, s16, u16, u16);
s32 fopAcM_orderOtherEventId(fopAc_ac_c* actor, s16 eventID, u8 mapToolID, u16 param_3,
                             u16 priority, u16 flag);
s32 fopAcM_orderMapToolEvent(fopAc_ac_c*, u8, s16, u16, u16, u16);
s32 fopAcM_orderMapToolAutoNextEvent(fopAc_ac_c*, u8, s16, u16, u16, u16);
s32 fopAcM_orderPotentialEvent(fopAc_ac_c*, u16, u16, u16);
s32 fopAcM_orderItemEvent(fopAc_ac_c*, u16, u16);
s32 fopAcM_orderTreasureEvent(fopAc_ac_c*, fopAc_ac_c*, u16, u16);
fopAc_ac_c* fopAcM_getTalkEventPartner(const fopAc_ac_c*);
fopAc_ac_c* fopAcM_getItemEventPartner(const fopAc_ac_c*);
fopAc_ac_c* fopAcM_getEventPartner(const fopAc_ac_c*);
static void fopAcM_onSwitch(fopAc_ac_c const* param_0, int param_1);

s32 fopAcM_createItemForPresentDemo(cXyz const* p_pos, int i_itemNo, u8 param_2, int i_itemBitNo,
                                    int i_roomNo, csXyz const* p_angle, cXyz const* p_scale);

s32 fopAcM_createItemForTrBoxDemo(cXyz const* p_pos, int i_itemNo, int i_itemBitNo, int i_roomNo,
                                  csXyz const* p_angle, cXyz const* p_scale);

u8 fopAcM_getItemNoFromTableNo(u8 i_tableNo);

s32 fopAcM_createItemFromEnemyID(u8 i_enemyID, cXyz const* p_pos, int i_itemBitNo, int i_roomNo,
                                 csXyz const* p_angle, cXyz const* p_scale, f32* speedF,
                                 f32* speedY);

s32 fopAcM_createItemFromTable(cXyz const* p_pos, int i_tableNo, int i_itemBitNo, int i_roomNo,
                               csXyz const* p_angle, int param_5, cXyz const* p_scale, f32* speedF,
                               f32* speedY, bool createDirect);

s32 fopAcM_createDemoItem(const cXyz* p_pos, int itemNo, int itemBitNo, const csXyz* p_angle,
                          int roomNo, const cXyz* scale, u8 param_7);

s32 fopAcM_createItemForBoss(const cXyz* p_pos, int param_2, int roomNo, const csXyz* p_angle,
                             const cXyz* p_scale, f32 speedF, f32 speedY, int param_8);

s32 fopAcM_createItemForMidBoss(const cXyz* p_pos, int i_itemNo, int i_roomNo, const csXyz* p_angle,
                                const cXyz* p_scale, int param_6, int param_7);

void* fopAcM_createItemForDirectGet(const cXyz* p_pos, int i_itemNo, int i_roomNo,
                                    const csXyz* p_angle, const cXyz* p_scale, f32 speedF,
                                    f32 speedY);

void* fopAcM_createItemForSimpleDemo(const cXyz* p_pos, int i_itemNo, int i_roomNo,
                                     const csXyz* p_angle, const cXyz* p_scale, f32 speedF,
                                     f32 speedY);

s32 fopAcM_createItem(const cXyz* p_pos, int itemNo, int param_3, int roomNo, const csXyz* p_angle,
                      const cXyz* p_scale, int param_7);

void* fopAcM_fastCreateItem2(const cXyz* p_pos, int itemNo, int param_3, int roomNo, int param_5,
                             const csXyz* p_angle, const cXyz* p_scale);

void* fopAcM_fastCreateItem(const cXyz* p_pos, int i_itemNo, int i_roomNo, const csXyz* p_angle,
                            const cXyz* p_scale, f32* p_speedF, f32* p_speedY, int param_8,
                            int param_9, createFunc p_createFunc);

s32 fopAcM_createBokkuri(u16, const cXyz*, int, int, int, const cXyz*, int, int);
s32 fopAcM_createWarpHole(const cXyz*, const csXyz*, int, u8, u8, u8);

fopAc_ac_c* fopAcM_myRoomSearchEnemy(s8 roomNo);

s32 fopAcM_createDisappear(const fopAc_ac_c*, const cXyz*, u8, u8, u8);
void fopAcM_setCarryNow(fopAc_ac_c*, int);
void fopAcM_cancelCarryNow(fopAc_ac_c*);
s32 fopAcM_otoCheck(const fopAc_ac_c*, f32);
s32 fopAcM_otherBgCheck(const fopAc_ac_c*, const fopAc_ac_c*);
s32 fopAcM_wayBgCheck(const fopAc_ac_c*, f32, f32);
s32 fopAcM_plAngleCheck(const fopAc_ac_c*, s16);
void fopAcM_effSmokeSet1(u32*, u32*, const cXyz*, const csXyz*, f32, const dKy_tevstr_c*, int);
void fopAcM_effHamonSet(u32*, const cXyz*, f32, f32);
s32 fopAcM_riverStream(cXyz*, s16*, f32*, f32);
s32 fopAcM_carryOffRevise(fopAc_ac_c*);
// void vectle_calc(const DOUBLE_POS*, cXyz*);
// void get_vectle_calc(const cXyz*, const cXyz*, cXyz*);
void fopAcM_setEffectMtx(const fopAc_ac_c*, const J3DModelData*);

static const char* fopAcM_getProcNameString(const fopAc_ac_c* p_actor);

static const fopAc_ac_c* fopAcM_findObjectCB(fopAc_ac_c const* p_actor, void* p_data);

fopAc_ac_c* fopAcM_searchFromName(char const* name, u32 param0, u32 param1);

fopAc_ac_c* fopAcM_findObject4EventCB(fopAc_ac_c* p_actor, void* p_data);

fopAc_ac_c* fopAcM_searchFromName4Event(char const* name, s16 eventID);

s32 fopAcM_getWaterY(const cXyz*, f32*);
void fpoAcM_relativePos(fopAc_ac_c const* actor, cXyz const* p_inPos, cXyz* p_outPos);
s32 fopAcM_getWaterStream(const cXyz*, const cBgS_PolyInfo&, cXyz*, int*, int);
s16 fopAcM_getPolygonAngle(const cBgS_PolyInfo&, s16);
s16 fopAcM_getPolygonAngle(cM3dGPla const* param_0, s16 param_1);

inline void make_prm_warp_hole(u32* actorParams, u8 p1, u8 p2, u8 p3) {
    u32 pp1 = (p3 << 0x8);
    u32 pp2 = (p2 << 0x10);
    u32 pp3 = (p1 << 0x1B) | 0x170000FF;
    *actorParams = pp2 | pp3 | pp1;
}

inline void make_prm_bokkuri(u32* pActorParams, csXyz* p_angle, u8 param_2, u8 param_3, u8 param_4,
                             u8 param_5, u8 param_6) {
    p_angle->x = (param_4 << 0x8) | (param_3 & 0xFF);
    p_angle->z = (param_6 << 0xD) | (param_2 << 0x1) | param_5;
}

inline fopAc_ac_c* dComIfGp_getPlayer(int);

inline s16 fopAcM_searchPlayerAngleY(const fopAc_ac_c* actor) {
    return fopAcM_searchActorAngleY(actor, dComIfGp_getPlayer(0));
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
    s8 roomNo = fopAcM_GetRoomNo(actor);
    mDoAud_seStart(sfxID, &actor->current.pos, param_2, dComIfGp_getReverb(roomNo));
}

inline void fopAcM_seStart(const fopAc_ac_c* actor, u32 sfxID, u32 param_2) {
    s8 roomNo = fopAcM_GetRoomNo(actor);
    mDoAud_seStart(sfxID, &actor->mEyePos, param_2, dComIfGp_getReverb(roomNo));
}

inline void fopAcM_seStartLevel(const fopAc_ac_c* actor, u32 sfxID, u32 param_2) {
    s8 roomNo = fopAcM_GetRoomNo(actor);
    i_mDoAud_seStartLevel(sfxID, &actor->mEyePos, param_2, dComIfGp_getReverb(roomNo));
}

inline void fopAcM_seStartCurrentLevel(const fopAc_ac_c* actor, u32 sfxID, u32 param_2) {
    s8 roomNo = fopAcM_GetRoomNo(actor);
    i_mDoAud_seStartLevel(sfxID, &actor->current.pos, param_2, dComIfGp_getReverb(roomNo));
}

inline void fopAcM_offActor(fopAc_ac_c* pActor, u32 flag) {
    dComIfGs_offActor(flag,fopAcM_GetHomeRoomNo(pActor));
}

inline void fopAcM_OnCarryType(fopAc_ac_c* pActor, fopAcM_CARRY param_2) {
    pActor->mCarryType |= param_2;
}

extern "C" {
void fopAcM_initManager__Fv(void);
void fopAcM_CreateAppend__Fv(void);
void fopAcM_DeleteHeap__FP10fopAc_ac_c(void);
void fopAcM_FastCreate__FsPFPv_iPvPv(void);
void fopAcM_Log__FPC10fopAc_ac_cPCc(void);
void fopAcM_SearchByID__FUiPP10fopAc_ac_c(void);
void fopAcM_calcSpeed__FP10fopAc_ac_c(void);
void fopAcM_callCallback__FP10fopAc_ac_cPFP10fopAc_ac_c_iP7JKRHeap(void);
void fopAcM_cancelCarryNow__FP10fopAc_ac_c(void);
void fopAcM_create__FsUsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i(void);
void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i(void);
void fopAcM_createDemoItem__FPC4cXyziiPC5csXyziPC4cXyzUc(void);
void fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi(void);
void fopAcM_createItemForDirectGet__FPC4cXyziiPC5csXyzPC4cXyzff(void);
void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz(void);
void fopAcM_createItemForSimpleDemo__FPC4cXyziiPC5csXyzPC4cXyzff(void);
void fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz(void);
void fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb(void);
void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc(void);
void fopAcM_cullingCheck__FPC10fopAc_ac_c(void);
void fopAcM_delete__FP10fopAc_ac_c(void);
void fopAcM_delete__FUi(void);
void fopAcM_effHamonSet__FPUlPC4cXyzff(void);
void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl(void);
void fopAcM_entrySolidHeap___FP10fopAc_ac_cPFP10fopAc_ac_c_iUl(void);
void fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv(void);
void fopAcM_fastCreateItem__FPC4cXyziiPC5csXyzPC4cXyzPfPfiiPFPv_i(void);
void fopAcM_fastCreateItem2__FPC4cXyziiiiPC5csXyzPC4cXyz(void);
void fopAcM_fastCreate__FPCcUlPC4cXyziPC5csXyzPC4cXyzPFPv_iPv(void);
void fopAcM_findObject4EventCB__FP10fopAc_ac_cPv(void);
void fopAcM_findObjectCB__FPC10fopAc_ac_cPv(void);
void gndCheck__11fopAcM_gc_cFPC4cXyz(void);
void fopAcM_getEventPartner__FPC10fopAc_ac_c(void);
void fopAcM_getItemEventPartner__FPC10fopAc_ac_c(void);
void fopAcM_getItemNoFromTableNo__FUc(void);
void fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos(void);
void fopAcM_getPolygonAngle__FPC8cM3dGPlas(void);
void fopAcM_getProcNameString__FPC10fopAc_ac_c(void);
void fopAcM_getTalkEventPartner__FPC10fopAc_ac_c(void);
void fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii(void);
void fopAcM_getWaterY__FPC4cXyzPf(void);
void lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c(void);
void fopAcM_orderCatchEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs(void);
void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs(void);
void fopAcM_orderDoorEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs(void);
void fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs(void);
void fopAcM_orderMapToolAutoNextEvent__FP10fopAc_ac_cUcsUsUsUs(void);
void fopAcM_orderMapToolEvent__FP10fopAc_ac_cUcsUsUsUs(void);
void fopAcM_orderOtherEvent__FP10fopAc_ac_cPCcUsUsUs(void);
void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs(void);
void fopAcM_orderOtherEvent__FP10fopAc_ac_cP10fopAc_ac_cPCcUsUsUs(void);
void fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs(void);
void fopAcM_orderTalkEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs(void);
void fopAcM_orderTalkItemBtnEvent__FUsP10fopAc_ac_cP10fopAc_ac_cUsUs(void);
void fopAcM_orderTreasureEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs(void);
void fopAcM_posMove__FP10fopAc_ac_cPC4cXyz(void);
void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz(void);
void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c(void);
void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c(void);
void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c(void);
void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c(void);
void fopAcM_searchFromName__FPCcUlUl(void);
void fopAcM_searchFromName4Event__FPCcs(void);
void fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c(void);
void fopAcM_setCarryNow__FP10fopAc_ac_ci(void);
void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff(void);
void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData(void);
void fopAcM_setRoomLayer__FPvi(void);
void fopAcM_setStageLayer__FPv(void);
void waterCheck__11fopAcM_wt_cFPC4cXyz(void);
void fpoAcM_relativePos__FPC10fopAc_ac_cPC4cXyzP4cXyz(void);
void fopAcM_SearchByName__FsPP10fopAc_ac_c(void);
void fopAcM_createChildFromOffset__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i(void);
void fopAcM_SetMin__FP10fopAc_ac_cfff(void);
void fopAcM_SetMax__FP10fopAc_ac_cfff(void);
void fopAcM_setCullSizeSphere__FP10fopAc_ac_cffff(void);
void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData(void);
void fopAcM_addAngleY__FP10fopAc_ac_css(void);
void fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c(void);
void fopAcM_searchActorDistance2__FPC10fopAc_ac_cPC10fopAc_ac_c(void);
void fopAcM_rollPlayerCrash__FPC10fopAc_ac_cfUlffif(void);
void fopAcM_checkCullingBox__FPA4_fffffff(void);
void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs(void);
void fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf(void);
void fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi(void);
void fopAcM_createItemForMidBoss__FPC4cXyziiPC5csXyzPC4cXyzii(void);
void fopAcM_createBokkuri__FUsPC4cXyziiiPC4cXyzii(void);
void fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc(void);
void fopAcM_myRoomSearchEnemy__FSc(void);
void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc(void);
void fopAcM_otoCheck__FPC10fopAc_ac_cf(void);
void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c(void);
void fopAcM_wayBgCheck__FPC10fopAc_ac_cff(void);
void fopAcM_plAngleCheck__FPC10fopAc_ac_cs(void);
void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci(void);
void fopAcM_riverStream__FP4cXyzPsPff(void);
void fopAcM_carryOffRevise__FP10fopAc_ac_c(void);
void fopAcM_searchFromName4Event__FPCcs(void);
void fopAcM_GetName__FPv(void);  // mostly inlined
void fopAcM_GetID__FPCv(void);   // mostly inlined
}

#endif
