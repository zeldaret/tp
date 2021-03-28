lbl_80CC26AC:
/* 80CC26AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC26B0  7C 08 02 A6 */	mflr r0
/* 80CC26B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC26B8  4B 3B 62 98 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CC26BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC26C0  7C 08 03 A6 */	mtlr r0
/* 80CC26C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC26C8  4E 80 00 20 */	blr 
