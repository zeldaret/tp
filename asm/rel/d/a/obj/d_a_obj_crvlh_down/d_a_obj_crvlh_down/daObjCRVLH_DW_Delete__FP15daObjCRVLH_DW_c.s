lbl_80BD4244:
/* 80BD4244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD4248  7C 08 02 A6 */	mflr r0
/* 80BD424C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4250  4B 4A 46 8C */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BD4254  38 60 00 01 */	li r3, 1
/* 80BD4258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD425C  7C 08 03 A6 */	mtlr r0
/* 80BD4260  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4264  4E 80 00 20 */	blr 
