lbl_80C72FF0:
/* 80C72FF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C72FF4  7C 08 02 A6 */	mflr r0
/* 80C72FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C72FFC  4B 40 59 55 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C73000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73004  7C 08 03 A6 */	mtlr r0
/* 80C73008  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7300C  4E 80 00 20 */	blr 
