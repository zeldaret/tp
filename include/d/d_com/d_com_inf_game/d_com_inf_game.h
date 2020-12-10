#ifndef __D_COM_INF_GAME_H_
#define __D_COM_INF_GAME_H_

#include "d/d_drawlist/d_drawlist.h"
#include "d/d_event/d_event/d_event.h"
#include "d/d_event/d_event_manager/d_event_manager.h"
#include "d/d_resource/d_resource.h"
#include "d/d_save/d_save/d_save.h"

class dComIfG_play_c {
public:
    void ct(void);
    void init(void);
    u8 unk[0x100];
};

class dCcMassS_Mng {
public:
    u8 unk[0x274];
};

class dAttDraw_c {
public:
    u8 unk[0x178];
};

class dAttList_c {
    u8 unk[0x14];
};

class dDlst_window_c {
    u8 unk[0x2C];
};

class dComIfG_camera_info_class {
    u8 unk[0x38];
};

struct item_func {
    float hearts;      // bf80
    u32 rupees;        // bf84
    s16 small_keys;    // bf88
    s16 kakera_heart;  // bf8a
    s16 magic;         // bf8c
    u16 unk;           // bf8e
    s16 magic_lv;      // bf90
    u8 unk2[2];        // bf92/93 // removed stuff?
    u32 unk3;          // bf94  //related to lantern?
    u32 unk4;          // bf98  //related to lantern?
    u32 unk5;          // bf9c  //related to lantern?
    u32 unk6;          // bfa0  //related to oxygen?
    u32 unk7;          // bfa4  //related to oxygen?
    u32 unk8;          // bfa8  //related to oxygen?
    u32 unk9;          // bfac  //related to oxygen?
    u32 unk10;         // bfb0  //related to oxygen?
    s16 arrows;        // bfb4
    s16 seeds;         // bfb6
};

// 16 bytes too big, figure out later
class dComIfG_inf_c {
public:
    /* 0x00000 */ dSv_save_c save_file;
    /* 0x00958 */ dSv_memory_c memory;
    /* 0x00978 */ u8 unk1[0x3C];
    /* 0x009B4 */ dSv_zone_c zone;
    /* 0x009D4 */ u8 unk2[0x564];
    /* 0x00F38 */ dComIfG_play_c play;
    /* 0x01038 */ u8 unk3[0x3B50];
    /* 0x04B88 */ dCcMassS_Mng mass_mng;
    /* 0x04DFC */ u8 unk4[0xCC];  // might be part of dCcMassS_Mng
    /* 0x04EC8 */ dEvt_control_c event_control;
    /* 0x04FF8 */ dEvent_manager_c event_manager;  // 0x6C8
    /* 0x056C0 */ u8 unk5[0x20];                   // vtables?
    /* 0x056E0 */ dAttDraw_c att_draw;
    /* 0x05858 */ u8 unk6[0x198];
    /* 0x059F0 */ dAttList_c att_list1;
    /* 0x05A04 */ u8 unk8[0x94];
    /* 0x05A98 */ dAttList_c att_list2;
    /* 0x05AAC */ u8 unk9[0x44];
    /* 0x05AF0 */ dAttList_c att_list3;
    /* 0x05B04 */ u8 unk10[0x244];
    /* 0x05D48 */ dDlst_window_c draw_list_window;
    /* 0x05D74 */ dComIfG_camera_info_class camera_info_class;
    /* 0x05DAC */ u8 unk11[0x14];
    /* 0x05DC0 */ item_func give_item;
    /* 0x05DF8 */ u8 unk35[0x144];
    /* 0x05F3C */ u32 unk12;
    /* 0x05F30 */ u32 unk13;
    /* 0x05F34 */ u32 unk14;
    /* 0x05F38 */ u32 unk15;
    /* 0x05F3C */ u32 unk16;
    /* 0x05F40 */ u8 unk17[0x24];
    /* 0x05F64 */ dDlst_list_c draw_list_list;
    /* 0x1C104 */ u8 unk18[0x1F4];  // might be part of dDlst_list_c
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

#endif