lbl_80B76D80:
/* 80B76D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B76D84  7C 08 02 A6 */	mflr r0
/* 80B76D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B76D8C  4B FF EB ED */	bl Delete__13daNpc_Zelda_cFv
/* 80B76D90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B76D94  7C 08 03 A6 */	mtlr r0
/* 80B76D98  38 21 00 10 */	addi r1, r1, 0x10
/* 80B76D9C  4E 80 00 20 */	blr 
