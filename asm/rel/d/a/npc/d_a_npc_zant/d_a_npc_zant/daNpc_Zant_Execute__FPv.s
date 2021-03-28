lbl_80B6D7BC:
/* 80B6D7BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6D7C0  7C 08 02 A6 */	mflr r0
/* 80B6D7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6D7C8  4B FF EF 6D */	bl Execute__12daNpc_Zant_cFv
/* 80B6D7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6D7D0  7C 08 03 A6 */	mtlr r0
/* 80B6D7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6D7D8  4E 80 00 20 */	blr 
