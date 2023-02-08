lbl_80C674F4:
/* 80C674F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C674F8  7C 08 02 A6 */	mflr r0
/* 80C674FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67500  4B 41 14 51 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C67504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67508  7C 08 03 A6 */	mtlr r0
/* 80C6750C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67510  4E 80 00 20 */	blr 
