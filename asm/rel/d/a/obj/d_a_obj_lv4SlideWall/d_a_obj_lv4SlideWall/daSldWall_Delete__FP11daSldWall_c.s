lbl_80C625BC:
/* 80C625BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C625C0  7C 08 02 A6 */	mflr r0
/* 80C625C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C625C8  4B 41 63 14 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C625CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C625D0  7C 08 03 A6 */	mtlr r0
/* 80C625D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C625D8  4E 80 00 20 */	blr 
