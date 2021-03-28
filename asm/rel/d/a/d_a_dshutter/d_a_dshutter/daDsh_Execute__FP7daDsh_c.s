lbl_80467C0C:
/* 80467C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80467C10  7C 08 02 A6 */	mflr r0
/* 80467C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80467C18  4B C1 0D 38 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80467C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80467C20  7C 08 03 A6 */	mtlr r0
/* 80467C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80467C28  4E 80 00 20 */	blr 
