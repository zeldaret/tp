#ifndef D_D_JNT_COL_H
#define D_D_JNT_COL_H

#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "SSystem/SComponent/c_m3d_g_lin.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class dJntColData_c {};

class fopAc_ac_c;

class dJntCol_c {
public:
    /* 80035C8C */ dJntCol_c();
    /* 80035CA0 */ void init(fopAc_ac_c*, dJntColData_c const*, J3DModel*, int);
    /* 80035CC8 */ void setNowLine(cM3dGLin*, cXyz const*, csXyz const*, cXyz*);
    /* 80035DC8 */ void searchNearPos(cM3dGLin const*, cXyz const*, cXyz*, int) const;
    /* 80036AEC */ void getArrowOffsetPosAndAngle(cXyz const*, csXyz const*, cXyz*, cXyz*) const;
    /* 80036C44 */ void getHitmarkPosAndAngle(cXyz const*, csXyz const*, cXyz*, csXyz*, int) const;
    /* 80036FA8 */ void setArrowPosAndAngle(cXyz const*, cXyz const*, int, cXyz*, csXyz*);

    bool checkPassNum(int bit) { return field_0xc & (1 << bit); }
    void onPassNum(int num) { field_0xc |= (1 << num); }
    void offPassNum(int num) { field_0xc &= ~(1 << num); }

    /* 0x00 */ dJntColData_c* mData;
    /* 0x04 */ J3DModel* mModel;
    /* 0x08 */ int field_0x8;
    /* 0x0C */ int field_0xc;
};

#endif /* D_D_JNT_COL_H */
