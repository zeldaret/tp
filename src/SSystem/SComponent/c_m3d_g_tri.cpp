/**
 * c_m3d_g_tri.cpp
 *
 */

#include "SSystem/SComponent/c_m3d_g_tri.h"
#include "SSystem/SComponent/c_m3d.h"
#include "JSystem/JUtility/JUTAssert.h"

/* 8026F7B0-8026F7DC 26A0F0 002C+00 0/0 1/1 0/0 .text            cross__8cM3dGTriCFPC8cM3dGCylP3Vec
 */
bool cM3dGTri::cross(const cM3dGCyl* cyl, Vec* out) const {
    return cM3d_Cross_CylTri(cyl, this, out);
}

/* 8026F7DC-8026F85C 26A11C 0080+00 0/0 0/0 6/6 .text setPos__8cM3dGTriFPC3VecPC3VecPC3Vec */
void cM3dGTri::setPos(const Vec* vtx_a, const Vec* vtx_b, const Vec* vtx_c) {
    mA = *vtx_a;
    mB = *vtx_b;
    mC = *vtx_c;
    setUp();

    JUT_ASSERT(99, !cM3d_IsZero(GetNP()->x) || !cM3d_IsZero(GetNP()->y) || !cM3d_IsZero(GetNP()->z));
}

/* 8026F85C-8026F8C8 26A19C 006C+00 0/0 2/2 0/0 .text
 * setBg__8cM3dGTriFPC3VecPC3VecPC3VecPC8cM3dGPla               */
void cM3dGTri::setBg(const Vec* vtx_a, const Vec* vtx_b, const Vec* vtx_c, const cM3dGPla* plane) {
    mA.x = vtx_a->x;
    mA.y = vtx_a->y;
    mA.z = vtx_a->z;

    mB.x = vtx_b->x;
    mB.y = vtx_b->y;
    mB.z = vtx_b->z;

    mC.x = vtx_c->x;
    mC.y = vtx_c->y;
    mC.z = vtx_c->z;

    Set(plane);
}

/* 8026F8C8-8026F93C 26A208 0074+00 0/0 1/1 0/0 .text set__8cM3dGTriFPC3VecPC3VecPC3VecPC3Vec */
void cM3dGTri::set(const Vec* vtx_a, const Vec* vtx_b, const Vec* vtx_c, const Vec* normal) {
    mA.x = vtx_a->x;
    mA.y = vtx_a->y;
    mA.z = vtx_a->z;

    mB.x = vtx_b->x;
    mB.y = vtx_b->y;
    mB.z = vtx_b->z;

    mC.x = vtx_c->x;
    mC.y = vtx_c->y;
    mC.z = vtx_c->z;

    SetupNP(*normal, *vtx_a);
}
