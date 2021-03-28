lbl_80C15308:
/* 80C15308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1530C  7C 08 02 A6 */	mflr r0
/* 80C15310  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C15314  4B 46 35 C8 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C15318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1531C  7C 08 03 A6 */	mtlr r0
/* 80C15320  38 21 00 10 */	addi r1, r1, 0x10
/* 80C15324  4E 80 00 20 */	blr 
