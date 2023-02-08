lbl_80C14848:
/* 80C14848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1484C  7C 08 02 A6 */	mflr r0
/* 80C14850  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C14854  4B 46 40 FD */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C14858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1485C  7C 08 03 A6 */	mtlr r0
/* 80C14860  38 21 00 10 */	addi r1, r1, 0x10
/* 80C14864  4E 80 00 20 */	blr 
