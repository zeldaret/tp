#include "dolphin/mtx.h"
#include "math.h"

void C_MTXFrustum(Mtx44 m, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    f32 tmp = 1.0f / (arg4 - arg3);
    m[0][0] = (2 * arg5) * tmp;
    m[0][1] = 0.0f;
    m[0][2] = (arg4 + arg3) * tmp;
    m[0][3] = 0.0f;
    tmp = 1.0f / (arg1 - arg2);
    m[1][0] = 0.0f;
    m[1][1] = (2 * arg5) * tmp;
    m[1][2] = (arg1 + arg2) * tmp;
    m[1][3] = 0.0f;
    m[2][0] = 0.0f;
    m[2][1] = 0.0f;
    tmp = 1.0f / (arg6 - arg5);
    m[2][2] = -(arg5)*tmp;
    m[2][3] = -(arg6 * arg5) * tmp;
    m[3][0] = 0.0f;
    m[3][1] = 0.0f;
    m[3][2] = -1.0f;
    m[3][3] = 0.0f;
}

/* 80346F28-80346FF8 341868 00D0+00 0/0 6/6 0/0 .text            C_MTXPerspective */
// Functions match but has issues with float constants
void C_MTXPerspective(Mtx44 m, f32 fovY, f32 aspect, f32 n, f32 f) {
    f32 angle = fovY * 0.5f;
    f32 cot;
    f32 tmp;
    angle = MTXDegToRad(angle);
    cot = 1.0f / tanf(angle);
    m[0][0] = cot / aspect;
    m[0][1] = 0.0f;
    m[0][2] = 0.0f;
    m[0][3] = 0.0f;
    m[1][0] = 0.0f;
    m[1][1] = cot;
    m[1][2] = 0.0f;
    m[1][3] = 0.0f;
    m[2][0] = 0.0f;
    m[2][1] = 0.0f;
    tmp = 1.0f / (f - n);
    m[2][2] = -(n)*tmp;
    m[2][3] = -(f * n) * tmp;
    m[3][0] = 0.0f;
    m[3][1] = 0.0f;
    m[3][2] = -1.0f;
    m[3][3] = 0.0f;
}

/* 80346FF8-80347090 341938 0098+00 0/0 11/11 2/2 .text            C_MTXOrtho */
void C_MTXOrtho(Mtx44 m, f32 t, f32 b, f32 l, f32 r, f32 n, f32 f) {
    f32 tmp = 1.0f / (r - l);
    m[0][0] = 2.0f * tmp;
    m[0][1] = 0.0f;
    m[0][2] = 0.0f;
    m[0][3] = -(r + l) * tmp;
    tmp = 1.0f / (t - b);
    m[1][0] = 0.0f;
    m[1][1] = 2.0f * tmp;
    m[1][2] = 0.0f;
    m[1][3] = -(t + b) * tmp;
    m[2][0] = 0.0f;
    m[2][1] = 0.0f;
    tmp = 1.0f / (f - n);
    m[2][2] = -(1.0f) * tmp;
    m[2][3] = -(f)*tmp;
    m[3][0] = 0.0f;
    m[3][1] = 0.0f;
    m[3][2] = 0.0f;
    m[3][3] = 1.0f;
}

asm void PSMTX44Copy(register Mtx44 src, register Mtx44 dest) {
#ifdef __MWERKS__  // clang-format off
	nofralloc;
	psq_l fp1, 0(src), 0, 0;
	psq_st fp1, 0(dest), 0, 0;
	psq_l fp1, 8(src), 0, 0;
	psq_st fp1, 8(dest), 0, 0;
	psq_l fp1, 0x10(src), 0, 0;
	psq_st fp1, 0x10(dest), 0, 0;
	psq_l fp1, 0x18(src), 0, 0;
	psq_st fp1, 0x18(dest), 0, 0;
	psq_l fp1, 0x20(src), 0, 0;
	psq_st fp1, 0x20(dest), 0, 0;
	psq_l fp1, 0x28(src), 0, 0;
	psq_st fp1, 0x28(dest), 0, 0;
	psq_l fp1, 0x30(src), 0, 0;
	psq_st fp1, 0x30(dest), 0, 0;
	psq_l fp1, 0x38(src), 0, 0;
	psq_st fp1, 0x38(dest), 0, 0;
	blr;
#endif  // clang-format on
}