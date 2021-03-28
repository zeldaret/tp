lbl_8007B6D8:
/* 8007B6D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B6DC  7C 08 02 A6 */	mflr r0
/* 8007B6E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B6E4  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B6E8  38 A0 0F 00 */	li r5, 0xf00
/* 8007B6EC  38 C0 00 08 */	li r6, 8
/* 8007B6F0  4B FF FF 65 */	bl GetPolyInf1__4cBgWCFiUlUl
/* 8007B6F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B6F8  7C 08 03 A6 */	mtlr r0
/* 8007B6FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B700  4E 80 00 20 */	blr 
