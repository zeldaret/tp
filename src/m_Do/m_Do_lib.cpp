/**
 * m_Do_lib.cpp
 * View and Projection Matrix Helper Functions
 */

#include "m_Do/m_Do_lib.h"
#include "m_Do/m_Do_graphic.h"
#include "JSystem/J3DGraphBase/J3DMatBlock.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "dolphin/types.h"

/* 8001513C-8001528C 00FA7C 0150+00 0/0 3/3 2/2 .text
 * mDoLib_setResTimgObj__FPC7ResTIMGP9_GXTexObjUlP10_GXTlutObj  */
u32 mDoLib_setResTimgObj(ResTIMG const* i_img, GXTexObj* o_texObj, u32 tlut_name,
                        GXTlutObj* o_tlutObj) {
    if (i_img->indexTexture) {
        JUT_ASSERT(44, o_tlutObj != NULL);
        GXInitTlutObj(o_tlutObj, (void*)((u8*)i_img + i_img->paletteOffset),
                      (GXTlutFmt)i_img->colorFormat, (u16)i_img->numColors);
        GXInitTexObjCI(o_texObj, (void*)((u8*)i_img + i_img->imageOffset), i_img->width, i_img->height,
                       (GXCITexFmt)i_img->format, (GXTexWrapMode)i_img->wrapS,
                       (GXTexWrapMode)i_img->wrapT, i_img->mipmapCount > 1 ? GX_TRUE : GX_FALSE, tlut_name);
    } else {
        GXInitTexObj(o_texObj, (void*)((u8*)i_img + i_img->imageOffset), i_img->width, i_img->height,
                     (GXTexFmt)i_img->format, (GXTexWrapMode)i_img->wrapS, (GXTexWrapMode)i_img->wrapT,
                     i_img->mipmapCount > 1 ? GX_TRUE : GX_FALSE);
    }
    GXInitTexObjLOD(o_texObj, (GXTexFilter)i_img->minFilter, (GXTexFilter)i_img->magFilter,
                    (f32)i_img->minLOD * 0.125f, (f32)i_img->maxLOD * 0.125f,
                    (f32)i_img->LODBias * 0.01f, (s32)i_img->biasClamp, (s32)i_img->doEdgeLOD,
                    (GXAnisotropy)i_img->maxAnisotropy);

    return i_img->indexTexture;
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

    { int unused; }

    Vec multVec;
    cMtx_multVec(*dComIfGd_getProjViewMtx(), src, &multVec);

    f32 calcFloat = (src->x * (*dComIfGd_getProjViewMtx())[3][0]) +
                    (src->y * (*dComIfGd_getProjViewMtx())[3][1]) +
                    (src->z * (*dComIfGd_getProjViewMtx())[3][2]) +
                    (*dComIfGd_getProjViewMtx())[3][3];
    if (multVec.z >= 0.0f) {
        multVec.z = 0.0f;
    }
    if (calcFloat <= 0.0f) {
        if (calcFloat == 0.0f) {
            dst->z = multVec.z * 500000.0f;
        } else {
            dst->z = multVec.z * (0.5f / calcFloat);
        }
        calcFloat = 500000.0f;
    } else {
        calcFloat = 0.5f / calcFloat;
        dst->z = multVec.z * calcFloat;
    }

    view_port_class* viewPort = dComIfGd_getViewport();
    f32 xOffset;
    f32 yOffset;
    f32 xSize;
    f32 ySize;
    if (viewPort->x_orig != 0.0f) {
        xOffset = (0.5f * ((2.0f * viewPort->x_orig) + viewPort->width)) - (int)(FB_WIDTH / 2);
        xSize = FB_WIDTH;
    } else {
        xOffset = viewPort->x_orig;
        xSize = viewPort->width;
    }

    if (viewPort->y_orig != 0.0f) {
        yOffset = (0.5f * ((2.0f * viewPort->y_orig) + viewPort->height)) - (int)(FB_HEIGHT / 2);
        ySize = FB_HEIGHT;
    } else {
        yOffset = viewPort->y_orig;
        ySize = viewPort->height;
    }

    dst->x = ((0.5f + (multVec.x * calcFloat)) * xSize) + xOffset;
    dst->y = ((0.5f + (multVec.y * (-calcFloat))) * ySize) + yOffset;
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

static void dummy() {
    J3DAlphaComp* alphaComp = NULL;
    alphaComp->setAlphaCompInfo((J3DAlphaCompInfo){});
    J3DPEBlock* peBlock = NULL;
    peBlock->getZMode()->setZModeInfo((J3DZModeInfo){});
    dComIfGd_getInvViewMtx();
    J3DMaterial* mat = NULL;
    mat->getTevKColor(0);
    mDoLib_clipper::clip(j3dSys.getViewMtx(), (Vec){}, 0.0f);
}
