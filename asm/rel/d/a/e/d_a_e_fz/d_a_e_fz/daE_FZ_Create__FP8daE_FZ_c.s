lbl_806C13D8:
/* 806C13D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C13DC  7C 08 02 A6 */	mflr r0
/* 806C13E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C13E4  4B FF F8 ED */	bl create__8daE_FZ_cFv
/* 806C13E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C13EC  7C 08 03 A6 */	mtlr r0
/* 806C13F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806C13F4  4E 80 00 20 */	blr 
