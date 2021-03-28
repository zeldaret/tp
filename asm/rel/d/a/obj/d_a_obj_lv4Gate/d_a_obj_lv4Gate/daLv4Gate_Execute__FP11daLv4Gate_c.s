lbl_80C5F2E8:
/* 80C5F2E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F2EC  7C 08 02 A6 */	mflr r0
/* 80C5F2F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F2F4  4B 41 96 5C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C5F2F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F2FC  7C 08 03 A6 */	mtlr r0
/* 80C5F300  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F304  4E 80 00 20 */	blr 
