lbl_8026A944:
/* 8026A944  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8026A948  7C 08 02 A6 */	mflr r0
/* 8026A94C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8026A950  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8026A954  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8026A958  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8026A95C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8026A960  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026A964  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026A968  7C 7E 1B 78 */	mr r30, r3
/* 8026A96C  7C 9F 23 78 */	mr r31, r4
/* 8026A970  FF C0 08 90 */	fmr f30, f1
/* 8026A974  C0 03 00 04 */	lfs f0, 4(r3)
/* 8026A978  FC 00 02 10 */	fabs f0, f0
/* 8026A97C  FC 20 00 18 */	frsp f1, f0
/* 8026A980  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026A984  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A988  40 80 00 0C */	bge lbl_8026A994
/* 8026A98C  38 60 00 00 */	li r3, 0
/* 8026A990  48 00 01 30 */	b lbl_8026AAC0
lbl_8026A994:
/* 8026A994  C0 02 B7 AC */	lfs f0, lit_3205(r2)
/* 8026A998  D0 01 00 08 */	stfs f0, 8(r1)
/* 8026A99C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8026A9A0  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8026A9A4  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8026A9A8  C0 9E 00 20 */	lfs f4, 0x20(r30)
/* 8026A9AC  C0 BE 00 34 */	lfs f5, 0x34(r30)
/* 8026A9B0  C0 DE 00 2C */	lfs f6, 0x2c(r30)
/* 8026A9B4  C0 FF 00 08 */	lfs f7, 8(r31)
/* 8026A9B8  C1 1F 00 00 */	lfs f8, 0(r31)
/* 8026A9BC  4B FF F3 A9 */	bl cM3d_InclusionCheckPosIn3PosBox2d__Ffffffffff
/* 8026A9C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026A9C4  40 82 00 0C */	bne lbl_8026A9D0
/* 8026A9C8  38 60 00 00 */	li r3, 0
/* 8026A9CC  48 00 00 F4 */	b lbl_8026AAC0
lbl_8026A9D0:
/* 8026A9D0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8026A9D4  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8026A9D8  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8026A9DC  C0 9E 00 20 */	lfs f4, 0x20(r30)
/* 8026A9E0  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A9E4  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A9E8  4B FF DE AD */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A9EC  FF E0 08 90 */	fmr f31, f1
/* 8026A9F0  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8026A9F4  4C 40 13 82 */	cror 2, 0, 2
/* 8026A9F8  40 82 00 5C */	bne lbl_8026AA54
/* 8026A9FC  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8026AA00  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8026AA04  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 8026AA08  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 8026AA0C  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026AA10  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026AA14  4B FF DE 81 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AA18  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8026AA1C  4C 40 13 82 */	cror 2, 0, 2
/* 8026AA20  40 82 00 34 */	bne lbl_8026AA54
/* 8026AA24  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8026AA28  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8026AA2C  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8026AA30  C0 9E 00 14 */	lfs f4, 0x14(r30)
/* 8026AA34  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026AA38  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026AA3C  4B FF DE 59 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AA40  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8026AA44  4C 40 13 82 */	cror 2, 0, 2
/* 8026AA48  40 82 00 0C */	bne lbl_8026AA54
/* 8026AA4C  38 60 00 01 */	li r3, 1
/* 8026AA50  48 00 00 70 */	b lbl_8026AAC0
lbl_8026AA54:
/* 8026AA54  FF C0 F0 50 */	fneg f30, f30
/* 8026AA58  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8026AA5C  4C 41 13 82 */	cror 2, 1, 2
/* 8026AA60  40 82 00 5C */	bne lbl_8026AABC
/* 8026AA64  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8026AA68  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8026AA6C  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 8026AA70  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 8026AA74  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026AA78  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026AA7C  4B FF DE 19 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AA80  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8026AA84  4C 41 13 82 */	cror 2, 1, 2
/* 8026AA88  40 82 00 34 */	bne lbl_8026AABC
/* 8026AA8C  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8026AA90  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8026AA94  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8026AA98  C0 9E 00 14 */	lfs f4, 0x14(r30)
/* 8026AA9C  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026AAA0  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026AAA4  4B FF DD F1 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AAA8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8026AAAC  4C 41 13 82 */	cror 2, 1, 2
/* 8026AAB0  40 82 00 0C */	bne lbl_8026AABC
/* 8026AAB4  38 60 00 01 */	li r3, 1
/* 8026AAB8  48 00 00 08 */	b lbl_8026AAC0
lbl_8026AABC:
/* 8026AABC  38 60 00 00 */	li r3, 0
lbl_8026AAC0:
/* 8026AAC0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8026AAC4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8026AAC8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8026AACC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8026AAD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026AAD4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026AAD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8026AADC  7C 08 03 A6 */	mtlr r0
/* 8026AAE0  38 21 00 40 */	addi r1, r1, 0x40
/* 8026AAE4  4E 80 00 20 */	blr 
