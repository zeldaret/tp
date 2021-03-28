lbl_80CC0680:
/* 80CC0680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC0684  7C 08 02 A6 */	mflr r0
/* 80CC0688  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC068C  4B 3B 82 C4 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CC0690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC0694  7C 08 03 A6 */	mtlr r0
/* 80CC0698  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC069C  4E 80 00 20 */	blr 
