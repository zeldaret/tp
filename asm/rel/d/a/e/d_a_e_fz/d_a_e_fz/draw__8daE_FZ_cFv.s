lbl_806BE9D4:
/* 806BE9D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806BE9D8  7C 08 02 A6 */	mflr r0
/* 806BE9DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806BE9E0  39 61 00 30 */	addi r11, r1, 0x30
/* 806BE9E4  4B CA 37 F9 */	bl _savegpr_29
/* 806BE9E8  7C 7D 1B 78 */	mr r29, r3
/* 806BE9EC  3C 60 80 6C */	lis r3, lit_3803@ha /* 0x806C1938@ha */
/* 806BE9F0  3B E3 19 38 */	addi r31, r3, lit_3803@l /* 0x806C1938@l */
/* 806BE9F4  88 1D 07 14 */	lbz r0, 0x714(r29)
/* 806BE9F8  28 00 00 02 */	cmplwi r0, 2
/* 806BE9FC  40 82 00 20 */	bne lbl_806BEA1C
/* 806BEA00  38 60 00 42 */	li r3, 0x42
/* 806BEA04  38 80 00 01 */	li r4, 1
/* 806BEA08  4B 9D 94 D9 */	bl checkItemGet__FUci
/* 806BEA0C  2C 03 00 00 */	cmpwi r3, 0
/* 806BEA10  40 82 00 0C */	bne lbl_806BEA1C
/* 806BEA14  38 60 00 01 */	li r3, 1
/* 806BEA18  48 00 00 A8 */	b lbl_806BEAC0
lbl_806BEA1C:
/* 806BEA1C  83 DD 05 B4 */	lwz r30, 0x5b4(r29)
/* 806BEA20  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806BEA24  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806BEA28  38 80 00 00 */	li r4, 0
/* 806BEA2C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806BEA30  38 DD 01 0C */	addi r6, r29, 0x10c
/* 806BEA34  4B AE 4D 91 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806BEA38  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806BEA3C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806BEA40  80 9D 05 B4 */	lwz r4, 0x5b4(r29)
/* 806BEA44  80 84 00 04 */	lwz r4, 4(r4)
/* 806BEA48  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806BEA4C  4B AE 63 55 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806BEA50  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806BEA54  4B 94 F2 71 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 806BEA58  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806BEA5C  4B 97 2E F1 */	bl entry__10daMirror_cFP8J3DModel
/* 806BEA60  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806BEA64  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806BEA68  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 806BEA6C  EC 20 18 2A */	fadds f1, f0, f3
/* 806BEA70  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806BEA74  D0 01 00 08 */	stfs f0, 8(r1)
/* 806BEA78  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806BEA7C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806BEA80  80 7D 07 0C */	lwz r3, 0x70c(r29)
/* 806BEA84  38 80 00 01 */	li r4, 1
/* 806BEA88  7F C5 F3 78 */	mr r5, r30
/* 806BEA8C  38 C1 00 08 */	addi r6, r1, 8
/* 806BEA90  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806BEA94  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806BEA98  C0 9D 08 04 */	lfs f4, 0x804(r29)
/* 806BEA9C  38 FD 08 5C */	addi r7, r29, 0x85c
/* 806BEAA0  39 1D 01 0C */	addi r8, r29, 0x10c
/* 806BEAA4  39 20 00 00 */	li r9, 0
/* 806BEAA8  C0 BF 00 08 */	lfs f5, 8(r31)
/* 806BEAAC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 806BEAB0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 806BEAB4  4B 96 FE 5D */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806BEAB8  90 7D 07 0C */	stw r3, 0x70c(r29)
/* 806BEABC  38 60 00 01 */	li r3, 1
lbl_806BEAC0:
/* 806BEAC0  39 61 00 30 */	addi r11, r1, 0x30
/* 806BEAC4  4B CA 37 65 */	bl _restgpr_29
/* 806BEAC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806BEACC  7C 08 03 A6 */	mtlr r0
/* 806BEAD0  38 21 00 30 */	addi r1, r1, 0x30
/* 806BEAD4  4E 80 00 20 */	blr 
