lbl_80CC4418:
/* 80CC4418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC441C  7C 08 02 A6 */	mflr r0
/* 80CC4420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4424  4B 3B 45 2D */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CC4428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC442C  7C 08 03 A6 */	mtlr r0
/* 80CC4430  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4434  4E 80 00 20 */	blr 
