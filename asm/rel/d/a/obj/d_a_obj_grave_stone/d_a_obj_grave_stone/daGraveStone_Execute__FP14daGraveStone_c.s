lbl_80C131B4:
/* 80C131B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C131B8  7C 08 02 A6 */	mflr r0
/* 80C131BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C131C0  4B 46 57 90 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C131C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C131C8  7C 08 03 A6 */	mtlr r0
/* 80C131CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C131D0  4E 80 00 20 */	blr 
