#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "SComponent/c_phase.h"
#include "Z2AudioLib/Z2SeqMgr/Z2SeqMgr.h"
#include "d/d_bg/d_bg_s/d_bg_s.h"
#include "d/d_item/d_item/d_item.h"
#include "d/d_kankyo/d_kankyo.h"
#include "f/f_op/f_op_scene_mng.h"
#include "global.h"
#include "m_Do/m_Do_Reset/m_Do_Reset.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"
#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"
#include "m_Do/m_Do_ext/m_Do_ext.h"
#include "msl_c/string.h"

extern "C" {
bool dComIfGp_checkMapShow__Fv(void);
BOOL dComIfGp_isLightDropMapVisible__Fv(void);
BOOL isTransformLV__21dSv_player_status_b_cCFi(int);
const char* dComIfGs_getWarpStageName__Fv(void);
int dComIfGs_getWarpRoomNo__Fv(void);
int dKy_daynight_check__Fv(void);
int getZoneNo__20dStage_roomControl_cFi(int);
int getTimerMode__14dComIfG_play_cFv(void);
s16 dComIfGs_getWarpPlayerAngleY__Fv(void);
u16 dComIfGs_getMaxLifeGauge__Fv(void);
u32 getBombNum__21dSv_player_item_max_cCFUc(u8);
u32 getTimerPtr__14dComIfG_play_cFv(void);
u8 dComIfGs_checkGetItem__FUc(u8);
u8 dComIfGs_getBottleMax__Fv(void);
u8 dComIfGs_getMixItemIndex__Fi(int);
u8 getBombNum__24dSv_player_item_record_cCFUc(u8);
unsigned int getSelectItemIndex__21dSv_player_status_a_cCFi(int);
void __ct__10dSv_zone_cFv(void);
void __ct__11cBgS_ChkElmFv(void);
void __ct__11dRes_info_cFv(void);
void __ct__12dCcMassS_MngFv(void);
void __ct__12dDlst_list_cFv(void);
void __ct__12dSv_memory_cFv(void);
void __ct__13dComIfG_inf_cFv(void);
void __ct__13dSv_memory2_cFv(void);
void __ct__13mDoExt_bckAnmFv(void);
void __ct__13mDoExt_bpkAnmFv(void);
void __ct__13mDoExt_brkAnmFv(void);
void __ct__13mDoExt_btkAnmFv(void);
void __ct__14dDlst_window_cFv(void);
void __ct__14dEvt_control_cFv(void);
void __ct__16dEvent_manager_cFv(void);
void __ct__25dComIfG_camera_info_classFv(void);
void __ct__4cCcSFv(void);
void __dl__FPv(void);
void __dt__8cM3dGCpsFv(void);
void __nw__FUl(void);
void addBottleNum__24dSv_player_item_record_cFUcs(void);
void __dt__11cBgS_ChkElmFv(void);
void Init__11cBgS_ChkElmFv(void);
void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla(void);
void ChkSetInfo__13cBgS_PolyInfoCFv(void);
void __dt__8cM3dGCylFv(void);
void create__10JKRExpHeapFUlP7JKRHeapb(void);
void __dt__7cSAngleFv(void);
void ct__14dComIfG_play_cFv(void);
void setLastSceneMode__9daAlink_cFPUl(void);
void __ct__10dAttDraw_cFv(void);
void __dt__10dAttDraw_cFv(void);
void __dt__12dAttention_cFv(void);
void __ct__10dAttList_cFv(void);
void __dt__10dAttList_cFv(void);
void __dt__12dCcMassS_ObjFv(void);
void __dt__4dCcSFv(void);
void __dt__25dComIfG_camera_info_classFv(void);
void dComIfG_changeOpeningScene__FP11scene_classs(void);
void dComIfG_get_timelayer__FPi(int*);
void dComIfG_getOldStageRes__FPCc(void);
void dComIfG_getRoomArcName__Fi(void);
void dComIfG_getStageRes__FPCc(void);
void dComIfG_inf_c_NS_ct(void);
void __dt__13dComIfG_inf_cFv(void);
void clearItemBombNumCount__14dComIfG_play_cFUc(void);
void createParticle__14dComIfG_play_cFv(void);
void createSimpleModel__14dComIfG_play_cFv(void);
void deleteSimpleModel__14dComIfG_play_cFv(void);
void __dt__14dComIfG_play_cFv(void);
void getItemBombNumCount__14dComIfG_play_cFUc(void);
void getLayerNo_common_common__14dComIfG_play_cFPCcii(void);
void getLayerNo_common__14dComIfG_play_cFPCcii(void);
void getLayerNo__14dComIfG_play_cFi(int);
void itemInit__14dComIfG_play_cFv(void);
void setItemBombNumCount__14dComIfG_play_cFUcs(u8, s16);
void setStartStage__14dComIfG_play_cFP19dStage_startStage_c(void);
void setTimerPtr__14dComIfG_play_cFP8dTimer_c(void);
void dComIfG_resDelete__FP30request_of_phase_process_classPCc(void);
void dComIfG_resetToOpening__FP11scene_class(void);
void dComIfG_resLoad__FP30request_of_phase_process_classPCcP7JKRHeap(void);
void dComIfG_resLoad__FP30request_of_phase_process_classPCc(void);
void dComIfG_TimerDeleteRequest__Fi(void);
void dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj(
    void);
void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj(void);
void dComIfGp_addSelectItemNum__Fis(void);
void dComIfGp_calcNowRegion__Fv(void);
void dComIfGp_checkEmptySubHeap2D__Fv(void);
void dComIfGp_createSubExpHeap2D__Fv(void);
void dComIfGp_destroySubExpHeap2D__Fv(void);
void dComIfGp_getNowLevel__Fv(void);
void dComIfGp_getReverb__Fi(void);
void dComIfGp_getRoomArrow__Fi(void);
void dComIfGp_getRoomCamera__Fi(void);
void dComIfGp_getSelectItem__Fi(void);
void dComIfGp_getSelectItemMaxNum__Fi(void);
void dComIfGp_getSelectItemNum__Fi(void);
void dComIfGp_getSubHeap2D__Fi(void);
void dComIfGp_mapHide__Fv(void);
void dComIfGp_mapShow__Fv(void);
void dComIfGp_offHeapLockFlag__Fi(void);
void dComIfGp_ret_wp_set__FSc(void);
void dComIfGp_searchUseSubHeap2D__Fi(void);
void dComIfGp_SelectWarpPt_get__Fv(void);
void dComIfGp_SelectWarpPt_set__FUc(void);
void dComIfGp_setHeapLockFlag__FUc(void);
void dComIfGp_setNextStage__FPCcsScSc(void);
void dComIfGp_setNextStage__FPCcsScScfUliScsii(void);
void dComIfGp_setSelectItem__Fi(int);
void dComIfGp_setSelectItemNum__Fis(void);
void dComIfGp_TargetWarpPt_get__Fv(void);
void dComIfGp_TargetWarpPt_set__FUc(void);
void dComIfGp_TransportWarp_check__Fv(void);
void dComIfGp_world_dark_get__Fv(void);
void dComIfGp_world_dark_set__FUc(u8);
void dComIfGs_BossLife_public_Set__FSc(void);
void dComIfGs_checkGetInsectNum__Fv(void);
void dComIfGs_gameStart__Fv(void);
void dComIfGs_getSelectMixItemNoArrowIndex__Fi(void);
void dComIfGs_getWarpMarkFlag__Fv(void);
void dComIfGs_getWarpPlayerPos__Fv(void);
void dComIfGs_isDungeonItemWarp__Fi(void);
void dComIfGs_isOneZoneItem__Fii(void);
void dComIfGs_isOneZoneSwitch__Fii(void);
void dComIfGs_isStageSwitch__Fii(void);
void dComIfGs_isStageTbox__Fii(void);
void dComIfGs_isVisitedRoom__Fi(void);
void dComIfGs_isZoneItem__Fii(void);
void dComIfGs_isZoneSwitch__Fii(void);
void dComIfGs_offOneZoneSwitch__Fii(void);
void dComIfGs_offStageSwitch__Fii(void);
void dComIfGs_offZoneSwitch__Fii(void);
void dComIfGs_onOneZoneSwitch__Fii(void);
void dComIfGs_onStageSwitch__Fii(void);
void dComIfGs_onVisitedRoom__Fi(void);
void dComIfGs_onZoneSwitch__Fii(void);
void dComIfGs_PolyDamageOff_Check__Fv(void);
void dComIfGs_PolyDamageOff_Set__FSc(void);
void dComIfGs_sense_type_change_Get__Fv(void);
void dComIfGs_setKeyNum__FiUc(int, u8);
void dComIfGs_setLastWarpMarkItemData__FPCc4cXyzsScUcUc(void);
void dComIfGs_setMixItemIndex__FiUc(int, u8);
void dComIfGs_setSelectEquipClothes__FUc(u8);
void dComIfGs_setSelectEquipShield__FUc(u8);
void dComIfGs_setSelectEquipSword__FUc(u8);
void dComIfGs_setSelectItemIndex__FiUc(int, u8);
void dComIfGs_setWarpItemData__FPCc4cXyzsScUcUc(void);
void dComIfGs_setWarpMarkFlag__FUc(void);
void dComIfGs_staffroll_next_go_check__Fv(void);
void dComIfGs_Wolf_Change_Check__Fv(void);
void dComIfGs_wolfeye_effect_check__Fv(void);
void dComLbG_PhaseHandler__FP30request_of_phase_process_classPPFPv_iPv(void);
void __dt__12dDlst_list_cFv(void);
void setReal__21dDlst_shadowControl_cFUlScP8J3DModelP4cXyzffP12dKy_tevstr_c(void);
void setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj(void);
void __dt__14dDlst_window_cFv(void);
void __dt__11dEvDtBase_cFv(void);
void __dt__12dEvt_order_cFv(void);
void dKy_darkworld_stage_check__FPCci(void);
void getMapPlayerPos__10dMapInfo_nFv(void);
void dMenuFmap_getStartStageName__FPv(void);
void init__13dMeter2Info_cFv(void);
void setSaveStageName__13dMeter2Info_cFPCc(void);
void __ct__13dPa_control_cFv(void);
void deleteRes__14dRes_control_cFPCcP11dRes_info_ci(void);
void __dt__14dRes_control_cFv(void);
void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci(void);
void setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap(void);
void syncRes__14dRes_control_cFPCcP11dRes_info_ci(void);
void __dt__11dRes_info_cFv(void);
void addModel__15dSmplMdl_draw_cFP12J3DModelDataiUc(void);
void draw__15dSmplMdl_draw_cFv(void);
void entry__15dSmplMdl_draw_cFP8J3DModeli(void);
void removeModel__15dSmplMdl_draw_cFP12J3DModelDatai(void);
void __ct__15dSmplMdl_draw_cFv(void);
void getStatusRoomDt__20dStage_roomControl_cFi(void);
void dStage_roomRead_dt_c_GetReverbStage__FR14roomRead_classi(void);
void deleteCheck__8dTimer_cFv(void);
void deleteRequest__8dTimer_cFv(void);
void end__8dTimer_cFi(void);
void restart__8dTimer_cFUc(void);
void start__8dTimer_cFis(void);
void start__8dTimer_cFi(void);
void stop__8dTimer_cFUc(void);
void fopScnM_ChangeReq(void);
void fopScnM_ReRequest(void);
void addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc(void);
void removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai(void);
void entrySimpleModel__14dComIfG_play_cFP8J3DModeli(void);
void phase_1__FPc(void);
void phase_2__FPc(void);
void phase_3__FPc(void);
void phase_01__FP12phaseParam_c(void);
void phase_02__FP12phaseParam_c(void);
void phase_03__FP12phaseParam_c(void);
void dComIfGp_getMapTrans__FiPfPfPs(void);
void dComIfGs_onStageBossEnemy__Fi(void);
void dComIfGs_BossLife_public_Get__Fv(void);
void dComIfGs_sense_type_change_Set__FSc(void);
void dComIfG_getTrigA__FUl(void);
void __ct__19dComIfG_resLoader_cFv(void);
void __dt__19dComIfG_resLoader_cFv(void);
void load__19dComIfG_resLoader_cFPPCcP7JKRHeap(void);
void dComIfG_TimerStart__Fis(void);
void dComIfG_TimerStop__Fi(void);
void dComIfG_TimerReStart__Fi(void);
void dComIfG_TimerEnd__Fii(void);
void dComIfG_TimerDeleteCheck__Fi(void);
void dComIfGs_shake_kandelaar__Fv(void);
void dComIfGs_shake_kandelaar_check__Fv(void);
void dComIfGs_Grass_hide_Set__FSc(void);
void dComIfGs_offVisitedRoom__Fi(void);
void __sinit_d_com_inf_game_cpp(void);
void __dt__12dCcMassS_MngFv(void);
void __dt__4cCcSFv(void);
void __dt__4dBgSFv(void);
void __dt__4cBgSFv(void);
void __dt__15cCcD_DivideAreaFv(void);
void __dt__8cM3dGAabFv(void);
void __dt__15cCcD_DivideInfoFv(void);
void func_80361C24(void);
void __construct_array(void);
void __cvt_fp2unsigned(void);
void sprintf(void);
void getBottleNum__24dSv_player_item_record_cCFUc(void);
void getItem__17dSv_player_item_cCFib(void);
void getSave2__10dSv_save_cFi(void);
void getTotalFreeSize__7JKRHeapCFv(void);
void getVibration__19dSv_player_config_cFv(void);
void init__12dSv_memory_cFv(void);
void init__13dSv_memory2_cFv(void);
void init__14dComIfG_play_cFv(void);
void initZone__20dStage_roomControl_cFv(void);
void isDarkClearLV__21dSv_player_status_b_cCFi(void);
void isDungeonItem__12dSv_memBit_cCFi(void);
void isEventBit__11dSv_event_cCFUs(void);
void isFirstBit__21dSv_player_get_item_cCFUc(void);
void isItem__13dSv_zoneBit_cCFi(void);
void isOneItem__13dSv_zoneBit_cCFi(void);
void isOneSwitch__13dSv_zoneBit_cCFi(void);
void isRegionBit__33dSv_player_field_last_stay_info_cCFi(void);
void isSwitch__10dSv_info_cCFii(void);
void isSwitch__12dSv_memBit_cCFi(void);
void isSwitch__13dSv_zoneBit_cCFi(void);
void isTbox__12dSv_memBit_cCFi(void);
void isVisitedRoom__13dSv_memory2_cFi(void);
void init__12J3DFrameCtrlFs(void);
void __dt__13mDoExt_bckAnmFv(void);
void __dt__13mDoExt_bpkAnmFv(void);
void __dt__13mDoExt_brkAnmFv(void);
void __dt__13mDoExt_btkAnmFv(void);
void mDoExt_destroyExpHeap__FP10JKRExpHeap(void);
void offOneSwitch__13dSv_zoneBit_cFi(void);
void offSwitch__10dSv_info_cFii(void);
void offSwitch__12dSv_memBit_cFi(void);
void offSwitch__13dSv_zoneBit_cFi(void);
void offVisitedRoom__13dSv_memory2_cFi(void);
void onDungeonItem__12dSv_memBit_cFi(int);
void onOneSwitch__13dSv_zoneBit_cFi(void);
void onRegionBit__33dSv_player_field_last_stay_info_cFi(void);
void onSwitch__10dSv_info_cFii(int, int);
void onSwitch__12dSv_memBit_cFi(void);
void onSwitch__13dSv_zoneBit_cFi(void);
void onVisitedRoom__13dSv_memory2_cFi(void);
void set__18dStage_nextStage_cFPCcScsScScUc(void);
void set__33dSv_player_field_last_stay_info_cFPCcRC4cXyzsScUc(void);
void setBombNum__24dSv_player_item_record_cFUcUc(void);
void setBottleNum__24dSv_player_item_record_cFUcUc(u8, u8);
void setCollect__20dSv_player_collect_cFiUc(int, u8);
void setWarpItemData__14dComIfG_play_cFPCc4cXyzsScUcUc(void);
void ct__13dComIfG_inf_cFv(void);
void fopScnM_ReRequest__FsUl(void);
void fopScnM_ChangeReq__FP11scene_classssUs(void);
}

