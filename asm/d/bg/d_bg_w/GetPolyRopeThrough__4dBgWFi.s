lbl_8007B5BC:
/* 8007B5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B5C0  7C 08 02 A6 */	mflr r0
/* 8007B5C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B5C8  3C A0 00 10 */	lis r5, 0x10
/* 8007B5CC  4B FF FD 95 */	bl GetMaskPolyInf0_NoShift__4cBgWCFiUl
/* 8007B5D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B5D4  7C 08 03 A6 */	mtlr r0
/* 8007B5D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B5DC  4E 80 00 20 */	blr 
