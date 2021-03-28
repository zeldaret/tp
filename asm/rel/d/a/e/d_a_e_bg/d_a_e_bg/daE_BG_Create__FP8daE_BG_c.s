lbl_8068A17C:
/* 8068A17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068A180  7C 08 02 A6 */	mflr r0
/* 8068A184  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068A188  4B FF FA B1 */	bl create__8daE_BG_cFv
/* 8068A18C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068A190  7C 08 03 A6 */	mtlr r0
/* 8068A194  38 21 00 10 */	addi r1, r1, 0x10
/* 8068A198  4E 80 00 20 */	blr 
