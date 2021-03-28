lbl_80C24210:
/* 80C24210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C24214  7C 08 02 A6 */	mflr r0
/* 80C24218  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2421C  4B 45 46 C0 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C24220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C24224  7C 08 03 A6 */	mtlr r0
/* 80C24228  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2422C  4E 80 00 20 */	blr 