extern u8 lbl_80430188;
extern u8 lbl_80378F38;
extern u8 lbl_803A7288;
extern u8 lbl_80450D64;
extern u8 lbl_80450BC8;
extern u8 lbl_80450604;
extern u8 lbl_803A71B8;
extern u8 lbl_803A71C4;
extern u8 lbl_80451D00;
extern u8 lbl_803A37C0;
extern u8 lbl_80451D04;
extern u8 lbl_803F6094;
extern u8 lbl_80451D10;
extern u8 lbl_80451D08;
extern u8 lbl_803A71D0;
extern u8 lbl_80451D18;
extern u8 lbl_80451D1C;
extern u8 lbl_80423FD0;
extern u8 lbl_80451D20;
extern u8 lbl_804061A0;
extern u8 lbl_804061B4;
extern u8 lbl_803AB608;
extern u8 lbl_803AB61C;
extern u8 lbl_803AB630;
extern u8 lbl_803AC3E4;
extern u8 lbl_803A7230;
extern u8 lbl_803A7224;
extern u8 lbl_803C3608;
extern u8 lbl_803C36D0;
extern u8 lbl_803A7218;
extern u8 lbl_803C35A4;
extern u8 lbl_803A720C;
extern u8 lbl_803A7200;
extern u8 lbl_803C3748;
extern u8 lbl_803A71F4;
extern u8 lbl_803A6D94;
extern u8 lbl_803A6C20;
extern u8 lbl_803A71E8;
extern u8 lbl_803A9C48;
extern u8 lbl_803A9C60;
extern u8 lbl_803A3354;

