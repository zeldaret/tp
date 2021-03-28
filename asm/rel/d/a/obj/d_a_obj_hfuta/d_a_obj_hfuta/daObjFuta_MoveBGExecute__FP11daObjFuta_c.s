lbl_80C1EE1C:
/* 80C1EE1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1EE20  7C 08 02 A6 */	mflr r0
/* 80C1EE24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1EE28  4B 45 9B 28 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C1EE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1EE30  7C 08 03 A6 */	mtlr r0
/* 80C1EE34  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1EE38  4E 80 00 20 */	blr 
