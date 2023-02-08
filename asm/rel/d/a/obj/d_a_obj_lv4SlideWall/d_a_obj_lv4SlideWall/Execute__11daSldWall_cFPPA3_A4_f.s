lbl_80C620E4:
/* 80C620E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C620E8  7C 08 02 A6 */	mflr r0
/* 80C620EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C620F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C620F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C620F8  7C 7E 1B 78 */	mr r30, r3
/* 80C620FC  7C 9F 23 78 */	mr r31, r4
/* 80C62100  48 00 00 35 */	bl moveWall__11daSldWall_cFv
/* 80C62104  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C62108  38 03 00 24 */	addi r0, r3, 0x24
/* 80C6210C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C62110  7F C3 F3 78 */	mr r3, r30
/* 80C62114  4B FF FD 9D */	bl setBaseMtx__11daSldWall_cFv
/* 80C62118  38 60 00 01 */	li r3, 1
/* 80C6211C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C62120  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C62124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C62128  7C 08 03 A6 */	mtlr r0
/* 80C6212C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C62130  4E 80 00 20 */	blr 
