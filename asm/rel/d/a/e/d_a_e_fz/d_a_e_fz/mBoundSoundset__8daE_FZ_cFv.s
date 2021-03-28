lbl_806BEBA0:
/* 806BEBA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806BEBA4  7C 08 02 A6 */	mflr r0
/* 806BEBA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BEBAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806BEBB0  7C 7F 1B 78 */	mr r31, r3
/* 806BEBB4  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 806BEBB8  4B CA 34 F4 */	b __cvt_fp2unsigned
/* 806BEBBC  7C 65 1B 78 */	mr r5, r3
/* 806BEBC0  28 05 00 01 */	cmplwi r5, 1
/* 806BEBC4  40 80 00 08 */	bge lbl_806BEBCC
/* 806BEBC8  38 A0 00 01 */	li r5, 1
lbl_806BEBCC:
/* 806BEBCC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070320@ha */
/* 806BEBD0  38 03 03 20 */	addi r0, r3, 0x0320 /* 0x00070320@l */
/* 806BEBD4  90 01 00 08 */	stw r0, 8(r1)
/* 806BEBD8  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 806BEBDC  38 81 00 08 */	addi r4, r1, 8
/* 806BEBE0  38 C0 FF FF */	li r6, -1
/* 806BEBE4  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 806BEBE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BEBEC  7D 89 03 A6 */	mtctr r12
/* 806BEBF0  4E 80 04 21 */	bctrl 
/* 806BEBF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806BEBF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806BEBFC  7C 08 03 A6 */	mtlr r0
/* 806BEC00  38 21 00 20 */	addi r1, r1, 0x20
/* 806BEC04  4E 80 00 20 */	blr 
