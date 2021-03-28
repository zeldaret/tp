lbl_80CD85D8:
/* 80CD85D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD85DC  7C 08 02 A6 */	mflr r0
/* 80CD85E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD85E4  4B 3A 02 F8 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CD85E8  38 60 00 01 */	li r3, 1
/* 80CD85EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD85F0  7C 08 03 A6 */	mtlr r0
/* 80CD85F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD85F8  4E 80 00 20 */	blr 
