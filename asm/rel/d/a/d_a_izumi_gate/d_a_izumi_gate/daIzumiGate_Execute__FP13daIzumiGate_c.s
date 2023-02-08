lbl_80849138:
/* 80849138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084913C  7C 08 02 A6 */	mflr r0
/* 80849140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80849144  4B 82 F8 0D */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80849148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084914C  7C 08 03 A6 */	mtlr r0
/* 80849150  38 21 00 10 */	addi r1, r1, 0x10
/* 80849154  4E 80 00 20 */	blr 
