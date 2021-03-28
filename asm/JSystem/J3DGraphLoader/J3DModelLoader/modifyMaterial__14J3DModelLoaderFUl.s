lbl_8033631C:
/* 8033631C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80336320  7C 08 02 A6 */	mflr r0
/* 80336324  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80336328  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8033632C  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80336330  7C 7E 1B 78 */	mr r30, r3
/* 80336334  54 80 04 A5 */	rlwinm. r0, r4, 0, 0x12, 0x12
/* 80336338  41 82 00 48 */	beq lbl_80336380
/* 8033633C  38 61 00 08 */	addi r3, r1, 8
/* 80336340  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80336344  4B FF 9C A9 */	bl __ct__18J3DMaterialFactoryFRC16J3DMaterialBlock
/* 80336348  3B E0 00 00 */	li r31, 0
/* 8033634C  48 00 00 20 */	b lbl_8033636C
lbl_80336350:
/* 80336350  38 61 00 08 */	addi r3, r1, 8
/* 80336354  80 84 00 08 */	lwz r4, 8(r4)
/* 80336358  57 E5 04 3E */	clrlwi r5, r31, 0x10
/* 8033635C  57 E0 13 BA */	rlwinm r0, r31, 2, 0xe, 0x1d
/* 80336360  7C 84 00 2E */	lwzx r4, r4, r0
/* 80336364  4B FF B3 29 */	bl modifyPatchedCurrentMtx__18J3DMaterialFactoryCFP11J3DMateriali
/* 80336368  3B FF 00 01 */	addi r31, r31, 1
lbl_8033636C:
/* 8033636C  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 80336370  80 9E 00 08 */	lwz r4, 8(r30)
/* 80336374  A0 04 00 04 */	lhz r0, 4(r4)
/* 80336378  7C 03 00 40 */	cmplw r3, r0
/* 8033637C  41 80 FF D4 */	blt lbl_80336350
lbl_80336380:
/* 80336380  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80336384  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80336388  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8033638C  7C 08 03 A6 */	mtlr r0
/* 80336390  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80336394  4E 80 00 20 */	blr 
