lbl_809DE610:
/* 809DE610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DE614  7C 08 02 A6 */	mflr r0
/* 809DE618  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DE61C  4B FF CB 49 */	bl Execute__11daNpc_grO_cFv
/* 809DE620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DE624  7C 08 03 A6 */	mtlr r0
/* 809DE628  38 21 00 10 */	addi r1, r1, 0x10
/* 809DE62C  4E 80 00 20 */	blr 
