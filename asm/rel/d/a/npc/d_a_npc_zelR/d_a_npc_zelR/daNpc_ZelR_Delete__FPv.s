lbl_80B70834:
/* 80B70834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B70838  7C 08 02 A6 */	mflr r0
/* 80B7083C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B70840  4B FF EE 25 */	bl Delete__12daNpc_ZelR_cFv
/* 80B70844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B70848  7C 08 03 A6 */	mtlr r0
/* 80B7084C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B70850  4E 80 00 20 */	blr 
