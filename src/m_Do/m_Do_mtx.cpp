/**
 * m_Do_mtx.cpp
 * Matrix Helper Functions
 */

#include "m_Do/m_Do_mtx.h"
#include "JSystem/JGeometry.h"
#include "JSystem/JMath/JMath.h"
#include "JSystem/JUtility/JUTAssert.h"
#include "SSystem/SComponent/c_m3d.h"
#include "SSystem/SComponent/c_math.h"
#include "global.h"

/* ############################################################################################## */
/* 803DD470-803DD4A0 00A190 0030+00 12/12 142/142 1820/1820 .bss             now__14mDoMtx_stack_c
 */
Mtx mDoMtx_stack_c::now;

/* 803DD4A0-803DD7A0 00A1C0 0300+00 2/2 0/0 0/0 .bss             buffer__14mDoMtx_stack_c */
Mtx mDoMtx_stack_c::buffer[16];

/* 804505A8-804505AC -00001 0004+00 3/3 0/0 0/0 .sdata           next__14mDoMtx_stack_c */
Mtx* mDoMtx_stack_c::next = mDoMtx_stack_c::buffer;

/* 804505AC-804505B0 -00001 0004+00 2/2 0/0 0/0 .sdata           end__14mDoMtx_stack_c */
Mtx* mDoMtx_stack_c::end = mDoMtx_stack_c::buffer + 16;

/* 80450C18-80450C20 000118 0001+07 1/1 0/0 0/0 .sbss            mDoMtx_stack */
static mDoMtx_stack_c mDoMtx_stack;

/* 803DD7B8-803DD8D8 00A4D8 011C+04 0/1 0/0 0/0 .bss             mDoMtx_quatStack */
static mDoMtx_quatStack_c mDoMtx_quatStack;

/* ############################################################################################## */
/* 803A2FD8-803A3020 0000F8 0030+18 0/0 23/23 4/4 .data            g_mDoMtx_identity */
extern Mtx g_mDoMtx_identity = {
    {1.0f, 0.0f, 0.0f, 0.0f},
    {0.0f, 1.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 1.0f, 0.0f},
};

#if VERSION != VERSION_GCN_JPN
static void dummy() {
    OSReport("mDoMtx_Dump %s\n");
}
#endif

/* 8000C0CC-8000C164 006A0C 0098+00 1/1 0/0 0/0 .text            mDoMtx_XYZrotS__FPA4_fsss */
void mDoMtx_XYZrotS(Mtx mtx, s16 x, s16 y, s16 z) {
    Mtx tmp;
    if (z != 0) {
        mDoMtx_ZrotS(mtx, z);
    } else {
        mDoMtx_identity(mtx);
    }

    if (y != 0) {
        mDoMtx_YrotS(tmp, y);
        mDoMtx_concat(mtx, tmp, mtx);
    }

    if (x != 0) {
        mDoMtx_XrotS(tmp, x);
        mDoMtx_concat(mtx, tmp, mtx);
    }
}

/* 8000C164-8000C208 006AA4 00A4+00 1/1 8/8 13/13 .text            mDoMtx_XYZrotM__FPA4_fsss */
void mDoMtx_XYZrotM(Mtx mtx, s16 x, s16 y, s16 z) {
    Mtx tmp;
    if (z != 0) {
        mDoMtx_ZrotS(tmp, z);
        mDoMtx_concat(mtx, tmp, mtx);
    }

    if (y != 0) {
        mDoMtx_YrotS(tmp, y);
        mDoMtx_concat(mtx, tmp, mtx);
    }

    if (x != 0) {
        mDoMtx_XrotS(tmp, x);
        mDoMtx_concat(mtx, tmp, mtx);
    }
}

/* 8000C208-8000C2A0 006B48 0098+00 1/1 10/10 37/37 .text            mDoMtx_ZXYrotS__FPA4_fsss */
void mDoMtx_ZXYrotS(Mtx mtx, s16 x, s16 y, s16 z) {
    Mtx tmp;
    if (y != 0) {
        mDoMtx_YrotS(mtx, y);
    } else {
        mDoMtx_identity(mtx);
    }

    if (x != 0) {
        mDoMtx_XrotS(tmp, x);
        mDoMtx_concat(mtx, tmp, mtx);
    }

    if (z != 0) {
        mDoMtx_ZrotS(tmp, z);
        mDoMtx_concat(mtx, tmp, mtx);
    }
}

