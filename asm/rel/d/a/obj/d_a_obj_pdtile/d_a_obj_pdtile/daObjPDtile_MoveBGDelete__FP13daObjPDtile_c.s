lbl_80CAC2C0:
/* 80CAC2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAC2C4  7C 08 02 A6 */	mflr r0
/* 80CAC2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAC2CC  4B 3C C6 10 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CAC2D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAC2D4  7C 08 03 A6 */	mtlr r0
/* 80CAC2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAC2DC  4E 80 00 20 */	blr 
