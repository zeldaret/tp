#ifndef D_A_BALLOON_2D_H
#define D_A_BALLOON_2D_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class daBalloon2D_c : public fopAc_ac_c {
public:
    struct c_list {
        /* 806534CC */ void draw();
        /* 8065544C */ ~c_list();
    };

    struct CHeadScore {
        /* 80655304 */ ~CHeadScore();
        /* 80655340 */ CHeadScore();
    };

    /* 80653538 */ void createHeap();
    /* 80653D24 */ void create();
    /* 80653DB4 */ void destroy();
    /* 80653E10 */ void draw();
    /* 80653EC0 */ void execute();
    /* 80653F04 */ void drawMeter();
    /* 80653F58 */ void setComboCount(u8, u8);
    /* 80653FC0 */ void setScoreCount(u32);
    /* 80653FEC */ void addScoreCount(cXyz*, u32, u8);
    /* 806540B4 */ void initiate();
    /* 806540B8 */ void update();
    /* 806540BC */ void setComboNum(u8);
    /* 806541B4 */ void setBalloonSize(u8);
    /* 80654258 */ void setScoreNum(int);
    /* 80654440 */ void setAllAlpha();
    /* 8065464C */ void setComboAlpha();
    /* 80654730 */ void drawAddScore();
    /* 80654E8C */ void setHIO(bool);
    /* 80655494 */ ~daBalloon2D_c();

    static u8 myclass[4];
};

struct daBalloon2D_HIO_c {
    /* 806553A8 */ ~daBalloon2D_HIO_c();
};

#endif /* D_A_BALLOON_2D_H */
