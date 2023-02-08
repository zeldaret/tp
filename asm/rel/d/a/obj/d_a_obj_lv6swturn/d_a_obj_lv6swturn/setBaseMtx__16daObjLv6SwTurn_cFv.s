lbl_80C83AD4:
/* 80C83AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C83AD8  7C 08 02 A6 */	mflr r0
/* 80C83ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C83AE4  7C 7F 1B 78 */	mr r31, r3
/* 80C83AE8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C83AEC  4B 38 92 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C83AF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C83AF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C83AF8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C83AFC  4B 38 89 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C83B00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C83B04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C83B08  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C83B0C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C83B10  4B 6C 29 A1 */	bl PSMTXCopy
/* 80C83B14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C83B18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C83B1C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C83B20  4B 6C 29 91 */	bl PSMTXCopy
/* 80C83B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C83B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C83B2C  7C 08 03 A6 */	mtlr r0
/* 80C83B30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C83B34  4E 80 00 20 */	blr 
