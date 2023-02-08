lbl_80C131DC:
/* 80C131DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C131E0  7C 08 02 A6 */	mflr r0
/* 80C131E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C131E8  4B 46 56 F5 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C131EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C131F0  7C 08 03 A6 */	mtlr r0
/* 80C131F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C131F8  4E 80 00 20 */	blr 
