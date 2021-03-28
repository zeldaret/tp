lbl_8007DFC4:
/* 8007DFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007DFC8  7C 08 02 A6 */	mflr r0
/* 8007DFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007DFD0  7C 80 23 78 */	mr r0, r4
/* 8007DFD4  81 83 00 B0 */	lwz r12, 0xb0(r3)
/* 8007DFD8  28 0C 00 00 */	cmplwi r12, 0
/* 8007DFDC  41 82 00 14 */	beq lbl_8007DFF0
/* 8007DFE0  7C A4 2B 78 */	mr r4, r5
/* 8007DFE4  7C 05 03 78 */	mr r5, r0
/* 8007DFE8  7D 89 03 A6 */	mtctr r12
/* 8007DFEC  4E 80 04 21 */	bctrl 
lbl_8007DFF0:
/* 8007DFF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007DFF4  7C 08 03 A6 */	mtlr r0
/* 8007DFF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007DFFC  4E 80 00 20 */	blr 
