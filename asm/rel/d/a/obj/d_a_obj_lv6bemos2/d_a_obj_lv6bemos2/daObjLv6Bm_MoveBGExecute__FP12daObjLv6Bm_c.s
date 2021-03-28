lbl_80C81B1C:
/* 80C81B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C81B20  7C 08 02 A6 */	mflr r0
/* 80C81B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C81B28  4B 3F 6E 28 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C81B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C81B30  7C 08 03 A6 */	mtlr r0
/* 80C81B34  38 21 00 10 */	addi r1, r1, 0x10
/* 80C81B38  4E 80 00 20 */	blr 
