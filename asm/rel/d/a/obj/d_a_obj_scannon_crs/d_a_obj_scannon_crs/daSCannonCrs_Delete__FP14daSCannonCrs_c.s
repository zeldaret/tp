lbl_80CCAF74:
/* 80CCAF74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCAF78  7C 08 02 A6 */	mflr r0
/* 80CCAF7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCAF80  4B FF EB 91 */	bl Delete__14daSCannonCrs_cFv
/* 80CCAF84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCAF88  7C 08 03 A6 */	mtlr r0
/* 80CCAF8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCAF90  4E 80 00 20 */	blr 
