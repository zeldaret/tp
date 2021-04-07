lbl_80BE9D5C:
/* 80BE9D5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE9D60  7C 08 02 A6 */	mflr r0
/* 80BE9D64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE9D68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BE9D6C  7C 7F 1B 78 */	mr r31, r3
/* 80BE9D70  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BE9D74  4B 42 2F F1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BE9D78  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BE9D7C  4B 42 31 C9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BE9D80  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BE9D84  28 04 00 00 */	cmplwi r4, 0
/* 80BE9D88  41 82 00 40 */	beq lbl_80BE9DC8
/* 80BE9D8C  C0 5F 04 F4 */	lfs f2, 0x4f4(r31)
/* 80BE9D90  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 80BE9D94  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BE9D98  3C 60 80 BF */	lis r3, lit_3656@ha /* 0x80BEB4C4@ha */
/* 80BE9D9C  C0 03 B4 C4 */	lfs f0, lit_3656@l(r3)  /* 0x80BEB4C4@l */
/* 80BE9DA0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BE9DA4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80BE9DA8  D0 24 00 18 */	stfs f1, 0x18(r4)
/* 80BE9DAC  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80BE9DB0  D0 44 00 20 */	stfs f2, 0x20(r4)
/* 80BE9DB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE9DB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE9DBC  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BE9DC0  38 84 00 24 */	addi r4, r4, 0x24
/* 80BE9DC4  4B 75 C6 ED */	bl PSMTXCopy
lbl_80BE9DC8:
/* 80BE9DC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BE9DCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE9DD0  7C 08 03 A6 */	mtlr r0
/* 80BE9DD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE9DD8  4E 80 00 20 */	blr 
