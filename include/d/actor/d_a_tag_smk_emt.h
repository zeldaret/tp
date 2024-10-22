#ifndef D_A_TAG_SMK_EMT_H
#define D_A_TAG_SMK_EMT_H

#include "d/d_com_inf_game.h"

class daTagSmkEmt_c : public fopAc_ac_c {
public:
    /* 80D612D8 */ daTagSmkEmt_c();
    /* 80D61324 */ virtual ~daTagSmkEmt_c();
    /* 80D61384 */ int create();
    /* 80D613DC */ int Delete();
    /* 80D61400 */ int draw();
    /* 80D61408 */ int execute();
    /* 80D61410 */ void createSmkEmt();
    /* 80D61500 */ void deleteSmkEmt();

    /* 0x56C */ JPABaseEmitter* mParticles[3];
};

#endif /* D_A_TAG_SMK_EMT_H */
