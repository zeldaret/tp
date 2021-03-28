lbl_80C7370C:
/* 80C7370C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73710  7C 08 02 A6 */	mflr r0
/* 80C73714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7371C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C73720  7C 7E 1B 78 */	mr r30, r3
/* 80C73724  7C 9F 23 78 */	mr r31, r4
/* 80C73728  48 00 00 35 */	bl moveBlock__13daLv6Lblock_cFv
/* 80C7372C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C73730  38 03 00 24 */	addi r0, r3, 0x24
/* 80C73734  90 1F 00 00 */	stw r0, 0(r31)
/* 80C73738  7F C3 F3 78 */	mr r3, r30
/* 80C7373C  4B FF FD 29 */	bl setBaseMtx__13daLv6Lblock_cFv
/* 80C73740  38 60 00 01 */	li r3, 1
/* 80C73744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C73748  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C7374C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73750  7C 08 03 A6 */	mtlr r0
/* 80C73754  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73758  4E 80 00 20 */	blr 
