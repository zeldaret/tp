lbl_80C60718:
/* 80C60718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6071C  7C 08 02 A6 */	mflr r0
/* 80C60720  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C60724  4B 41 81 B9 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C60728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6072C  7C 08 03 A6 */	mtlr r0
/* 80C60730  38 21 00 10 */	addi r1, r1, 0x10
/* 80C60734  4E 80 00 20 */	blr 
