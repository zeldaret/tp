class JMSMesgEntry_c {

};

extern "C" { 
    void init__20dSv_player_collect_cFv(void);
    void dComIfGp_setSelectItem(int);
    void OSReport_Error(char*,...);
    void OSEnableScheduler(void);
    void OSDisableScheduler(void);
    void getUsedCount__9HeapCheckCFv(void);
    void isEventBit__11dSv_event_cCFUs(void);
    void dComIfGs_setMixItemIndex(void);
    void dComIfGs_setSelectItemIndex(void);
    void dComIfGs_getMixItemIndex(void);
    void dComIfGs_getBottleMax(void);
    char* strcpy(char*,const char*);
    int strcmp(char*,char*);
    void setBombNum__21dSv_player_item_max_cFUcUc(void);
    void func_80362224(void);
    void func_803621D8(void);
    void func_8036221C(void);
    void func_803621D0(void);
    void _restgpr_29(void);
    void _savegpr_29(void);
    void _restgpr_28(void);
    void _savegpr_28(void);
    void _restgpr_27(void);
    void _savegpr_27(void);
    unsigned int getSelectItemIndex__21dSv_player_status_a_cCFi(int);
    void setLineUpItem__17dSv_player_item_cFv(void);
    void dMeter2Info_c_NS_setHotSpringTimer(void);
    void setItem__17dSv_player_item_cFiUc(void);
    void dSv_item_rename__FUc(void);
    void setBottleItemIn__17dSv_player_item_cFUcUc(void);
    void getItem__17dSv_player_item_cCFib(void);
    void setEquipBottleItemIn__17dSv_player_item_cFUcUc(u8,u8);
    void isFirstBit__21dSv_player_get_item_cCFUc(void);
    void setBombNum__24dSv_player_item_record_cFUcUc(void);
    void getBombNum__21dSv_player_item_max_cCFUc(void);
    void setItem__17dSv_player_item_cFiUc(void);
    void dMeter2Info_c_NS_getString(void);
    u32 OSGetSoundMode(void);
    void Z2AudioMgr_NS_setOutputMode(u32,unsigned long);    
    void dComIfG_play_c_NS_getNowVibration(void);
    void setInitEventBit(void);
    void daObjCarry_c_NS_clrSaveFlag(void);
    void daObjCarry_c_NS_setSaveFlag(void);
    void init__14dSv_MiniGame_cFv(void);
    void init__11dSv_event_cFv(void);
    void init__13dSv_memory2_cFv(void);
    void init__12dSv_memory_cFv(void);
    void init__12dSv_player_cFv(void);
    void init__10dSv_info_cFvZone(void);
    void init__10dSv_zone_cFi(void);
    void onOneSwitch__13dSv_zoneBit_cFi(void);
    void onSwitch__13dSv_zoneBit_cFi(void);
    //void dStage_roomControl_c_NS_getZoneNo(void);
    int dStage_roomControl_c_NS_getZoneNo(int,int);
    void onSwitch__12dSv_danBit_cFi(void);
    void onSwitch__12dSv_memBit_cFi(void);
    void revOneSwitch__13dSv_zoneBit_cFi(void);
    void revSwitch__13dSv_zoneBit_cFi(void);
    void revSwitch__12dSv_danBit_cFi(void);
    void revSwitch__12dSv_memBit_cFi(void);
    void isOneSwitch__13dSv_zoneBit_cCFi(void);
    void isSwitch__13dSv_zoneBit_cCFi(void);
    void isSwitch__12dSv_danBit_cCFi(void);
    void isSwitch__12dSv_memBit_cCFi(void);
    void isOneItem__13dSv_zoneBit_cCFi(void);
    void isItem__13dSv_zoneBit_cCFi(void);
    void isItem__12dSv_memBit_cCFi(void);
    void isItem__12dSv_danBit_cCFi(void);
    void off__15dSv_zoneActor_cFi(void);
    void is__15dSv_zoneActor_cCFi(void);
    void func_8036220C(void);
    void onEventBit__11dSv_event_cFUs(void);
    void func_8036687C(void);
    void func_80003540(void);
    void func_80362324(void);
    void OSGetTime(void);
    void offEventBit__11dSv_event_cFUs(void);
    void func_803621C0(void);
    void dMeter2Info_c_NS_setSaveStageName(void);
    void dComIfG_play_c_NS_setNowVibration(void);
    void getVibration__19dSv_player_config_cFv(void);
    void dComIfGs_setKeyNum(void);
    void getSound__19dSv_player_config_cFv(void);
    void setSound__19dSv_player_config_cFUc(void);
    void getTotalUsedSize__10JKRExpHeapCFv(void);
    void HeapCheck_NS_getUsedCount(void);
    void CheckHeap1__9HeapCheckFv(void);

    void JUTException_NS_panic_f(void);
}

