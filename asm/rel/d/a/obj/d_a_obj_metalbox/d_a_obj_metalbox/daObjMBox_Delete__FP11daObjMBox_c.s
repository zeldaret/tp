lbl_80593414:
/* 80593414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593418  7C 08 02 A6 */	mflr r0
/* 8059341C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593420  4B AE 54 BD */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80593424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593428  7C 08 03 A6 */	mtlr r0
/* 8059342C  38 21 00 10 */	addi r1, r1, 0x10
/* 80593430  4E 80 00 20 */	blr 
