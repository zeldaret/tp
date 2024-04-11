#ifndef D_A_OBJ_SNOW_SOUP_H
#define D_A_OBJ_SNOW_SOUP_H

#include "SSystem/SComponent/c_phase.h"
#include "f_op/f_op_actor.h"

class daObjSnowSoup_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    /* 80CDF878 */ daObjSnowSoup_c();
    /* 80CDF910 */ virtual ~daObjSnowSoup_c();
    /* 80CDF990 */ int createHeap();
    /* 80CDFA3C */ cPhs__Step create();
    /* 80CDFB70 */ int Delete();
    /* 80CDFBC4 */ int draw();
    /* 80CDFC40 */ int execute();
    /* 80CDFE14 */ void init();
    /* 80CDFEA4 */ void setModelMtx();
    /* 80CDFF14 */ void createSmkEmtCommon();
    /* 80CDFFF8 */ void deleteSmkEmtCommon();
    /* 80CE003C */ void createSmkEmtChange(int);
    /* 80CE0134 */ void deleteSmkEmtChange(int);

    /* 0x574 */ cXyz mFirewoodPos;
    /* 0x580 */ cXyz mBubblePos;
    /* 0x58C */ JPABaseEmitter* mpSmkEmtCommon[4];
    /* 0x59C */ JPABaseEmitter* mpSmkEmtChange[3][2];
    /* 0x5B4 */ J3DModel* mpModel[3];
    /* 0x5C0 */ u8 mState;
};

STATIC_ASSERT(sizeof(daObjSnowSoup_c) == 0x5C4);

#endif /* D_A_OBJ_SNOW_SOUP_H */
