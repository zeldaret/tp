/**
 * m_Do_lib.cpp
 * View and Projection Matrix Helper Functions
 */

#include "m_Do/m_Do_lib.h"
#include "JSystem/J3DGraphBase/J3DMatBlock.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "dolphin/types.h"

/* 8001513C-8001528C 00FA7C 0150+00 0/0 3/3 2/2 .text
 * mDoLib_setResTimgObj__FPC7ResTIMGP9_GXTexObjUlP10_GXTlutObj  */
u8 mDoLib_setResTimgObj(ResTIMG const* res, _GXTexObj* o_texObj, u32 tlut_name,
                        _GXTlutObj* o_tlutObj) {
    ResTIMG* _res = (ResTIMG*)res;

    if (_res->indexTexture) {
        GXInitTlutObj(o_tlutObj, (void*)((u8*)_res + _res->paletteOffset),
                      (GXTlutFmt)_res->colorFormat, _res->numColors);
        GXInitTexObjCI(o_texObj, (void*)((u8*)_res + _res->imageOffset), _res->width, _res->height,
                       (GXCITexFmt)_res->format, (GXTexWrapMode)_res->wrapS,
                       (GXTexWrapMode)_res->wrapT, _res->mipmapCount > 1, tlut_name);
    } else {
        GXInitTexObj(o_texObj, (void*)((u8*)_res + _res->imageOffset), _res->width, _res->height,
                     (GXTexFmt)_res->format, (GXTexWrapMode)_res->wrapS, (GXTexWrapMode)_res->wrapT,
                     _res->mipmapCount > 1);
    }
    GXInitTexObjLOD(o_texObj, (GXTexFilter)_res->minFilter, (GXTexFilter)_res->magFilter,
                    (f32)_res->minLOD * 0.125f, (f32)_res->maxLOD * 0.125f,
                    (f32)_res->LODBias * 0.01f, (s32)_res->biasClamp, (s32)_res->doEdgeLOD,
                    (GXAnisotropy)_res->maxAnisotropy);

    return _res->indexTexture;
}

/* 803DD8E4-803DD940 00A604 005C+00 2/2 5/5 5/5 .bss             mClipper__14mDoLib_clipper */
J3DUClipper mDoLib_clipper::mClipper;

/* 80450C70-80450C74 000170 0004+00 1/1 2/2 4/4 .sbss            mSystemFar__14mDoLib_clipper */
f32 mDoLib_clipper::mSystemFar;

/* 80450C74-80450C78 000174 0004+00 1/1 1/1 0/0 .sbss            mFovyRate__14mDoLib_clipper */
f32 mDoLib_clipper::mFovyRate;

/* 8001528C-80015310 00FBCC 0084+00 0/0 1/1 0/0 .text            setup__14mDoLib_clipperFffff */
void mDoLib_clipper::setup(f32 fovy, f32 aspect, f32 near, f32 far) {
    mClipper.setFovy(fovy);
    mClipper.setAspect(aspect);
    mClipper.setNear(near);
    mClipper.setFar(far);
    mSystemFar = far;
    mClipper.calcViewFrustum();

    s16 tmp = fovy * 182.04444885253906f;

    mFovyRate = cM_scos(tmp) / cM_ssin(tmp);
}

/* 80015310-800154EC 00FC50 01DC+00 0/0 21/21 23/23 .text            mDoLib_project__FP3VecP3Vec */
void mDoLib_project(Vec* src, Vec* dst) {
    if (dComIfGd_getView() == NULL) {
        dst->x = 0.0f;
        dst->y = 0.0f;
        dst->z = 0.0f;
        return;
    }
    Mtx44* projMtx = dComIfGd_getProjViewMtx();
    Vec multVec;
    cMtx_multVec(*projMtx, src, &multVec);

    float calcFloat = (src->x * (*dComIfGd_getProjViewMtx())[3][0]) +
                      (src->y * (*dComIfGd_getProjViewMtx())[3][1]) +
                      (src->z * (*dComIfGd_getProjViewMtx())[3][2]) +
                      (*dComIfGd_getProjViewMtx())[3][3];
    if (multVec.z >= 0.0f) {
        multVec.z = 0.0f;
    }
    float f3;
    if (calcFloat <= 0.0f) {
        if (calcFloat == 0.0f) {
            dst->z = multVec.z * 500000.0f;
        } else {
            dst->z = multVec.z * (0.5f / calcFloat);
        }
        f3 = 500000.0f;
    } else {
        f3 = 0.5f / calcFloat;
        dst->z = multVec.z * f3;
    }

    view_port_class* viewPort = dComIfGd_getViewport();
    float xOffset;
    float yOffset;
    float xSize;
    float ySize;
    if (viewPort->x_orig != 0.0f) {
        xOffset = (0.5f * ((2.0f * viewPort->x_orig) + viewPort->width)) - 304.0f;
        xSize = 608.0f;
    } else {
        xOffset = viewPort->x_orig;
        xSize = viewPort->width;
    }

    if (viewPort->y_orig != 0.0f) {
        yOffset = (0.5f * ((2.0f * viewPort->y_orig) + viewPort->height)) - 224.0f;
        ySize = 448.0f;
    } else {
        yOffset = viewPort->y_orig;
        ySize = viewPort->height;
    }

    dst->x = ((0.5f + (multVec.x * f3)) * xSize) + xOffset;
    dst->y = ((0.5f + (multVec.y * (-f3))) * ySize) + yOffset;
}

/* 800154EC-80015544 00FE2C 0058+00 0/0 2/2 9/9 .text            mDoLib_pos2camera__FP3VecP3Vec */
void mDoLib_pos2camera(Vec* src, Vec* dst) {
    if (dComIfGd_getView() == NULL) {
        dst->x = 0.0f;
        dst->y = 0.0f;
        dst->z = 0.0f;
        return;
    }
    cMtx_multVec(dComIfGd_getView()->viewMtx, src, dst);
}
