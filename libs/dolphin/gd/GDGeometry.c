#include "dolphin/gd.h"
#include "dolphin/os.h"

/* 80361104-80361700 35BA44 05FC+00 1/0 1/1 0/0 .text            GDSetVtxDescv */
void GDSetVtxDescv(GXVtxDescList* lists) {
    u32 v1 = 0;   // r31
    u32 v2 = 0;   // r30
    u32 v3 = 0;   // r29
    u32 v4 = 0;   // r28
    u32 v5 = 0;   // r27
    u32 v6 = 1;   // r26
    u32 v7 = 0;   // r25
    u32 v8 = 0;   // r24
    u32 v9 = 0;   // r23
    u32 v10 = 0;  // r22
    u32 v11 = 0;  // r21
    u32 v12 = 0;  // r20
    u32 v13 = 0;  // r19
    u32 v14 = 0;  // r18
    u32 v15 = 0;  // r17
    u32 v16 = 0;  // r16
    u32 v17 = 0;  // r15

    while (lists->attr != GX_VA_NULL) {
        switch (lists->attr) {
        case GX_VA_PNMTXIDX:
            v4 = lists->type;
            break;
        case GX_VA_TEX0MTXIDX:
            v5 = v5 & ~0x1 | lists->type;
            break;
        case GX_VA_TEX1MTXIDX:
            v5 = v5 & ~0x2 | lists->type << 1;
            break;
        case GX_VA_TEX2MTXIDX:
            v5 = v5 & ~0x4 | lists->type << 2;
            break;
        case GX_VA_TEX3MTXIDX:
            v5 = v5 & ~0x8 | lists->type << 3;
            break;
        case GX_VA_TEX4MTXIDX:
            v5 = v5 & ~0x10 | lists->type << 4;
            break;
        case GX_VA_TEX5MTXIDX:
            v5 = v5 & ~0x20 | lists->type << 5;
            break;
        case GX_VA_TEX6MTXIDX:
            v5 = v5 & ~0x40 | lists->type << 6;
            break;
        case GX_VA_TEX7MTXIDX:
            v5 = v5 & ~0x80 | lists->type << 7;
            break;

        case GX_VA_POS:
            v6 = lists->type;
            break;
        case GX_VA_NRM:
            if (lists->type != GX_NONE) {
                v1 = 1;
                v7 = lists->type;
            }
            break;
        case GX_VA_NBT:
            if (lists->type != GX_NONE) {
                v1 = 2;
                v7 = lists->type;
            }
            break;
        case GX_VA_CLR0:
            v8 = lists->type;
            v2 += (v8 != 0);
            break;
        case GX_VA_CLR1:
            v9 = lists->type;
            v2 += (v9 != 0);
            break;
        case GX_VA_TEX0:
            v10 = lists->type;
            v3 += (v10 != 0);
            break;
        case GX_VA_TEX1:
            v11 = lists->type;
            v3 += (v11 != 0);
            break;
        case GX_VA_TEX2:
            v12 = lists->type;
            v3 += (v12 != 0);
            break;
        case GX_VA_TEX3:
            v13 = lists->type;
            v3 += (v13 != 0);
            break;
        case GX_VA_TEX4:
            v14 = lists->type;
            v3 += (v14 != 0);
            break;
        case GX_VA_TEX5:
            v15 = lists->type;
            v3 += (v15 != 0);
            break;
        case GX_VA_TEX6:
            v16 = lists->type;
            v3 += (v16 != 0);
            break;
        case GX_VA_TEX7:
            v17 = lists->type;
            v3 += (v17 != 0);
            break;

        case GX_POS_MTX_ARRAY:
        case GX_NRM_MTX_ARRAY:
        case GX_TEX_MTX_ARRAY:
        case GX_LIGHT_ARRAY:
            break;
        }
        lists++;
    }

    GDWriteCPCmd(0x50, v4 | v5 << 1 | v6 << 9 | v7 << 11 | v8 << 13 | v9 << 15);
    GDWriteCPCmd(0x60, v10 | v11 << 2 | v12 << 4 | v13 << 6 | v14 << 8 | v15 << 10 | v16 << 12 |
                           v17 << 14);
    GDWriteXFCmd(0x1008, v2 | v1 << 2 | v3 << 4);
}

/* 80361700-8036190C 35C040 020C+00 0/0 1/1 0/0 .text            GDSetArray */
void GDSetArray(GXAttr attr, const void* data, u8 stride) {
    u32 v1;
    if (attr == GX_VA_NBT) {
        v1 = 1;
    } else {
        v1 = attr - 9;
    }

    GDWriteCPCmd(v1 + 0xA0, OSCachedToPhysical(data));
    GDWriteCPCmd(v1 + 0xB0, stride);
}

/* 8036190C-80361B14 35C24C 0208+00 0/0 1/1 0/0 .text            GDSetArrayRaw */
void GDSetArrayRaw(GXAttr attr, u32 data, u8 stride) {
    u32 v1;
    if (attr == GX_VA_NBT) {
        v1 = 1;
    } else {
        v1 = attr - 9;
    }

    GDWriteCPCmd(v1 + 0xA0, data);
    GDWriteCPCmd(v1 + 0xB0, stride);
}
