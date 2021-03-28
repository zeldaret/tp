lbl_80C1D978:
/* 80C1D978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1D97C  7C 08 02 A6 */	mflr r0
/* 80C1D980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1D984  4B 45 AF CC */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C1D988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1D98C  7C 08 03 A6 */	mtlr r0
/* 80C1D990  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1D994  4E 80 00 20 */	blr 
