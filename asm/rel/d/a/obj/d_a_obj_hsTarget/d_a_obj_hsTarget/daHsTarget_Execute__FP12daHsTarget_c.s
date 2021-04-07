lbl_80C1F794:
/* 80C1F794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F798  7C 08 02 A6 */	mflr r0
/* 80C1F79C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F7A0  4B 45 91 B1 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C1F7A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F7A8  7C 08 03 A6 */	mtlr r0
/* 80C1F7AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F7B0  4E 80 00 20 */	blr 
