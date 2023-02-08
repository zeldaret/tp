lbl_8026A160:
/* 8026A160  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026A164  7C 08 02 A6 */	mflr r0
/* 8026A168  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026A16C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8026A170  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8026A174  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026A178  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026A17C  7C 7E 1B 78 */	mr r30, r3
/* 8026A180  7C 9F 23 78 */	mr r31, r4
/* 8026A184  C0 02 B7 AC */	lfs f0, lit_3205(r2)
/* 8026A188  D0 01 00 08 */	stfs f0, 8(r1)
/* 8026A18C  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8026A190  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8026A194  C0 63 00 24 */	lfs f3, 0x24(r3)
/* 8026A198  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 8026A19C  C0 A3 00 30 */	lfs f5, 0x30(r3)
/* 8026A1A0  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 8026A1A4  C0 E4 00 04 */	lfs f7, 4(r4)
/* 8026A1A8  C1 04 00 08 */	lfs f8, 8(r4)
/* 8026A1AC  4B FF FB B9 */	bl cM3d_InclusionCheckPosIn3PosBox2d__Ffffffffff
/* 8026A1B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026A1B4  40 82 00 0C */	bne lbl_8026A1C0
/* 8026A1B8  38 60 00 00 */	li r3, 0
/* 8026A1BC  48 00 01 08 */	b lbl_8026A2C4
lbl_8026A1C0:
/* 8026A1C0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8026A1C4  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8026A1C8  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 8026A1CC  C0 9E 00 28 */	lfs f4, 0x28(r30)
/* 8026A1D0  C0 BF 00 04 */	lfs f5, 4(r31)
/* 8026A1D4  C0 DF 00 08 */	lfs f6, 8(r31)
/* 8026A1D8  4B FF E6 BD */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A1DC  FF E0 08 90 */	fmr f31, f1
/* 8026A1E0  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A1E4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026A1E8  4C 40 13 82 */	cror 2, 0, 2
/* 8026A1EC  40 82 00 64 */	bne lbl_8026A250
/* 8026A1F0  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8026A1F4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8026A1F8  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 8026A1FC  C0 9E 00 34 */	lfs f4, 0x34(r30)
/* 8026A200  C0 BF 00 04 */	lfs f5, 4(r31)
/* 8026A204  C0 DF 00 08 */	lfs f6, 8(r31)
/* 8026A208  4B FF E6 8D */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A20C  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A210  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A214  4C 40 13 82 */	cror 2, 0, 2
/* 8026A218  40 82 00 38 */	bne lbl_8026A250
/* 8026A21C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8026A220  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 8026A224  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 8026A228  C0 9E 00 1C */	lfs f4, 0x1c(r30)
/* 8026A22C  C0 BF 00 04 */	lfs f5, 4(r31)
/* 8026A230  C0 DF 00 08 */	lfs f6, 8(r31)
/* 8026A234  4B FF E6 61 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A238  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A23C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A240  4C 40 13 82 */	cror 2, 0, 2
/* 8026A244  40 82 00 0C */	bne lbl_8026A250
/* 8026A248  38 60 00 01 */	li r3, 1
/* 8026A24C  48 00 00 78 */	b lbl_8026A2C4
lbl_8026A250:
/* 8026A250  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A254  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026A258  4C 41 13 82 */	cror 2, 1, 2
/* 8026A25C  40 82 00 64 */	bne lbl_8026A2C0
/* 8026A260  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8026A264  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8026A268  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 8026A26C  C0 9E 00 34 */	lfs f4, 0x34(r30)
/* 8026A270  C0 BF 00 04 */	lfs f5, 4(r31)
/* 8026A274  C0 DF 00 08 */	lfs f6, 8(r31)
/* 8026A278  4B FF E6 1D */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A27C  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A280  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A284  4C 41 13 82 */	cror 2, 1, 2
/* 8026A288  40 82 00 38 */	bne lbl_8026A2C0
/* 8026A28C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8026A290  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 8026A294  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 8026A298  C0 9E 00 1C */	lfs f4, 0x1c(r30)
/* 8026A29C  C0 BF 00 04 */	lfs f5, 4(r31)
/* 8026A2A0  C0 DF 00 08 */	lfs f6, 8(r31)
/* 8026A2A4  4B FF E5 F1 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A2A8  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A2AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A2B0  4C 41 13 82 */	cror 2, 1, 2
/* 8026A2B4  40 82 00 0C */	bne lbl_8026A2C0
/* 8026A2B8  38 60 00 01 */	li r3, 1
/* 8026A2BC  48 00 00 08 */	b lbl_8026A2C4
lbl_8026A2C0:
/* 8026A2C0  38 60 00 00 */	li r3, 0
lbl_8026A2C4:
/* 8026A2C4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8026A2C8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8026A2CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026A2D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026A2D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026A2D8  7C 08 03 A6 */	mtlr r0
/* 8026A2DC  38 21 00 30 */	addi r1, r1, 0x30
/* 8026A2E0  4E 80 00 20 */	blr 
