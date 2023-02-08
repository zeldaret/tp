lbl_8057941C:
/* 8057941C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80579420  7C 08 02 A6 */	mflr r0
/* 80579424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80579428  4B AF F4 B5 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 8057942C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80579430  7C 08 03 A6 */	mtlr r0
/* 80579434  38 21 00 10 */	addi r1, r1, 0x10
/* 80579438  4E 80 00 20 */	blr 
