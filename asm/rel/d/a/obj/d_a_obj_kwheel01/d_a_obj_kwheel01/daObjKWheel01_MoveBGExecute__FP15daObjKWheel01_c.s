lbl_80C4F560:
/* 80C4F560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4F564  7C 08 02 A6 */	mflr r0
/* 80C4F568  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4F56C  4B 42 93 E4 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C4F570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4F574  7C 08 03 A6 */	mtlr r0
/* 80C4F578  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4F57C  4E 80 00 20 */	blr 
