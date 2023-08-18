/**
 * quat.c
 * Dolphin - Matrix Quaternion Functions
 */

#include "dolphin/mtx/quat.h"
#include "MSL_C/math.h"

/* 80347418-80347474 341D58 005C+00 0/0 0/0 2/2 .text            PSQUATMultiply */
void PSQUATMultiply(register const Quaternion* a, register const Quaternion* b, register Quaternion* ab) {
    asm {
        psq_l f0, 0(a), 0, 0
        psq_l f1, 8(a), 0, 0
        psq_l f2, 0(b), 0, 0
        ps_neg f5, f0
        psq_l f3, 8(b), 0, 0
        ps_neg f6, f1
        ps_merge01 f4, f5, f0
        ps_muls0 f7, f1, f2
        ps_muls0 f5, f5, f2
        ps_merge01 f1, f6, f1
        ps_muls1 f8, f4, f2
        ps_madds0 f7, f4, f3, f7
        ps_muls1 f2, f1, f2
        ps_madds0 f5, f1, f3, f5
        ps_madds1 f8, f6, f3, f8
        ps_merge10 f7, f7, f7
        ps_madds1 f2, f0, f3, f2
        ps_merge10 f5, f5, f5
        ps_add f7, f7, f2
        psq_st f7, 0(ab), 0, 0
        ps_sub f5, f5, f8
        psq_st f5, 8(ab), 0, 0
    }
}

// Dummy functions to set literal order
static f32 dummyLiteralFunc() {
    return 0.0f;
}

static f32 dummyLiteralFunc2() {
    return 1.0f;
}

/* 80347474-80347500 341DB4 008C+00 0/0 1/1 0/0 .text            C_QUATRotAxisRad */
void C_QUATRotAxisRad(Quaternion* q, const Vec* axis, f32 rad) {
    f32 tmp,tmp2,tmp3;
    Vec dst;

    tmp = rad;
    PSVECNormalize(axis,&dst);

    tmp2 = tmp * 0.5f;
    tmp3 = sinf(tmp* 0.5f);
    tmp = tmp3;
    tmp3 = cosf(tmp2);

    q->x = tmp * dst.x;
    q->y = tmp * dst.y;
    q->z = tmp * dst.z;
    q->w = tmp3;
}

/* 80347500-80347674 341E40 0174+00 0/0 0/0 2/2 .text            C_QUATSlerp */
void C_QUATSlerp(const Quaternion* p, const Quaternion* q, Quaternion* r, f32 t) {
    f32 ratioA, ratioB;

    f32 value = 1.0f;
    f32 cosHalfTheta =  p->x*q->x + p->y*q->y + p->z*q->z + p->w*q->w;

    if (cosHalfTheta < 0.0f) {
        cosHalfTheta = -cosHalfTheta;
        value = -value;
    }

    if (cosHalfTheta <= 0.9999899864196777f) {
        f32 halfTheta = acosf(cosHalfTheta);
        f32 sinHalfTheta = sinf(halfTheta);

        ratioA = sinf((1.0f - t) * halfTheta) / sinHalfTheta;
        ratioB = sinf(t * halfTheta) / sinHalfTheta;
        value *= ratioB;
    } else {
        ratioA = 1.0f - t;
        value *= t;
    }
    
    r->x = (ratioA * p->x) + (value * q->x);
    r->y = (ratioA * p->y) + (value * q->y);
    r->z = (ratioA * p->z) + (value * q->z);
    r->w = (ratioA * p->w) + (value * q->w);
}
