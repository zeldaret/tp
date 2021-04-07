lbl_80BB56A4:
/* 80BB56A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB56A8  7C 08 02 A6 */	mflr r0
/* 80BB56AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB56B0  4B 4C 32 A1 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BB56B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB56B8  7C 08 03 A6 */	mtlr r0
/* 80BB56BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB56C0  4E 80 00 20 */	blr 
