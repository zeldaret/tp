lbl_805BB16C:
/* 805BB16C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BB170  7C 08 02 A6 */	mflr r0
/* 805BB174  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BB178  39 61 00 30 */	addi r11, r1, 0x30
/* 805BB17C  4B DA 70 61 */	bl _savegpr_29
/* 805BB180  7C 7D 1B 78 */	mr r29, r3
/* 805BB184  3C 60 80 5C */	lis r3, lit_3800@ha /* 0x805C6C74@ha */
/* 805BB188  3B E3 6C 74 */	addi r31, r3, lit_3800@l /* 0x805C6C74@l */
/* 805BB18C  88 1D 07 EA */	lbz r0, 0x7ea(r29)
/* 805BB190  28 00 00 0A */	cmplwi r0, 0xa
/* 805BB194  41 82 00 14 */	beq lbl_805BB1A8
/* 805BB198  28 00 00 FF */	cmplwi r0, 0xff
/* 805BB19C  41 82 00 0C */	beq lbl_805BB1A8
/* 805BB1A0  28 00 00 FE */	cmplwi r0, 0xfe
/* 805BB1A4  40 82 00 0C */	bne lbl_805BB1B0
lbl_805BB1A8:
/* 805BB1A8  38 60 00 01 */	li r3, 1
/* 805BB1AC  48 00 02 24 */	b lbl_805BB3D0
lbl_805BB1B0:
/* 805BB1B0  28 00 00 14 */	cmplwi r0, 0x14
/* 805BB1B4  41 82 00 0C */	beq lbl_805BB1C0
/* 805BB1B8  28 00 00 15 */	cmplwi r0, 0x15
/* 805BB1BC  40 82 00 B0 */	bne lbl_805BB26C
lbl_805BB1C0:
/* 805BB1C0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805BB1C4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805BB1C8  38 80 00 00 */	li r4, 0
/* 805BB1CC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805BB1D0  38 DD 01 0C */	addi r6, r29, 0x10c
/* 805BB1D4  4B BE 85 F1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805BB1D8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805BB1DC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805BB1E0  80 9D 05 B8 */	lwz r4, 0x5b8(r29)
/* 805BB1E4  80 84 00 04 */	lwz r4, 4(r4)
/* 805BB1E8  38 BD 01 0C */	addi r5, r29, 0x10c
/* 805BB1EC  4B BE 9B B5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805BB1F0  88 1D 07 EB */	lbz r0, 0x7eb(r29)
/* 805BB1F4  28 00 00 02 */	cmplwi r0, 2
/* 805BB1F8  40 80 00 64 */	bge lbl_805BB25C
/* 805BB1FC  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 805BB200  80 63 00 04 */	lwz r3, 4(r3)
/* 805BB204  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805BB208  68 00 00 01 */	xori r0, r0, 1
/* 805BB20C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 805BB210  7C 63 00 2E */	lwzx r3, r3, r0
/* 805BB214  80 63 00 08 */	lwz r3, 8(r3)
/* 805BB218  28 03 00 00 */	cmplwi r3, 0
/* 805BB21C  41 82 00 10 */	beq lbl_805BB22C
/* 805BB220  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805BB224  60 00 00 01 */	ori r0, r0, 1
/* 805BB228  90 03 00 0C */	stw r0, 0xc(r3)
lbl_805BB22C:
/* 805BB22C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 805BB230  80 63 00 04 */	lwz r3, 4(r3)
/* 805BB234  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805BB238  88 1D 07 EB */	lbz r0, 0x7eb(r29)
/* 805BB23C  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 805BB240  7C 63 00 2E */	lwzx r3, r3, r0
/* 805BB244  80 63 00 08 */	lwz r3, 8(r3)
/* 805BB248  28 03 00 00 */	cmplwi r3, 0
/* 805BB24C  41 82 00 10 */	beq lbl_805BB25C
/* 805BB250  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805BB254  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805BB258  90 03 00 0C */	stw r0, 0xc(r3)
lbl_805BB25C:
/* 805BB25C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 805BB260  4B A5 2A 65 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 805BB264  38 60 00 01 */	li r3, 1
/* 805BB268  48 00 01 68 */	b lbl_805BB3D0
lbl_805BB26C:
/* 805BB26C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB270  83 C3 00 04 */	lwz r30, 4(r3)
/* 805BB274  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805BB278  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805BB27C  38 80 00 00 */	li r4, 0
/* 805BB280  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805BB284  38 DD 01 0C */	addi r6, r29, 0x10c
/* 805BB288  4B BE 85 3D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805BB28C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805BB290  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805BB294  80 9E 00 04 */	lwz r4, 4(r30)
/* 805BB298  38 BD 01 0C */	addi r5, r29, 0x10c
/* 805BB29C  4B BE 9B 05 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805BB2A0  88 1D 07 D1 */	lbz r0, 0x7d1(r29)
/* 805BB2A4  28 00 00 00 */	cmplwi r0, 0
/* 805BB2A8  41 82 00 68 */	beq lbl_805BB310
/* 805BB2AC  38 A0 00 01 */	li r5, 1
/* 805BB2B0  3C 60 80 5C */	lis r3, mBreakDt@ha /* 0x805C7474@ha */
/* 805BB2B4  38 63 74 74 */	addi r3, r3, mBreakDt@l /* 0x805C7474@l */
/* 805BB2B8  38 63 00 01 */	addi r3, r3, 1
/* 805BB2BC  48 00 00 40 */	b lbl_805BB2FC
lbl_805BB2C0:
/* 805BB2C0  80 9D 05 B4 */	lwz r4, 0x5b4(r29)
/* 805BB2C4  80 84 00 04 */	lwz r4, 4(r4)
/* 805BB2C8  80 84 00 04 */	lwz r4, 4(r4)
/* 805BB2CC  80 84 00 60 */	lwz r4, 0x60(r4)
/* 805BB2D0  88 03 00 00 */	lbz r0, 0(r3)
/* 805BB2D4  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 805BB2D8  7C 84 00 2E */	lwzx r4, r4, r0
/* 805BB2DC  80 84 00 08 */	lwz r4, 8(r4)
/* 805BB2E0  28 04 00 00 */	cmplwi r4, 0
/* 805BB2E4  41 82 00 10 */	beq lbl_805BB2F4
/* 805BB2E8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 805BB2EC  60 00 00 01 */	ori r0, r0, 1
/* 805BB2F0  90 04 00 0C */	stw r0, 0xc(r4)
lbl_805BB2F4:
/* 805BB2F4  38 A5 00 01 */	addi r5, r5, 1
/* 805BB2F8  38 63 00 01 */	addi r3, r3, 1
lbl_805BB2FC:
/* 805BB2FC  88 9D 07 D2 */	lbz r4, 0x7d2(r29)
/* 805BB300  38 04 00 01 */	addi r0, r4, 1
/* 805BB304  7C 05 00 00 */	cmpw r5, r0
/* 805BB308  41 80 FF B8 */	blt lbl_805BB2C0
/* 805BB30C  48 00 00 48 */	b lbl_805BB354
lbl_805BB310:
/* 805BB310  38 80 00 01 */	li r4, 1
/* 805BB314  38 00 00 03 */	li r0, 3
/* 805BB318  7C 09 03 A6 */	mtctr r0
lbl_805BB31C:
/* 805BB31C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB320  80 63 00 04 */	lwz r3, 4(r3)
/* 805BB324  80 63 00 04 */	lwz r3, 4(r3)
/* 805BB328  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805BB32C  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 805BB330  7C 63 00 2E */	lwzx r3, r3, r0
/* 805BB334  80 63 00 08 */	lwz r3, 8(r3)
/* 805BB338  28 03 00 00 */	cmplwi r3, 0
/* 805BB33C  41 82 00 10 */	beq lbl_805BB34C
/* 805BB340  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805BB344  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805BB348  90 03 00 0C */	stw r0, 0xc(r3)
lbl_805BB34C:
/* 805BB34C  38 84 00 01 */	addi r4, r4, 1
/* 805BB350  42 00 FF CC */	bdnz lbl_805BB31C
lbl_805BB354:
/* 805BB354  80 9E 00 04 */	lwz r4, 4(r30)
/* 805BB358  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 805BB35C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805BB360  38 84 00 58 */	addi r4, r4, 0x58
/* 805BB364  4B A5 24 45 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 805BB368  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB36C  4B A5 5E 55 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 805BB370  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 805BB374  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 805BB378  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 805BB37C  EC 20 18 2A */	fadds f1, f0, f3
/* 805BB380  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805BB384  D0 01 00 08 */	stfs f0, 8(r1)
/* 805BB388  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805BB38C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805BB390  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 805BB394  38 80 00 00 */	li r4, 0
/* 805BB398  7F C5 F3 78 */	mr r5, r30
/* 805BB39C  38 C1 00 08 */	addi r6, r1, 8
/* 805BB3A0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805BB3A4  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 805BB3A8  C0 9D 08 C8 */	lfs f4, 0x8c8(r29)
/* 805BB3AC  38 FD 09 20 */	addi r7, r29, 0x920
/* 805BB3B0  39 1D 01 0C */	addi r8, r29, 0x10c
/* 805BB3B4  39 20 00 00 */	li r9, 0
/* 805BB3B8  C0 BF 00 34 */	lfs f5, 0x34(r31)
/* 805BB3BC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 805BB3C0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 805BB3C4  4B A7 35 4D */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 805BB3C8  90 7D 07 1C */	stw r3, 0x71c(r29)
/* 805BB3CC  38 60 00 01 */	li r3, 1
lbl_805BB3D0:
/* 805BB3D0  39 61 00 30 */	addi r11, r1, 0x30
/* 805BB3D4  4B DA 6E 55 */	bl _restgpr_29
/* 805BB3D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BB3DC  7C 08 03 A6 */	mtlr r0
/* 805BB3E0  38 21 00 30 */	addi r1, r1, 0x30
/* 805BB3E4  4E 80 00 20 */	blr 
