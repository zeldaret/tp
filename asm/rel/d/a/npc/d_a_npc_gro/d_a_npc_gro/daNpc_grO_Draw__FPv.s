lbl_809DE630:
/* 809DE630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DE634  7C 08 02 A6 */	mflr r0
/* 809DE638  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DE63C  4B FF CB 49 */	bl Draw__11daNpc_grO_cFv
/* 809DE640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DE644  7C 08 03 A6 */	mtlr r0
/* 809DE648  38 21 00 10 */	addi r1, r1, 0x10
/* 809DE64C  4E 80 00 20 */	blr 
