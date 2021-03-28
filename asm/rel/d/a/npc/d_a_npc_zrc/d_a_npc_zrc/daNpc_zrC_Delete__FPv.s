lbl_80B9288C:
/* 80B9288C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B92890  7C 08 02 A6 */	mflr r0
/* 80B92894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B92898  4B FF BF 99 */	bl Delete__11daNpc_zrC_cFv
/* 80B9289C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B928A0  7C 08 03 A6 */	mtlr r0
/* 80B928A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B928A8  4E 80 00 20 */	blr 
