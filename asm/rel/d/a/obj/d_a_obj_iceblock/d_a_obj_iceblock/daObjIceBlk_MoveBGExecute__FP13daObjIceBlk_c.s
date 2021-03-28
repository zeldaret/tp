lbl_80C24230:
/* 80C24230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C24234  7C 08 02 A6 */	mflr r0
/* 80C24238  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2423C  4B 45 47 14 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C24240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C24244  7C 08 03 A6 */	mtlr r0
/* 80C24248  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2424C  4E 80 00 20 */	blr 
