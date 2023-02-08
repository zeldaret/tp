lbl_801D7714:
/* 801D7714  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D7718  7C 08 02 A6 */	mflr r0
/* 801D771C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D7720  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801D7724  39 61 00 18 */	addi r11, r1, 0x18
/* 801D7728  48 18 AA B1 */	bl _savegpr_28
/* 801D772C  7C 7C 1B 78 */	mr r28, r3
/* 801D7730  FF E0 08 90 */	fmr f31, f1
/* 801D7734  54 9E 06 3E */	clrlwi r30, r4, 0x18
/* 801D7738  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 801D773C  41 82 00 34 */	beq lbl_801D7770
/* 801D7740  3B A0 00 00 */	li r29, 0
/* 801D7744  3B E0 00 00 */	li r31, 0
lbl_801D7748:
/* 801D7748  38 1F 00 38 */	addi r0, r31, 0x38
/* 801D774C  7C 7C 00 2E */	lwzx r3, r28, r0
/* 801D7750  28 03 00 00 */	cmplwi r3, 0
/* 801D7754  41 82 00 0C */	beq lbl_801D7760
/* 801D7758  FC 20 F8 90 */	fmr f1, f31
/* 801D775C  48 07 E0 75 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801D7760:
/* 801D7760  3B BD 00 01 */	addi r29, r29, 1
/* 801D7764  2C 1D 00 02 */	cmpwi r29, 2
/* 801D7768  3B FF 00 04 */	addi r31, r31, 4
/* 801D776C  41 80 FF DC */	blt lbl_801D7748
lbl_801D7770:
/* 801D7770  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 801D7774  41 82 00 34 */	beq lbl_801D77A8
/* 801D7778  3B A0 00 00 */	li r29, 0
/* 801D777C  3B E0 00 00 */	li r31, 0
lbl_801D7780:
/* 801D7780  38 1F 00 40 */	addi r0, r31, 0x40
/* 801D7784  7C 7C 00 2E */	lwzx r3, r28, r0
/* 801D7788  28 03 00 00 */	cmplwi r3, 0
/* 801D778C  41 82 00 0C */	beq lbl_801D7798
/* 801D7790  FC 20 F8 90 */	fmr f1, f31
/* 801D7794  48 07 E0 3D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801D7798:
/* 801D7798  3B BD 00 01 */	addi r29, r29, 1
/* 801D779C  2C 1D 00 02 */	cmpwi r29, 2
/* 801D77A0  3B FF 00 04 */	addi r31, r31, 4
/* 801D77A4  41 80 FF DC */	blt lbl_801D7780
lbl_801D77A8:
/* 801D77A8  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801D77AC  39 61 00 18 */	addi r11, r1, 0x18
/* 801D77B0  48 18 AA 75 */	bl _restgpr_28
/* 801D77B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D77B8  7C 08 03 A6 */	mtlr r0
/* 801D77BC  38 21 00 20 */	addi r1, r1, 0x20
/* 801D77C0  4E 80 00 20 */	blr 
