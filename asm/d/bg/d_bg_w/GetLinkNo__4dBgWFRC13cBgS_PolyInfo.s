lbl_8007B6AC:
/* 8007B6AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B6B0  7C 08 02 A6 */	mflr r0
/* 8007B6B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B6B8  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B6BC  38 A0 00 FF */	li r5, 0xff
/* 8007B6C0  38 C0 00 00 */	li r6, 0
/* 8007B6C4  4B FF FF 91 */	bl GetPolyInf1__4cBgWCFiUlUl
/* 8007B6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B6CC  7C 08 03 A6 */	mtlr r0
/* 8007B6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B6D4  4E 80 00 20 */	blr 
