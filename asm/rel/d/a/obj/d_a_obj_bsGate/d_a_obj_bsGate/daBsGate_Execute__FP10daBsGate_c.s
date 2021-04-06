lbl_80BC3094:
/* 80BC3094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC3098  7C 08 02 A6 */	mflr r0
/* 80BC309C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC30A0  4B 4B 58 B1 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BC30A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC30A8  7C 08 03 A6 */	mtlr r0
/* 80BC30AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC30B0  4E 80 00 20 */	blr 
