lbl_80BD5BD8:
/* 80BD5BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD5BDC  7C 08 02 A6 */	mflr r0
/* 80BD5BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5BE4  4B 4A 2C F9 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BD5BE8  38 60 00 01 */	li r3, 1
/* 80BD5BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD5BF0  7C 08 03 A6 */	mtlr r0
/* 80BD5BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD5BF8  4E 80 00 20 */	blr 
