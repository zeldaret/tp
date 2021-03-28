lbl_80CFCF40:
/* 80CFCF40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFCF44  7C 08 02 A6 */	mflr r0
/* 80CFCF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFCF4C  4B 37 BA 04 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CFCF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFCF54  7C 08 03 A6 */	mtlr r0
/* 80CFCF58  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFCF5C  4E 80 00 20 */	blr 
