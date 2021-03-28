lbl_80598E6C:
/* 80598E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80598E70  7C 08 02 A6 */	mflr r0
/* 80598E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80598E78  4B AD FA D8 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80598E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80598E80  7C 08 03 A6 */	mtlr r0
/* 80598E84  38 21 00 10 */	addi r1, r1, 0x10
/* 80598E88  4E 80 00 20 */	blr 
