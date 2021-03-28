lbl_80BF60B8:
/* 80BF60B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF60BC  7C 08 02 A6 */	mflr r0
/* 80BF60C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF60C4  4B 48 28 8C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BF60C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF60CC  7C 08 03 A6 */	mtlr r0
/* 80BF60D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF60D4  4E 80 00 20 */	blr 
