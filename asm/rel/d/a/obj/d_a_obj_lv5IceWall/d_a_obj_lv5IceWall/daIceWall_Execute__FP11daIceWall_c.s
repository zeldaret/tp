lbl_80C6C4A8:
/* 80C6C4A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C4AC  7C 08 02 A6 */	mflr r0
/* 80C6C4B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C4B4  4B 40 C4 9D */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C6C4B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C4BC  7C 08 03 A6 */	mtlr r0
/* 80C6C4C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C4C4  4E 80 00 20 */	blr 