// memset first arg is wrong
#ifdef NONMATCHING
void dComIfG_play_c::ct(void) {
    field_0x4e0c = 0;
    field_0x4e04 = 0;
    field_0x4e0d = 0;

    memset((void*)(this + 0x5024), 0, 8);
    init();
}
#else
asm void dComIfG_play_c::ct(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002B1DC.s"
}
#endif

asm void dComIfG_play_c::init(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002B22C.s"
}

void dComIfGp_checkItemGet(u8 param_1, int param_2) {
    checkItemGet(param_1, param_2);
}

/* d_com_inf_game.cpp autogenerated by split.py v0.3 at 2021-01-10 01:01:13.440448 */

// itemInit__14dComIfG_play_cFv
// dComIfG_play_c::itemInit(void)
asm void itemInit__14dComIfG_play_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002B2C8.s"
}

// setItemBombNumCount__14dComIfG_play_cFUcs
// dComIfG_play_c::setItemBombNumCount(unsigned char, short)
asm void setItemBombNumCount__14dComIfG_play_cFUcs(u8, short) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002B36C.s"
}

// getItemBombNumCount__14dComIfG_play_cFUc
// dComIfG_play_c::getItemBombNumCount(unsigned char)
asm void getItemBombNumCount__14dComIfG_play_cFUc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002B384.s"
}

// clearItemBombNumCount__14dComIfG_play_cFUc
// dComIfG_play_c::clearItemBombNumCount(unsigned char)
asm void clearItemBombNumCount__14dComIfG_play_cFUc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002B394.s"
}

void dComIfG_play_c::setNowVibration(u8 status) {
    mNowVibration = status;
}

u32 dComIfG_play_c::getNowVibration(void) {
    return mNowVibration;
}

// setStartStage__14dComIfG_play_cFP19dStage_startStage_c
// dComIfG_play_c::setStartStage(dStage_startStage_c*)
asm void setStartStage__14dComIfG_play_cFP19dStage_startStage_c(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002B3B8.s"
}

void dComIfG_get_timelayer(int* param1) {
    if (dKy_daynight_check__Fv() != FALSE) {
        *param1 += 1;
    }
}

