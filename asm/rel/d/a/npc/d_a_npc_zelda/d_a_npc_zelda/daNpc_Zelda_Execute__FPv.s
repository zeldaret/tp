lbl_80B76DA0:
/* 80B76DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B76DA4  7C 08 02 A6 */	mflr r0
/* 80B76DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B76DAC  4B FF EC 01 */	bl Execute__13daNpc_Zelda_cFv
/* 80B76DB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B76DB4  7C 08 03 A6 */	mtlr r0
/* 80B76DB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B76DBC  4E 80 00 20 */	blr 
