lbl_80C5E6CC:
/* 80C5E6CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E6D0  7C 08 02 A6 */	mflr r0
/* 80C5E6D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E6D8  4B 41 A2 79 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C5E6DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E6E0  7C 08 03 A6 */	mtlr r0
/* 80C5E6E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E6E8  4E 80 00 20 */	blr 
