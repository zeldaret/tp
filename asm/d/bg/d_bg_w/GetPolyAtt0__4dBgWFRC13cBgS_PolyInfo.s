lbl_8007B704:
/* 8007B704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B708  7C 08 02 A6 */	mflr r0
/* 8007B70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B710  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B714  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000F000@ha */
/* 8007B718  38 A5 F0 00 */	addi r5, r5, 0xF000 /* 0x0000F000@l */
/* 8007B71C  38 C0 00 0C */	li r6, 0xc
/* 8007B720  4B FF FF 35 */	bl GetPolyInf1__4cBgWCFiUlUl
/* 8007B724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B728  7C 08 03 A6 */	mtlr r0
/* 8007B72C  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B730  4E 80 00 20 */	blr 
