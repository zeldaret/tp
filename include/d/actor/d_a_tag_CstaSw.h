#ifndef D_A_TAG_CSTASW_H
#define D_A_TAG_CSTASW_H

#include "d/d_com_inf_game.h"
#include "m_Do/m_Do_hostIO.h"

class daTagCstaSw_c : public fopAc_ac_c {
public:
    /* 805A2098 */ void setBaseMtx();
    /* 805A20F0 */ int create();
    /* 805A2150 */ static fopAc_ac_c* searchSekizoAct(void*, void*);
    /* 805A21A0 */ bool areaCheck();
    /* 805A2340 */ int Execute();
    /* 805A23F0 */ int Draw();
    /* 805A23F8 */ int Delete();

    u8 getSw() { return fopAcM_GetParamBit(this, 0, 8); }

private:
    /* 0x568 */ u8 mSwitch;
    /* 0x569 */ u8 unused[0x570 - 0x569];

};  // Size: 0x570

class daTagCstaSw_HIO_c : public mDoHIO_entry_c {
public:
    /* 805A202C */ daTagCstaSw_HIO_c();
    /* 805A2480 */ virtual ~daTagCstaSw_HIO_c();

    u8 unk_0x4;
};

#endif /* D_A_TAG_CSTASW_H */
