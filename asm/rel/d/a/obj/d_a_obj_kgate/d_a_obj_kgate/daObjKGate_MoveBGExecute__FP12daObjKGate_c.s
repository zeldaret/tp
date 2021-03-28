lbl_8058AA78:
/* 8058AA78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AA7C  7C 08 02 A6 */	mflr r0
/* 8058AA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AA84  4B AE DE CC */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 8058AA88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AA8C  7C 08 03 A6 */	mtlr r0
/* 8058AA90  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AA94  4E 80 00 20 */	blr 
