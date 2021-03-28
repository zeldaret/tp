lbl_8007B488:
/* 8007B488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B48C  7C 08 02 A6 */	mflr r0
/* 8007B490  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B494  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B498  3C A0 30 00 */	lis r5, 0x3000
/* 8007B49C  38 C0 00 1C */	li r6, 0x1c
/* 8007B4A0  4B FF FE 6D */	bl GetPolyInf0__4cBgWCFiUlUl
/* 8007B4A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B4A8  7C 08 03 A6 */	mtlr r0
/* 8007B4AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B4B0  4E 80 00 20 */	blr 