/* 8000C2A0-8000C344 006BE0 00A4+00 1/1 19/19 149/149 .text            mDoMtx_ZXYrotM__FPA4_fsss */
void mDoMtx_ZXYrotM(Mtx mtx, s16 x, s16 y, s16 z) {
    Mtx tmp;
    if (y != 0) {
        mDoMtx_YrotS(tmp, y);
        mDoMtx_concat(mtx, tmp, mtx);
    }

    if (x != 0) {
        mDoMtx_XrotS(tmp, x);
        mDoMtx_concat(mtx, tmp, mtx);
    }

    if (z != 0) {
        mDoMtx_ZrotS(tmp, z);
        mDoMtx_concat(mtx, tmp, mtx);
    }
}

/* 8000C344-8000C39C 006C84 0058+00 5/5 7/7 38/38 .text            mDoMtx_XrotS__FPA4_fs */
void mDoMtx_XrotS(Mtx mtx, s16 x) {
    f32 l_cos = JMASCos(x);
    f32 l_sin = JMASSin(x);

    mtx[0][0] = 1.0f;
    mtx[0][1] = 0.0f;
    mtx[0][2] = 0.0f;
    mtx[0][3] = 0.0f;

    mtx[1][0] = 0.0f;
    mtx[1][1] = l_cos;
    mtx[1][2] = -l_sin;
    mtx[1][3] = 0.0f;

    mtx[2][0] = 0.0f;
    mtx[2][1] = l_sin;
    mtx[2][2] = l_cos;
    mtx[2][3] = 0.0f;
}

/* 8000C39C-8000C3DC 006CDC 0040+00 0/0 11/11 425/425 .text            mDoMtx_XrotM__FPA4_fs */
void mDoMtx_XrotM(Mtx mtx, s16 x) {
    Mtx tmp;
    mDoMtx_XrotS(tmp, x);
    mDoMtx_concat(mtx, tmp, mtx);
}

/* 8000C3DC-8000C434 006D1C 0058+00 5/5 24/24 809/809 .text            mDoMtx_YrotS__FPA4_fs */
void mDoMtx_YrotS(Mtx mtx, s16 y) {
    f32 l_cos = JMASCos(y);
    f32 l_sin = JMASSin(y);

    mtx[0][0] = l_cos;
    mtx[0][1] = 0.0f;
    mtx[0][2] = l_sin;
    mtx[0][3] = 0.0f;

    mtx[1][0] = 0.0f;
    mtx[1][1] = 1.0;
    mtx[1][2] = 0.0;
    mtx[1][3] = 0.0f;

    mtx[2][0] = -l_sin;
    mtx[2][1] = 0.0f;
    mtx[2][2] = l_cos;
    mtx[2][3] = 0.0f;
}

/* 8000C434-8000C474 006D74 0040+00 0/0 44/44 775/775 .text            mDoMtx_YrotM__FPA4_fs */
void mDoMtx_YrotM(Mtx mtx, s16 y) {
    Mtx tmp;
    mDoMtx_YrotS(tmp, y);
    mDoMtx_concat(mtx, tmp, mtx);
}

/* 8000C474-8000C4CC 006DB4 0058+00 7/7 1/1 6/6 .text            mDoMtx_ZrotS__FPA4_fs */
void mDoMtx_ZrotS(Mtx mtx, s16 z) {
    f32 l_cos = JMASCos(z);
    f32 l_sin = JMASSin(z);

    mtx[0][0] = l_cos;
    mtx[0][1] = -l_sin;
    mtx[0][2] = 0.0f;
    mtx[0][3] = 0.0f;

    mtx[1][0] = l_sin;
    mtx[1][1] = l_cos;
    mtx[1][2] = 0.0;
    mtx[1][3] = 0.0f;

    mtx[2][0] = 0.0f;
    mtx[2][1] = 0.0f;
    mtx[2][2] = 1.0f;
    mtx[2][3] = 0.0f;
}

