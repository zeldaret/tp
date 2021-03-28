lbl_80B6D79C:
/* 80B6D79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6D7A0  7C 08 02 A6 */	mflr r0
/* 80B6D7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6D7A8  4B FF EF 59 */	bl Delete__12daNpc_Zant_cFv
/* 80B6D7AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6D7B0  7C 08 03 A6 */	mtlr r0
/* 80B6D7B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6D7B8  4E 80 00 20 */	blr 
