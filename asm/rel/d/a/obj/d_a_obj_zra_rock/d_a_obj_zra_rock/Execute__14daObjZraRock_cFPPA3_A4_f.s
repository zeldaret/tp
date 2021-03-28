lbl_80D4531C:
/* 80D4531C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D45320  7C 08 02 A6 */	mflr r0
/* 80D45324  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D45328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4532C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D45330  7C 7E 1B 78 */	mr r30, r3
/* 80D45334  7C 9F 23 78 */	mr r31, r4
/* 80D45338  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80D4533C  4B 2C 80 EC */	b play__14mDoExt_baseAnmFv
/* 80D45340  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80D45344  90 1F 00 00 */	stw r0, 0(r31)
/* 80D45348  7F C3 F3 78 */	mr r3, r30
/* 80D4534C  4B FF F9 6D */	bl setAttnPos__14daObjZraRock_cFv
/* 80D45350  7F C3 F3 78 */	mr r3, r30
/* 80D45354  4B FF F9 E9 */	bl setBaseMtx__14daObjZraRock_cFv
/* 80D45358  38 60 00 01 */	li r3, 1
/* 80D4535C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D45360  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D45364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D45368  7C 08 03 A6 */	mtlr r0
/* 80D4536C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D45370  4E 80 00 20 */	blr 