/* 8000C4CC-8000C50C 006E0C 0040+00 0/0 9/9 302/302 .text            mDoMtx_ZrotM__FPA4_fs */
void mDoMtx_ZrotM(Mtx mtx, s16 z) {
    Mtx tmp;
    mDoMtx_ZrotS(tmp, z);
    mDoMtx_concat(mtx, tmp, mtx);
}

/* 8000C50C-8000C710 006E4C 0204+00 0/0 3/3 0/0 .text            mDoMtx_lookAt__FPA4_fPC3VecPC3Vecs
 */
void mDoMtx_lookAt(Mtx mtx, Vec const* param_1, Vec const* param_2, s16 param_3) {
    cXyz stack_48(*(cXyz*)param_1);
    cXyz local_54;
    cXyz local_60;
    cXyz local_6c;

    local_6c = stack_48 - cXyz(*(cXyz*)param_2);
    local_6c.normalize();
    local_54.set(0.0f, 1.0f, 0.0f);
    local_54 = local_54.outprod(local_6c);

    if (!local_54.normalizeRS()) {
        local_54.set(-local_6c.y, 0.0f, 0.0f);
        local_54 = local_54.outprod(local_6c);
        local_54.normalize();
    }

    local_60 = local_6c.outprod(local_54);
    local_60.normalize();

    mtx[0][0] = local_54.x;
    mtx[0][1] = local_54.y;
    mtx[0][2] = local_54.z;
    mtx[0][3] = -local_54.inprod(stack_48);

    mtx[1][0] = local_60.x;
    mtx[1][1] = local_60.y;
    mtx[1][2] = local_60.z;
    mtx[1][3] = -local_60.inprod(stack_48);

    mtx[2][0] = local_6c.x;
    mtx[2][1] = local_6c.y;
    mtx[2][2] = local_6c.z;
    mtx[2][3] = -local_6c.inprod(stack_48);

    Mtx tmp;
    mDoMtx_ZrotS(tmp, param_3);
    mDoMtx_concat(tmp, mtx, mtx);
}

/* 8000C710-8000C8D0 007050 01C0+00 0/0 10/10 1/1 .text mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs
 */
void mDoMtx_lookAt(Mtx mtx, Vec const* i_eye, Vec const* i_center, Vec const* i_up, s16 i_bank) {
    cXyz eye = *i_eye;
    cXyz center = *i_center;
    cXyz up = *i_up;
    cXyz local_70 = eye - center;
    if (!local_70.normalizeRS()) {
        OS_REPORT("%s: lookat: bad position!\n", __FILE__);
        OS_REPORT("%s:         ctr %f %f %f+1.0\n", __FILE__, center.x, center.y, center.z);
        OS_REPORT("%s:         eye %f %f %f\n", __FILE__, eye.x, eye.y, eye.z);
        center.z += 1.0f;
    }
    if (cM3d_IsZero(up.x) && cM3d_IsZero(up.y) && cM3d_IsZero(up.z)) {
        OS_REPORT("%s: lookat: Zero Vector @ UP!\n", __FILE__);
        up.y = 1.0f;
    }
    C_MTXLookAt(mtx, &eye, &up, &center);
    Mtx bank_mtx;
    mDoMtx_ZrotS(bank_mtx, i_bank);
    mDoMtx_concat(bank_mtx, mtx, mtx);
    JGeometry::TVec3<f32> local_7c(0.0f, mtx[1][1], mtx[2][1]);
    if (local_7c.isZero()) {
        center.y += 1.0f;
        C_MTXLookAt(mtx, &eye, &up, &center);
        mDoMtx_ZrotS(bank_mtx, i_bank);
        mDoMtx_concat(bank_mtx, mtx, mtx);
    }
}

/* 8000C8D0-8000C9B0 007210 00E0+00 0/0 2/2 0/0 .text mDoMtx_concatProjView__FPA4_CfPA4_CfPA4_f */
void mDoMtx_concatProjView(const Mtx a, const Mtx b, Mtx c) {
    mDoMtx_concat(a, b, c);
    c[3][0] = a[3][0] * b[0][0] + a[3][1] * b[1][0] + a[3][2] * b[2][0];
    c[3][1] = a[3][0] * b[0][1] + a[3][1] * b[1][1] + a[3][2] * b[2][1];
    c[3][2] = a[3][0] * b[0][2] + a[3][1] * b[1][2] + a[3][2] * b[2][2];
    c[3][3] = a[3][0] * b[0][3] + a[3][1] * b[1][3] + a[3][2] * b[2][3] + a[3][3];
}

