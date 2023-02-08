lbl_809E2F68:
/* 809E2F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E2F6C  7C 08 02 A6 */	mflr r0
/* 809E2F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E2F74  4B FF CD 6D */	bl create__11daNpc_grR_cFv
/* 809E2F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E2F7C  7C 08 03 A6 */	mtlr r0
/* 809E2F80  38 21 00 10 */	addi r1, r1, 0x10
/* 809E2F84  4E 80 00 20 */	blr 
