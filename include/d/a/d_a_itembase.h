#ifndef D_A_D_A_ITEMBASE_H
#define D_A_D_A_ITEMBASE_H

#include "dolphin/types.h"

class daItemBase_c {
public:
    u8 getItemNo();
    void hide();
    void show();
    void changeDraw();
    u8 chkDraw();
    void dead();
    u8 chkDead();
    void CreateItemHeap(char const*, s16, s16, s16, s16, s16, s16, s16);
    void DeleteBase(char const*);
    bool clothCreate();
    bool __CreateHeap();
    void DrawBase();
    void RotateYBase();
    void setListStart();
    void setListEnd();
    void settingBeforeDraw();
    void setTevStr();
    void setShadow();
    void animEntry();
    void animPlay(f32, f32, f32, f32, f32, f32);
    void chkFlag(int);
    void getTevFrm();
    void getBtpFrm();
    void getShadowSize();
    void getCollisionH();
    void getCollisionR();
    void getData();

    static u8 const m_data[56];

private:
#ifdef NONMATCHING
    /* 0x568 */ void* field_0x568;
    /* 0x56C */ request_of_phase_process_class* field_0x56c;
    /* 0x570 */ u8 field_0x578[4];
    /* 0x574 */ J3DModel* field_0x574;
    /* 0x578 */ mDoExt_btkAnm* field_0x578;
    /* 0x57C */ mDoExt_bpkAnm* field_0x57c;
    /* 0x580 */ mDoExt_brkAnm* field_0x580;
    /* 0x584 */ mDoExt_bckAnm* field_0x584;
    /* 0x588 */ mDoExt_btpAnm* field_0x588;
    /* 0x58C */ dBgS_ObjAcch field_0x58c;
    /* 0x764 */ dBgS_AcchCir field_0x764;
    /* 0x7A4 */ dCcD_Stts field_0x7a4;
    /* 0x7E0 */ dCcD_Cyl field_0x7e0;
    /* 0x91C */ u32 field_0x91c;
    /* 0x920 */ u8 field_0x920[0xA];
    /* 0x92A */ u8 m_itemNo;
    /* 0x92B */ u8 field_0x92b;
#endif

    u8 unk0[0x92a];
    u8 m_itemNo;
    u8 unk2347;
};

#endif /* D_A_D_A_ITEMBASE_H */
