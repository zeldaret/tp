#ifndef D_A_COACH_2D_H
#define D_A_COACH_2D_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daCoach2D_c : public fopAc_ac_c {
public:
    struct c_list {
        /* 806569CC */ void draw();
        /* 806577DC */ ~c_list();
    };

    /* 80656A38 */ void createHeap();
    /* 80656D18 */ void create();
    /* 80656D94 */ void destroy();
    /* 80656DE4 */ void draw();
    /* 80656E94 */ void execute();
    /* 80656ED0 */ void drawMeter();
    /* 8065722C */ void initiate();
    /* 80657260 */ void update();
    /* 80657490 */ void setBrkAnime(bool);
    /* 80657824 */ ~daCoach2D_c();

private:
    /* 0x568 */ u8 field_0x568[0x784 - 0x568];
};

STATIC_ASSERT(sizeof(daCoach2D_c) == 0x784);

class daCoach2D_HIO_c {
public:
    /* 80657738 */ ~daCoach2D_HIO_c();
};

#endif /* D_A_COACH_2D_H */
