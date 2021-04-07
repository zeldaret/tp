lbl_80D29544:
/* 80D29544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D29548  7C 08 02 A6 */	mflr r0
/* 80D2954C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D29550  4B 34 F4 01 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D29554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D29558  7C 08 03 A6 */	mtlr r0
/* 80D2955C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D29560  4E 80 00 20 */	blr 
