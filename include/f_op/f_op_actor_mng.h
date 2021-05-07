#ifndef F_OP_ACTOR_MNG_H_
#define F_OP_ACTOR_MNG_H_

#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "SSystem/SComponent/c_m3d_g_pla.h"
#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"
#include "f_pc/f_pc_executor.h"
#include "f_pc/f_pc_fstcreate_req.h"
#include "f_pc/f_pc_manager.h"
#include "f_pc/f_pc_searcher.h"
#include "f_pc/f_pc_stdcreate_req.h"

struct fopAcM_prm_class {
    /* 0x00 */ u32 unk_0x00;
    /* 0x04 */ cXyz unk_0x04;
    /* 0x10 */ csXyz unk_0x10;
    /* 0x16 */ u16 unk_0x16;
    /* 0x18 */ u8 unk_0x18;
    /* 0x19 */ u8 unk_0x19;
    /* 0x1A */ u8 unk_0x1A;
    /* 0x1B */ u8 unk_0x1B;
    /* 0x1C */ s32 unk_0x1C;
    /* 0x20 */ s8 unk_0x20;
    /* 0x21 */ s8 unk_0x21;
    /* 0x22 */ u8 unk_0x22;
    /* 0x23 */ u8 unk_0x23;
};

class fopAcM_lc_c {
public:
    static bool lineCheck(const cXyz*, const cXyz*, const fopAc_ac_c*);

    static u8 mLineCheck[112];
};

class fopAcM_rc_c {
public:
    static bool roofCheck(const cXyz*);
};

class fopAcM_gc_c {
public:
    static bool gndCheck(const cXyz*);

    static u8 mGndCheck[84];
    static f32 mGroundY;
};

class fopAcM_wt_c {
public:
    static bool waterCheck(const cXyz*);

    static u8 mWaterCheck[84 + 4 /* padding */];
    static f32 mWaterY[1 + 1 /* padding */];
};

struct dKy_tevstr_c;
struct cBgS_PolyInfo;
typedef int (*heapCallbackFunc)(fopAc_ac_c*);
typedef int (*createFunc)(void*);

struct DOUBLE_POS {
    double x, y, z;
};

inline s32 fopAcM_GetRoomNo(const fopAc_ac_c* pActor) {
    return pActor->mCurrent.mRoomNo;
}

inline u32 fopAcM_GetID(const void* pActor) {
    return fpcM_GetID(pActor);
}

inline s16 fopAcM_GetName(fopAc_ac_c* pActor) {
    return fpcM_GetName(pActor);
}

void* fopAcM_FastCreate(s16 pProcTypeID, FastCreateReqFunc param_2, void* param_3, void* pData);
void fopAcM_setStageLayer(void*);
int fopAcM_setRoomLayer(void*, int);
s32 fopAcM_SearchByID(unsigned int id, fopAc_ac_c** actor);
s32 fopAcM_SearchByName(s16 procName, fopAc_ac_c** actor);
fopAcM_prm_class* fopAcM_CreateAppend(void);
fopAcM_prm_class* createAppend(u16, u32, const cXyz*, int, const csXyz*, const cXyz*, s8,
                               unsigned int);
void fopAcM_Log(const fopAc_ac_c*, const char*);
void fopAcM_delete(fopAc_ac_c*);
s32 fopAcM_delete(unsigned int);
s32 fopAcM_create(s16, u16, u32, const cXyz*, int, const csXyz*, const cXyz*, s8, createFunc);
s32 fopAcM_create(s16, u32, const cXyz*, int, const csXyz*, const cXyz*, s8);
void* fopAcM_fastCreate(s16, u32, const cXyz*, int, const csXyz*, const cXyz*, s8, createFunc,
                        void*);
void* fopAcM_fastCreate(const char*, u32, const cXyz*, int, const csXyz*, const cXyz*, createFunc,
                        void*);
s32 fopAcM_createChild(s16, unsigned int, u32, const cXyz*, int, const csXyz*, const cXyz*, s8,
                       createFunc);
s32 fopAcM_createChildFromOffset(s16, unsigned int, u32, const cXyz*, int, const csXyz*,
                                 const cXyz*, s8, createFunc);
