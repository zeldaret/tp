/**
 * d_map_path.cpp
 *
 */

#include "d/dolzel.h"

#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "d/d_com_inf_game.h"
#include "d/d_map_path.h"
#include "m_Do/m_Do_lib.h"

/* 8003C85C-8003C8F4 03719C 0098+00 0/0 1/1 0/0 .text create__Q28dMpath_n18dTexObjAggregate_cFv */
void dMpath_n::dTexObjAggregate_c::create() {
    static int const data[7] = {
        79, 80, 77, 78, 76, 81, 82,
    };

    for (int i = 0; i < 7; i++) {
        mp_texObj[i] = new GXTexObj();

        ResTIMG* image = (ResTIMG*)dComIfG_getObjectRes("Always", data[i]);
        mDoLib_setResTimgObj(image, mp_texObj[i], 0, NULL);
    }
}

/* 8003C8F4-8003C94C 037234 0058+00 1/1 1/1 0/0 .text remove__Q28dMpath_n18dTexObjAggregate_cFv */
void dMpath_n::dTexObjAggregate_c::remove() {
    for (int i = 0; i < 7; i++) {
        delete mp_texObj[i];
        mp_texObj[i] = NULL;
    }
}

/* 8003C94C-8003CA40 03728C 00F4+00 2/0 9/2 0/0 .text
 * rendering__11dDrawPath_cFPCQ211dDrawPath_c10line_class       */
void dDrawPath_c::rendering(dDrawPath_c::line_class const* p_line) {
    if (isDrawType(p_line->field_0x0)) {
        int width = getLineWidth(p_line->field_0x1);

        if (width > 0 && p_line->mDataNum >= 2) {
            GXSetLineWidth(width, GX_TO_ZERO);
            GXSetTevColor(GX_TEVREG0, *getLineColor(p_line->field_0x0 & 0x3F, p_line->field_0x1));
            GXBegin(GX_LINESTRIP, GX_VTXFMT0, p_line->mDataNum);

            u16* tmp = p_line->mpData;
            for (int i = 0; i < p_line->mDataNum; i++) {
                GXPosition1x16(*tmp);
                tmp++;
            }
            GXEnd();
        }
    }
}

/* 8003CA40-8003CB00 037380 00C0+00 2/0 9/1 0/0 .text
 * rendering__11dDrawPath_cFPCQ211dDrawPath_c10poly_class       */
void dDrawPath_c::rendering(dDrawPath_c::poly_class const* p_poly) {
    if (isDrawType(p_poly->field_0x0)) {
        GXSetTevColor(GX_TEVREG0, *getColor(p_poly->field_0x0 & 0x3F));

        if (p_poly->mDataNum >= 3) {
            GXBegin(GX_TRIANGLESTRIP, GX_VTXFMT0, p_poly->mDataNum);

            u16* tmp = p_poly->mpData;
            for (int i = 0; i < p_poly->mDataNum; i++) {
                GXPosition1x16(*tmp);
                tmp++;
            }
            GXEnd();
        }
    }
}

/* 8003CB00-8003CBBC 037440 00BC+00 1/1 0/0 0/0 .text
 * rendering__11dDrawPath_cFPCQ211dDrawPath_c11group_class      */
void dDrawPath_c::rendering(dDrawPath_c::group_class const* p_group) {
    if (isSwitch(p_group)) {
        poly_class* poly = p_group->mpPoly;
        for (int i = 0; i < p_group->mPolyNum; i++) {
            rendering(poly);
            poly++;
        }

        line_class* line = p_group->mpLine;
        for (int i = 0; i < p_group->mLineNum; i++) {
            rendering(line);
            line++;
        }
    }
}

/* 8003CBBC-8003CC24 0374FC 0068+00 1/1 0/0 0/0 .text
 * rendering__11dDrawPath_cFPCQ211dDrawPath_c11floor_class      */
void dDrawPath_c::rendering(dDrawPath_c::floor_class const* p_floor) {
    if (p_floor->mpGroup != NULL) {
        group_class* group = p_floor->mpGroup;

        for (int i = 0; i < p_floor->mGroupNum; i++) {
            rendering(group);
            group++;
        }
    }
}

/* 8003CC24-8003CCC4 037564 00A0+00 2/0 9/1 0/0 .text
 * rendering__11dDrawPath_cFPCQ211dDrawPath_c10room_class       */
void dDrawPath_c::rendering(dDrawPath_c::room_class const* p_room) {
    if (p_room != NULL) {
        GXSetArray(GX_VA_POS, p_room->mpFloatData, 8);
        floor_class* floor = p_room->mpFloor;

        if (floor != NULL) {
            for (int i = 0; i < p_room->mFloorNum; i++) {
                if (isRenderingFloor(floor->mFloorNo)) {
                    rendering(floor);
                }
                floor++;
            }
        }
    }
}

