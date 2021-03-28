lbl_80CDCB84:
/* 80CDCB84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDCB88  7C 08 02 A6 */	mflr r0
/* 80CDCB8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDCB90  4B 39 BD C0 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CDCB94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDCB98  7C 08 03 A6 */	mtlr r0
/* 80CDCB9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDCBA0  4E 80 00 20 */	blr 
