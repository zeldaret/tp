lbl_80CE4BD0:
/* 80CE4BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE4BD4  7C 08 02 A6 */	mflr r0
/* 80CE4BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE4BDC  4B 39 3D 00 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CE4BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE4BE4  7C 08 03 A6 */	mtlr r0
/* 80CE4BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE4BEC  4E 80 00 20 */	blr 
