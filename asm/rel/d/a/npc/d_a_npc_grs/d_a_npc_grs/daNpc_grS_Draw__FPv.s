lbl_809E749C:
/* 809E749C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E74A0  7C 08 02 A6 */	mflr r0
/* 809E74A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E74A8  4B FF D8 05 */	bl Draw__11daNpc_grS_cFv
/* 809E74AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E74B0  7C 08 03 A6 */	mtlr r0
/* 809E74B4  38 21 00 10 */	addi r1, r1, 0x10
/* 809E74B8  4E 80 00 20 */	blr 
