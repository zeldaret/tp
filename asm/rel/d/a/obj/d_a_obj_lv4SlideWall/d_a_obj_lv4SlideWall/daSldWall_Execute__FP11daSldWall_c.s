lbl_80C6259C:
/* 80C6259C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C625A0  7C 08 02 A6 */	mflr r0
/* 80C625A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C625A8  4B 41 63 A8 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C625AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C625B0  7C 08 03 A6 */	mtlr r0
/* 80C625B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C625B8  4E 80 00 20 */	blr 
