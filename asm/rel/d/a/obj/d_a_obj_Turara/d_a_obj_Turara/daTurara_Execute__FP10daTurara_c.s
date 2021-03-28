lbl_80B9E50C:
/* 80B9E50C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9E510  7C 08 02 A6 */	mflr r0
/* 80B9E514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9E518  4B 4D A4 38 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80B9E51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9E520  7C 08 03 A6 */	mtlr r0
/* 80B9E524  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9E528  4E 80 00 20 */	blr 
