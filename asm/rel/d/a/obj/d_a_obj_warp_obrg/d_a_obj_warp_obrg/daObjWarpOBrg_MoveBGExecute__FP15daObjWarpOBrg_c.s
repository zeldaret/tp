lbl_80D2B788:
/* 80D2B788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2B78C  7C 08 02 A6 */	mflr r0
/* 80D2B790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2B794  4B 34 D1 BC */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D2B798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2B79C  7C 08 03 A6 */	mtlr r0
/* 80D2B7A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2B7A4  4E 80 00 20 */	blr 
