lbl_80D0C634:
/* 80D0C634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0C638  7C 08 02 A6 */	mflr r0
/* 80D0C63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0C640  4B 36 C3 10 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D0C644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0C648  7C 08 03 A6 */	mtlr r0
/* 80D0C64C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0C650  4E 80 00 20 */	blr 
