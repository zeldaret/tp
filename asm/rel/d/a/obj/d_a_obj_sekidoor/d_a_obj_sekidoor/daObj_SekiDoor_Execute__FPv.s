lbl_80CCD918:
/* 80CCD918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCD91C  7C 08 02 A6 */	mflr r0
/* 80CCD920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCD924  4B 3A B0 2C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CCD928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCD92C  7C 08 03 A6 */	mtlr r0
/* 80CCD930  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCD934  4E 80 00 20 */	blr 
