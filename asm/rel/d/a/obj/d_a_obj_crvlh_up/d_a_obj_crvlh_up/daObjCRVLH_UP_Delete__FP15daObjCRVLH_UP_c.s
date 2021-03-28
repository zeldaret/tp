lbl_80BD4EF8:
/* 80BD4EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD4EFC  7C 08 02 A6 */	mflr r0
/* 80BD4F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4F04  4B 4A 39 D8 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BD4F08  38 60 00 01 */	li r3, 1
/* 80BD4F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4F10  7C 08 03 A6 */	mtlr r0
/* 80BD4F14  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4F18  4E 80 00 20 */	blr 
