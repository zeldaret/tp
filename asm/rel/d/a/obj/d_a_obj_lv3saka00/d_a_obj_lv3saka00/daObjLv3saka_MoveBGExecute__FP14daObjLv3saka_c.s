lbl_80C5C370:
/* 80C5C370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C374  7C 08 02 A6 */	mflr r0
/* 80C5C378  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C37C  4B 41 C5 D4 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C5C380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C384  7C 08 03 A6 */	mtlr r0
/* 80C5C388  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C38C  4E 80 00 20 */	blr 
