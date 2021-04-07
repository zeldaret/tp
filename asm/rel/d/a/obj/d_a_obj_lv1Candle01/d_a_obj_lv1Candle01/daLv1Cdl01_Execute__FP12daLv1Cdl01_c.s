lbl_80C5771C:
/* 80C5771C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57720  7C 08 02 A6 */	mflr r0
/* 80C57724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C57728  4B 42 12 29 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C5772C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C57730  7C 08 03 A6 */	mtlr r0
/* 80C57734  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57738  4E 80 00 20 */	blr 
