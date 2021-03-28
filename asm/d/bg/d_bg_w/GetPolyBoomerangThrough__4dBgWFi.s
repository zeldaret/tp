lbl_8007B598:
/* 8007B598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B59C  7C 08 02 A6 */	mflr r0
/* 8007B5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B5A4  3C A0 00 08 */	lis r5, 8
/* 8007B5A8  4B FF FD B9 */	bl GetMaskPolyInf0_NoShift__4cBgWCFiUl
/* 8007B5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B5B0  7C 08 03 A6 */	mtlr r0
/* 8007B5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B5B8  4E 80 00 20 */	blr 
