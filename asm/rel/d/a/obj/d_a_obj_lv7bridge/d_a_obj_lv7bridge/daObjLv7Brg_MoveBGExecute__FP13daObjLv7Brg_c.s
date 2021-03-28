lbl_80C878F4:
/* 80C878F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C878F8  7C 08 02 A6 */	mflr r0
/* 80C878FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C87900  4B 3F 10 50 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C87904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C87908  7C 08 03 A6 */	mtlr r0
/* 80C8790C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C87910  4E 80 00 20 */	blr 
