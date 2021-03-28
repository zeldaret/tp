lbl_8007B8A8:
/* 8007B8A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B8AC  7C 08 02 A6 */	mflr r0
/* 8007B8B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B8B4  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B8B8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FF00@ha */
/* 8007B8BC  38 A5 FF 00 */	addi r5, r5, 0xFF00 /* 0x0000FF00@l */
/* 8007B8C0  38 C0 00 08 */	li r6, 8
/* 8007B8C4  4B FF FF 61 */	bl GetPolyInf2__4cBgWCFiUlUl
/* 8007B8C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B8CC  7C 08 03 A6 */	mtlr r0
/* 8007B8D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B8D4  4E 80 00 20 */	blr 