void fopAcM_DeleteHeap(fopAc_ac_c*);
s32 fopAcM_callCallback(fopAc_ac_c*, heapCallbackFunc, JKRHeap*);
bool fopAcM_entrySolidHeap_(fopAc_ac_c*, heapCallbackFunc, u32);
bool fopAcM_entrySolidHeap(fopAc_ac_c*, heapCallbackFunc, u32);
void fopAcM_SetMin(fopAc_ac_c*, f32, f32, f32);
void fopAcM_SetMax(fopAc_ac_c*, f32, f32, f32);
void fopAcM_setCullSizeBox(fopAc_ac_c*, f32, f32, f32, f32, f32, f32);
void fopAcM_setCullSizeSphere(fopAc_ac_c*, f32, f32, f32, f32);
void fopAcM_setCullSizeBox2(fopAc_ac_c*, J3DModelData*);
bool fopAcM_addAngleY(fopAc_ac_c*, s16, s16);
inline csXyz& fopAcM_GetAngle_p(fopAc_ac_c* pActor) {
    return pActor->mCurrent.mAngle;
}
void fopAcM_calcSpeed(fopAc_ac_c*);
void fopAcM_posMove(fopAc_ac_c*, const cXyz*);
void fopAcM_posMoveF(fopAc_ac_c*, const cXyz*);
s16 fopAcM_searchActorAngleY(const fopAc_ac_c*, const fopAc_ac_c*);
s16 fopAcM_searchActorAngleX(const fopAc_ac_c*, const fopAc_ac_c*);
s32 fopAcM_seenActorAngleY(const fopAc_ac_c*, const fopAc_ac_c*);
f32 fopAcM_searchActorDistance(const fopAc_ac_c*, const fopAc_ac_c*);
f32 fopAcM_searchActorDistance2(const fopAc_ac_c*, const fopAc_ac_c*);
f32 fopAcM_searchActorDistanceXZ(const fopAc_ac_c*, const fopAc_ac_c*);
f32 fopAcM_searchActorDistanceXZ2(const fopAc_ac_c*, const fopAc_ac_c*);
s32 fopAcM_rollPlayerCrash(const fopAc_ac_c*, f32, u32, f32, f32, int, f32);
s32 fopAcM_checkCullingBox(f32[3][4], f32, f32, f32, f32, f32, f32);
s32 fopAcM_cullingCheck(const fopAc_ac_c*);
s32 event_second_actor(u16);
s32 fopAcM_orderTalkEvent(fopAc_ac_c*, fopAc_ac_c*, u16, u16);
s32 fopAcM_orderTalkItemBtnEvent(u16, fopAc_ac_c*, fopAc_ac_c*, u16, u16);
s32 fopAcM_orderSpeakEvent(fopAc_ac_c*, u16, u16);
s32 fopAcM_orderDoorEvent(fopAc_ac_c*, fopAc_ac_c*, u16, u16);
s32 fopAcM_orderCatchEvent(fopAc_ac_c*, fopAc_ac_c*, u16, u16);
s32 fopAcM_orderOtherEvent(fopAc_ac_c*, const char*, u16, u16, u16);
s32 fopAcM_orderOtherEvent(fopAc_ac_c*, fopAc_ac_c*, const char*, u16, u16, u16);
s32 fopAcM_orderChangeEventId(fopAc_ac_c*, s16, u16, u16);
s32 fopAcM_orderOtherEventId(fopAc_ac_c*, s16, u8, u16, u16, u16);
s32 fopAcM_orderMapToolEvent(fopAc_ac_c*, u8, s16, u16, u16, u16);
s32 fopAcM_orderMapToolAutoNextEvent(fopAc_ac_c*, u8, s16, u16, u16, u16);
s32 fopAcM_orderPotentialEvent(fopAc_ac_c*, u16, u16, u16);
s32 fopAcM_orderItemEvent(fopAc_ac_c*, u16, u16);
s32 fopAcM_orderTreasureEvent(fopAc_ac_c*, fopAc_ac_c*, u16, u16);
s32 fopAcM_getTalkEventPartner(const fopAc_ac_c*);
s32 fopAcM_getItemEventPartner(const fopAc_ac_c*);
s32 fopAcM_getEventPartner(const fopAc_ac_c*);
s32 fopAcM_createItemForPresentDemo(const cXyz*, int, u8, int, int, const csXyz*, const cXyz*);
s32 fopAcM_createItemForTrBoxDemo(const cXyz*, int, int, int, const csXyz*, const cXyz*);
s32 fopAcM_getItemNoFromTableNo(u8);
s32 fopAcM_createItemFromEnemyID(u8, const cXyz*, int, int, const csXyz*, const cXyz*, f32*, f32*);
s32 fopAcM_createItemFromTable(const cXyz*, int, int, int, const csXyz*, int, const cXyz*, f32*,
                               f32*, bool);
