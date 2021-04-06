lbl_80C5F930:
/* 80C5F930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F934  7C 08 02 A6 */	mflr r0
/* 80C5F938  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F93C  4B 41 90 15 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C5F940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F944  7C 08 03 A6 */	mtlr r0
/* 80C5F948  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F94C  4E 80 00 20 */	blr 
