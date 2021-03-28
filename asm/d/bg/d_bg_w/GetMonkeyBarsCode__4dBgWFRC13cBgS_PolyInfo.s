lbl_8007B4B4:
/* 8007B4B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B4B8  7C 08 02 A6 */	mflr r0
/* 8007B4BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B4C0  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B4C4  3C A0 80 00 */	lis r5, 0x8000
/* 8007B4C8  38 C0 00 1F */	li r6, 0x1f
/* 8007B4CC  4B FF FE 41 */	bl GetPolyInf0__4cBgWCFiUlUl
/* 8007B4D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B4D4  7C 08 03 A6 */	mtlr r0
/* 8007B4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B4DC  4E 80 00 20 */	blr 
