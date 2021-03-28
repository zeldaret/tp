lbl_80CF8010:
/* 80CF8010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF8014  7C 08 02 A6 */	mflr r0
/* 80CF8018  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF801C  4B 38 08 C0 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CF8020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF8024  7C 08 03 A6 */	mtlr r0
/* 80CF8028  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF802C  4E 80 00 20 */	blr 
