#ifndef D_A_TITLE_H
#define D_A_TITLE_H

#include "f_op/f_op_actor_mng.h"

class daTitle_c : public fopAc_ac_c {
public:
    /* 80D66B54 */ void CreateHeap();
    /* 80D66CDC */ void create();
    /* 80D66E7C */ void createHeapCallBack(fopAc_ac_c*);
    /* 80D66E9C */ void Execute();
    /* 80D66F34 */ void KeyWaitAnm();
    /* 80D67010 */ void loadWait_init();
    /* 80D6701C */ void loadWait_proc();
    /* 80D672E0 */ void logoDispWaitInit();
    /* 80D672EC */ void logoDispWait();
    /* 80D67350 */ void logoDispAnmInit();
    /* 80D6737C */ void logoDispAnm();
    /* 80D674A8 */ void keyWaitInit();
    /* 80D674B4 */ void keyWait();
    /* 80D67544 */ void nextScene_init();
    /* 80D67550 */ void nextScene_proc();
    /* 80D675EC */ void fastLogoDispInit();
    /* 80D676AC */ void fastLogoDisp();
    /* 80D676F4 */ void getDemoPrm();
    /* 80D67768 */ void Draw();
    /* 80D6786C */ void Delete();
private:
    /* 0x568 */ u8 field_0x568[0x608 - 0x568];
};

STATIC_ASSERT(sizeof(daTitle_c) == 0x608);

class daTit_HIO_c {
public:
    /* 80D66B0C */ daTit_HIO_c();
    /* 80D67A08 */ ~daTit_HIO_c();
};

class dDlst_daTitle_c {
public:
    /* 80D679C8 */ void draw();
    /* 80D67B30 */ ~dDlst_daTitle_c();
};


#endif /* D_A_TITLE_H */
