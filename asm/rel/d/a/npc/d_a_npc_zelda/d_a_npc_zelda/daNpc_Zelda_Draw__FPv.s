lbl_80B76DC0:
/* 80B76DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B76DC4  7C 08 02 A6 */	mflr r0
/* 80B76DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B76DCC  4B FF EC 01 */	bl Draw__13daNpc_Zelda_cFv
/* 80B76DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B76DD4  7C 08 03 A6 */	mtlr r0
/* 80B76DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B76DDC  4E 80 00 20 */	blr 
