lbl_80BA2180:
/* 80BA2180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA2184  7C 08 02 A6 */	mflr r0
/* 80BA2188  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA218C  4B 4D 67 C4 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BA2190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA2194  7C 08 03 A6 */	mtlr r0
/* 80BA2198  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA219C  4E 80 00 20 */	blr 
