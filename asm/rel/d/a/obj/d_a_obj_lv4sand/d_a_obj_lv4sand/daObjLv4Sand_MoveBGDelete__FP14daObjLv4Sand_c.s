lbl_80C6A240:
/* 80C6A240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A244  7C 08 02 A6 */	mflr r0
/* 80C6A248  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A24C  4B 40 E6 91 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C6A250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A254  7C 08 03 A6 */	mtlr r0
/* 80C6A258  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A25C  4E 80 00 20 */	blr 
