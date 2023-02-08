lbl_806F6A38:
/* 806F6A38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806F6A3C  7C 08 02 A6 */	mflr r0
/* 806F6A40  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F6A44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806F6A48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806F6A4C  7C 7E 1B 78 */	mr r30, r3
/* 806F6A50  3C 80 80 6F */	lis r4, lit_3648@ha /* 0x806F7B6C@ha */
/* 806F6A54  3B E4 7B 6C */	addi r31, r4, lit_3648@l /* 0x806F7B6C@l */
/* 806F6A58  38 00 00 05 */	li r0, 5
/* 806F6A5C  B0 03 06 B8 */	sth r0, 0x6b8(r3)
/* 806F6A60  B0 03 06 BA */	sth r0, 0x6ba(r3)
/* 806F6A64  A8 03 06 94 */	lha r0, 0x694(r3)
/* 806F6A68  2C 00 00 01 */	cmpwi r0, 1
/* 806F6A6C  41 82 00 60 */	beq lbl_806F6ACC
/* 806F6A70  40 80 00 D0 */	bge lbl_806F6B40
/* 806F6A74  2C 00 00 00 */	cmpwi r0, 0
/* 806F6A78  40 80 00 08 */	bge lbl_806F6A80
/* 806F6A7C  48 00 00 C4 */	b lbl_806F6B40
lbl_806F6A80:
/* 806F6A80  88 1E 06 BC */	lbz r0, 0x6bc(r30)
/* 806F6A84  7C 00 07 75 */	extsb. r0, r0
/* 806F6A88  41 82 00 1C */	beq lbl_806F6AA4
/* 806F6A8C  38 80 00 08 */	li r4, 8
/* 806F6A90  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806F6A94  38 A0 00 00 */	li r5, 0
/* 806F6A98  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F6A9C  4B FF EF F9 */	bl anm_init__FP10e_is_classifUcf
/* 806F6AA0  48 00 00 18 */	b lbl_806F6AB8
lbl_806F6AA4:
/* 806F6AA4  38 80 00 07 */	li r4, 7
/* 806F6AA8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806F6AAC  38 A0 00 00 */	li r5, 0
/* 806F6AB0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F6AB4  4B FF EF E1 */	bl anm_init__FP10e_is_classifUcf
lbl_806F6AB8:
/* 806F6AB8  38 00 00 01 */	li r0, 1
/* 806F6ABC  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 806F6AC0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 806F6AC4  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 806F6AC8  D0 1E 06 84 */	stfs f0, 0x684(r30)
lbl_806F6ACC:
/* 806F6ACC  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 806F6AD0  38 80 00 01 */	li r4, 1
/* 806F6AD4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F6AD8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F6ADC  40 82 00 18 */	bne lbl_806F6AF4
/* 806F6AE0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806F6AE4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F6AE8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806F6AEC  41 82 00 08 */	beq lbl_806F6AF4
/* 806F6AF0  38 80 00 00 */	li r4, 0
lbl_806F6AF4:
/* 806F6AF4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F6AF8  41 82 00 48 */	beq lbl_806F6B40
/* 806F6AFC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806F6B00  D0 01 00 08 */	stfs f0, 8(r1)
/* 806F6B04  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806F6B08  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806F6B0C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806F6B10  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806F6B14  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806F6B18  EC 01 00 2A */	fadds f0, f1, f0
/* 806F6B1C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806F6B20  7F C3 F3 78 */	mr r3, r30
/* 806F6B24  38 81 00 08 */	addi r4, r1, 8
/* 806F6B28  38 A0 00 14 */	li r5, 0x14
/* 806F6B2C  38 C0 00 00 */	li r6, 0
/* 806F6B30  88 FE 05 64 */	lbz r7, 0x564(r30)
/* 806F6B34  4B 92 5F A5 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806F6B38  7F C3 F3 78 */	mr r3, r30
/* 806F6B3C  4B 92 31 41 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_806F6B40:
/* 806F6B40  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806F6B44  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806F6B48  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 806F6B4C  4B B7 8F 35 */	bl cLib_addCalc0__FPfff
/* 806F6B50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806F6B54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806F6B58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F6B5C  7C 08 03 A6 */	mtlr r0
/* 806F6B60  38 21 00 20 */	addi r1, r1, 0x20
/* 806F6B64  4E 80 00 20 */	blr 
