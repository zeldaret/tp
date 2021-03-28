lbl_8026A488:
/* 8026A488  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026A48C  7C 08 02 A6 */	mflr r0
/* 8026A490  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026A494  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8026A498  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8026A49C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026A4A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026A4A4  7C 7E 1B 78 */	mr r30, r3
/* 8026A4A8  7C 9F 23 78 */	mr r31, r4
/* 8026A4AC  C0 02 B7 AC */	lfs f0, lit_3205(r2)
/* 8026A4B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8026A4B4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8026A4B8  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 8026A4BC  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 8026A4C0  C0 83 00 20 */	lfs f4, 0x20(r3)
/* 8026A4C4  C0 A3 00 34 */	lfs f5, 0x34(r3)
/* 8026A4C8  C0 C3 00 2C */	lfs f6, 0x2c(r3)
/* 8026A4CC  C0 E4 00 08 */	lfs f7, 8(r4)
/* 8026A4D0  C1 04 00 00 */	lfs f8, 0(r4)
/* 8026A4D4  4B FF F8 91 */	bl cM3d_InclusionCheckPosIn3PosBox2d__Ffffffffff
/* 8026A4D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026A4DC  40 82 00 0C */	bne lbl_8026A4E8
/* 8026A4E0  38 60 00 00 */	li r3, 0
/* 8026A4E4  48 00 01 08 */	b lbl_8026A5EC
lbl_8026A4E8:
/* 8026A4E8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8026A4EC  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8026A4F0  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8026A4F4  C0 9E 00 20 */	lfs f4, 0x20(r30)
/* 8026A4F8  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A4FC  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A500  4B FF E3 95 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A504  FF E0 08 90 */	fmr f31, f1
/* 8026A508  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A50C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026A510  4C 40 13 82 */	cror 2, 0, 2
/* 8026A514  40 82 00 64 */	bne lbl_8026A578
/* 8026A518  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8026A51C  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8026A520  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 8026A524  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 8026A528  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A52C  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A530  4B FF E3 65 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A534  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A538  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A53C  4C 40 13 82 */	cror 2, 0, 2
/* 8026A540  40 82 00 38 */	bne lbl_8026A578
/* 8026A544  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8026A548  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8026A54C  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8026A550  C0 9E 00 14 */	lfs f4, 0x14(r30)
/* 8026A554  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A558  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A55C  4B FF E3 39 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A560  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A564  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A568  4C 40 13 82 */	cror 2, 0, 2
/* 8026A56C  40 82 00 0C */	bne lbl_8026A578
/* 8026A570  38 60 00 01 */	li r3, 1
/* 8026A574  48 00 00 78 */	b lbl_8026A5EC
lbl_8026A578:
/* 8026A578  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A57C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026A580  4C 41 13 82 */	cror 2, 1, 2
/* 8026A584  40 82 00 64 */	bne lbl_8026A5E8
/* 8026A588  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8026A58C  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8026A590  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 8026A594  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 8026A598  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A59C  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A5A0  4B FF E2 F5 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A5A4  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A5A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A5AC  4C 41 13 82 */	cror 2, 1, 2
/* 8026A5B0  40 82 00 38 */	bne lbl_8026A5E8
/* 8026A5B4  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8026A5B8  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8026A5BC  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8026A5C0  C0 9E 00 14 */	lfs f4, 0x14(r30)
/* 8026A5C4  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A5C8  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A5CC  4B FF E2 C9 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A5D0  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A5D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A5D8  4C 41 13 82 */	cror 2, 1, 2
/* 8026A5DC  40 82 00 0C */	bne lbl_8026A5E8
/* 8026A5E0  38 60 00 01 */	li r3, 1
/* 8026A5E4  48 00 00 08 */	b lbl_8026A5EC
lbl_8026A5E8:
/* 8026A5E8  38 60 00 00 */	li r3, 0
lbl_8026A5EC:
/* 8026A5EC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8026A5F0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8026A5F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026A5F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026A5FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026A600  7C 08 03 A6 */	mtlr r0
/* 8026A604  38 21 00 30 */	addi r1, r1, 0x30
/* 8026A608  4E 80 00 20 */	blr 
