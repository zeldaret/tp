lbl_809A2E98:
/* 809A2E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A2E9C  7C 08 02 A6 */	mflr r0
/* 809A2EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A2EA4  48 00 00 15 */	bl draw__12daNpcCoach_cFv
/* 809A2EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A2EAC  7C 08 03 A6 */	mtlr r0
/* 809A2EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 809A2EB4  4E 80 00 20 */	blr 
