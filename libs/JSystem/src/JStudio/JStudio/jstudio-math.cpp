#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JStudio/JStudio/jstudio-math.h"
#include "JSystem/JGeometry.h"
#include "JSystem/TPosition3.h"
#include <cmath>

void JStudio::math::getRotation_xyz(MtxP pm, f32 x, f32 y, f32 z) {
    JUT_ASSERT(26, pm!=0);
    f32 cosx = cosf(DEG_TO_RAD(x));
    f32 sinx = sinf(DEG_TO_RAD(x));
    f32 cosy = cosf(DEG_TO_RAD(y));
    f32 siny = sinf(DEG_TO_RAD(y));
    f32 cosz = cosf(DEG_TO_RAD(z));
    f32 sinz = sinf(DEG_TO_RAD(z));
    f32 cosxcosz = cosx * cosz;
    f32 cosxsinz = cosx * sinz;
    f32 sinxcosz = sinx * cosz;
    f32 sinxsinz = sinx * sinz;

    pm[0][0] = cosy * cosz;
    pm[1][0] = cosy * sinz;
    pm[2][0] = -siny;
    pm[2][1] = sinx * cosy;
    pm[2][2] = cosx * cosy;
    pm[0][1] = ((sinxcosz * siny) - cosxsinz);
    pm[0][2] = (sinxsinz + (cosxcosz * siny));
    pm[1][1] = (cosxcosz + (sinxsinz * siny));
    pm[1][2] = (((cosxsinz) * siny) - sinxcosz);
    pm[0][3] = 0.0f;
    pm[1][3] = 0.0f;
    pm[2][3] = 0.0f;
}

void JStudio::math::getTransformation_SRxyzT(MtxP param_1, Vec const& param_2, Vec const& param_3,
                                             Vec const& param_4) {
    Mtx afStack_40;
    MTXScale(afStack_40, param_2.x, param_2.y, param_2.z);
    Mtx amStack_70;
    rotate_xyz(amStack_70, afStack_40, param_3);
    MTXTransApply(amStack_70, param_1, param_4.x, param_4.y, param_4.z);
}

void JStudio::math::getFromTransformation_SRxyzT(Vec* param_1, Vec* pR, Vec* param_3,
                                                     CMtxP param_4) {
    bool sp18[4];
    bool sp14[4];
    sp18[0] = false;
    sp14[0] = false;
    getFromTransformation_S(param_1, param_4);
    getFromTransformation_T(param_3, param_4);
    JUT_ASSERT(92, pR!=NULL);
    JGeometry::TRotation3<JGeometry::SMatrix33C<f64> > aTStack_88;
    JGeometry::TVec3<f64> local_a0;
    f64 dVar9 = 0.0;
    f64 dVar8 = 0.0;
    f64 dVar7 = 0.0;
    if (0.0f != param_1->x) {
        dVar9 = 1.0 / param_1->x;
    }
    if (0.0f != param_1->y) {
        dVar8 = 1.0 / param_1->y;
    }
    if (0.0f != param_1->z) {
        dVar7 = 1.0 / param_1->z;
    }
    aTStack_88.set(param_4[0][0] * dVar9, param_4[0][1] * dVar8, param_4[0][2] * dVar7,
                   param_4[1][0] * dVar9, param_4[1][1] * dVar8, param_4[1][2] * dVar7,
                   param_4[2][0] * dVar9, param_4[2][1] * dVar8, param_4[2][2] * dVar7);
    aTStack_88.getEulerXYZ(local_a0);
    local_a0 *= 180.0 / m_PI_D;
    pR->x = local_a0.x;
    pR->y = local_a0.y;
    pR->z = local_a0.z;
}
