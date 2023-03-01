#include "dolphin/gx/GXDraw.h"
#include "dolphin/gx/GX.h"

static GXVtxDescList vcd[27];
static GXVtxAttrFmtList vat[27];

void GetVertState(void) {
    GXGetVtxDescv(vcd);
    GXGetVtxAttrFmtv(GX_VTXFMT3, vat);
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxDesc(GX_VA_NRM, GX_DIRECT);
    GXSetVtxAttrFmt(GX_VTXFMT3, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT3, GX_VA_NRM, GX_NRM_XYZ, GX_F32, 0);
}

void RestoreVertState(void) {
    GXSetVtxDescv(vcd);
    GXSetVtxAttrFmtv(GX_VTXFMT3, vat);
}

// doesn't fully match debug
void GXDrawCylinder(u8 numEdges) {
    f32 temp_f29;
    f32 temp_f30;
    f32 temp_f31;

    s32 i;

    f32 sp1A0[100];
    f32 sp10[100];

    temp_f31 = 1.0f;
    temp_f30 = -temp_f31;

    GetVertState();
    for (i = 0; i <= numEdges; i++) {
        temp_f29 = (i * 2.0f * 3.141593f) / numEdges;
        sp1A0[i] = cosf(temp_f29);
        sp10[i] = sinf(temp_f29);
    }

    GXBegin(GX_TRIANGLESTRIP, GX_VTXFMT3, (numEdges + 1) * 2);
    for (i = 0; i <= numEdges; i++) {
        GXPosition3f32(sp1A0[i], sp10[i], temp_f30);
        GXNormal3f32(sp1A0[i], sp10[i], 0.0f);
        GXPosition3f32(sp1A0[i], sp10[i], temp_f31);
        GXNormal3f32(sp1A0[i], sp10[i], 0.0f);
    }
    i_GXEnd();

    GXBegin(GX_TRIANGLEFAN, GX_VTXFMT3, numEdges + 2);
    GXPosition3f32(0.0f, 0.0f, temp_f31);
    GXNormal3f32(0.0f, 0.0f, 1.0f);
    for (i = 0; i <= numEdges; i++) {
        GXPosition3f32(sp1A0[i], -sp10[i], temp_f31);
        GXNormal3f32(0.0f, 0.0f, 1.0f);
    }
    i_GXEnd();

    GXBegin(GX_TRIANGLEFAN, GX_VTXFMT3, numEdges + 2);
    GXPosition3f32(0.0f, 0.0f, temp_f30);
    GXNormal3f32(0.0f, 0.0f, -1.0f);
    for (i = 0; i <= numEdges; i++) {
        GXPosition3f32(sp1A0[i], sp10[i], temp_f30);
        GXNormal3f32(0.0f, 0.0f, -1.0f);
    }
    i_GXEnd();

    RestoreVertState();
}