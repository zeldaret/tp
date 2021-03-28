lbl_8026ABD8:
/* 8026ABD8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8026ABDC  7C 08 02 A6 */	mflr r0
/* 8026ABE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8026ABE4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8026ABE8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8026ABEC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8026ABF0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8026ABF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026ABF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026ABFC  7C 7E 1B 78 */	mr r30, r3
/* 8026AC00  7C 9F 23 78 */	mr r31, r4
/* 8026AC04  FF C0 08 90 */	fmr f30, f1
/* 8026AC08  C0 03 00 08 */	lfs f0, 8(r3)
/* 8026AC0C  FC 00 02 10 */	fabs f0, f0
/* 8026AC10  FC 20 00 18 */	frsp f1, f0
/* 8026AC14  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026AC18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026AC1C  40 80 00 0C */	bge lbl_8026AC28
/* 8026AC20  38 60 00 00 */	li r3, 0
/* 8026AC24  48 00 01 30 */	b lbl_8026AD54
lbl_8026AC28:
/* 8026AC28  C0 02 B7 AC */	lfs f0, lit_3205(r2)
/* 8026AC2C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8026AC30  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8026AC34  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8026AC38  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 8026AC3C  C0 9E 00 24 */	lfs f4, 0x24(r30)
/* 8026AC40  C0 BE 00 2C */	lfs f5, 0x2c(r30)
/* 8026AC44  C0 DE 00 30 */	lfs f6, 0x30(r30)
/* 8026AC48  C0 FF 00 00 */	lfs f7, 0(r31)
/* 8026AC4C  C1 1F 00 04 */	lfs f8, 4(r31)
/* 8026AC50  4B FF F1 15 */	bl cM3d_InclusionCheckPosIn3PosBox2d__Ffffffffff
/* 8026AC54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026AC58  40 82 00 0C */	bne lbl_8026AC64
/* 8026AC5C  38 60 00 00 */	li r3, 0
/* 8026AC60  48 00 00 F4 */	b lbl_8026AD54
lbl_8026AC64:
/* 8026AC64  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8026AC68  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8026AC6C  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 8026AC70  C0 9E 00 24 */	lfs f4, 0x24(r30)
/* 8026AC74  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026AC78  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026AC7C  4B FF DC 19 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AC80  FF E0 08 90 */	fmr f31, f1
/* 8026AC84  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8026AC88  4C 40 13 82 */	cror 2, 0, 2
/* 8026AC8C  40 82 00 5C */	bne lbl_8026ACE8
/* 8026AC90  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8026AC94  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8026AC98  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 8026AC9C  C0 9E 00 30 */	lfs f4, 0x30(r30)
/* 8026ACA0  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026ACA4  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026ACA8  4B FF DB ED */	bl cM3d_VectorProduct2d__Fffffff
/* 8026ACAC  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8026ACB0  4C 40 13 82 */	cror 2, 0, 2
/* 8026ACB4  40 82 00 34 */	bne lbl_8026ACE8
/* 8026ACB8  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8026ACBC  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8026ACC0  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 8026ACC4  C0 9E 00 18 */	lfs f4, 0x18(r30)
/* 8026ACC8  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026ACCC  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026ACD0  4B FF DB C5 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026ACD4  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8026ACD8  4C 40 13 82 */	cror 2, 0, 2
/* 8026ACDC  40 82 00 0C */	bne lbl_8026ACE8
/* 8026ACE0  38 60 00 01 */	li r3, 1
/* 8026ACE4  48 00 00 70 */	b lbl_8026AD54
lbl_8026ACE8:
/* 8026ACE8  FF C0 F0 50 */	fneg f30, f30
/* 8026ACEC  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8026ACF0  4C 41 13 82 */	cror 2, 1, 2
/* 8026ACF4  40 82 00 5C */	bne lbl_8026AD50
/* 8026ACF8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8026ACFC  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8026AD00  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 8026AD04  C0 9E 00 30 */	lfs f4, 0x30(r30)
/* 8026AD08  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026AD0C  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026AD10  4B FF DB 85 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AD14  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8026AD18  4C 41 13 82 */	cror 2, 1, 2
/* 8026AD1C  40 82 00 34 */	bne lbl_8026AD50
/* 8026AD20  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8026AD24  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8026AD28  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 8026AD2C  C0 9E 00 18 */	lfs f4, 0x18(r30)
/* 8026AD30  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026AD34  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026AD38  4B FF DB 5D */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AD3C  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8026AD40  4C 41 13 82 */	cror 2, 1, 2
/* 8026AD44  40 82 00 0C */	bne lbl_8026AD50
/* 8026AD48  38 60 00 01 */	li r3, 1
/* 8026AD4C  48 00 00 08 */	b lbl_8026AD54
lbl_8026AD50:
/* 8026AD50  38 60 00 00 */	li r3, 0
lbl_8026AD54:
/* 8026AD54  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8026AD58  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8026AD5C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8026AD60  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8026AD64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026AD68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026AD6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8026AD70  7C 08 03 A6 */	mtlr r0
/* 8026AD74  38 21 00 40 */	addi r1, r1, 0x40
/* 8026AD78  4E 80 00 20 */	blr 
