lbl_80C3434C:
/* 80C3434C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C34350  7C 08 02 A6 */	mflr r0
/* 80C34354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C34358  48 00 08 81 */	bl create__13daObjKaisou_cFv
/* 80C3435C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C34360  7C 08 03 A6 */	mtlr r0
/* 80C34364  38 21 00 10 */	addi r1, r1, 0x10
/* 80C34368  4E 80 00 20 */	blr 
