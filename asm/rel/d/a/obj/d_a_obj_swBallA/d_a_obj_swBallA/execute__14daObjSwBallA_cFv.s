lbl_80CF3A90:
/* 80CF3A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF3A94  7C 08 02 A6 */	mflr r0
/* 80CF3A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF3A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF3AA0  7C 7F 1B 78 */	mr r31, r3
/* 80CF3AA4  3C 60 80 CF */	lis r3, cNullVec__6Z2Calc@ha /* 0x80CF4418@ha */
/* 80CF3AA8  38 C3 44 18 */	addi r6, r3, cNullVec__6Z2Calc@l /* 0x80CF4418@l */
/* 80CF3AAC  3C 60 80 CF */	lis r3, data_80CF452C@ha /* 0x80CF452C@ha */
/* 80CF3AB0  38 A3 45 2C */	addi r5, r3, data_80CF452C@l /* 0x80CF452C@l */
/* 80CF3AB4  88 05 00 00 */	lbz r0, 0(r5)
/* 80CF3AB8  7C 00 07 75 */	extsb. r0, r0
/* 80CF3ABC  40 82 00 40 */	bne lbl_80CF3AFC
/* 80CF3AC0  80 66 00 24 */	lwz r3, 0x24(r6)
/* 80CF3AC4  80 06 00 28 */	lwz r0, 0x28(r6)
/* 80CF3AC8  90 66 00 3C */	stw r3, 0x3c(r6)
/* 80CF3ACC  90 06 00 40 */	stw r0, 0x40(r6)
/* 80CF3AD0  80 06 00 2C */	lwz r0, 0x2c(r6)
/* 80CF3AD4  90 06 00 44 */	stw r0, 0x44(r6)
/* 80CF3AD8  38 86 00 3C */	addi r4, r6, 0x3c
/* 80CF3ADC  80 66 00 30 */	lwz r3, 0x30(r6)
/* 80CF3AE0  80 06 00 34 */	lwz r0, 0x34(r6)
/* 80CF3AE4  90 64 00 0C */	stw r3, 0xc(r4)
/* 80CF3AE8  90 04 00 10 */	stw r0, 0x10(r4)
/* 80CF3AEC  80 06 00 38 */	lwz r0, 0x38(r6)
/* 80CF3AF0  90 04 00 14 */	stw r0, 0x14(r4)
/* 80CF3AF4  38 00 00 01 */	li r0, 1
/* 80CF3AF8  98 05 00 00 */	stb r0, 0(r5)
lbl_80CF3AFC:
/* 80CF3AFC  7F E3 FB 78 */	mr r3, r31
/* 80CF3B00  88 1F 05 AD */	lbz r0, 0x5ad(r31)
/* 80CF3B04  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CF3B08  39 86 00 3C */	addi r12, r6, 0x3c
/* 80CF3B0C  7D 8C 02 14 */	add r12, r12, r0
/* 80CF3B10  4B 66 E5 75 */	bl __ptmf_scall
/* 80CF3B14  60 00 00 00 */	nop 
/* 80CF3B18  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CF3B1C  4B 35 4D 51 */	bl eventUpdate__17dEvLib_callback_cFv
/* 80CF3B20  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF3B24  4B 31 99 05 */	bl play__14mDoExt_baseAnmFv
/* 80CF3B28  38 60 00 01 */	li r3, 1
/* 80CF3B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF3B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF3B34  7C 08 03 A6 */	mtlr r0
/* 80CF3B38  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF3B3C  4E 80 00 20 */	blr 