// getLayerNo_common_common__14dComIfG_play_cFPCcii
// dComIfG_play_c::getLayerNo_common_common(const char*, int, int)
asm void getLayerNo_common_common__14dComIfG_play_cFPCcii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002B434.s"
}

// getLayerNo_common__14dComIfG_play_cFPCcii
// dComIfG_play_c::getLayerNo_common(const char*, int, int)
asm void getLayerNo_common__14dComIfG_play_cFPCcii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002C950.s"
}

// getLayerNo__14dComIfG_play_cFi
// dComIfG_play_c::getLayerNo(int)
asm void getLayerNo__14dComIfG_play_cFi(int) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002C97C.s"
}

// createParticle__14dComIfG_play_cFv
// dComIfG_play_c::createParticle(void)
asm void createParticle__14dComIfG_play_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002C9D8.s"
}

// createSimpleModel__14dComIfG_play_cFv
// dComIfG_play_c::createSimpleModel(void)
asm void createSimpleModel__14dComIfG_play_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CA1C.s"
}

// deleteSimpleModel__14dComIfG_play_cFv
// dComIfG_play_c::deleteSimpleModel(void)
asm void deleteSimpleModel__14dComIfG_play_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CA70.s"
}

// drawSimpleModel__14dComIfG_play_cFv
// dComIfG_play_c::drawSimpleModel(void)
asm void dComIfG_play_c::drawSimpleModel(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CAC4.s"
}

// addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
// dComIfG_play_c::addSimpleModel(J3DModelData*, int, unsigned char)
asm void addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CAF0.s"
}

// removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
// dComIfG_play_c::removeSimpleModel(J3DModelData*, int)
asm void removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CB30.s"
}

// entrySimpleModel__14dComIfG_play_cFP8J3DModeli
// dComIfG_play_c::entrySimpleModel(J3DModel*, int)
asm void entrySimpleModel__14dComIfG_play_cFP8J3DModeli(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CB68.s"
}

void dComIfG_play_c::setTimerNowTimeMs(int time) {
    mTimerNowTimeMs = time;
}

int dComIfG_play_c::getTimerNowTimeMs(void) {
    return mTimerNowTimeMs;
}

void dComIfG_play_c::setTimerLimitTimeMs(int time) {
    mTimerLimitTimeMs = time;
}

int dComIfG_play_c::getTimerLimitTimeMs(void) {
    return mTimerLimitTimeMs;
}

void dComIfG_play_c::setTimerMode(int mode) {
    mTimerMode = mode;
}

int dComIfG_play_c::getTimerMode(void) {
    return mTimerMode;
}

void dComIfG_play_c::setTimerType(u8 type) {
    mTimerType = type;
}

u8 dComIfG_play_c::getTimerType(void) {
    return mTimerType;
}

// setTimerPtr__14dComIfG_play_cFP8dTimer_c
// dComIfG_play_c::setTimerPtr(dTimer_c*)
asm void setTimerPtr__14dComIfG_play_cFP8dTimer_c(void){nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CBD4.s"
}

u32 dComIfG_play_c::getTimerPtr(void) {
    return mTimerPtr;
}

// ct__13dComIfG_inf_cFv
// dComIfG_inf_c::ct(void)
asm void dComIfG_inf_c::ct(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CBE4.s"
}

// dComIfG_changeOpeningScene__FP11scene_classs
// dComIfG_changeOpeningScene__FP11scene_classs(scene_class*, short)
asm void dComIfG_changeOpeningScene__FP11scene_classs(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CC54.s"
}

// dComIfG_resetToOpening__FP11scene_class
// dComIfG_resetToOpening__FP11scene_class(scene_class*)
asm void dComIfG_resetToOpening__FP11scene_class(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CD44.s"
}

// phase_1__FPc
// phase_1(char*)
asm void phase_1__FPc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CDB8.s"
}

// phase_2__FPc
// phase_2(char*)
asm void phase_2__FPc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CE38.s"
}

// phase_3__FPc
// phase_3(char*)
asm void phase_3__FPc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CEB4.s"
}

// dComIfG_resLoad__FP30request_of_phase_process_classPCc
// dComIfG_resLoad__FP30request_of_phase_process_classPCc(request_of_phase_process_class*, const
// char*)
asm void dComIfG_resLoad__FP30request_of_phase_process_classPCc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CEBC.s"
}  //

// phase_01__FP12phaseParam_c
// phase_01(phaseParam_c*)
asm void phase_01__FP12phaseParam_c(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CEFC.s"
}

// phase_02__FP12phaseParam_c
// phase_02(phaseParam_c*)
asm void phase_02__FP12phaseParam_c(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CF5C.s"
}

// phase_03__FP12phaseParam_c
// phase_03(phaseParam_c*)
asm void phase_03__FP12phaseParam_c(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CFB8.s"
}

// dComIfG_resLoad__FP30request_of_phase_process_classPCcP7JKRHeap
// dComIfG_resLoad__FP30request_of_phase_process_classPCc(request_of_phase_process_class*, const
// char*, JKRHeap*)
asm void dComIfG_resLoad__FP30request_of_phase_process_classPCcP7JKRHeap(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002CFC0.s"
}

// dComIfG_resDelete__FP30request_of_phase_process_classPCc
// dComIfG_resDelete__FP30request_of_phase_process_classPCc(request_of_phase_process_class*, const
// char*)
asm void dComIfG_resDelete__FP30request_of_phase_process_classPCc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D008.s"
}

// dComIfGp_getReverb__Fi
// dComIfGp_getReverb__Fi(int)
asm void dComIfGp_getReverb__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D06C.s"
}

// dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
// dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj(cXyz*, float, float,
// cBgS_PolyInfo&, short, float, _GXTexObj*)
asm void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D0B4.s"
}

// dComIfGp_getMapTrans__FiPfPfPs
// dComIfGp_getMapTrans(int, float*, float*, short*)
asm void dComIfGp_getMapTrans__FiPfPfPs(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D1AC.s"
}

// dComIfGp_getRoomCamera__Fi
// dComIfGp_getRoomCamera__Fi(int)
asm void dComIfGp_getRoomCamera__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D25C.s"
}

// dComIfGp_getRoomArrow__Fi
// dComIfGp_getRoomArrow__Fi(int)
asm void dComIfGp_getRoomArrow__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D2AC.s"
}

// dComIfGp_setNextStage__FPCcsScScfUliScsii
// dComIfGp_setNextStage__FPCcsScScfUliScsii(const char*, short, char, char, float, unsigned long,
// int, char, short, int, int)
asm void dComIfGp_setNextStage__FPCcsScScfUliScsii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D2FC.s"
}

// dComIfGp_setNextStage__FPCcsScSc
// dComIfGp_setNextStage__FPCcsScScfUliScsii(const char*, short, char, char)
asm void dComIfGp_setNextStage__FPCcsScSc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D554.s"
}

