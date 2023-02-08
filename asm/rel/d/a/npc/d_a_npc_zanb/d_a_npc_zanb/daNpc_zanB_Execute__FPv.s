lbl_80B6AAA0:
/* 80B6AAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6AAA4  7C 08 02 A6 */	mflr r0
/* 80B6AAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6AAAC  4B FF EC E5 */	bl Execute__12daNpc_zanB_cFv
/* 80B6AAB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6AAB4  7C 08 03 A6 */	mtlr r0
/* 80B6AAB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6AABC  4E 80 00 20 */	blr 
