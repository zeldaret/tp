lbl_806F8A40:
/* 806F8A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F8A44  7C 08 02 A6 */	mflr r0
/* 806F8A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F8A4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F8A50  93 C1 00 08 */	stw r30, 8(r1)
/* 806F8A54  7C 7E 1B 78 */	mr r30, r3
/* 806F8A58  3C 80 80 70 */	lis r4, lit_3788@ha /* 0x806FA3A4@ha */
/* 806F8A5C  3B E4 A3 A4 */	addi r31, r4, lit_3788@l /* 0x806FA3A4@l */
/* 806F8A60  A8 03 06 78 */	lha r0, 0x678(r3)
/* 806F8A64  2C 00 00 01 */	cmpwi r0, 1
/* 806F8A68  41 82 00 48 */	beq lbl_806F8AB0
/* 806F8A6C  40 80 00 CC */	bge lbl_806F8B38
/* 806F8A70  2C 00 00 00 */	cmpwi r0, 0
/* 806F8A74  40 80 00 08 */	bge lbl_806F8A7C
/* 806F8A78  48 00 00 C0 */	b lbl_806F8B38
lbl_806F8A7C:
/* 806F8A7C  38 80 00 09 */	li r4, 9
/* 806F8A80  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806F8A84  38 A0 00 02 */	li r5, 2
/* 806F8A88  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806F8A8C  4B FF F4 99 */	bl anm_init__FP10e_kg_classifUcf
/* 806F8A90  38 00 00 01 */	li r0, 1
/* 806F8A94  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 806F8A98  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806F8A9C  4B B6 EE F1 */	bl cM_rndFX__Ff
/* 806F8AA0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806F8AA4  EC 00 08 2A */	fadds f0, f0, f1
/* 806F8AA8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806F8AAC  48 00 00 8C */	b lbl_806F8B38
lbl_806F8AB0:
/* 806F8AB0  A8 1E 06 74 */	lha r0, 0x674(r30)
/* 806F8AB4  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 806F8AB8  40 82 00 24 */	bne lbl_806F8ADC
/* 806F8ABC  38 7E 0A 5C */	addi r3, r30, 0xa5c
/* 806F8AC0  38 9E 0A 60 */	addi r4, r30, 0xa60
/* 806F8AC4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806F8AC8  38 C0 00 00 */	li r6, 0
/* 806F8ACC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806F8AD0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806F8AD4  39 00 00 00 */	li r8, 0
/* 806F8AD8  4B 92 45 49 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_806F8ADC:
/* 806F8ADC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806F8AE0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806F8AE4  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 806F8AE8  4B B7 6F 99 */	bl cLib_addCalc0__FPfff
/* 806F8AEC  80 1E 07 10 */	lwz r0, 0x710(r30)
/* 806F8AF0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806F8AF4  41 82 00 14 */	beq lbl_806F8B08
/* 806F8AF8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806F8AFC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806F8B00  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F8B04  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_806F8B08:
/* 806F8B08  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806F8B0C  FC 00 02 10 */	fabs f0, f0
/* 806F8B10  FC 20 00 18 */	frsp f1, f0
/* 806F8B14  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 806F8B18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F8B1C  40 80 00 1C */	bge lbl_806F8B38
/* 806F8B20  38 00 00 01 */	li r0, 1
/* 806F8B24  B0 1E 06 76 */	sth r0, 0x676(r30)
/* 806F8B28  38 00 00 00 */	li r0, 0
/* 806F8B2C  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 806F8B30  38 00 00 0B */	li r0, 0xb
/* 806F8B34  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_806F8B38:
/* 806F8B38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F8B3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F8B40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F8B44  7C 08 03 A6 */	mtlr r0
/* 806F8B48  38 21 00 10 */	addi r1, r1, 0x10
/* 806F8B4C  4E 80 00 20 */	blr 