/* 8003CCC4-8003CD38 037604 0074+00 2/0 9/1 0/0 .text            drawPath__11dDrawPath_cFv */
void dDrawPath_c::drawPath() {
    room_class* room = getFirstRoomPointer();
    while (room != NULL) {
        rendering(room);
        room = getNextRoomPointer();
    }
}

/* 8003CD38-8003CDAC 037678 0074+00 0/0 3/3 0/0 .text
 * makeResTIMG__15dRenderingMap_cCFP7ResTIMGUsUsPUcPUcUs        */
void dRenderingMap_c::makeResTIMG(ResTIMG* p_image, u16 width, u16 height, u8* p_data,
                                  u8* p_palette, u16 param_5) const {
    p_image->format = GX_TF_C8;
    p_image->alphaEnabled = 2;
    p_image->width = width;
    p_image->height = height;
    p_image->wrapS = GX_CLAMP;
    p_image->wrapT = GX_CLAMP;
    p_image->indexTexture = true;
    p_image->colorFormat = 2;
    p_image->numColors = param_5 * 4;
    p_image->paletteOffset = p_palette - (u8*)p_image;
    p_image->mipmapEnabled = false;
    p_image->doEdgeLOD = false;
    p_image->biasClamp = false;
    p_image->maxAnisotropy = 0;
    p_image->minFilter = GX_LINEAR;
    p_image->magFilter = GX_LINEAR;
    p_image->minLOD = 0;
    p_image->maxLOD = 0;
    p_image->mipmapCount = 1;
    p_image->LODBias = 0;
    p_image->imageOffset = p_data - (u8*)p_image;
}

/* 8003CDAC-8003CE78 0376EC 00CC+00 0/0 2/2 0/0 .text            renderingMap__15dRenderingMap_cFv
 */
void dRenderingMap_c::renderingMap() {
    preRenderingMap();
    if (isDrawPath()) {
        preDrawPath();
        beforeDrawPath();
        drawPath();
        afterDrawPath();
        postDrawPath();
    }
    postRenderingMap();
}

/* 8003CE78-8003CF40 0377B8 00C8+00 2/2 3/3 0/0 .text
 * setTevSettingNonTextureDirectColor__18dRenderingFDAmap_cCFv  */
void dRenderingFDAmap_c::setTevSettingNonTextureDirectColor() const {
    GXSetNumTevStages(1);
    GXSetNumChans(1);
    GXSetNumTexGens(0);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
}

/* 8003CF40-8003D0AC 037880 016C+00 1/1 3/3 0/0 .text
 * setTevSettingIntensityTextureToCI__18dRenderingFDAmap_cCFv   */
void dRenderingFDAmap_c::setTevSettingIntensityTextureToCI() const {
    GXSetNumTevStages(2);
    GXSetNumChans(1);
    GXSetNumTexGens(1);
    GXSetTexCoordGen2(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 60, GX_FALSE, 125);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_KONST, GX_CC_TEXC, GX_CC_C1);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevColorIn(GX_TEVSTAGE1, GX_CC_CPREV, GX_CC_C2, GX_CC_CPREV, GX_CC_ZERO);
    GXSetTevColorOp(GX_TEVSTAGE1, GX_TEV_COMP_R8_GT, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                    GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA);
    GXSetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetAlphaCompare(GX_GREATER, 0, GX_AOP_AND, GX_ALWAYS, 0);
    GXSetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_1_4);
}

/* 8003D0AC-8003D188 0379EC 00DC+00 1/1 0/0 0/0 .text            drawBack__18dRenderingFDAmap_cCFv
 */
void dRenderingFDAmap_c::drawBack() const {
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
    GXSetTevColor(GX_TEVREG0, *getBackColor());
    GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    GXPosition3f32(-field_0x8, -field_0xc, 0);
    GXPosition3f32(field_0x8, -field_0xc, 0);
    GXPosition3f32(field_0x8, field_0xc, 0);
    GXPosition3f32(-field_0x8, field_0xc, 0);
    GXEnd();
}

