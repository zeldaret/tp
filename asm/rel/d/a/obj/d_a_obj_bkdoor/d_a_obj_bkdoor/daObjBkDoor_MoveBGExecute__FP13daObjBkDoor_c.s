lbl_8057943C:
/* 8057943C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80579440  7C 08 02 A6 */	mflr r0
/* 80579444  90 01 00 14 */	stw r0, 0x14(r1)
/* 80579448  4B AF F5 09 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 8057944C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80579450  7C 08 03 A6 */	mtlr r0
/* 80579454  38 21 00 10 */	addi r1, r1, 0x10
/* 80579458  4E 80 00 20 */	blr 
