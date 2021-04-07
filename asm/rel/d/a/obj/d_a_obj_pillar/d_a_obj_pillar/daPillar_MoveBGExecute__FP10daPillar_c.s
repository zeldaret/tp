lbl_80CB0894:
/* 80CB0894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB0898  7C 08 02 A6 */	mflr r0
/* 80CB089C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB08A0  4B 3C 80 B1 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CB08A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB08A8  7C 08 03 A6 */	mtlr r0
/* 80CB08AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB08B0  4E 80 00 20 */	blr 
