lbl_80B6AAC0:
/* 80B6AAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6AAC4  7C 08 02 A6 */	mflr r0
/* 80B6AAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6AACC  4B FF EC E5 */	bl Draw__12daNpc_zanB_cFv
/* 80B6AAD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6AAD4  7C 08 03 A6 */	mtlr r0
/* 80B6AAD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6AADC  4E 80 00 20 */	blr 
