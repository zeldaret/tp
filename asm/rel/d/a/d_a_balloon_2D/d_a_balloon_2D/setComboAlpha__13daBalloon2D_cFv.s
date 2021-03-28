lbl_8065464C:
/* 8065464C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80654650  7C 08 02 A6 */	mflr r0
/* 80654654  90 01 00 24 */	stw r0, 0x24(r1)
/* 80654658  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8065465C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80654660  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80654664  93 C1 00 08 */	stw r30, 8(r1)
/* 80654668  7C 7E 1B 78 */	mr r30, r3
/* 8065466C  3C 60 80 65 */	lis r3, lit_3896@ha
/* 80654670  3B E3 55 AC */	addi r31, r3, lit_3896@l
/* 80654674  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80654678  4B C0 11 B0 */	b getAlphaRate__13CPaneMgrAlphaFv
/* 8065467C  FF E0 08 90 */	fmr f31, f1
/* 80654680  80 7E 05 A4 */	lwz r3, 0x5a4(r30)
/* 80654684  4B C0 11 A4 */	b getAlphaRate__13CPaneMgrAlphaFv
/* 80654688  EC 01 07 F2 */	fmuls f0, f1, f31
/* 8065468C  D0 1E 07 3C */	stfs f0, 0x73c(r30)
/* 80654690  88 1E 07 44 */	lbz r0, 0x744(r30)
/* 80654694  28 00 00 00 */	cmplwi r0, 0
/* 80654698  41 82 00 58 */	beq lbl_806546F0
/* 8065469C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806546A0  C0 1E 07 3C */	lfs f0, 0x73c(r30)
/* 806546A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806546A8  41 82 00 68 */	beq lbl_80654710
/* 806546AC  38 7E 07 3C */	addi r3, r30, 0x73c
/* 806546B0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806546B4  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 806546B8  4B C1 B3 84 */	b cLib_addCalc2__FPffff
/* 806546BC  C0 1E 07 3C */	lfs f0, 0x73c(r30)
/* 806546C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806546C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 806546C8  FC 00 02 10 */	fabs f0, f0
/* 806546CC  FC 40 00 18 */	frsp f2, f0
/* 806546D0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806546D4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806546D8  40 80 00 08 */	bge lbl_806546E0
/* 806546DC  D0 3E 07 3C */	stfs f1, 0x73c(r30)
lbl_806546E0:
/* 806546E0  80 7E 05 A4 */	lwz r3, 0x5a4(r30)
/* 806546E4  C0 3E 07 3C */	lfs f1, 0x73c(r30)
/* 806546E8  4B C0 10 E8 */	b setAlphaRate__13CPaneMgrAlphaFf
/* 806546EC  48 00 00 24 */	b lbl_80654710
lbl_806546F0:
/* 806546F0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806546F4  C0 1E 07 3C */	lfs f0, 0x73c(r30)
/* 806546F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806546FC  41 82 00 14 */	beq lbl_80654710
/* 80654700  D0 3E 07 3C */	stfs f1, 0x73c(r30)
/* 80654704  80 7E 05 A4 */	lwz r3, 0x5a4(r30)
/* 80654708  C0 3E 07 3C */	lfs f1, 0x73c(r30)
/* 8065470C  4B C0 10 C4 */	b setAlphaRate__13CPaneMgrAlphaFf
lbl_80654710:
/* 80654710  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80654714  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80654718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8065471C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80654720  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80654724  7C 08 03 A6 */	mtlr r0
/* 80654728  38 21 00 20 */	addi r1, r1, 0x20
/* 8065472C  4E 80 00 20 */	blr 
