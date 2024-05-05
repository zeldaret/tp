#ifndef D_A_OBJ_BMWINDOW_H
#define D_A_OBJ_BMWINDOW_H

#include "dolphin/types.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/cc/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

class daBmWindow_c : public dBgS_MoveBgActor
{
public:
    enum Mode {
        WAIT,
        BREAK,
        BREAK_EFF,
    };

    /* 80BB8350 */ void setBaseMtx();
    /* 80BB8400 */ int CreateHeap();
    /* 80BB846C */ int create();
    /* 80BB88D8 */ int Execute(Mtx**);
    /* 80BB8930 */ void windowProc();
    /* 80BB8B3C */ void init_modeWait();
    /* 80BB8B48 */ void modeWait();
    /* 80BB8FDC */ int checkActorInRectangle(fopAc_ac_c*, cXyz const*, cXyz const*);
    /* 80BB90E0 */ void init_modeBreak();
    /* 80BB920C */ void modeBreak();
    /* 80BB922C */ void init_modeBreakEff();
    /* 80BB9304 */ void modeBreakEff();
    /* 80BB9324 */ void setBreakEffect(int);
    /* 80BB9494 */ int Draw();
    /* 80BB9548 */ int Delete();

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5B0 */ dCcD_Stts field_0x5b0;
    /* 0x5B0 */ dCcD_Cyl field_0x5ec[7];
    /* 0xE98 */ u8 field_0xe90;
    /* 0xE98 */ u8 field_0xe91;
    /* 0xE98 */ u32 field_0xe94;
    /* 0xE98 */ csXyz field_0xe98;
    /* 0xEA0 */ f32 field_0xea0;
    /* 0xEA0 */ f32 field_0xea4;
    /* 0xEA0 */ f32 field_0xea8;
    /* 0xEA0 */ f32 field_0xeac;
    /* 0xEA0 */ f32 field_0xeb0;
    /* 0xEA0 */ f32 field_0xeb4;
    /* 0xEB8 */ cXyz field_0xeb8;
    /* 0xEA0 */ f32 field_0xec4;
    /* 0xEA0 */ f32 field_0xec8;
    /* 0xEA0 */ f32 field_0xecc;
    /* 0xEA0 */ f32 field_0xed0;
    /* 0xEA0 */ f32 field_0xed4;
    /* 0xEA0 */ f32 field_0xed8;
    /* 0xEDC */ u16 field_0xedc;
    /* 0xEDE */ u8 field_0xede;


    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;
};

class daBmWindow_HIO_c : public fOpAcm_HIO_entry_c {
public:
    /* 80BB820C */ daBmWindow_HIO_c();
    /* 80BB964C */ virtual ~daBmWindow_HIO_c() {}

    /* 0x04 */ u8 field_0x04;
    /* 0x05 */ u8 field_0x05;
    /* 0x08 */ f32 field_0x08;
    /* 0x0c */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ u8 field_0x38;
    /* 0x39 */ u8 field_0x39;
    /* 0x3A */ u8 field_0x3a;
    /* 0x3B */ u8 field_0x3b;
};

#endif /* D_A_OBJ_BMWINDOW_H */
