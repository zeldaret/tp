lbl_809E0430:
/* 809E0430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E0434  7C 08 02 A6 */	mflr r0
/* 809E0438  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E043C  4B 77 1B D9 */	bl execute__8daNpcF_cFv
/* 809E0440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E0444  7C 08 03 A6 */	mtlr r0
/* 809E0448  38 21 00 10 */	addi r1, r1, 0x10
/* 809E044C  4E 80 00 20 */	blr 
