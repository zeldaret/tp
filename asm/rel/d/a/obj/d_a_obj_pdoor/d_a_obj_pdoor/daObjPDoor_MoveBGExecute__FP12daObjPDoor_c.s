lbl_80CAAACC:
/* 80CAAACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAAAD0  7C 08 02 A6 */	mflr r0
/* 80CAAAD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAAAD8  4B 3C DE 79 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CAAADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAAAE0  7C 08 03 A6 */	mtlr r0
/* 80CAAAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAAAE8  4E 80 00 20 */	blr 
