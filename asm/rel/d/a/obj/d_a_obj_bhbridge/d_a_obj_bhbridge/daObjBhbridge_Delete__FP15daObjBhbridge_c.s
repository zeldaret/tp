lbl_80BB56CC:
/* 80BB56CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB56D0  7C 08 02 A6 */	mflr r0
/* 80BB56D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB56D8  4B 4C 32 05 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BB56DC  38 60 00 01 */	li r3, 1
/* 80BB56E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB56E4  7C 08 03 A6 */	mtlr r0
/* 80BB56E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB56EC  4E 80 00 20 */	blr 
