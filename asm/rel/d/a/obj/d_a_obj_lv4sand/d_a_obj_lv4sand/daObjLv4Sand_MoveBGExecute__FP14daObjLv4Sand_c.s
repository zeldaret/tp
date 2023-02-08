lbl_80C6A260:
/* 80C6A260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A264  7C 08 02 A6 */	mflr r0
/* 80C6A268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A26C  4B 40 E6 E5 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C6A270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A274  7C 08 03 A6 */	mtlr r0
/* 80C6A278  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A27C  4E 80 00 20 */	blr 
