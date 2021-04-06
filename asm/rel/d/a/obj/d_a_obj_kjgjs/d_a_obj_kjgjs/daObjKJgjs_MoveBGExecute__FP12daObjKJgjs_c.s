lbl_80C46480:
/* 80C46480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46484  7C 08 02 A6 */	mflr r0
/* 80C46488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4648C  4B 43 24 C5 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C46490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46494  7C 08 03 A6 */	mtlr r0
/* 80C46498  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4649C  4E 80 00 20 */	blr 
