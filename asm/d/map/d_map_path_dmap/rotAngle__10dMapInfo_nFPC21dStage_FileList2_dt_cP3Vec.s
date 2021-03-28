lbl_8003EDEC:
/* 8003EDEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003EDF0  7C 08 02 A6 */	mflr r0
/* 8003EDF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003EDF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003EDFC  7C 9F 23 78 */	mr r31, r4
/* 8003EE00  38 80 00 00 */	li r4, 0
/* 8003EE04  28 03 00 00 */	cmplwi r3, 0
/* 8003EE08  41 82 00 08 */	beq lbl_8003EE10
/* 8003EE0C  A8 83 00 1C */	lha r4, 0x1c(r3)
lbl_8003EE10:
/* 8003EE10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8003EE14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8003EE18  4B FC D5 C5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8003EE1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8003EE20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8003EE24  7F E4 FB 78 */	mr r4, r31
/* 8003EE28  38 A1 00 08 */	addi r5, r1, 8
/* 8003EE2C  48 30 7F 41 */	bl PSMTXMultVec
/* 8003EE30  C0 01 00 08 */	lfs f0, 8(r1)
/* 8003EE34  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8003EE38  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8003EE3C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8003EE40  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8003EE44  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8003EE48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003EE4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003EE50  7C 08 03 A6 */	mtlr r0
/* 8003EE54  38 21 00 20 */	addi r1, r1, 0x20
/* 8003EE58  4E 80 00 20 */	blr 
