lbl_80C99180:
/* 80C99180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C99184  7C 08 02 A6 */	mflr r0
/* 80C99188  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9918C  4B 3D F7 C5 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C99190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C99194  7C 08 03 A6 */	mtlr r0
/* 80C99198  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9919C  4E 80 00 20 */	blr 
