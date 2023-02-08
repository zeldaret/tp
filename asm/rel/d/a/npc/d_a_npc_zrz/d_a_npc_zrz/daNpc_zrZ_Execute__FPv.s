lbl_80B9A544:
/* 80B9A544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9A548  7C 08 02 A6 */	mflr r0
/* 80B9A54C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9A550  4B FF A4 D9 */	bl Execute__11daNpc_zrZ_cFv
/* 80B9A554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9A558  7C 08 03 A6 */	mtlr r0
/* 80B9A55C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9A560  4E 80 00 20 */	blr 
