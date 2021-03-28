lbl_80CBC290:
/* 80CBC290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC294  7C 08 02 A6 */	mflr r0
/* 80CBC298  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC29C  4B 3B C6 40 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CBC2A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC2A4  7C 08 03 A6 */	mtlr r0
/* 80CBC2A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC2AC  4E 80 00 20 */	blr 
