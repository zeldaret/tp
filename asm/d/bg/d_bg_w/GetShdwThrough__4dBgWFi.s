lbl_8007B604:
/* 8007B604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B608  7C 08 02 A6 */	mflr r0
/* 8007B60C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B610  3C A0 00 40 */	lis r5, 0x40
/* 8007B614  4B FF FD 4D */	bl GetMaskPolyInf0_NoShift__4cBgWCFiUl
/* 8007B618  30 03 FF FF */	addic r0, r3, -1
/* 8007B61C  7C 60 19 10 */	subfe r3, r0, r3
/* 8007B620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B624  7C 08 03 A6 */	mtlr r0
/* 8007B628  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B62C  4E 80 00 20 */	blr 
