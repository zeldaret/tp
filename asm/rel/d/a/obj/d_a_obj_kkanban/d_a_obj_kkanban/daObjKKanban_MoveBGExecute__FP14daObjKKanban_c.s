lbl_80C46F00:
/* 80C46F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46F04  7C 08 02 A6 */	mflr r0
/* 80C46F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46F0C  4B 43 1A 44 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C46F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46F14  7C 08 03 A6 */	mtlr r0
/* 80C46F18  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46F1C  4E 80 00 20 */	blr 
