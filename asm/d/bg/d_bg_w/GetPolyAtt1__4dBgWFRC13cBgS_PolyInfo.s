lbl_8007B734:
/* 8007B734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B738  7C 08 02 A6 */	mflr r0
/* 8007B73C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B740  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B744  3C A0 00 07 */	lis r5, 7
/* 8007B748  38 C0 00 10 */	li r6, 0x10
/* 8007B74C  4B FF FF 09 */	bl GetPolyInf1__4cBgWCFiUlUl
/* 8007B750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B754  7C 08 03 A6 */	mtlr r0
/* 8007B758  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B75C  4E 80 00 20 */	blr 
