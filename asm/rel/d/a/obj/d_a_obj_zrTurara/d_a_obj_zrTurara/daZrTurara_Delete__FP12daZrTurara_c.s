lbl_80D41434:
/* 80D41434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D41438  7C 08 02 A6 */	mflr r0
/* 80D4143C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D41440  4B 33 74 9D */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D41444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D41448  7C 08 03 A6 */	mtlr r0
/* 80D4144C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41450  4E 80 00 20 */	blr 
