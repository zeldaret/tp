#ifndef D_A_OBJ_BARDESK_H
#define D_A_OBJ_BARDESK_H

#include "SSystem/SComponent/c_phase.h"
#include "m_Do/m_Do_hostIO.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daBarDesk_c
 * @brief Kakariko House Desk
 *
 * @details
 *
 */
class daBarDesk_c : public dBgS_MoveBgActor {
public:
    /* 80BA9200 */ void setBaseMtx();
    /* 80BA9288 */ int CreateHeap();
    /* 80BA92F4 */ cPhs__Step create();
    /* 80BA95A4 */ int Execute(Mtx**);
    /* 80BA95F4 */ void windowProc();
    /* 80BA9680 */ void init_modeWait();
    /* 80BA968C */ void modeWait();
    /* 80BA973C */ void init_modeBreak();
    /* 80BA9824 */ void modeBreak();
    /* 80BA9844 */ void setBreakEffect();
    /* 80BA98E8 */ int Draw();
    /* 80BA998C */ int Delete();

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5B0 */ dCcD_Stts mColStatus;
    /* 0x5EC */ dCcD_Cyl mColCyl;
    /* 0x728 */ u8 field_0x728[8];

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;
};

STATIC_ASSERT(sizeof(daBarDesk_c) == 0x730);

class daBarDesk_HIO_c : public mDoHIO_entry_c {
public:
    /* 80BA918C */ daBarDesk_HIO_c();
    /* 80BA9A90 */ ~daBarDesk_HIO_c() {}

    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ u8 field_0x5;
};

STATIC_ASSERT(sizeof(daBarDesk_HIO_c) == 8);

#endif /* D_A_OBJ_BARDESK_H */
