lbl_80C8CAE4:
/* 80C8CAE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8CAE8  7C 08 02 A6 */	mflr r0
/* 80C8CAEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8CAF0  4B 3E BE 60 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C8CAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8CAF8  7C 08 03 A6 */	mtlr r0
/* 80C8CAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8CB00  4E 80 00 20 */	blr 
