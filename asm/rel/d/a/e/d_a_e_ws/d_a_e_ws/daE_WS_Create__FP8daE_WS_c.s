lbl_807E6DDC:
/* 807E6DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E6DE0  7C 08 02 A6 */	mflr r0
/* 807E6DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E6DE8  4B FF FA 79 */	bl create__8daE_WS_cFv
/* 807E6DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E6DF0  7C 08 03 A6 */	mtlr r0
/* 807E6DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 807E6DF8  4E 80 00 20 */	blr 