// dComIfGs_isStageTbox__Fii
// dComIfGs_isStageTbox__Fii(int, int)
asm void dComIfGs_isStageTbox__Fii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D598.s"
}

// dComIfGs_onStageSwitch__Fii
// dComIfGs_onStageSwitch__Fii(int, int)
asm void dComIfGs_onStageSwitch__Fii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D628.s"
}

// dComIfGs_offStageSwitch__Fii
// dComIfGs_offStageSwitch__Fii(int, int)
asm void dComIfGs_offStageSwitch__Fii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D6B4.s"
}

// dComIfGs_isStageSwitch__Fii
// dComIfGs_isStageSwitch__Fii(int, int)
asm void dComIfGs_isStageSwitch__Fii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D740.s"
}

// dComIfGs_onStageBossEnemy__Fi
// dComIfGs_onStageBossEnemy(int)
asm void dComIfGs_onStageBossEnemy__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D7D0.s"
}

// dComIfGs_isDungeonItemWarp__Fi
// dComIfGs_isDungeonItemWarp__Fi(int)
asm void dComIfGs_isDungeonItemWarp__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D878.s"
}

// dComIfGs_BossLife_public_Set__FSc
// dComIfGs_BossLife_public_Set__FSc(char)
asm void dComIfGs_BossLife_public_Set__FSc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D8FC.s"
}

// dComIfGs_BossLife_public_Get__Fv
// dComIfGs_BossLife_public_Get(void)
asm void dComIfGs_BossLife_public_Get__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D910.s"
}

// dComIfGs_sense_type_change_Set__FSc
// dComIfGs_sense_type_change_Set(char)
asm void dComIfGs_sense_type_change_Set__FSc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D924.s"
}

// dComIfGs_sense_type_change_Get__Fv
// dComIfGs_sense_type_change_Get__Fv(void)
asm void dComIfGs_sense_type_change_Get__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D938.s"
}

// dComIfGs_onZoneSwitch__Fii
// dComIfGs_onZoneSwitch__Fii(int, int)
asm void dComIfGs_onZoneSwitch__Fii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D94C.s"
}

// getZoneNo__20dStage_roomControl_cFi
// dStage_roomControl_c::getZoneNo(int)
asm int getZoneNo__20dStage_roomControl_cFi(int) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D9B0.s"
}

// dComIfGs_offZoneSwitch__Fii
// dComIfGs_offZoneSwitch__Fii(int, int)
asm void dComIfGs_offZoneSwitch__Fii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002D9CC.s"
}

// dComIfGs_isZoneSwitch__Fii
// dComIfGs_isZoneSwitch__Fii(int, int)
asm void dComIfGs_isZoneSwitch__Fii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002DA30.s"
}

// dComIfGs_onOneZoneSwitch__Fii
// dComIfGs_onOneZoneSwitch__Fii(int, int)
asm void dComIfGs_onOneZoneSwitch__Fii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002DA9C.s"
}

// dComIfGs_offOneZoneSwitch__Fii
// dComIfGs_offOneZoneSwitch__Fii(int, int)
asm void dComIfGs_offOneZoneSwitch__Fii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002DB00.s"
}

// dComIfGs_isOneZoneSwitch__Fii
// dComIfGs_isOneZoneSwitch__Fii(int, int)
asm void dComIfGs_isOneZoneSwitch__Fii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002DB64.s"
}

// dComIfGs_isZoneItem__Fii
// dComIfGs_isZoneItem__Fii(int, int)
asm void dComIfGs_isZoneItem__Fii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002DBD0.s"
}

// dComIfGs_isOneZoneItem__Fii
// dComIfGs_isOneZoneItem__Fii(int, int)
asm void dComIfGs_isOneZoneItem__Fii(void){nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002DC3C.s"
}

u16 dComIfGs_getMaxLifeGauge__Fv(void) {
    return (dComIfGs_getMaxLife() / 5) * 4;
}

void dComIfGs_setSelectItemIndex__FiUc(int i_no, u8 item_index) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setSelectItemIndex(i_no, item_index);
    dComIfGp_setSelectItem__Fi(i_no);
}

void dComIfGs_setMixItemIndex__FiUc(int i_no, u8 item_index) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setMixItemIndex(i_no, item_index);
}

// dComIfGs_getSelectMixItemNoArrowIndex__Fi
// dComIfGs_getSelectMixItemNoArrowIndex__Fi(int)

// close
#ifdef NONMATCHING
u8 dComIfGs_getSelectMixItemNoArrowIndex__Fi(int p1) {
    u8 item_index = dComIfGs_getSelectItemIndex(p1);
    u8 mix_index = dComIfGs_getMixItemIndex__Fi(p1);

    if (item_index < 0xf || item_index < 0x12) {
        return item_index;
    }
    if (mix_index == 255 || mix_index < 0xf || mix_index < 0x12) {
        item_index = 255;
        return item_index;
    }
}
#else
asm void dComIfGs_getSelectMixItemNoArrowIndex__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002DD3C.s"
}
#endif

u8 dComIfGs_getMixItemIndex__Fi(int i_no) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().getMixItemIndex(i_no);
}

// dComIfGp_setSelectItem__Fi
// dComIfGp_setSelectItem__Fi(int)
asm void dComIfGp_setSelectItem__Fi(int) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002DDF4.s"
}

// dComIfGp_getSelectItem__Fi
// dComIfGp_getSelectItem__Fi(int)
asm void dComIfGp_getSelectItem__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002DF1C.s"
}

void dComIfGp_mapShow__Fv(void) {
    dComIfGs_offEventBit(0x1D01);
}

void dComIfGp_mapHide__Fv(void) {
    dComIfGs_onEventBit(0x1D01);
}

asm bool dComIfGp_checkMapShow__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E0A8.s"
    // return !dComIfGs_isEventBit(0x1D01);
}

// dComIfGp_setHeapLockFlag__FUc
// dComIfGp_setHeapLockFlag__FUc(unsigned char)
asm void dComIfGp_setHeapLockFlag__FUc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E0E0.s"
}

// dComIfGp_offHeapLockFlag__Fi
// dComIfGp_offHeapLockFlag__Fi(int)
asm void dComIfGp_offHeapLockFlag__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E188.s"
}

// dComIfGp_createSubExpHeap2D__Fv
// dComIfGp_createSubExpHeap2D__Fv(void)
asm void dComIfGp_createSubExpHeap2D__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E22C.s"
}

// dComIfGp_destroySubExpHeap2D__Fv
// dComIfGp_destroySubExpHeap2D__Fv(void)
asm void dComIfGp_destroySubExpHeap2D__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E2DC.s"
}

// dComIfGp_checkEmptySubHeap2D__Fv
// dComIfGp_checkEmptySubHeap2D__Fv(void)
asm void dComIfGp_checkEmptySubHeap2D__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E348.s"
}

