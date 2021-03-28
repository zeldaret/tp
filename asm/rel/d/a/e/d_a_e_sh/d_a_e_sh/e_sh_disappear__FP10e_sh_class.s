lbl_8078FA38:
/* 8078FA38  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8078FA3C  7C 08 02 A6 */	mflr r0
/* 8078FA40  90 01 00 54 */	stw r0, 0x54(r1)
/* 8078FA44  39 61 00 50 */	addi r11, r1, 0x50
/* 8078FA48  4B BD 27 88 */	b _savegpr_26
/* 8078FA4C  7C 7E 1B 78 */	mr r30, r3
/* 8078FA50  3C 80 80 79 */	lis r4, lit_3902@ha
/* 8078FA54  3B E4 1D 70 */	addi r31, r4, lit_3902@l
/* 8078FA58  38 00 00 06 */	li r0, 6
/* 8078FA5C  B0 03 06 A0 */	sth r0, 0x6a0(r3)
/* 8078FA60  A8 03 06 78 */	lha r0, 0x678(r3)
/* 8078FA64  2C 00 00 01 */	cmpwi r0, 1
/* 8078FA68  41 82 00 E4 */	beq lbl_8078FB4C
/* 8078FA6C  40 80 01 34 */	bge lbl_8078FBA0
/* 8078FA70  2C 00 00 00 */	cmpwi r0, 0
/* 8078FA74  40 80 00 08 */	bge lbl_8078FA7C
/* 8078FA78  48 00 01 28 */	b lbl_8078FBA0
lbl_8078FA7C:
/* 8078FA7C  38 80 00 0C */	li r4, 0xc
/* 8078FA80  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8078FA84  38 A0 00 00 */	li r5, 0
/* 8078FA88  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078FA8C  4B FF E9 29 */	bl anm_init__FP10e_sh_classifUcf
/* 8078FA90  38 00 00 01 */	li r0, 1
/* 8078FA94  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 8078FA98  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078FA9C  38 63 21 08 */	addi r3, r3, l_HIO@l
/* 8078FAA0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8078FAA4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8078FAA8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8078FAAC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8078FAB0  3B 40 00 00 */	li r26, 0
/* 8078FAB4  3B A0 00 00 */	li r29, 0
/* 8078FAB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8078FABC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 8078FAC0  3C 60 80 79 */	lis r3, dp_name@ha
/* 8078FAC4  3B 83 1F 08 */	addi r28, r3, dp_name@l
lbl_8078FAC8:
/* 8078FAC8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8078FACC  38 80 00 00 */	li r4, 0
/* 8078FAD0  90 81 00 08 */	stw r4, 8(r1)
/* 8078FAD4  38 00 FF FF */	li r0, -1
/* 8078FAD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8078FADC  90 81 00 10 */	stw r4, 0x10(r1)
/* 8078FAE0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8078FAE4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8078FAE8  38 80 00 00 */	li r4, 0
/* 8078FAEC  7C BC EA 2E */	lhzx r5, r28, r29
/* 8078FAF0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 8078FAF4  38 E0 00 00 */	li r7, 0
/* 8078FAF8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8078FAFC  39 21 00 24 */	addi r9, r1, 0x24
/* 8078FB00  39 40 00 FF */	li r10, 0xff
/* 8078FB04  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078FB08  4B 8B CF 88 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8078FB0C  3B 5A 00 01 */	addi r26, r26, 1
/* 8078FB10  2C 1A 00 02 */	cmpwi r26, 2
/* 8078FB14  3B BD 00 02 */	addi r29, r29, 2
/* 8078FB18  41 80 FF B0 */	blt lbl_8078FAC8
/* 8078FB1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700A4@ha */
/* 8078FB20  38 03 00 A4 */	addi r0, r3, 0x00A4 /* 0x000700A4@l */
/* 8078FB24  90 01 00 20 */	stw r0, 0x20(r1)
/* 8078FB28  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8078FB2C  38 81 00 20 */	addi r4, r1, 0x20
/* 8078FB30  38 A0 00 00 */	li r5, 0
/* 8078FB34  38 C0 FF FF */	li r6, -1
/* 8078FB38  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8078FB3C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8078FB40  7D 89 03 A6 */	mtctr r12
/* 8078FB44  4E 80 04 21 */	bctrl 
/* 8078FB48  48 00 00 58 */	b lbl_8078FBA0
lbl_8078FB4C:
/* 8078FB4C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8078FB50  38 80 00 01 */	li r4, 1
/* 8078FB54  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8078FB58  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8078FB5C  40 82 00 18 */	bne lbl_8078FB74
/* 8078FB60  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8078FB64  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8078FB68  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8078FB6C  41 82 00 08 */	beq lbl_8078FB74
/* 8078FB70  38 80 00 00 */	li r4, 0
lbl_8078FB74:
/* 8078FB74  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8078FB78  41 82 00 28 */	beq lbl_8078FBA0
/* 8078FB7C  38 00 00 00 */	li r0, 0
/* 8078FB80  B0 1E 06 76 */	sth r0, 0x676(r30)
/* 8078FB84  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 8078FB88  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8078FB8C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8078FB90  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8078FB94  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8078FB98  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8078FB9C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_8078FBA0:
/* 8078FBA0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8078FBA4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078FBA8  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 8078FBAC  4B AD FE D4 */	b cLib_addCalc0__FPfff
/* 8078FBB0  39 61 00 50 */	addi r11, r1, 0x50
/* 8078FBB4  4B BD 26 68 */	b _restgpr_26
/* 8078FBB8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8078FBBC  7C 08 03 A6 */	mtlr r0
/* 8078FBC0  38 21 00 50 */	addi r1, r1, 0x50
/* 8078FBC4  4E 80 00 20 */	blr 
