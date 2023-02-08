lbl_80BD0678:
/* 80BD0678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD067C  7C 08 02 A6 */	mflr r0
/* 80BD0680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD0684  4B 4A 82 59 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BD0688  38 60 00 01 */	li r3, 1
/* 80BD068C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD0690  7C 08 03 A6 */	mtlr r0
/* 80BD0694  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD0698  4E 80 00 20 */	blr 
