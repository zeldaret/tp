lbl_80C991A8:
/* 80C991A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C991AC  7C 08 02 A6 */	mflr r0
/* 80C991B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C991B4  4B 3D F7 29 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C991B8  38 60 00 01 */	li r3, 1
/* 80C991BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C991C0  7C 08 03 A6 */	mtlr r0
/* 80C991C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C991C8  4E 80 00 20 */	blr 
