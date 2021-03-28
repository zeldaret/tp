lbl_809E747C:
/* 809E747C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E7480  7C 08 02 A6 */	mflr r0
/* 809E7484  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7488  4B FF D8 05 */	bl Execute__11daNpc_grS_cFv
/* 809E748C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E7490  7C 08 03 A6 */	mtlr r0
/* 809E7494  38 21 00 10 */	addi r1, r1, 0x10
/* 809E7498  4E 80 00 20 */	blr 
