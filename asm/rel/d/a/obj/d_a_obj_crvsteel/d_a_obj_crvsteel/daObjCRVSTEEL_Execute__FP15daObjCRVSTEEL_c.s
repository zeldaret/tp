lbl_80BD5D98:
/* 80BD5D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD5D9C  7C 08 02 A6 */	mflr r0
/* 80BD5DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5DA4  4B 4A 2B AC */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BD5DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD5DAC  7C 08 03 A6 */	mtlr r0
/* 80BD5DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD5DB4  4E 80 00 20 */	blr 
