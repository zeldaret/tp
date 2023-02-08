lbl_809E2F88:
/* 809E2F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E2F8C  7C 08 02 A6 */	mflr r0
/* 809E2F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E2F94  4B FF D4 69 */	bl Delete__11daNpc_grR_cFv
/* 809E2F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E2F9C  7C 08 03 A6 */	mtlr r0
/* 809E2FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 809E2FA4  4E 80 00 20 */	blr 
