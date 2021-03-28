lbl_8007B5E0:
/* 8007B5E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B5E4  7C 08 02 A6 */	mflr r0
/* 8007B5E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B5EC  3C A0 00 80 */	lis r5, 0x80
/* 8007B5F0  4B FF FD 71 */	bl GetMaskPolyInf0_NoShift__4cBgWCFiUl
/* 8007B5F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B5F8  7C 08 03 A6 */	mtlr r0
/* 8007B5FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B600  4E 80 00 20 */	blr 
