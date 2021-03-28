lbl_8003BAC4:
/* 8003BAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003BAC8  7C 08 02 A6 */	mflr r0
/* 8003BACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003BAD0  90 83 00 14 */	stw r4, 0x14(r3)
/* 8003BAD4  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8003BAD8  38 00 00 00 */	li r0, 0
/* 8003BADC  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8003BAE0  4B FF F8 2D */	bl loadResource__11dRes_info_cFv
/* 8003BAE4  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 8003BAE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003BAEC  7C 08 03 A6 */	mtlr r0
/* 8003BAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8003BAF4  4E 80 00 20 */	blr 
