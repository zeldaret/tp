lbl_80C8E550:
/* 80C8E550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8E554  7C 08 02 A6 */	mflr r0
/* 80C8E558  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8E55C  4B 3E A3 F4 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C8E560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8E564  7C 08 03 A6 */	mtlr r0
/* 80C8E568  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8E56C  4E 80 00 20 */	blr 
