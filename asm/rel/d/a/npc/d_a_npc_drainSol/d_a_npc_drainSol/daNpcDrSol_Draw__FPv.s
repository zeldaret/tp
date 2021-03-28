lbl_809AED80:
/* 809AED80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AED84  7C 08 02 A6 */	mflr r0
/* 809AED88  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AED8C  4B FF F8 41 */	bl Draw__12daNpcDrSol_cFv
/* 809AED90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AED94  7C 08 03 A6 */	mtlr r0
/* 809AED98  38 21 00 10 */	addi r1, r1, 0x10
/* 809AED9C  4E 80 00 20 */	blr 
