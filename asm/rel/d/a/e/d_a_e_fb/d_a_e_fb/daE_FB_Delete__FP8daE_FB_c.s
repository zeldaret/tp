lbl_806B8658:
/* 806B8658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B865C  7C 08 02 A6 */	mflr r0
/* 806B8660  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B8664  4B FF FF 65 */	bl _delete__8daE_FB_cFv
/* 806B8668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B866C  7C 08 03 A6 */	mtlr r0
/* 806B8670  38 21 00 10 */	addi r1, r1, 0x10
/* 806B8674  4E 80 00 20 */	blr 
