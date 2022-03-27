#ifndef D_A_D_A_ITEMBASE_H
#define D_A_D_A_ITEMBASE_H

#include "SSystem/SComponent/c_phase.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

struct daItemBase_data {
    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ s16 field_0x14;
    /* 0x16 */ s16 field_0x16;
    /* 0x18 */ s16 field_0x18;
    /* 0x1A */ s16 field_0x1a;
    /* 0x1C */ s16 field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ s16 field_0x28;
    /* 0x2A */ s16 field_0x2a;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ s16 field_0x34;
    /* 0x36 */ s16 field_0x36;
};

class daItemBase_c : public fopAc_ac_c {
public:
    u8 getItemNo();
    void hide();
    void show();
    void changeDraw();
    u8 chkDraw();
    void dead();
    u8 chkDead();
    int CreateItemHeap(char const*, s16, s16, s16, s16, s16, s16, s16);
    int DeleteBase(char const*);
    void setListEnd();
    void animPlay(f32, f32, f32, f32, f32, f32);
    daItemBase_data& getData();

    virtual int DrawBase();
    virtual void setListStart();
    virtual void settingBeforeDraw();
    virtual void setTevStr();
    virtual void setShadow();
    virtual void animEntry();
    virtual void RotateYBase();
    virtual int clothCreate();
    virtual int __CreateHeap();
    virtual BOOL chkFlag(int);
    virtual s8 getTevFrm();
    virtual s8 getBtpFrm();
    virtual u8 getShadowSize();
    virtual u8 getCollisionH();
    virtual u8 getCollisionR();

    static daItemBase_data const m_data;

private:
    /* 0x56C */ request_of_phase_process_class mPhase;
    /* 0x574 */ J3DModel* mpModel;
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
};

#endif /* D_A_D_A_ITEMBASE_H */
