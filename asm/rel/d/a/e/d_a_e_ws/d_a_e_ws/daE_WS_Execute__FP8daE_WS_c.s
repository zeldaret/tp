lbl_807E5CB8:
/* 807E5CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E5CBC  7C 08 02 A6 */	mflr r0
/* 807E5CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E5CC4  4B FF FF 49 */	bl execute__8daE_WS_cFv
/* 807E5CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E5CCC  7C 08 03 A6 */	mtlr r0
/* 807E5CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 807E5CD4  4E 80 00 20 */	blr 
