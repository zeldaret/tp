lbl_80D00A40:
/* 80D00A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00A44  7C 08 02 A6 */	mflr r0
/* 80D00A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D00A4C  4B 37 7F 05 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D00A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D00A54  7C 08 03 A6 */	mtlr r0
/* 80D00A58  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00A5C  4E 80 00 20 */	blr 
