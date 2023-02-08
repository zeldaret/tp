lbl_80AF1D98:
/* 80AF1D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF1D9C  7C 08 02 A6 */	mflr r0
/* 80AF1DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF1DA4  4B FF E0 DD */	bl Execute__16daNpc_SoldierA_cFv
/* 80AF1DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF1DAC  7C 08 03 A6 */	mtlr r0
/* 80AF1DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF1DB4  4E 80 00 20 */	blr 
