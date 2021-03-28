lbl_8007B404:
/* 8007B404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B408  7C 08 02 A6 */	mflr r0
/* 8007B40C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B410  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B414  3C A0 00 20 */	lis r5, 0x20
/* 8007B418  38 C0 00 15 */	li r6, 0x15
/* 8007B41C  4B FF FE F1 */	bl GetPolyInf0__4cBgWCFiUlUl
/* 8007B420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B424  7C 08 03 A6 */	mtlr r0
/* 8007B428  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B42C  4E 80 00 20 */	blr 
