lbl_80BAD420:
/* 80BAD420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAD424  7C 08 02 A6 */	mflr r0
/* 80BAD428  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAD42C  4B 4C B5 24 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BAD430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAD434  7C 08 03 A6 */	mtlr r0
/* 80BAD438  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAD43C  4E 80 00 20 */	blr 
