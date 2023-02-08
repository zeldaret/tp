lbl_8045C744:
/* 8045C744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045C748  7C 08 02 A6 */	mflr r0
/* 8045C74C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045C750  4B C1 C1 8D */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 8045C754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045C758  7C 08 03 A6 */	mtlr r0
/* 8045C75C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045C760  4E 80 00 20 */	blr 