/* 8000C9B0-8000CB5C 0072F0 01AC+00 0/0 1/1 1/1 .text mDoMtx_inverseTranspose__FPA4_CfPA4_f */
bool mDoMtx_inverseTranspose(const Mtx a, Mtx b) {
    f32 f31 = a[0][0] * a[1][1] * a[2][2] + a[0][1] * a[1][2] * a[2][0] +
               a[0][2] * a[1][0] * a[2][1] - a[2][0] * a[1][1] * a[0][2] -
               a[1][0] * a[0][1] * a[2][2] - a[0][0] * a[2][1] * a[1][2];

    if (f31 == 0.0f) {
        return false;
    }

    f31 = 1.0f / f31;

    Mtx23 tmp;
    tmp[0][0] = f31 * (a[1][1] * a[2][2] - a[2][1] * a[1][2]);
    tmp[0][1] = f31 * -(a[1][0] * a[2][2] - a[2][0] * a[1][2]);
    tmp[0][2] = f31 * (a[1][0] * a[2][1] - a[2][0] * a[1][1]);
    tmp[1][0] = f31 * -(a[0][1] * a[2][2] - a[2][1] * a[0][2]);
    tmp[1][1] = f31 * (a[0][0] * a[2][2] - a[2][0] * a[0][2]);
    tmp[1][2] = f31 * -(a[0][0] * a[2][1] - a[2][0] * a[0][1]);

    b[2][0] = f31 * (a[0][1] * a[1][2] - a[1][1] * a[0][2]);
    b[2][1] = f31 * -(a[0][0] * a[1][2] - a[1][0] * a[0][2]);
    b[2][2] = f31 * (a[0][0] * a[1][1] - a[1][0] * a[0][1]);
    b[0][0] = tmp[0][0];
    b[0][1] = tmp[0][1];
    b[0][2] = tmp[0][2];
    b[0][3] = 0.0f;
    b[1][0] = tmp[1][0];
    b[1][1] = tmp[1][1];
    b[1][2] = tmp[1][2];
    b[1][3] = 0.0f;
    b[2][3] = 0.0f;

    return true;
}

/* 8000CB5C-8000CC00 00749C 00A4+00 0/0 2/2 2/2 .text
 * mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion */
void mDoMtx_QuatConcat(const Quaternion* a, const Quaternion* b, Quaternion* c) {
    c->w = (a->w * b->w) - (a->x * b->x) - (a->y * b->y) - (a->z * b->z);
    c->x = (a->w * b->x) + (a->x * b->w) + (a->y * b->z) - (a->z * b->y);
    c->y = (a->w * b->y) + (a->y * b->w) + (a->z * b->x) - (a->x * b->z);
    c->z = (a->w * b->z) + (a->z * b->w) + (a->x * b->y) - (a->y * b->x);
}

/* 8000CC00-8000CCC8 007540 00C8+00 0/0 11/11 26/26 .text            mDoMtx_MtxToRot__FPA4_CfP5csXyz
 */
void mDoMtx_MtxToRot(CMtxP m, csXyz* o_rot) {
    f32 f31 = m[0][2];
    f31 *= f31;
    f32 f30 = m[2][2];
    f31 += f30 * f30;
    f31 = JMAFastSqrt(f31);

    o_rot->x = cM_atan2s(-m[1][2], f31);

    if (o_rot->x == 0x4000 || o_rot->x == -0x4000) {
        o_rot->z = 0;
        o_rot->y = cM_atan2s(-m[2][0], m[0][0]);
    } else {
        o_rot->y = cM_atan2s(m[0][2], m[2][2]);
        o_rot->z = cM_atan2s(m[1][0], m[1][1]);
    }
}

/* 8000CCC8-8000CD14 007608 004C+00 0/0 0/0 24/24 .text            push__14mDoMtx_stack_cFv */
bool mDoMtx_stack_c::push() {
    if (next >= end) {
        JUT_ASSERT(729, next < end)
        return false;
    }

    mDoMtx_copy(now, *next++);
    return true;
}