// dComIfGp_searchUseSubHeap2D__Fi
// dComIfGp_searchUseSubHeap2D__Fi(int)
asm void dComIfGp_searchUseSubHeap2D__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E388.s"
}

// dComIfGp_getSubHeap2D__Fi
// dComIfGp_getSubHeap2D__Fi(int)
asm void dComIfGp_getSubHeap2D__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E3D0.s"
}

// dComIfGs_checkGetInsectNum__Fv
// dComIfGs_checkGetInsectNum__Fv(void)
asm void dComIfGs_checkGetInsectNum__Fv(void){nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E428.s"
}

u8 dComIfGs_checkGetItem__FUc(u8 i_no) {
    u8 count = 0;

    for (int i = 0; i < 60; i++) {
        if (i_no == dComIfGs_getItem(i, true)) {
            count++;
        }
    }
    if (dComIfGs_getSelectEquipClothes() == i_no) {
        count++;
    }
    if (dComIfGs_getSelectEquipSword() == i_no) {
        count++;
    }
    if (dComIfGs_getSelectEquipShield() == i_no) {
        count++;
    }

    return count;
}

u8 dComIfGs_getBottleMax__Fv(void) {
    return 10;
}

// dComIfGp_getSelectItemNum__Fi
// dComIfGp_getSelectItemNum__Fi(int)
asm void dComIfGp_getSelectItemNum__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E5C0.s"
}

// dComIfGp_getSelectItemMaxNum__Fi
// dComIfGp_getSelectItemMaxNum__Fi(int)
asm void dComIfGp_getSelectItemMaxNum__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E688.s"
}

// dComIfGp_setSelectItemNum__Fis
// dComIfGp_setSelectItemNum__Fis(int, short)
asm void dComIfGp_setSelectItemNum__Fis(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E714.s"
}

// dComIfGp_addSelectItemNum__Fis
// dComIfGp_addSelectItemNum__Fis(int, short)
asm void dComIfGp_addSelectItemNum__Fis(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E83C.s"
}

// dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
// dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj(unsigned
// long, char, J3DModel*, cXyz*, float, float, float, float, cBgS_PolyInfo&, dKy_tevstr_c*, short,
// float, _GXTexObj*)
asm void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E910.s"
}

// dComIfGs_gameStart__Fv
// dComIfGs_gameStart__Fv(void)
asm void dComIfGs_gameStart__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E974.s"
}

// dComIfG_getTrigA__FUl
// dComIfG_getTrigA(unsigned long)
asm void dComIfG_getTrigA__FUl(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E9D4.s"
}

// dComIfGp_calcNowRegion__Fv
// dComIfGp_calcNowRegion__Fv(void)
asm void dComIfGp_calcNowRegion__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002E9F0.s"
}

// dComIfG_getNowCalcRegion__Fv
// dComIfG_getNowCalcRegion(void)
asm void dComIfG_getNowCalcRegion(void){nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002EC54.s"
}

BOOL dComIfGp_isLightDropMapVisible__Fv(void) {
    for (int i = 0; i < 3; i++) {
        if (dComIfGs_isLightDropGetFlag(i) != FALSE && dComIfGs_getLightDropNum(i) < 16) {
            return TRUE;
        }
    }
    return FALSE;
}

// dComIfGp_getNowLevel__Fv
// dComIfGp_getNowLevel__Fv(void)
asm void dComIfGp_getNowLevel__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002EE60.s"
}

void dComIfGs_setSelectEquipClothes__FUc(u8 item) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setSelectEquip(CLOTHING_BITFIELD, item);
}

// dComIfGs_setSelectEquipSword__FUc
// dComIfGs_setSelectEquipSword__FUc(unsigned char)
asm void dComIfGs_setSelectEquipSword__FUc(u8) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002EEC0.s"
}

// dComIfGs_setSelectEquipShield__FUc
// dComIfGs_setSelectEquipShield__FUc(unsigned char)
asm void dComIfGs_setSelectEquipShield__FUc(u8) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002EF94.s"
}

// dComIfGs_setKeyNum__FiUc
// dComIfGs_setKeyNum__FiUc(int, unsigned char)
asm void dComIfGs_setKeyNum__FiUc(int, u8) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F040.s"
}

#ifdef NONMATCHING
void dComIfGs_setWarpItemData(int unk1, const char* stage, cXyz pos, s16 angle, s8 room, u8 unk2,
                              u8 unk3) {
    g_dComIfG_gameInfo.getPlay().setWarpItemData(stage, pos, angle, room, unk2, unk3);
}
#else
asm void dComIfGs_setWarpItemData(int unk1, const char* stage, cXyz pos, s16 angle, s8 room,
                                  u8 unk2, u8 unk3) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F0E0.s"
}
#endif

// setWarpItemData__14dComIfG_play_cFPCc4cXyzsScUcUc
// dComIfG_play_c::setWarpItemData(const char*, cXyz, short, char, unsigned char, unsigned char)
asm void dComIfG_play_c::setWarpItemData(const char*, cXyz, s16, s8, u8, u8) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F128.s"
}

// dComIfGs_setWarpItemData__FPCc4cXyzsScUcUc
// dComIfGs_setWarpItemData(const char*, cXyz, short, char, unsigned char, unsigned char)
asm void dComIfGs_setWarpItemData__FPCc4cXyzsScUcUc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F19C.s"
}

void dComIfGs_setLastWarpMarkItemData(const char* stage, cXyz pos, s16 angle, s8 room, u8 unk1,
                                      u8 unk2) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerLastMarkInfo().setWarpItemData(stage, pos, angle,
                                                                             room, unk1, unk2);
}

const char* dComIfGs_getWarpStageName__Fv(void) {
    return dComIfGs_getLastWarpMarkStageName();
}

// dComIfGs_getWarpPlayerPos__Fv
// dComIfGs_getWarpPlayerPos__Fv(void)
asm void dComIfGs_getWarpPlayerPos__Fv(void){nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F2BC.s"
}

s16 dComIfGs_getWarpPlayerAngleY__Fv(void) {
    return dComIfGs_getLastWarpMarkPlayerAngleY();
}

int dComIfGs_getWarpRoomNo__Fv(void) {
    return dComIfGs_getLastWarpMarkRoomNo();
}

// dComIfGs_getWarpMarkFlag__Fv
// dComIfGs_getWarpMarkFlag__Fv(void)
asm void dComIfGs_getWarpMarkFlag__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F2F0.s"
}

void dComIfGs_setWarpMarkFlag__FUc(void) {
    return;
}

// __ct__19dComIfG_resLoader_cFv
// dComIfG_resLoader_c::dComIfG_resLoader_c(void)
asm void __ct__19dComIfG_resLoader_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F314.s"
}

