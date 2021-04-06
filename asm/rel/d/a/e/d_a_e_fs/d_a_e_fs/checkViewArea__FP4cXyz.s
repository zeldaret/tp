lbl_806BCDDC:
/* 806BCDDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806BCDE0  7C 08 02 A6 */	mflr r0
/* 806BCDE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BCDE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806BCDEC  3C 80 80 6C */	lis r4, lit_3917@ha /* 0x806BE48C@ha */
/* 806BCDF0  3B E4 E4 8C */	addi r31, r4, lit_3917@l /* 0x806BE48C@l */
/* 806BCDF4  38 81 00 08 */	addi r4, r1, 8
/* 806BCDF8  4B 95 85 19 */	bl mDoLib_project__FP3VecP3Vec
/* 806BCDFC  38 60 00 00 */	li r3, 0
/* 806BCE00  C0 41 00 08 */	lfs f2, 8(r1)
/* 806BCE04  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806BCE08  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 806BCE0C  4C 41 13 82 */	cror 2, 1, 2
/* 806BCE10  40 82 00 38 */	bne lbl_806BCE48
/* 806BCE14  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 806BCE18  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806BCE1C  4C 40 13 82 */	cror 2, 0, 2
/* 806BCE20  40 82 00 28 */	bne lbl_806BCE48
/* 806BCE24  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 806BCE28  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 806BCE2C  4C 41 13 82 */	cror 2, 1, 2
/* 806BCE30  40 82 00 18 */	bne lbl_806BCE48
/* 806BCE34  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806BCE38  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806BCE3C  4C 40 13 82 */	cror 2, 0, 2
/* 806BCE40  40 82 00 08 */	bne lbl_806BCE48
/* 806BCE44  38 60 00 01 */	li r3, 1
lbl_806BCE48:
/* 806BCE48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806BCE4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806BCE50  7C 08 03 A6 */	mtlr r0
/* 806BCE54  38 21 00 20 */	addi r1, r1, 0x20
/* 806BCE58  4E 80 00 20 */	blr 
