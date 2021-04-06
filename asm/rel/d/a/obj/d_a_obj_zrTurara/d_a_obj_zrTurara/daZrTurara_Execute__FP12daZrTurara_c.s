lbl_80D41414:
/* 80D41414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D41418  7C 08 02 A6 */	mflr r0
/* 80D4141C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D41420  4B 33 75 31 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D41424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D41428  7C 08 03 A6 */	mtlr r0
/* 80D4142C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41430  4E 80 00 20 */	blr 
