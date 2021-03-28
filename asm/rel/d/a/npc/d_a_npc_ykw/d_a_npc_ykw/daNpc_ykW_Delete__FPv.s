lbl_80B66794:
/* 80B66794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B66798  7C 08 02 A6 */	mflr r0
/* 80B6679C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B667A0  4B FF 8F E5 */	bl Delete__11daNpc_ykW_cFv
/* 80B667A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B667A8  7C 08 03 A6 */	mtlr r0
/* 80B667AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B667B0  4E 80 00 20 */	blr 
