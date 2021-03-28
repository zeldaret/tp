lbl_804E49C0:
/* 804E49C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E49C4  7C 08 02 A6 */	mflr r0
/* 804E49C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E49CC  4B FF DF 19 */	bl create__11daBdoorL1_cFv
/* 804E49D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E49D4  7C 08 03 A6 */	mtlr r0
/* 804E49D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E49DC  4E 80 00 20 */	blr 
