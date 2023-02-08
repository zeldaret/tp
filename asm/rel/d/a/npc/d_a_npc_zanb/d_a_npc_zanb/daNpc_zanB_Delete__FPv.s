lbl_80B6AA80:
/* 80B6AA80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6AA84  7C 08 02 A6 */	mflr r0
/* 80B6AA88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6AA8C  4B FF EC D1 */	bl Delete__12daNpc_zanB_cFv
/* 80B6AA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6AA94  7C 08 03 A6 */	mtlr r0
/* 80B6AA98  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6AA9C  4E 80 00 20 */	blr 
