lbl_80C86024:
/* 80C86024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C86028  7C 08 02 A6 */	mflr r0
/* 80C8602C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C86030  4B 3F 29 21 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C86034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C86038  7C 08 03 A6 */	mtlr r0
/* 80C8603C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C86040  4E 80 00 20 */	blr 