// __dt__19dComIfG_resLoader_cFv
// dComIfG_resLoader_c::~dComIfG_resLoader_c(void)
asm void __dt__19dComIfG_resLoader_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F328.s"
}

// load__19dComIfG_resLoader_cFPPCcP7JKRHeap
// dComIfG_resLoader_c::load(const char**, JKRHeap*)
asm void load__19dComIfG_resLoader_cFPPCcP7JKRHeap(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F3B4.s"
}

// dComIfG_getStageRes__FPCc
// dComIfG_getStageRes__FPCc(const char*)
asm void dComIfG_getStageRes__FPCc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F434.s"
}

// dComIfG_getOldStageRes__FPCc
// dComIfG_getOldStageRes__FPCc(const char*)
asm void dComIfG_getOldStageRes__FPCc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F478.s"
}

// dComIfG_getRoomArcName__Fi
// dComIfG_getRoomArcName__Fi(int)
asm void dComIfG_getRoomArcName__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F4BC.s"
}

// dComIfGp_ret_wp_set__FSc
// dComIfGp_ret_wp_set__FSc(char)
asm void dComIfGp_ret_wp_set__FSc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F500.s"
}

// dComIfGp_world_dark_set__FUc
// dComIfGp_world_dark_set__FUc(unsigned char)

// matches but dComIfG_inf_c structure is wrong
#ifdef NONMATCHING
void dComIfGp_world_dark_set__FUc(u8 state) {
    g_dComIfG_gameInfo.setWorldDark(state);
}
#else
asm void dComIfGp_world_dark_set__FUc(u8) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F504.s"
}
#endif

// dComIfGp_world_dark_get__Fv
// dComIfGp_world_dark_get__Fv(void)

// same issue as above
#ifdef NONMATCHING
u8 dComIfGp_world_dark_get__Fv(void) {
    return g_dComIfG_gameInfo.getWorldDark();
}
#else
asm void dComIfGp_world_dark_get__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F518.s"
}
#endif

// dComIfG_TimerStart__Fis
// dComIfG_TimerStart(int, short)
asm void dComIfG_TimerStart__Fis(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F52C.s"
}

// dComIfG_TimerStop__Fi
// dComIfG_TimerStop(int)
asm void dComIfG_TimerStop__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F5C0.s"
}

// dComIfG_TimerReStart__Fi
// dComIfG_TimerReStart(int)
asm void dComIfG_TimerReStart__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F638.s"
}

// dComIfG_TimerEnd__Fii
// dComIfG_TimerEnd(int, int)
asm void dComIfG_TimerEnd__Fii(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F6B0.s"
}

// dComIfG_TimerDeleteCheck__Fi
// dComIfG_TimerDeleteCheck(int)
asm void dComIfG_TimerDeleteCheck__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F72C.s"
}

// dComIfG_TimerDeleteRequest__Fi
// dComIfG_TimerDeleteRequest__Fi(int)
asm void dComIfG_TimerDeleteRequest__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F79C.s"
}

// dComIfGs_Wolf_Change_Check__Fv
// dComIfGs_Wolf_Change_Check__Fv(void)
asm void dComIfGs_Wolf_Change_Check__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F810.s"
}

// dComIfGs_PolyDamageOff_Set__FSc
// dComIfGs_PolyDamageOff_Set__FSc(char)
asm void dComIfGs_PolyDamageOff_Set__FSc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002F9F0.s"
}

// dComIfGs_PolyDamageOff_Check__Fv
// dComIfGs_PolyDamageOff_Check__Fv(void)
asm void dComIfGs_PolyDamageOff_Check__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FA04.s"
}

// dComIfGs_shake_kandelaar__Fv
// dComIfGs_shake_kandelaar(void)
asm void dComIfGs_shake_kandelaar__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FA18.s"
}

// dComIfGs_shake_kandelaar_check__Fv
// dComIfGs_shake_kandelaar_check(void)
asm void dComIfGs_shake_kandelaar_check__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FA30.s"
}

// dComIfGs_wolfeye_effect_check__Fv
// dComIfGs_wolfeye_effect_check__Fv(void)
asm void dComIfGs_wolfeye_effect_check__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FA54.s"
}

// dComIfGs_Grass_hide_Set__FSc
// dComIfGs_Grass_hide_Set(char)
asm void dComIfGs_Grass_hide_Set__FSc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FA84.s"
}

// dComIfGp_TargetWarpPt_set__FUc
// dComIfGp_TargetWarpPt_set__FUc(unsigned char)
asm void dComIfGp_TargetWarpPt_set__FUc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FA98.s"
}

// dComIfGp_SelectWarpPt_set__FUc
// dComIfGp_SelectWarpPt_set__FUc(unsigned char)
asm void dComIfGp_SelectWarpPt_set__FUc(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FAAC.s"
}

// dComIfGp_TargetWarpPt_get__Fv
// dComIfGp_TargetWarpPt_get__Fv(void)
asm void dComIfGp_TargetWarpPt_get__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FAC0.s"
}

// dComIfGp_SelectWarpPt_get__Fv
// dComIfGp_SelectWarpPt_get__Fv(void)
asm void dComIfGp_SelectWarpPt_get__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FAD4.s"
}

// dComIfGp_TransportWarp_check__Fv
// dComIfGp_TransportWarp_check__Fv(void)
asm void dComIfGp_TransportWarp_check__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FAE8.s"
}

// dComLbG_PhaseHandler__FP30request_of_phase_process_classPPFPv_iPv
// dComLbG_PhaseHandler__FP30request_of_phase_process_classPPFPv_iPv(request_of_phase_process_class*,
// int (*)(void*), void*)
asm void dComLbG_PhaseHandler__FP30request_of_phase_process_classPPFPv_iPv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FB20.s"
}

// dComIfGs_onVisitedRoom__Fi
// dComIfGs_onVisitedRoom__Fi(int)
asm void dComIfGs_onVisitedRoom__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FB80.s"
}

// dComIfGs_offVisitedRoom__Fi
// dComIfGs_offVisitedRoom(int)
asm void dComIfGs_offVisitedRoom__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FC3C.s"
}

// dComIfGs_isVisitedRoom__Fi
// dComIfGs_isVisitedRoom__Fi(int)
asm void dComIfGs_isVisitedRoom__Fi(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FC98.s"
}

// dComIfGs_staffroll_next_go__Fv
// dComIfGs_staffroll_next_go__Fv(void)
asm void dComIfGs_staffroll_next_go__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FCF4.s"
}

// dComIfGs_staffroll_next_go_check__Fv
// dComIfGs_staffroll_next_go_check__Fv(void)
asm void dComIfGs_staffroll_next_go_check__Fv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FD08.s"
}

