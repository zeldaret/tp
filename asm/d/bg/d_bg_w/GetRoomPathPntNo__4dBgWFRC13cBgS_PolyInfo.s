lbl_8007B904:
/* 8007B904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B908  7C 08 02 A6 */	mflr r0
/* 8007B90C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B910  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B914  3C A0 FF 00 */	lis r5, 0xff00
/* 8007B918  38 C0 00 18 */	li r6, 0x18
/* 8007B91C  4B FF FF 09 */	bl GetPolyInf2__4cBgWCFiUlUl
/* 8007B920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B924  7C 08 03 A6 */	mtlr r0
/* 8007B928  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B92C  4E 80 00 20 */	blr 