// OS
extern "C" {
    void OSInitMutex(void);
    void OSGetArenaLo(void);
    void OSGetArenaHi(void);
    void OSInitAlloc(void);
    void OSSetArenaLo(void);
    void OSSetArenaHi(void);
    void OSEnableScheduler(void);
    void OSDisableScheduler(void);
}

// JSupport/JSUList.h
extern "C" {
    void __ct__10JSUPtrLinkFPv(void);
    void __dt__10JSUPtrLinkFv(void);
    void __ct__10JSUPtrListFb(void);
    void __dt__10JSUPtrListFv(void);
    void initiate__10JSUPtrListFv(void);
    void setFirst__10JSUPtrListFP10JSUPtrLink(void);
    void append__10JSUPtrListFP10JSUPtrLink(void);
    void prepend__10JSUPtrListFP10JSUPtrLink(void);
    void insert__10JSUPtrListFP10JSUPtrLinkP10JSUPtrLink(void);
    void remove__10JSUPtrListFP10JSUPtrLink(void);
    void getNthLink__10JSUPtrListCFUl(void);
}

// JKernel/JKRDisposer.h
extern "C" {
    void __ct__11JKRDisposerFv(void);
    void __dt__11JKRDisposerFv(void);
}

// JKernel/JKRHeap.h
extern "C" {
    void becomeCurrentHeap__7JKRHeapFv(void);
    void becomeSystemHeap__7JKRHeapFv(void);
    void destroy__7JKRHeapFv(void);
    void alloc__7JKRHeapFUliP7JKRHeap(void);
    void alloc__7JKRHeapFUli(void);
    void free__7JKRHeapFPvP7JKRHeap(void);
    void free__7JKRHeapFPv(void);
    void callAllDisposer__7JKRHeapFv(void);
    void freeAll__7JKRHeapFv(void);
    void freeTail__7JKRHeapFv(void);
    void resize__7JKRHeapFPvUlP7JKRHeap(void);
    void resize__7JKRHeapFPvUl(void);
    void getSize__7JKRHeapFPvP7JKRHeap(void);
    void getSize__7JKRHeapFPv(void);
    void getFreeSize__7JKRHeapFv(void);
    void getMaxFreeBlock__7JKRHeapFv(void);
    void getTotalFreeSize__7JKRHeapFv(void);
    void changeGroupID__7JKRHeapFUc(void);
    void getMaxAllocatableSize__7JKRHeapFi(void);
    void findFromRoot__7JKRHeapFPv(void);
    void find__7JKRHeapCFPv(void);
    void findAllHeap__7JKRHeapCFPv(void);
    void dispose_subroutine__7JKRHeapFUlUl(void);
    void dispose__7JKRHeapFPvUl(void);
    void dispose__7JKRHeapFPvPv(void);
    void dispose__7JKRHeapFv(void);
    void copyMemory__7JKRHeapFPvPvUl(void);
    void JKRDefaultMemoryErrorRoutine__FPvUli(void);
    void setErrorFlag__7JKRHeapFb(void);
    void setErrorHandler__7JKRHeapFPFPvUli_v(void);
    void isSubHeap__7JKRHeapCFP7JKRHeap(void);
    void __nw__FUl(void);
    void __nw__FUli(void);
    void __nw__FUlP7JKRHeapi(void);
    void __nwa__FUl(void);
    void __nwa__FUli(void);
    void __nwa__FUlP7JKRHeapi(void);
    void __dl__FPv(void);
    void __dla__FPv(void);
}