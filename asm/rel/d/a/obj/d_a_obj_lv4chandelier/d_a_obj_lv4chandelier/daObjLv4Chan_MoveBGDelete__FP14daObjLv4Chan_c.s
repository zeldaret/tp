lbl_80C664D4:
/* 80C664D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C664D8  7C 08 02 A6 */	mflr r0
/* 80C664DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C664E0  4B 41 23 FD */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C664E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C664E8  7C 08 03 A6 */	mtlr r0
/* 80C664EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C664F0  4E 80 00 20 */	blr 
