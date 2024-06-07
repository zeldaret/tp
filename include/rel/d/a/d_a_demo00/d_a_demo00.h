#ifndef D_A_DEMO00_H
#define D_A_DEMO00_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_demo.h"

struct demo_s1_ke_s {
public:
    /* 804A4420 */ ~demo_s1_ke_s();
    /* 804A86B4 */ demo_s1_ke_s();
};

class daDemo00_resID_c {
public:
    /* 804A430C */ void reset();
};

class daDemo00_model_c {
public:
    /* 804A4338 */ void reset();
};

/**
 * @ingroup actors-unsorted
 * @class daDemo00_c
 * @brief Cutscene
 *
 * @details
 *
 */
class daDemo00_c : public fopAc_ac_c {
public:
    /* 804A4388 */ ~daDemo00_c();
    /* 804A45A0 */ void setBaseMtx();
    /* 804A4948 */ void setShadowSize();
    /* 804A4F74 */ void createHeap();
    /* 804A5798 */ void actStandby(dDemo_actor_c*);
    /* 804A594C */ void actPerformance(dDemo_actor_c*);
    /* 804A604C */ void actLeaving(dDemo_actor_c*);
    /* 804A6F94 */ void draw();
    /* 804A7BA8 */ void execute();

private:
    /* 0x568 */ u8 field_0x568[0x292c - 0x568];
};

STATIC_ASSERT(sizeof(daDemo00_c) == 0x292c);


#endif /* D_A_DEMO00_H */
