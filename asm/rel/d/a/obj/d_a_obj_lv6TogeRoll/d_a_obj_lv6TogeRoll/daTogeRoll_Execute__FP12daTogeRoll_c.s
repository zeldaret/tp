lbl_80C79828:
/* 80C79828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7982C  7C 08 02 A6 */	mflr r0
/* 80C79830  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C79834  4B 3F F1 1D */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C79838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7983C  7C 08 03 A6 */	mtlr r0
/* 80C79840  38 21 00 10 */	addi r1, r1, 0x10
/* 80C79844  4E 80 00 20 */	blr 
