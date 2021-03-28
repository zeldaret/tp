lbl_8082E4C4:
/* 8082E4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082E4C8  7C 08 02 A6 */	mflr r0
/* 8082E4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082E4D0  4B FF FF 19 */	bl _delete__8daE_ZH_cFv
/* 8082E4D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082E4D8  7C 08 03 A6 */	mtlr r0
/* 8082E4DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8082E4E0  4E 80 00 20 */	blr 
