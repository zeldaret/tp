lbl_80CAC2E0:
/* 80CAC2E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAC2E4  7C 08 02 A6 */	mflr r0
/* 80CAC2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAC2EC  4B 3C C6 64 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CAC2F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAC2F4  7C 08 03 A6 */	mtlr r0
/* 80CAC2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAC2FC  4E 80 00 20 */	blr 
