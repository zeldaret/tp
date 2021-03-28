lbl_80C836B8:
/* 80C836B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C836BC  7C 08 02 A6 */	mflr r0
/* 80C836C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C836C4  4B 3F 52 8C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C836C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C836CC  7C 08 03 A6 */	mtlr r0
/* 80C836D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C836D4  4E 80 00 20 */	blr 
