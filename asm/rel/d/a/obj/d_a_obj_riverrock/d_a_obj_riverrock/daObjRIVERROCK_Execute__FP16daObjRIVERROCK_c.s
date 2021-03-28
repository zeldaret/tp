lbl_80CBD328:
/* 80CBD328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBD32C  7C 08 02 A6 */	mflr r0
/* 80CBD330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBD334  4B 3B B6 1C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CBD338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBD33C  7C 08 03 A6 */	mtlr r0
/* 80CBD340  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBD344  4E 80 00 20 */	blr 
