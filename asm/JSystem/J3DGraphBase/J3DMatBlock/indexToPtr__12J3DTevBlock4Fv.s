lbl_80321FEC:
/* 80321FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80321FF0  7C 08 02 A6 */	mflr r0
/* 80321FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80321FF8  80 83 00 04 */	lwz r4, 4(r3)
/* 80321FFC  4B FF C0 9D */	bl indexToPtr_private__11J3DTevBlockFUl
/* 80322000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322004  7C 08 03 A6 */	mtlr r0
/* 80322008  38 21 00 10 */	addi r1, r1, 0x10
/* 8032200C  4E 80 00 20 */	blr 
