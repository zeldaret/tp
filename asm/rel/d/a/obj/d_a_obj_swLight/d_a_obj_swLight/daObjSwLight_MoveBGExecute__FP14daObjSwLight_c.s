lbl_80CF8030:
/* 80CF8030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF8034  7C 08 02 A6 */	mflr r0
/* 80CF8038  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF803C  4B 38 09 15 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CF8040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF8044  7C 08 03 A6 */	mtlr r0
/* 80CF8048  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF804C  4E 80 00 20 */	blr 
