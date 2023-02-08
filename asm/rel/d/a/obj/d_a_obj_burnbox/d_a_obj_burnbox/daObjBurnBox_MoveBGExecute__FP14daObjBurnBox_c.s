lbl_8046EDF4:
/* 8046EDF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046EDF8  7C 08 02 A6 */	mflr r0
/* 8046EDFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046EE00  4B C0 9B 51 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 8046EE04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046EE08  7C 08 03 A6 */	mtlr r0
/* 8046EE0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8046EE10  4E 80 00 20 */	blr 
