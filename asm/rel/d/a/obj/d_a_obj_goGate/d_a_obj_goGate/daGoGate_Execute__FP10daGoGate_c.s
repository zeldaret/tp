lbl_80BFDEDC:
/* 80BFDEDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFDEE0  7C 08 02 A6 */	mflr r0
/* 80BFDEE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFDEE8  4B 47 AA 68 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BFDEEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFDEF0  7C 08 03 A6 */	mtlr r0
/* 80BFDEF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFDEF8  4E 80 00 20 */	blr 
