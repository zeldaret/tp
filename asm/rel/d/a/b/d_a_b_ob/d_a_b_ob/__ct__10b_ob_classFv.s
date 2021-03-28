lbl_8061A0C0:
/* 8061A0C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061A0C4  7C 08 02 A6 */	mflr r0
/* 8061A0C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061A0CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8061A0D0  4B D4 81 00 */	b _savegpr_26
/* 8061A0D4  7C 7B 1B 78 */	mr r27, r3
/* 8061A0D8  4B 9F EA 8C */	b __ct__10fopAc_ac_cFv
/* 8061A0DC  38 7B 05 C0 */	addi r3, r27, 0x5c0
/* 8061A0E0  3C 80 80 62 */	lis r4, __ct__9ob_part_sFv@ha
/* 8061A0E4  38 84 A7 2C */	addi r4, r4, __ct__9ob_part_sFv@l
/* 8061A0E8  3C A0 80 62 */	lis r5, __dt__9ob_part_sFv@ha
/* 8061A0EC  38 A5 A6 58 */	addi r5, r5, __dt__9ob_part_sFv@l
/* 8061A0F0  38 C0 01 78 */	li r6, 0x178
/* 8061A0F4  38 E0 00 14 */	li r7, 0x14
/* 8061A0F8  4B D4 7C 68 */	b __construct_array
/* 8061A0FC  38 7B 23 24 */	addi r3, r27, 0x2324
/* 8061A100  3C 80 80 62 */	lis r4, __ct__4cXyzFv@ha
/* 8061A104  38 84 A6 54 */	addi r4, r4, __ct__4cXyzFv@l
/* 8061A108  3C A0 80 61 */	lis r5, __dt__4cXyzFv@ha
/* 8061A10C  38 A5 14 08 */	addi r5, r5, __dt__4cXyzFv@l
/* 8061A110  38 C0 00 0C */	li r6, 0xc
/* 8061A114  38 E0 02 00 */	li r7, 0x200
/* 8061A118  4B D4 7C 48 */	b __construct_array
/* 8061A11C  38 7B 3B 24 */	addi r3, r27, 0x3b24
/* 8061A120  3C 80 80 62 */	lis r4, __ct__5csXyzFv@ha
/* 8061A124  38 84 A6 50 */	addi r4, r4, __ct__5csXyzFv@l
/* 8061A128  3C A0 80 61 */	lis r5, __dt__5csXyzFv@ha
/* 8061A12C  38 A5 1E F8 */	addi r5, r5, __dt__5csXyzFv@l
/* 8061A130  38 C0 00 06 */	li r6, 6
/* 8061A134  38 E0 02 00 */	li r7, 0x200
/* 8061A138  4B D4 7C 28 */	b __construct_array
/* 8061A13C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8061A140  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8061A144  90 1B 47 E4 */	stw r0, 0x47e4(r27)
/* 8061A148  38 7B 47 E8 */	addi r3, r27, 0x47e8
/* 8061A14C  4B A6 96 14 */	b __ct__10dCcD_GSttsFv
/* 8061A150  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8061A154  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8061A158  90 7B 47 E4 */	stw r3, 0x47e4(r27)
/* 8061A15C  3B 83 00 20 */	addi r28, r3, 0x20
/* 8061A160  93 9B 47 E8 */	stw r28, 0x47e8(r27)
/* 8061A164  3B 5B 48 08 */	addi r26, r27, 0x4808
/* 8061A168  7F 43 D3 78 */	mr r3, r26
/* 8061A16C  4B A6 98 BC */	b __ct__12dCcD_GObjInfFv
/* 8061A170  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8061A174  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8061A178  90 1A 01 20 */	stw r0, 0x120(r26)
/* 8061A17C  3C 60 80 62 */	lis r3, __vt__8cM3dGAab@ha
/* 8061A180  38 03 B4 94 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8061A184  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 8061A188  3C 60 80 62 */	lis r3, __vt__8cM3dGSph@ha
/* 8061A18C  38 03 B4 88 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8061A190  90 1A 01 34 */	stw r0, 0x134(r26)
/* 8061A194  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8061A198  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8061A19C  90 7A 01 20 */	stw r3, 0x120(r26)
/* 8061A1A0  3B E3 00 58 */	addi r31, r3, 0x58
/* 8061A1A4  93 FA 01 34 */	stw r31, 0x134(r26)
/* 8061A1A8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8061A1AC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8061A1B0  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 8061A1B4  3B C3 00 2C */	addi r30, r3, 0x2c
/* 8061A1B8  93 DA 01 20 */	stw r30, 0x120(r26)
/* 8061A1BC  3B A3 00 84 */	addi r29, r3, 0x84
/* 8061A1C0  93 BA 01 34 */	stw r29, 0x134(r26)
/* 8061A1C4  3B 5B 49 40 */	addi r26, r27, 0x4940
/* 8061A1C8  7F 43 D3 78 */	mr r3, r26
/* 8061A1CC  4B A6 98 5C */	b __ct__12dCcD_GObjInfFv
/* 8061A1D0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8061A1D4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8061A1D8  90 1A 01 20 */	stw r0, 0x120(r26)
/* 8061A1DC  3C 60 80 62 */	lis r3, __vt__8cM3dGAab@ha
/* 8061A1E0  38 03 B4 94 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8061A1E4  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 8061A1E8  3C 60 80 62 */	lis r3, __vt__8cM3dGSph@ha
/* 8061A1EC  38 03 B4 88 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8061A1F0  90 1A 01 34 */	stw r0, 0x134(r26)
/* 8061A1F4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8061A1F8  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 8061A1FC  90 1A 01 20 */	stw r0, 0x120(r26)
/* 8061A200  93 FA 01 34 */	stw r31, 0x134(r26)
/* 8061A204  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8061A208  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 8061A20C  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 8061A210  93 DA 01 20 */	stw r30, 0x120(r26)
/* 8061A214  93 BA 01 34 */	stw r29, 0x134(r26)
/* 8061A218  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8061A21C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8061A220  90 1B 4A B8 */	stw r0, 0x4ab8(r27)
/* 8061A224  38 7B 4A BC */	addi r3, r27, 0x4abc
/* 8061A228  4B A6 95 38 */	b __ct__10dCcD_GSttsFv
/* 8061A22C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8061A230  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 8061A234  90 1B 4A B8 */	stw r0, 0x4ab8(r27)
/* 8061A238  93 9B 4A BC */	stw r28, 0x4abc(r27)
/* 8061A23C  3B 5B 4A DC */	addi r26, r27, 0x4adc
/* 8061A240  7F 43 D3 78 */	mr r3, r26
/* 8061A244  4B A6 97 E4 */	b __ct__12dCcD_GObjInfFv
/* 8061A248  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8061A24C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8061A250  90 1A 01 20 */	stw r0, 0x120(r26)
/* 8061A254  3C 60 80 62 */	lis r3, __vt__8cM3dGAab@ha
/* 8061A258  38 03 B4 94 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8061A25C  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 8061A260  3C 60 80 62 */	lis r3, __vt__8cM3dGSph@ha
/* 8061A264  38 03 B4 88 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8061A268  90 1A 01 34 */	stw r0, 0x134(r26)
/* 8061A26C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8061A270  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 8061A274  90 1A 01 20 */	stw r0, 0x120(r26)
/* 8061A278  93 FA 01 34 */	stw r31, 0x134(r26)
/* 8061A27C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8061A280  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 8061A284  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 8061A288  93 DA 01 20 */	stw r30, 0x120(r26)
/* 8061A28C  93 BA 01 34 */	stw r29, 0x134(r26)
/* 8061A290  3B 5B 4C 14 */	addi r26, r27, 0x4c14
/* 8061A294  7F 43 D3 78 */	mr r3, r26
/* 8061A298  4B A6 97 90 */	b __ct__12dCcD_GObjInfFv
/* 8061A29C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8061A2A0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8061A2A4  90 1A 01 20 */	stw r0, 0x120(r26)
/* 8061A2A8  3C 60 80 62 */	lis r3, __vt__8cM3dGAab@ha
/* 8061A2AC  38 03 B4 94 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8061A2B0  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 8061A2B4  3C 60 80 62 */	lis r3, __vt__8cM3dGSph@ha
/* 8061A2B8  38 03 B4 88 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8061A2BC  90 1A 01 34 */	stw r0, 0x134(r26)
/* 8061A2C0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8061A2C4  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 8061A2C8  90 1A 01 20 */	stw r0, 0x120(r26)
/* 8061A2CC  93 FA 01 34 */	stw r31, 0x134(r26)
/* 8061A2D0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8061A2D4  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 8061A2D8  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 8061A2DC  93 DA 01 20 */	stw r30, 0x120(r26)
/* 8061A2E0  93 BA 01 34 */	stw r29, 0x134(r26)
/* 8061A2E4  38 7B 4D 4C */	addi r3, r27, 0x4d4c
/* 8061A2E8  4B A5 BB C4 */	b __ct__12dBgS_AcchCirFv
/* 8061A2EC  3B 5B 4D 8C */	addi r26, r27, 0x4d8c
/* 8061A2F0  7F 43 D3 78 */	mr r3, r26
/* 8061A2F4  4B A5 BD AC */	b __ct__9dBgS_AcchFv
/* 8061A2F8  3C 60 80 62 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8061A2FC  38 63 B4 64 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8061A300  90 7A 00 10 */	stw r3, 0x10(r26)
/* 8061A304  38 03 00 0C */	addi r0, r3, 0xc
/* 8061A308  90 1A 00 14 */	stw r0, 0x14(r26)
/* 8061A30C  38 03 00 18 */	addi r0, r3, 0x18
/* 8061A310  90 1A 00 24 */	stw r0, 0x24(r26)
/* 8061A314  38 7A 00 14 */	addi r3, r26, 0x14
/* 8061A318  4B A5 EB 50 */	b SetObj__16dBgS_PolyPassChkFv
/* 8061A31C  38 7B 4F 84 */	addi r3, r27, 0x4f84
/* 8061A320  3C 80 80 62 */	lis r4, __ct__7ob_ke_sFv@ha
/* 8061A324  38 84 A4 1C */	addi r4, r4, __ct__7ob_ke_sFv@l
/* 8061A328  3C A0 80 62 */	lis r5, __dt__7ob_ke_sFv@ha
/* 8061A32C  38 A5 A3 A0 */	addi r5, r5, __dt__7ob_ke_sFv@l
/* 8061A330  38 C0 01 EC */	li r6, 0x1ec
/* 8061A334  38 E0 00 05 */	li r7, 5
/* 8061A338  4B D4 7A 28 */	b __construct_array
/* 8061A33C  3C 60 80 62 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 8061A340  38 03 B4 50 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 8061A344  90 1B 59 20 */	stw r0, 0x5920(r27)
/* 8061A348  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat0_c@ha
/* 8061A34C  38 03 32 5C */	addi r0, r3, __vt__19mDoExt_3DlineMat0_c@l
/* 8061A350  90 1B 59 20 */	stw r0, 0x5920(r27)
/* 8061A354  38 7B 59 3C */	addi r3, r27, 0x593c
/* 8061A358  4B CA 6C 0C */	b __ct__15Z2CreatureEnemyFv
/* 8061A35C  38 7B 59 E0 */	addi r3, r27, 0x59e0
/* 8061A360  4B CA 82 18 */	b __ct__12Z2CreatureOIFv
/* 8061A364  38 7B 5B E4 */	addi r3, r27, 0x5be4
/* 8061A368  3C 80 80 62 */	lis r4, __ct__4cXyzFv@ha
/* 8061A36C  38 84 A6 54 */	addi r4, r4, __ct__4cXyzFv@l
/* 8061A370  3C A0 80 61 */	lis r5, __dt__4cXyzFv@ha
/* 8061A374  38 A5 14 08 */	addi r5, r5, __dt__4cXyzFv@l
/* 8061A378  38 C0 00 0C */	li r6, 0xc
/* 8061A37C  38 E0 00 0D */	li r7, 0xd
/* 8061A380  4B D4 79 E0 */	b __construct_array
/* 8061A384  7F 63 DB 78 */	mr r3, r27
/* 8061A388  39 61 00 20 */	addi r11, r1, 0x20
/* 8061A38C  4B D4 7E 90 */	b _restgpr_26
/* 8061A390  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061A394  7C 08 03 A6 */	mtlr r0
/* 8061A398  38 21 00 20 */	addi r1, r1, 0x20
/* 8061A39C  4E 80 00 20 */	blr 
