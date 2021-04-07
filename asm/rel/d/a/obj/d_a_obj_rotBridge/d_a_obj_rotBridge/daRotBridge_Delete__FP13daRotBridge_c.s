lbl_80CBF57C:
/* 80CBF57C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBF580  7C 08 02 A6 */	mflr r0
/* 80CBF584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBF588  4B 3B 93 55 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CBF58C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBF590  7C 08 03 A6 */	mtlr r0
/* 80CBF594  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBF598  4E 80 00 20 */	blr 
