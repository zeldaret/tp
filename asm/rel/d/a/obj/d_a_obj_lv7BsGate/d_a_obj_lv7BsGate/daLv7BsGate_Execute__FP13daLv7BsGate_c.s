lbl_80C85104:
/* 80C85104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C85108  7C 08 02 A6 */	mflr r0
/* 80C8510C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C85110  4B 3F 38 41 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C85114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C85118  7C 08 03 A6 */	mtlr r0
/* 80C8511C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C85120  4E 80 00 20 */	blr 
