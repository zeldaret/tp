#ifndef JSTUDIO_MATH_H
#define JSTUDIO_MATH_H

#include <mtx.h>
#include <cmath>

#define m_PI_D 3.141592653589793

namespace JStudio {
namespace math {
    void getRotation_xyz(MtxP, f32, f32, f32);
    void getTransformation_SRxyzT(MtxP, Vec const&, Vec const&, Vec const&);
    void getFromTransformation_SRxyzT(Vec*, Vec*, Vec*, CMtxP);

    inline void getRotation_y(Mtx param_0, f32 param_1) {
        MTXRotRad(param_0, 0x79, DEG_TO_RAD(param_1));
    }

    inline void getTransformation_RyT(Mtx param_0, f32 param_1, const Vec& param_2) {
        Mtx amStack_40;
        getRotation_y(amStack_40, param_1);
        MTXTransApply(amStack_40, param_0, param_2.x, param_2.y, param_2.z);
    }

    inline void rotate_y(Mtx param_0, const Mtx param_1, f32 param_2) {
        Mtx afStack_38;
        getRotation_y(afStack_38, param_2);
        MTXConcat(afStack_38, param_1, param_0);
    }

    inline void rotate_xyz(Mtx param_0, const Mtx param_1, f32 param_2, f32 param_3, f32 param_4) {
        Mtx amStack_30;
        getRotation_xyz(amStack_30, param_2, param_3, param_4);
        MTXConcat(amStack_30, param_1, param_0);
    }

    inline void rotate_xyz(Mtx param_0, const Mtx param_1, const Vec& param_2) {
        rotate_xyz(param_0, param_1, param_2.x, param_2.y, param_2.z);
    }

    inline f32 getFromTransformation_Sn(CMtxP param_1, uint u) {
        JUT_ASSERT(119, u<3);
        Vec local_18;
        local_18.x = param_1[0][u];
        local_18.y = param_1[1][u];
        local_18.z = param_1[2][u];
        return VECMag(&local_18);
    }

    inline void getFromTransformation_S(Vec* pS, CMtxP param_2) {
        JUT_ASSERT(128, pS!=NULL);
        pS->x = getFromTransformation_Sn(param_2, 0);
        pS->y = getFromTransformation_Sn(param_2, 1);
        pS->z = getFromTransformation_Sn(param_2, 2);
    }

    inline void getFromTransformation_T(Vec* pT, CMtxP param_2) {
        JUT_ASSERT(137, pT!=NULL);
        pT->x = param_2[0][3];
        pT->y = param_2[1][3];
        pT->z = param_2[2][3];
    }

    inline void getTransformation_T(Mtx mtx, const Vec* param_2) {
        MTXTrans(mtx, param_2->x, param_2->y, param_2->z);
    }
};
};  // namespace JStudio

#endif /* JSTUDIO_MATH_H */
