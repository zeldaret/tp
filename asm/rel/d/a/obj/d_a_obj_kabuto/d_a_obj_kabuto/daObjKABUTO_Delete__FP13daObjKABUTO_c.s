lbl_80C2B348:
/* 80C2B348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2B34C  7C 08 02 A6 */	mflr r0
/* 80C2B350  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2B354  48 00 20 51 */	bl Delete__13daObjKABUTO_cFv
/* 80C2B358  38 60 00 01 */	li r3, 1
/* 80C2B35C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2B360  7C 08 03 A6 */	mtlr r0
/* 80C2B364  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2B368  4E 80 00 20 */	blr 
