lbl_80C778A4:
/* 80C778A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C778A8  7C 08 02 A6 */	mflr r0
/* 80C778AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C778B0  4B 40 10 A0 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C778B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C778B8  7C 08 03 A6 */	mtlr r0
/* 80C778BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C778C0  4E 80 00 20 */	blr 
