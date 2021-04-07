lbl_805EE7B0:
/* 805EE7B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EE7B4  7C 08 02 A6 */	mflr r0
/* 805EE7B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EE7BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805EE7C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805EE7C4  7C 7E 1B 78 */	mr r30, r3
/* 805EE7C8  3C 80 80 5F */	lis r4, lit_3774@ha /* 0x805F4188@ha */
/* 805EE7CC  3B E4 41 88 */	addi r31, r4, lit_3774@l /* 0x805F4188@l */
/* 805EE7D0  A8 03 07 20 */	lha r0, 0x720(r3)
/* 805EE7D4  2C 00 00 01 */	cmpwi r0, 1
/* 805EE7D8  41 82 00 58 */	beq lbl_805EE830
/* 805EE7DC  40 80 00 70 */	bge lbl_805EE84C
/* 805EE7E0  2C 00 00 00 */	cmpwi r0, 0
/* 805EE7E4  40 80 00 08 */	bge lbl_805EE7EC
/* 805EE7E8  48 00 00 64 */	b lbl_805EE84C
lbl_805EE7EC:
/* 805EE7EC  38 80 00 1E */	li r4, 0x1e
/* 805EE7F0  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 805EE7F4  38 A0 00 02 */	li r5, 2
/* 805EE7F8  3C C0 80 5F */	lis r6, l_HIO@ha /* 0x805F47DC@ha */
/* 805EE7FC  38 C6 47 DC */	addi r6, r6, l_HIO@l /* 0x805F47DC@l */
/* 805EE800  C0 46 00 20 */	lfs f2, 0x20(r6)
/* 805EE804  4B FF F1 F9 */	bl anm_init__FP10b_gm_classifUcf
/* 805EE808  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 805EE80C  4B C7 91 49 */	bl cM_rndF__Ff
/* 805EE810  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 805EE814  EC 00 08 2A */	fadds f0, f0, f1
/* 805EE818  FC 00 00 1E */	fctiwz f0, f0
/* 805EE81C  D8 01 00 08 */	stfd f0, 8(r1)
/* 805EE820  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805EE824  B0 1E 07 22 */	sth r0, 0x722(r30)
/* 805EE828  38 00 00 01 */	li r0, 1
/* 805EE82C  B0 1E 07 20 */	sth r0, 0x720(r30)
lbl_805EE830:
/* 805EE830  A8 1E 07 22 */	lha r0, 0x722(r30)
/* 805EE834  2C 00 00 00 */	cmpwi r0, 0
/* 805EE838  40 82 00 14 */	bne lbl_805EE84C
/* 805EE83C  38 00 00 01 */	li r0, 1
/* 805EE840  B0 1E 07 1E */	sth r0, 0x71e(r30)
/* 805EE844  38 00 00 00 */	li r0, 0
/* 805EE848  B0 1E 07 20 */	sth r0, 0x720(r30)
lbl_805EE84C:
/* 805EE84C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805EE850  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805EE854  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 805EE858  4B C8 12 29 */	bl cLib_addCalc0__FPfff
/* 805EE85C  38 7E 07 88 */	addi r3, r30, 0x788
/* 805EE860  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EE864  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EE868  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805EE86C  4B A8 82 41 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805EE870  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805EE874  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805EE878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EE87C  7C 08 03 A6 */	mtlr r0
/* 805EE880  38 21 00 20 */	addi r1, r1, 0x20
/* 805EE884  4E 80 00 20 */	blr 
