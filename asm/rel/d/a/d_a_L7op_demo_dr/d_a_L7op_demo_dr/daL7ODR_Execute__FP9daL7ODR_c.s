lbl_805AD854:
/* 805AD854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AD858  7C 08 02 A6 */	mflr r0
/* 805AD85C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AD860  4B FF FF 55 */	bl execute__9daL7ODR_cFv
/* 805AD864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AD868  7C 08 03 A6 */	mtlr r0
/* 805AD86C  38 21 00 10 */	addi r1, r1, 0x10
/* 805AD870  4E 80 00 20 */	blr 
