lbl_80BD9E18:
/* 80BD9E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD9E1C  7C 08 02 A6 */	mflr r0
/* 80BD9E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD9E24  4B 49 EB 2D */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BD9E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD9E2C  7C 08 03 A6 */	mtlr r0
/* 80BD9E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD9E34  4E 80 00 20 */	blr 