/* 8000CD14-8000CD64 007654 0050+00 0/0 0/0 24/24 .text            pop__14mDoMtx_stack_cFv */
bool mDoMtx_stack_c::pop() {
    if (next <= buffer) {
        JUT_ASSERT(751, next > buffer);
        return false;
    }

    mDoMtx_copy(*--next, now);
    return true;
}

/* 8000CD64-8000CD9C 0076A4 0038+00 0/0 50/50 484/484 .text transS__14mDoMtx_stack_cFRC4cXyz */
void mDoMtx_stack_c::transS(cXyz const& param_0) {
    transS(param_0.x, param_0.y, param_0.z);
}

/* 8000CD9C-8000CDD4 0076DC 0038+00 1/1 29/29 285/285 .text            transM__14mDoMtx_stack_cFfff
 */
void mDoMtx_stack_c::transM(f32 x, f32 y, f32 z) {
    Mtx tmp;
    mDoMtx_trans(tmp, x, y, z);
    mDoMtx_concat(now, tmp, now);
}

/* 8000CDD4-8000CE00 007714 002C+00 0/0 3/3 40/40 .text            transM__14mDoMtx_stack_cFRC4cXyz
 */
void mDoMtx_stack_c::transM(cXyz const& param_0) {
    transM(param_0.x, param_0.y, param_0.z);
}

/* 8000CE00-8000CE38 007740 0038+00 0/0 0/0 2/2 .text            scaleS__14mDoMtx_stack_cFRC4cXyz */
void mDoMtx_stack_c::scaleS(cXyz const& param_0) {
    scaleS(param_0.x, param_0.y, param_0.z);
}

/* 8000CE38-8000CE70 007778 0038+00 1/1 13/13 219/219 .text            scaleM__14mDoMtx_stack_cFfff
 */
void mDoMtx_stack_c::scaleM(f32 x, f32 y, f32 z) {
    Mtx tmp;
    mDoMtx_scale(tmp, x, y, z);
    mDoMtx_concat(now, tmp, now);
}

/* 8000CE70-8000CE9C 0077B0 002C+00 0/0 7/7 79/79 .text            scaleM__14mDoMtx_stack_cFRC4cXyz
 */
void mDoMtx_stack_c::scaleM(cXyz const& param_0) {
    scaleM(param_0.x, param_0.y, param_0.z);
}

/* 8000CE9C-8000CED4 0077DC 0038+00 0/0 3/3 0/0 .text            XYZrotS__14mDoMtx_stack_cFRC5csXyz
 */
void mDoMtx_stack_c::XYZrotS(csXyz const& param_0) {
    XYZrotS(param_0.x, param_0.y, param_0.z);
}

/* 8000CED4-8000CF0C 007814 0038+00 0/0 1/1 4/4 .text            XYZrotM__14mDoMtx_stack_cFRC5csXyz
 */
void mDoMtx_stack_c::XYZrotM(csXyz const& param_0) {
    XYZrotM(param_0.x, param_0.y, param_0.z);
}

/* 8000CF0C-8000CF44 00784C 0038+00 0/0 5/5 43/43 .text ZXYrotS__14mDoMtx_stack_cFRC5csXyz */
void mDoMtx_stack_c::ZXYrotS(csXyz const& param_0) {
    ZXYrotS(param_0.x, param_0.y, param_0.z);
}

/* 8000CF44-8000CF7C 007884 0038+00 0/0 24/24 250/250 .text ZXYrotM__14mDoMtx_stack_cFRC5csXyz */
void mDoMtx_stack_c::ZXYrotM(csXyz const& param_0) {
    ZXYrotM(param_0.x, param_0.y, param_0.z);
}

/* 8000CF7C-8000CFB8 0078BC 003C+00 0/0 1/1 6/6 .text quatM__14mDoMtx_stack_cFPC10Quaternion */
void mDoMtx_stack_c::quatM(Quaternion const* param_0) {
    Mtx tmp;
    mDoMtx_quat(tmp, param_0);
    mDoMtx_concat(now, tmp, now);
}
