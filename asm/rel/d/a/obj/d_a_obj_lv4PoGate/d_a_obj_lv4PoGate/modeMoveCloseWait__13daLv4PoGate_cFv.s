lbl_80C60338:
/* 80C60338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6033C  7C 08 02 A6 */	mflr r0
/* 80C60340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C60344  88 83 05 B8 */	lbz r4, 0x5b8(r3)
/* 80C60348  28 04 00 00 */	cmplwi r4, 0
/* 80C6034C  41 82 00 10 */	beq lbl_80C6035C
/* 80C60350  38 04 FF FF */	addi r0, r4, -1
/* 80C60354  98 03 05 B8 */	stb r0, 0x5b8(r3)
/* 80C60358  48 00 00 08 */	b lbl_80C60360
lbl_80C6035C:
/* 80C6035C  48 00 00 15 */	bl init_modeMoveClose2__13daLv4PoGate_cFv
lbl_80C60360:
/* 80C60360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C60364  7C 08 03 A6 */	mtlr r0
/* 80C60368  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6036C  4E 80 00 20 */	blr 
