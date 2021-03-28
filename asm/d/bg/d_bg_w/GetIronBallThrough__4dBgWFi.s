lbl_8007B7DC:
/* 8007B7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B7E0  7C 08 02 A6 */	mflr r0
/* 8007B7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B7E8  3C A0 01 00 */	lis r5, 0x100
/* 8007B7EC  4B FF FF A1 */	bl GetMaskPolyInf1_NoShift__4cBgWCFiUl
/* 8007B7F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B7F4  7C 08 03 A6 */	mtlr r0
/* 8007B7F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B7FC  4E 80 00 20 */	blr 
