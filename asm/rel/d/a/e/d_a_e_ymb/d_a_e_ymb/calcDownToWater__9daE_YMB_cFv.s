lbl_8081CD00:
/* 8081CD00  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8081CD04  7C 08 02 A6 */	mflr r0
/* 8081CD08  90 01 00 54 */	stw r0, 0x54(r1)
/* 8081CD0C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8081CD10  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8081CD14  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8081CD18  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8081CD1C  7C 7F 1B 78 */	mr r31, r3
/* 8081CD20  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 8081CD24  3B C3 18 AC */	addi r30, r3, lit_3791@l /* 0x808218AC@l */
/* 8081CD28  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8081CD2C  38 80 00 01 */	li r4, 1
/* 8081CD30  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8081CD34  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8081CD38  40 82 00 18 */	bne lbl_8081CD50
/* 8081CD3C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081CD40  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8081CD44  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8081CD48  41 82 00 08 */	beq lbl_8081CD50
/* 8081CD4C  38 80 00 00 */	li r4, 0
lbl_8081CD50:
/* 8081CD50  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8081CD54  41 82 00 1C */	beq lbl_8081CD70
/* 8081CD58  7F E3 FB 78 */	mr r3, r31
/* 8081CD5C  38 80 00 10 */	li r4, 0x10
/* 8081CD60  38 A0 00 02 */	li r5, 2
/* 8081CD64  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8081CD68  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081CD6C  4B FF 9C 11 */	bl setBck__9daE_YMB_cFiUcff
lbl_8081CD70:
/* 8081CD70  38 7F 06 EA */	addi r3, r31, 0x6ea
/* 8081CD74  38 80 88 00 */	li r4, -30720
/* 8081CD78  38 A0 00 08 */	li r5, 8
/* 8081CD7C  38 C0 10 00 */	li r6, 0x1000
/* 8081CD80  38 E0 00 10 */	li r7, 0x10
/* 8081CD84  4B A5 37 BD */	bl cLib_addCalcAngleS__FPsssss
/* 8081CD88  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 8081CD8C  2C 00 00 00 */	cmpwi r0, 0
/* 8081CD90  41 82 00 68 */	beq lbl_8081CDF8
/* 8081CD94  88 1F 07 11 */	lbz r0, 0x711(r31)
/* 8081CD98  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8081CD9C  3C 60 80 82 */	lis r3, data_80821F38@ha /* 0x80821F38@ha */
/* 8081CDA0  38 03 1F 38 */	addi r0, r3, data_80821F38@l /* 0x80821F38@l */
/* 8081CDA4  7C 60 22 14 */	add r3, r0, r4
/* 8081CDA8  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8081CDAC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8081CDB0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8081CDB4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081CDB8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8081CDBC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8081CDC0  C0 43 00 08 */	lfs f2, 8(r3)
/* 8081CDC4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8081CDC8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8081CDCC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8081CDD0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8081CDD4  38 61 00 08 */	addi r3, r1, 8
/* 8081CDD8  38 81 00 14 */	addi r4, r1, 0x14
/* 8081CDDC  4B B2 A5 C1 */	bl PSVECSquareDistance
/* 8081CDE0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081CDE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081CDE8  40 81 00 08 */	ble lbl_8081CDF0
/* 8081CDEC  48 00 00 0C */	b lbl_8081CDF8
lbl_8081CDF0:
/* 8081CDF0  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8081CDF4  FC 01 00 40 */	fcmpo cr0, f1, f0
lbl_8081CDF8:
/* 8081CDF8  C3 FF 04 D4 */	lfs f31, 0x4d4(r31)
/* 8081CDFC  88 1F 07 11 */	lbz r0, 0x711(r31)
/* 8081CE00  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8081CE04  3C 60 80 82 */	lis r3, data_80821F38@ha /* 0x80821F38@ha */
/* 8081CE08  38 03 1F 38 */	addi r0, r3, data_80821F38@l /* 0x80821F38@l */
/* 8081CE0C  7C 60 22 14 */	add r3, r0, r4
/* 8081CE10  C0 03 00 00 */	lfs f0, 0(r3)
/* 8081CE14  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8081CE18  C0 03 00 04 */	lfs f0, 4(r3)
/* 8081CE1C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8081CE20  C0 03 00 08 */	lfs f0, 8(r3)
/* 8081CE24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8081CE28  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8081CE2C  38 81 00 20 */	addi r4, r1, 0x20
/* 8081CE30  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8081CE34  4B A5 3B 5D */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 8081CE38  D3 FF 04 D4 */	stfs f31, 0x4d4(r31)
/* 8081CE3C  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 8081CE40  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 8081CE44  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 8081CE48  4B A5 38 F9 */	bl cLib_chaseF__FPfff
/* 8081CE4C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8081CE50  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8081CE54  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8081CE58  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8081CE5C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8081CE60  7C 08 03 A6 */	mtlr r0
/* 8081CE64  38 21 00 50 */	addi r1, r1, 0x50
/* 8081CE68  4E 80 00 20 */	blr 