/* 8003D188-8003D320 037AC8 0198+00 1/0 8/0 0/0 .text preRenderingMap__18dRenderingFDAmap_cFv */
void dRenderingFDAmap_c::preRenderingMap() {
    GXSetViewport(0.0f, 0.0f, mTexWidth, mTexHeight, 0.0f, 1.0f);
    GXSetScissor(0, 0, mTexWidth, mTexHeight);
    GXSetNumChans(1);
    GXSetNumTevStages(1);
    GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                  GX_AF_NONE);
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
    GXSetZCompLoc(GX_TRUE);
    GXSetZMode(GX_FALSE, GX_ALWAYS, GX_FALSE);
    GXSetBlendMode(GX_BM_NONE, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
    GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, g_clearColor);
    GXSetCullMode(GX_CULL_NONE);
    GXSetDither(GX_FALSE);
    GXSetNumIndStages(0);
    GXSetClipMode(GX_CLIP_ENABLE);
    setTevSettingNonTextureDirectColor();
    f32 right = field_0x8 * 0.5f;
    f32 top = field_0xc * 0.5f;
    Mtx44 matrix;
    C_MTXOrtho(matrix, top, -top, -right, right, 0.0f, 10000.0f);
    GXSetProjection(matrix, GX_ORTHOGRAPHIC);
    GXLoadPosMtxImm(g_mDoMtx_identity, GX_PNMTX0);
    GXSetCurrentMtx(0);
    drawBack();
}

/* 8003D320-8003D3C0 037C60 00A0+00 1/0 7/1 0/0 .text postRenderingMap__18dRenderingFDAmap_cFv */
void dRenderingFDAmap_c::postRenderingMap() {
    GXSetCopyFilter(GX_FALSE, NULL, GX_FALSE, NULL);
    GXSetTexCopySrc(0, 0, mTexWidth, mTexHeight);
    GXSetTexCopyDst(mTexWidth, mTexHeight, GX_CTF_R8, GX_FALSE);
    GXCopyTex(field_0x4, GX_TRUE);
    GXPixModeSync();
    GXSetClipMode(GX_CLIP_ENABLE);
    GXSetDither(GX_TRUE);
    dComIfGp_getCurrentGrafPort()->setup2D();
}

/* 80424684-804246A0 0513A4 001C+00 2/2 5/5 0/0 .bss             m_texObjAgg__8dMpath_n */
dMpath_n::dTexObjAggregate_c dMpath_n::m_texObjAgg;

/* Enabling the following definition will modify the following function to
 * make the map look worse for extra speed in the emulator, especially in large
 * areas such as hyrule field.
 */
// #define HYRULE_FIELD_SPEEDHACK

/* 8003D3C0-8003D68C 037D00 02CC+00 0/0 2/2 0/0 .text
 * renderingDecoration__18dRenderingFDAmap_cFPCQ211dDrawPath_c10line_class */
void dRenderingFDAmap_c::renderingDecoration(dDrawPath_c::line_class const* p_line) {
    s32 width = getDecorationLineWidth(p_line->field_0x1);
    if (width <= 0) {
        return;
    }

    setTevSettingIntensityTextureToCI();
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_INDEX16);
    GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XY, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_POS_XYZ, GX_F32, 0);
    GXSetNumTevStages(1);
    GXLoadTexObj(dMpath_n::m_texObjAgg.mp_texObj[6], GX_TEXMAP0);

    u16* data_p = p_line->mpData;
    s32 data_num = p_line->mDataNum;
    GXSetLineWidth(width, GX_TO_ONE);
    GXSetPointSize(width, GX_TO_ONE);
    GXColor lineColor = *getDecoLineColor(p_line->field_0x0 & 0x3f, p_line->field_0x1);
    GXSetTevColor(GX_TEVREG0, lineColor);
    lineColor.r = lineColor.r - 4;
    GXSetTevColor(GX_TEVREG1, lineColor);

    for (int i = 0; i < data_num; data_p++, i++) {
#ifndef HYRULE_FIELD_SPEEDHACK
        if (i < data_num - 1) {
            GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
            GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_KONST);
            GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXBegin(GX_LINESTRIP, GX_VTXFMT0, 2);
            GXPosition1x16(data_p[0]);
            GXTexCoord2f32(0, 0);
            GXPosition1x16(data_p[1]);
            GXTexCoord2f32(0, 0);
        }
        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_KONST, GX_CC_TEXC, GX_CC_C1);
        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA);
        GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
#endif
        GXBegin(GX_POINTS, GX_VTXFMT0, 1);
        GXPosition1x16(data_p[0]);
        GXTexCoord2f32(0, 0);
        GXEnd();
    }

    setTevSettingNonTextureDirectColor();
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_INDEX16);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_F32, 0);
}

/* 8003D68C-8003D6B8 037FCC 002C+00 1/0 6/0 0/0 .text getDecoLineColor__18dRenderingFDAmap_cFii */
const GXColor* dRenderingFDAmap_c::getDecoLineColor(int param_0, int param_1) {
    return getLineColor(param_0, param_1);
}

/* 8003D6B8-8003D6E4 037FF8 002C+00 1/0 6/0 0/0 .text
 * getDecorationLineWidth__18dRenderingFDAmap_cFi               */
s32 dRenderingFDAmap_c::getDecorationLineWidth(int param_0) {
    return getLineWidth(param_0);
}
