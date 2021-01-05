#ifndef __D_COM_INF_GAME_H_
#define __D_COM_INF_GAME_H_

#include "d/d_attention/d_attention.h"
#include "d/d_bg/d_bg_s/d_bg_s.h"
#include "d/d_bg/d_bg_w/d_bg_w_base/d_bg_w_base.h"
#include "d/d_cc/d_cc_s/d_cc_s.h"
#include "d/d_drawlist/d_drawlist.h"
#include "d/d_event/d_event/d_event.h"
#include "d/d_event/d_event_manager/d_event_manager.h"
#include "d/d_resource/d_resource.h"
#include "d/d_save/d_save/d_save.h"
#include "d/d_stage/d_stage.h"
#include "d/d_vibration/d_vibration.h"

struct item_func {
    float hearts;    // bf80
    u32 rupees;      // bf84
    s16 small_keys;  // bf88
    s16 max_life;    // bf8a
    s16 magic;       // bf8c
    u16 unk;         // bf8e
    s16 magic_lv;    // bf90
    u8 unk2[2];      // bf92/93 // removed stuff?
    u32 unk3;        // bf94  //related to lantern?
    u32 unk4;        // bf98  //related to lantern?
    u32 unk5;        // bf9c  //related to lantern?
    int oxygen;      // bfa0
    u32 unk7;        // bfa4  //related to oxygen?
    int max_oxygen;  // bfa8
    u32 unk9;        // bfac  //related to oxygen?
    u32 unk10;       // bfb0  //related to oxygen?
    s16 arrows;      // bfb4
    s16 seeds;       // bfb6
};

class dComIfG_camera_info_class {
public:
private:
    u8 field_0x0[12];
    cXyz field_0xc;
    cXyz field_0x18;
};

class dDlst_window_c {
public:
private:
    float view_port1;
    float view_port2;
    float view_port3;
    float view_port4;
    float view_port5;
    float view_port6;
    float scissor1;
    float scissor2;
    float scissor3;
    float scissor4;
    int camera_id;
};

class dComIfG_play_c {
public:
    void ct(void);
    void init(void);
    u32 getNowVibration();
    dStage_roomControl_c& getRoomControl() { return room_control; }
    item_func& getGiveItem() { return give_item; }
    u8& getUnkHeart() { return unk_heart; }
    void setUnkWarashibe1(u8 num) { field_0x4ec0[0x85] = num; }
    void setUnkWarashibe2(u8 num) { field_0x4ec0[0x86] = num; }
    void setZStatus(u8 status, u8 unk) {
        field_0x4ec0[0x3B] = status;
        field_0x4ec0[0x56] = unk;
    }
    void setItemLifeCount(float hearts, u8 unk) {
        give_item.hearts += hearts;
        unk_heart = unk;
    }
    void setItemRupeeCount(long rupees) { give_item.rupees += rupees; }
    void setItemMagicCount(short magic) { give_item.magic += magic; }
    void setItemMaxMagicCount(short max) { give_item.magic_lv += max; }
    void setItemArrowNumCount(short arrows) { give_item.arrows += arrows; }
    void setItemPachinkoNumCount(short seeds) { give_item.seeds += seeds; }
    void setItemKeyNumCount(short keys) { give_item.small_keys += keys; }
    void setItemMaxLifeCount(short max) { give_item.max_life += max; }
    void setOxygen(long oxygen) { give_item.oxygen = oxygen; }
    void setMaxOxygen(long max) { give_item.max_oxygen = max; }

private:
    /* 0x00000 */ dBgS dbgs;
    /* 0x0143C */ dCcS dccs;
    /* 0x03F08 */ u8 field_0x3f08[0x16];
    /* 0x03F1E */ dStage_nextStage_c next_stage;
    /* 0x03F2F */ u8 padding;
    /* 0x03F30 */ dStage_stageDt_c stage_data;
    /* 0x03F34 */ dStage_roomControl_c room_control;
    /* 0x03FD8 */ dEvt_control_c event_control;
    /* 0x0409C */ u8 field_0x409c[0x24];
    /* 0x040C0 */ dEvent_manager_c event_manager;
    /* 0x0475B */ u8 field_0x475B[0x2D];
    /* 0x04788 */ void* vtable;
    /* 0x0478C */ u8 field_0x478c[0x1C];
    /* 0x047A8 */ dAttDraw_c attention_draw;
    /* 0x0490C */ u8 field_0x490c[0x1AC];
    /* 0x04AB8 */ dAttList_c attention_list1;
    /* 0x04ACC */ u8 field_0x4acc[0x94];
    /* 0x04B60 */ dAttList_c attention_list2;
    /* 0x04B74 */ u8 field_0x4b74[0x44];
    /* 0x04BB8 */ dAttList_c attention_list3;
    /* 0x04BCC */ u8 field_0x4bcc[0xBC];
    /* 0x04c88 */ void* vtable2;
    /* 0x04C8C */ u8 field_0x4c8c[0x55];
    /* 0x04CE1 */ u8 field_0x4ce1[0x37];
    /* 0x04D18 */ dVibration_c vibration;
    /* 0x04DA8 */ u8 field_0x4da8[0x5C];
    /* 0x04E04 */ u32 field_0x4e04;
    /* 0x04E08 */ u8 field_0x4e08[0x4];
    /* 0x04E0C */ u8 field_0x4e0c[0x4];
    /* 0x04E10 */ dDlst_window_c draw_list_window;
    /* 0x04ED4 */ dComIfG_camera_info_class camera_info;
    /* 0x04E60 */ u8 field_0x4e60[0x28];
    /* 0x04E88 */ item_func give_item;
    /* 0x04EC0 */ u8 field_0x4ec0[0xBE];
    /* 0x04F7E */ u8 unk_heart;
    /* 0x04F7F */ u8 field_0x4f7f[0x79];
    /* 0x04FF8 */ u32 field_0x4ff8;
    /* 0x04FFC */ u32 field_0x4ffc;
    /* 0x05000 */ u32 field_0x5000;
    /* 0x05004 */ u32 field_0x5004;
    /* 0x05008 */ u8 field_0x5008[0x1C];
    /* 0x05024 */ u8 field_0x5024[8];
};

