lbl_80C6D370:
/* 80C6D370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D374  7C 08 02 A6 */	mflr r0
/* 80C6D378  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D37C  4B 40 B5 D4 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C6D380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D384  7C 08 03 A6 */	mtlr r0
/* 80C6D388  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D38C  4E 80 00 20 */	blr 
