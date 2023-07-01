#ifndef D_A_TAG_LV6CSTASW_H
#define D_A_TAG_LV6CSTASW_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_hostIO.h"

class daLv6CstaSw_c : public fopAc_ac_c {
public:
    /* 80D5B358 */ void setBaseMtx();
    /* 80D5B3B0 */ int create();
    /* 80D5B410 */ static fopAc_ac_c* searchSekizoAct(void*, void*);
    /* 80D5B460 */ bool areaCheck();
    /* 80D5B600 */ int Execute();
    /* 80D5B6B0 */ int Draw();
    /* 80D5B6B8 */ int Delete();

    u8 getSw() { return fopAcM_GetParamBit(this, 0, 8); }

private:
    /* 0x568 */ u8 mSwitch;
    /* 0x569 */ u8 unused[0x570 - 0x569];
};

class daLv6CstaSw_HIO_c : public mDoHIO_entry_c {
public:
    /* 80D5B2EC */ daLv6CstaSw_HIO_c();
    /* 80D5B740 */ virtual ~daLv6CstaSw_HIO_c();

    u8 unk_0x4;
};

#endif /* D_A_TAG_LV6CSTASW_H */
