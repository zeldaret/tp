lbl_80C73BB0:
/* 80C73BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73BB4  7C 08 02 A6 */	mflr r0
/* 80C73BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73BBC  4B 40 4D 95 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C73BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73BC4  7C 08 03 A6 */	mtlr r0
/* 80C73BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73BCC  4E 80 00 20 */	blr 
