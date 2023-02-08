lbl_80C5C350:
/* 80C5C350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C354  7C 08 02 A6 */	mflr r0
/* 80C5C358  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C35C  4B 41 C5 81 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C5C360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C364  7C 08 03 A6 */	mtlr r0
/* 80C5C368  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C36C  4E 80 00 20 */	blr 