class dComIfG_inf_c {
public:
    // temp until we map the item short function names
    item_func& getPlayGiveItem() { return play.getGiveItem(); }
    u8& getPlayUnkHeart() { return play.getUnkHeart(); }
    // temp for setWarashibeItem
    void setPlayUnkWarashibe1(u8 num) { play.setUnkWarashibe1(num); }
    void setPlayUnkWarashibe2(u8 num) { play.setUnkWarashibe2(num); }
    dSv_player_c& getPlayer() { return info.getPlayer(); }
    dSv_save_c& getSaveFile() { return info.getSaveFile(); }
    u32 getNowVibration() { return play.getNowVibration(); }
    dDlst_peekZ_c& getdlstPeekZ() { return draw_list_list.dlstPeekZ; }
    dComIfG_play_c& getPlay() { return play; }
    dSv_memory_c& getMemory() { return info.getMemory(); }
    dSv_event_c& getEvent() { return info.getEvent(); }
    dSv_info_c& getInfo() { return info; }

private:
    /* 0x00000 */ dSv_info_c info;
    /* 0x00EEB */ u8 field_0xeeb[0x39];
    /* 0x00F24 */ u32 saveTotalTime;
    /* 0x00F28 */ u32 saveStartTime;
    /* 0x00F2C */ u32 field_0xf30;
    /* 0x00F30 */ u32 field_0xf34;
    /* 0x00F34 */ dComIfG_play_c play;
    /* 0x05F60 */ u8 field_0x5f60[0x10];
    /* 0x05F70 */ dDlst_list_c draw_list_list;
    /* 0x1C110 */ u8 field_0x1C114[0x1E8];
    /* 0x1C2F8 */ dRes_info_c resource_info1;
    /* 0x1C31C */ u8 unk19[0x11DC];
    /* 0x1D4F8 */ dRes_info_c resource_info2;
    /* 0x1D51C */ u8 unk20[0x8DC];
    /* 0x1DDF8 */ u8 unk21;
    /* 0x1DDF9 */ u8 unk22;
    /* 0x1DDFA */ u8 unk23;
    /* 0x1DDFB */ u8 unk24;
    /* 0x1DDFC */ u8 unk25;
    /* 0x1DDFD */ u8 unk26[0x3];  // probably padding
    /* 0x1DE00 */ u8 unk27;
    /* 0x1DE01 */ u8 unk28[0x3];  // probably padding
    /* 0x1DE04 */ u8 unk29;
    /* 0x1DE05 */ u8 unk30[0x3];  // probably padding
    /* 0x1DE08 */ u8 unk31;
    /* 0x1DE09 */ u8 unk32;
    /* 0x1DE0A */ u8 unk33;
    /* 0x1DE0B */ u8 unk34[0x5];  // probably padding
};

