lbl_80BD3A9C:
/* 80BD3A9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD3AA0  7C 08 02 A6 */	mflr r0
/* 80BD3AA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD3AA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BD3AAC  3C 60 80 BD */	lis r3, lit_3703@ha /* 0x80BD3FF0@ha */
/* 80BD3AB0  3B E3 3F F0 */	addi r31, r3, lit_3703@l /* 0x80BD3FF0@l */
/* 80BD3AB4  7C 83 23 78 */	mr r3, r4
/* 80BD3AB8  38 81 00 08 */	addi r4, r1, 8
/* 80BD3ABC  4B 44 18 55 */	bl mDoLib_project__FP3VecP3Vec
/* 80BD3AC0  38 60 00 00 */	li r3, 0
/* 80BD3AC4  C0 41 00 08 */	lfs f2, 8(r1)
/* 80BD3AC8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80BD3ACC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80BD3AD0  4C 41 13 82 */	cror 2, 1, 2
/* 80BD3AD4  40 82 00 38 */	bne lbl_80BD3B0C
/* 80BD3AD8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80BD3ADC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BD3AE0  4C 40 13 82 */	cror 2, 0, 2
/* 80BD3AE4  40 82 00 28 */	bne lbl_80BD3B0C
/* 80BD3AE8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80BD3AEC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80BD3AF0  4C 41 13 82 */	cror 2, 1, 2
/* 80BD3AF4  40 82 00 18 */	bne lbl_80BD3B0C
/* 80BD3AF8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BD3AFC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BD3B00  4C 40 13 82 */	cror 2, 0, 2
/* 80BD3B04  40 82 00 08 */	bne lbl_80BD3B0C
/* 80BD3B08  38 60 00 01 */	li r3, 1
lbl_80BD3B0C:
/* 80BD3B0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BD3B10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD3B14  7C 08 03 A6 */	mtlr r0
/* 80BD3B18  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD3B1C  4E 80 00 20 */	blr 
