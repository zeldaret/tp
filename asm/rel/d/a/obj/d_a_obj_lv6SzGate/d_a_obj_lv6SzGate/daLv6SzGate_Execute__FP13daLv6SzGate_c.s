lbl_80C76524:
/* 80C76524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C76528  7C 08 02 A6 */	mflr r0
/* 80C7652C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C76530  4B 40 24 21 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C76534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C76538  7C 08 03 A6 */	mtlr r0
/* 80C7653C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C76540  4E 80 00 20 */	blr 
