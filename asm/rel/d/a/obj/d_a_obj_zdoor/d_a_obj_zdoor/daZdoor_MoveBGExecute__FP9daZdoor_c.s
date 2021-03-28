lbl_80D40188:
/* 80D40188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4018C  7C 08 02 A6 */	mflr r0
/* 80D40190  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D40194  4B 33 87 BC */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D40198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4019C  7C 08 03 A6 */	mtlr r0
/* 80D401A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D401A4  4E 80 00 20 */	blr 
