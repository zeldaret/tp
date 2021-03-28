lbl_8007B8D8:
/* 8007B8D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B8DC  7C 08 02 A6 */	mflr r0
/* 8007B8E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B8E4  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B8E8  3C A0 00 FF */	lis r5, 0xff
/* 8007B8EC  38 C0 00 10 */	li r6, 0x10
/* 8007B8F0  4B FF FF 35 */	bl GetPolyInf2__4cBgWCFiUlUl
/* 8007B8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B8F8  7C 08 03 A6 */	mtlr r0
/* 8007B8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B900  4E 80 00 20 */	blr 
