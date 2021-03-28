lbl_80598E8C:
/* 80598E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80598E90  7C 08 02 A6 */	mflr r0
/* 80598E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80598E98  4B AD FA 44 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80598E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80598EA0  7C 08 03 A6 */	mtlr r0
/* 80598EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80598EA8  4E 80 00 20 */	blr 
