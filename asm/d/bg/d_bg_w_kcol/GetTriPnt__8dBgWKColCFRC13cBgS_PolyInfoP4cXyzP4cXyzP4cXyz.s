lbl_8007E980:
/* 8007E980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007E984  7C 08 02 A6 */	mflr r0
/* 8007E988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007E98C  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007E990  48 00 00 15 */	bl GetTriPnt__8dBgWKColCFiP3VecP3VecP3Vec
/* 8007E994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007E998  7C 08 03 A6 */	mtlr r0
/* 8007E99C  38 21 00 10 */	addi r1, r1, 0x10
/* 8007E9A0  4E 80 00 20 */	blr 
