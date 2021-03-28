lbl_80C49C38:
/* 80C49C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C49C3C  7C 08 02 A6 */	mflr r0
/* 80C49C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C49C44  4B 42 ED 0C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C49C48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C49C4C  7C 08 03 A6 */	mtlr r0
/* 80C49C50  38 21 00 10 */	addi r1, r1, 0x10
/* 80C49C54  4E 80 00 20 */	blr 
