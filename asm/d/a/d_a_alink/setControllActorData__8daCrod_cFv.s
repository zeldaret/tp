lbl_80141A94:
/* 80141A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80141A98  7C 08 02 A6 */	mflr r0
/* 80141A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80141AA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80141AA4  7C 7F 1B 78 */	mr r31, r3
/* 80141AA8  38 7F 07 40 */	addi r3, r31, 0x740
/* 80141AAC  48 01 D1 9D */	bl setActor__16daPy_actorKeep_cFv
/* 80141AB0  38 7F 07 48 */	addi r3, r31, 0x748
/* 80141AB4  48 01 D1 95 */	bl setActor__16daPy_actorKeep_cFv
/* 80141AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80141ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80141AC0  7C 08 03 A6 */	mtlr r0
/* 80141AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80141AC8  4E 80 00 20 */	blr 