s32 fopAcM_createDemoItem(const cXyz*, int, int, const csXyz*, int, const cXyz*, u8);
s32 fopAcM_createItemForBoss(const cXyz*, int, int, const csXyz*, const cXyz*, f32, f32, int);
s32 fopAcM_createItemForMidBoss(const cXyz*, int, int, const csXyz*, const cXyz*, int, int);
void* fopAcM_createItemForDirectGet(const cXyz*, int, int, const csXyz*, const cXyz*, f32, f32);
void* fopAcM_createItemForSimpleDemo(const cXyz*, int, int, const csXyz*, const cXyz*, f32, f32);
s32 fopAcM_createItem(const cXyz*, int, int, int, const csXyz*, const cXyz*, int);
void* fopAcM_fastCreateItem2(const cXyz*, int, int, int, int, const csXyz*, const cXyz*);
void* fopAcM_fastCreateItem(const cXyz*, int, int, const csXyz*, const cXyz*, f32*, f32*, int, int,
                            createFunc);
s32 fopAcM_createBokkuri(u16, const cXyz*, int, int, int, const cXyz*, int, int);
s32 fopAcM_createWarpHole(const cXyz*, const csXyz*, int, u8, u8, u8);
s32 fopAcM_myRoomSearchEnemy(s8);
s32 fopAcM_createDisappear(const fopAc_ac_c*, const cXyz*, u8, u8, u8);
s32 fopAcM_setCarryNow(fopAc_ac_c*, int);
s32 fopAcM_cancelCarryNow(fopAc_ac_c*);
f32 fopAcM_otoCheck(const fopAc_ac_c*, f32);
s32 fopAcM_otherBgCheck(const fopAc_ac_c*, const fopAc_ac_c*);
s32 fopAcM_wayBgCheck(const fopAc_ac_c*, f32, f32);
s32 fopAcM_plAngleCheck(const fopAc_ac_c*, s16);
s32 fopAcM_effSmokeSet1(u32*, u32*, const cXyz*, const csXyz*, f32, const dKy_tevstr_c*, int);
s32 fopAcM_effHamonSet(u32*, const cXyz*, f32, f32);
s32 fopAcM_riverStream(cXyz*, s16*, f32*, f32);
s32 fopAcM_carryOffRevise(fopAc_ac_c*);
void vectle_calc(const DOUBLE_POS*, cXyz*);
void get_vectle_calc(const cXyz*, const cXyz*, cXyz*);
void fopAcM_setEffectMtx(const fopAc_ac_c*, const J3DModelData*);
const char* fopAcM_getProcNameString(const fopAc_ac_c*);
s32 fopAcM_findObjectCB(const fopAc_ac_c*, void*);
s32 fopAcM_searchFromName(const char*, u32, u32);
s32 fopAcM_findObject4EventCB(fopAc_ac_c*, void*);
s32 fopAcM_searchFromName4Event(const char*, s16);
s32 fopAcM_getWaterY(const cXyz*, f32*);
void fpoAcM_relativePos(const fopAc_ac_c*, const cXyz*, cXyz*);
s32 fopAcM_getWaterStream(const cXyz*, const cBgS_PolyInfo&, cXyz*, int*, int);
s16 fopAcM_getPolygonAngle(const cBgS_PolyInfo&, s16);

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
void fopScnM_SearchByID(void);
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
void fopAcM_GetName__FPv(void);    // mostly inlined
void fopAcM_GetID__FPCv(void);     // mostly inlined
void fopAcM_GetParam__FPCv(void);  // mostly inlined
}

#endif