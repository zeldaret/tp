lbl_80A01D88:
/* 80A01D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A01D8C  7C 08 02 A6 */	mflr r0
/* 80A01D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A01D94  4B 74 67 99 */	bl execute__8daNpcT_cFv
/* 80A01D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A01D9C  7C 08 03 A6 */	mtlr r0
/* 80A01DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A01DA4  4E 80 00 20 */	blr 
