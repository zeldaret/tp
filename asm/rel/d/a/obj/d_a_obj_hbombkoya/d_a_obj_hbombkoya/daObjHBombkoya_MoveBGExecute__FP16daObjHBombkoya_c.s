lbl_80C1C380:
/* 80C1C380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1C384  7C 08 02 A6 */	mflr r0
/* 80C1C388  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1C38C  4B 45 C5 C4 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C1C390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1C394  7C 08 03 A6 */	mtlr r0
/* 80C1C398  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1C39C  4E 80 00 20 */	blr 
