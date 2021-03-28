lbl_80D45544:
/* 80D45544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D45548  7C 08 02 A6 */	mflr r0
/* 80D4554C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D45550  4B 33 34 00 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D45554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D45558  7C 08 03 A6 */	mtlr r0
/* 80D4555C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D45560  4E 80 00 20 */	blr 
