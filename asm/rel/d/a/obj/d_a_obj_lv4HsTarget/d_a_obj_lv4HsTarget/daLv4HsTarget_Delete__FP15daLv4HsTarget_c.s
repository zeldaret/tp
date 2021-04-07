lbl_80C5F950:
/* 80C5F950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F954  7C 08 02 A6 */	mflr r0
/* 80C5F958  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F95C  4B 41 8F 81 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C5F960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F964  7C 08 03 A6 */	mtlr r0
/* 80C5F968  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F96C  4E 80 00 20 */	blr 