// __sinit_d_com_inf_game_cpp
//
asm void __sinit_d_com_inf_game_cpp(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FD18.s"
}

// __dt__13dComIfG_inf_cFv
// dComIfG_inf_c::~dComIfG_inf_c(void)
asm void __dt__13dComIfG_inf_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FD74.s"
}

// __dt__14dComIfG_play_cFv
// dComIfG_play_c::~dComIfG_play_c(void)
asm void __dt__14dComIfG_play_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FDE8.s"
}

// __dt__11cBgS_ChkElmFv
// cBgS_ChkElm::~cBgS_ChkElm(void)
asm void __dt__11cBgS_ChkElmFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FEF8.s"
}

// __dt__4dCcSFv
// dCcS::~dCcS(void)
asm void __dt__4dCcSFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8002FF40.s"
}

// __dt__12dCcMassS_ObjFv
// dCcMassS_Obj::~dCcMassS_Obj(void)
asm void __dt__12dCcMassS_ObjFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_800300F4.s"
}

// __dt__12dEvt_order_cFv
// dEvt_order_c::~dEvt_order_c(void)
asm void __dt__12dEvt_order_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030154.s"
}

// __dt__11dEvDtBase_cFv
// dEvDtBase_c::~dEvDtBase_c(void)
asm void __dt__11dEvDtBase_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030190.s"
}

// __dt__14dDlst_window_cFv
// dDlst_window_c::~dDlst_window_c(void)
asm void __dt__14dDlst_window_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_800301CC.s"
}

// __dt__25dComIfG_camera_info_classFv
// dComIfG_camera_info_class::~dComIfG_camera_info_class(void)
asm void __dt__25dComIfG_camera_info_classFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030208.s"
}

// __ct__13dComIfG_inf_cFv
// dComIfG_inf_c::dComIfG_inf_c(void)
asm dComIfG_inf_c::dComIfG_inf_c(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030244.s"
}

// __ct__25dComIfG_camera_info_classFv
// dComIfG_camera_info_class::dComIfG_camera_info_class(void)
asm dComIfG_camera_info_class::dComIfG_camera_info_class(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_800304C8.s"
}

// __ct__14dDlst_window_cFv
// dDlst_window_c::dDlst_window_c(void)
asm dDlst_window_c::dDlst_window_c(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_800304CC.s"
}

// __dt__10dAttList_cFv
// dAttList_c::~dAttList_c(void)
asm void __dt__10dAttList_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_800304D0.s"
}

// __ct__10dAttList_cFv
// dAttList_c::dAttList_c(void)
asm void __ct__10dAttList_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8003050C.s"
}

// __dt__7cSAngleFv
// cSAngle::~cSAngle(void)
asm void __dt__7cSAngleFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030510.s"
}

// __dt__10dAttDraw_cFv
// dAttDraw_c::~dAttDraw_c(void)
asm void __dt__10dAttDraw_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8003054C.s"
}

// __dt__13mDoExt_bckAnmFv
// mDoExt_bckAnm::~mDoExt_bckAnm(void)
asm void __dt__13mDoExt_bckAnmFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_800306A0.s"
}

// __dt__13mDoExt_bpkAnmFv
// mDoExt_bpkAnm::~mDoExt_bpkAnm(void)
asm void __dt__13mDoExt_bpkAnmFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_800306F4.s"
}

// __dt__13mDoExt_brkAnmFv
// mDoExt_brkAnm::~mDoExt_brkAnm(void)
asm void __dt__13mDoExt_brkAnmFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030748.s"
}

// __dt__13mDoExt_btkAnmFv
// mDoExt_btkAnm::~mDoExt_btkAnm(void)
asm void __dt__13mDoExt_btkAnmFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8003079C.s"
}

// __ct__10dAttDraw_cFv
// dAttDraw_c::dAttDraw_c(void)
asm void __ct__10dAttDraw_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_800307F0.s"
}

// __ct__13mDoExt_btkAnmFv
// mDoExt_btkAnm::mDoExt_btkAnm(void)
asm mDoExt_btkAnm::mDoExt_btkAnm(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030954.s"
}

// __ct__13mDoExt_brkAnmFv
// mDoExt_brkAnm::mDoExt_brkAnm(void)
asm mDoExt_brkAnm::mDoExt_brkAnm(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_8003099C.s"
}

// __ct__13mDoExt_bpkAnmFv
// mDoExt_bpkAnm::mDoExt_bpkAnm(void)
asm mDoExt_bpkAnm::mDoExt_bpkAnm(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_800309E4.s"
}

// __ct__13mDoExt_bckAnmFv
// mDoExt_bckAnm::mDoExt_bckAnm(void)
asm mDoExt_bckAnm::mDoExt_bckAnm(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030A2C.s"
}

// __dt__12dCcMassS_MngFv
// dCcMassS_Mng::~dCcMassS_Mng(void)
asm void __dt__12dCcMassS_MngFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030A74.s"
}

// __dt__4cCcSFv
// cCcS::~cCcS(void)
asm void __dt__4cCcSFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030BDC.s"
}

// __dt__4dBgSFv
// dBgS::~dBgS(void)
asm void __dt__4dBgSFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030C50.s"
}

// __dt__4cBgSFv
// cBgS::~cBgS(void)
asm void __dt__4cBgSFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030CCC.s"
}

// __ct__11cBgS_ChkElmFv
// cBgS_ChkElm::cBgS_ChkElm(void)
asm cBgS_ChkElm::cBgS_ChkElm(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030D38.s"
}

// __ct__10dSv_zone_cFv
// dSv_zone_c::dSv_zone_c(void)
asm dSv_zone_c::dSv_zone_c(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030D74.s"
}

// __ct__13dSv_memory2_cFv
// dSv_memory2_c::dSv_memory2_c(void)
asm void __ct__13dSv_memory2_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030D80.s"
}

// __ct__12dSv_memory_cFv
// dSv_memory_c::dSv_memory_c(void)
asm void __ct__12dSv_memory_cFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030DB0.s"
}

// __dt__15cCcD_DivideAreaFv
// cCcD_DivideArea::~cCcD_DivideArea(void)
asm void __dt__15cCcD_DivideAreaFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030DE0.s"
}  //

// __dt__8cM3dGCylFv
// cM3dGCyl::~cM3dGCyl(void)
asm void __dt__8cM3dGCylFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030E3C.s"
}

// __dt__8cM3dGAabFv
// cM3dGAab::~cM3dGAab(void)
asm void __dt__8cM3dGAabFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030E84.s"
}

// __dt__15cCcD_DivideInfoFv
// cCcD_DivideInfo::~cCcD_DivideInfo(void)
asm void __dt__15cCcD_DivideInfoFv(void) {
    nofralloc
#include "d/d_com/d_com_inf_game/asm/func_80030ECC.s"
}