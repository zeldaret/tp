lbl_809AC90C:
/* 809AC90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AC910  7C 08 02 A6 */	mflr r0
/* 809AC914  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AC918  4B FF E7 71 */	bl Create__14daNpcDoorBoy_cFv
/* 809AC91C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AC920  7C 08 03 A6 */	mtlr r0
/* 809AC924  38 21 00 10 */	addi r1, r1, 0x10
/* 809AC928  4E 80 00 20 */	blr 