extern dComIfG_inf_c g_dComIfG_gameInfo;

int dComIfGs_isItemFirstBit(u8);

inline void dComIfGp_setZStatus(u8 status, u8 unk) {
    g_dComIfG_gameInfo.getPlay().setZStatus(status, unk);
}
inline void dComIfGp_setItemLifeCount(float amount, u8 unk) {
    g_dComIfG_gameInfo.getPlay().setItemLifeCount(amount, unk);
}
inline void dComIfGp_setItemRupeeCount(long amount) {
    g_dComIfG_gameInfo.getPlay().setItemRupeeCount(amount);
}
inline void dComIfGp_setItemMagicCount(short amount) {
    g_dComIfG_gameInfo.getPlay().setItemMagicCount(amount);
}
inline void dComIfGp_setItemMaxMagicCount(short max) {
    g_dComIfG_gameInfo.getPlay().setItemMaxMagicCount(max);
}
inline void dComIfGp_setItemArrowNumCount(short amount) {
    g_dComIfG_gameInfo.getPlay().setItemArrowNumCount(amount);
}
inline void dComIfGp_setItemPachinkoNumCount(short amount) {
    g_dComIfG_gameInfo.getPlay().setItemPachinkoNumCount(amount);
}
inline void dComIfGp_setItemKeyNumCount(short amount) {
    g_dComIfG_gameInfo.getPlay().setItemKeyNumCount(amount);
}
inline void dComIfGp_setItemMaxLifeCount(short max) {
    g_dComIfG_gameInfo.getPlay().setItemMaxLifeCount(max);
}
inline void dComIfGs_onDungeonItemMap(void) {
    g_dComIfG_gameInfo.getMemory().getTempFlags().onDungeonItemMap();
}
inline void dComIfGs_onDungeonItemCompass(void) {
    g_dComIfG_gameInfo.getMemory().getTempFlags().onDungeonItemCompass();
}
inline void dComIfGs_onDungeonItemWarp(void) {
    g_dComIfG_gameInfo.getMemory().getTempFlags().onDungeonItemWarp();
}
inline void dComIfGs_setItem(int slot, u8 i_no) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setItem(slot, i_no);
}
inline void dComIfGs_setOxygen(long amount) {
    g_dComIfG_gameInfo.getPlay().setOxygen(amount);
}
inline void dComIfGs_setMaxOxygen(long max) {
    g_dComIfG_gameInfo.getPlay().setMaxOxygen(max);
}
inline void dComIfGs_setOil(u16 amount) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setOil(amount);
}
inline void dComIfGs_setMaxOil(u16 max) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setMaxOil(max);
}
inline void dComIfGs_setWalletSize(u8 size) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setWalletSize(size);
}
inline void dComIfGs_setMagic(u8 amount) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setMagic(amount);
}
inline void dComIfGs_setMaxMagic(u8 max) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setMaxMagic(max);
}
inline void dComIfGs_setRupee(u16 amount) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setRupee(amount);
}
inline void dComIfGs_setLife(u16 amount) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setLife(amount);
}
inline void dComIfGs_setMaxLife(u8 max) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setMaxLife(max);
}
inline void dComIfGs_onDungeonItemBossKey(void) {
    g_dComIfG_gameInfo.getMemory().getTempFlags().onDungeonItemBossKey();
}
inline void dComIfGs_setCollectSword(u8 sword_id) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerCollect().setCollect(SWORD_BITFIELD, sword_id);
}
inline void dComIfGs_setCollectShield(u8 shield_id) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerCollect().setCollect(SHIELD_BITFIELD, shield_id);
}
inline void dComIfGs_setCollectClothes(u8 clothes_id) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerCollect().setCollect(CLOTHING_BITFIELD, clothes_id);
}
inline void dComIfGs_setRodTypeLevelUp(void) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setRodTypeLevelUp();
}
inline void dComIfGs_setArrowNum(u8 amount) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItemRecord().setArrowNum(amount);
}
inline void dComIfGs_setArrowMax(u8 max) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItemMax().setArrowNum(max);
}
inline u8 dComIfGs_getPachinkoMax(void) {
    return 50;
}
inline void dComIfGs_setEmptyBombBag(void) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setEmptyBombBag();
}
inline void dComIfGs_setEmptyBombBag(u8 type, u8 amount) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setEmptyBombBag(type, amount);
}
inline void dComIfGs_setEmptyBombBagItemIn(u8 type, bool unk) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setEmptyBombBagItemIn(type, unk);
}
inline void dComIfGs_setEmptyBottle(void) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setEmptyBottle();
}
inline void dComIfGs_setEmptyBottle(u8 type) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setEmptyBottle(type);
}
inline void dComIfGs_setEmptyBottleItemIn(u8 type) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setEmptyBottleItemIn(type);
}
inline void dComIfGs_onEventBit(u16 id) {
    g_dComIfG_gameInfo.getSaveFile().getEventFlags().onEventBit(id);
}
inline void dComIfGs_onLightDropFlag(u8 area_id) {
    g_dComIfG_gameInfo.getSaveFile().getLightDrop().onLightDropGetFlag(area_id);
}
inline void dComIfGs_onSwitch(int param1, int param2) {
    g_dComIfG_gameInfo.getInfo().onSwitch(param1, param2);
}
inline bool dComIfGs_isDungeonItemMap(void) {
    return g_dComIfG_gameInfo.getMemory().getTempFlags().isDungeonItemMap();
}
inline bool dComIfGs_isDungeonItemBossKey(void) {
    return g_dComIfG_gameInfo.getMemory().getTempFlags().isDungeonItemBossKey();
}
inline u8 dComIfGs_getItem(int slot, bool unk) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerItem().getItem(slot, unk);
}
inline BOOL dComIfGs_isCollectSword(u8 sword_id) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerCollect().isCollect(SWORD_BITFIELD, sword_id);
}
inline BOOL dComIfGs_isCollectClothing(u8 clothing_id) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerCollect().isCollect(CLOTHING_BITFIELD,
                                                                         clothing_id);
}
inline u8 dComIfGs_checkBottle(u8 type) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerItem().checkBottle(type);
}
inline BOOL dComIfGs_isLightDropGetFlag(u8 area_id) {
    return g_dComIfG_gameInfo.getSaveFile().getLightDrop().isLightDropGetFlag(area_id);
}

// int dComIfGp_roomControl_getZoneNo(int zone_no) {
//     return g_dComIfG_gameInfo.play.getRoomControl().getZoneNo(zone_no);
// }

// BOOL dComIfGs_isEventBit(u16 event_no) {
//     return g_dComIfG_gameInfo.info.getSaveFile().getEventFlags().isEventBit(event_no);
// }

// void dComIfGs_offEventBit(u16 event_no) {
//     g_dComIfG_gameInfo.info.getSaveFile().getEventFlags().offEventBit(event_no);
// }

// BOOL dComIfGs_isItemFirstBit(u8 i_no) {
//     return g_dComIfG_gameInfo.info.getSaveFile().getPlayerGetItem().isFirstBit(i_no);
// }

// void dComIfGs_setItem(int item_slot, u8 item_id) {
//     g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(item_slot,
//     item_id);
// }

// u16 dComIfGs_getOil(void) {
//     return g_dComIfG_gameInfo.info.getSaveFile()
//         .getPlayer()
//         .getPlayerStatusA()
//         .getCurrentLanternOil();
// }

// void dComIfGs_setOil(u16 oil_value) {
//     g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerStatusA().setLanternOil(oil_value);
// }

#endif