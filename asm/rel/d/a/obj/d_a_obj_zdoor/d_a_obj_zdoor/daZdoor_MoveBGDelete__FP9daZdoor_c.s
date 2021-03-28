lbl_80D40168:
/* 80D40168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4016C  7C 08 02 A6 */	mflr r0
/* 80D40170  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D40174  4B 33 87 68 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D40178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4017C  7C 08 03 A6 */	mtlr r0
/* 80D40180  38 21 00 10 */	addi r1, r1, 0x10
/* 80D40184  4E 80 00 20 */	blr 
