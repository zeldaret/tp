lbl_80D02018:
/* 80D02018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0201C  7C 08 02 A6 */	mflr r0
/* 80D02020  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D02024  4B 37 69 2C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D02028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0202C  7C 08 03 A6 */	mtlr r0
/* 80D02030  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02034  4E 80 00 20 */	blr 
