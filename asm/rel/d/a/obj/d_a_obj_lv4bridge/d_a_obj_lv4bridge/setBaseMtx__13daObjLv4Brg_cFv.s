lbl_80C628B4:
/* 80C628B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C628B8  7C 08 02 A6 */	mflr r0
/* 80C628BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C628C0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C628C4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C628C8  7C 7E 1B 78 */	mr r30, r3
/* 80C628CC  3C 60 80 C6 */	lis r3, lit_3653@ha /* 0x80C63170@ha */
/* 80C628D0  3B E3 31 70 */	addi r31, r3, lit_3653@l /* 0x80C63170@l */
/* 80C628D4  C0 3E 05 BC */	lfs f1, 0x5bc(r30)
/* 80C628D8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C628DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C628E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C628E4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C628E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C628EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C628F0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C628F4  4B 3A 9A E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C628F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C628FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C62900  38 81 00 14 */	addi r4, r1, 0x14
/* 80C62904  7C 85 23 78 */	mr r5, r4
/* 80C62908  4B 6E 44 65 */	bl PSMTXMultVec
/* 80C6290C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C62910  4B 3A A4 55 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C62914  38 61 00 14 */	addi r3, r1, 0x14
/* 80C62918  4B 3A A4 BD */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80C6291C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C62920  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C62924  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C62928  4B 3A 9B 0D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C6292C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C62930  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C62934  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C62938  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C6293C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C62940  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C62944  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C62948  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6294C  38 81 00 08 */	addi r4, r1, 8
/* 80C62950  38 BE 05 C4 */	addi r5, r30, 0x5c4
/* 80C62954  4B 6E 44 19 */	bl PSMTXMultVec
/* 80C62958  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6295C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C62960  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 80C62964  38 84 00 24 */	addi r4, r4, 0x24
/* 80C62968  4B 6E 3B 49 */	bl PSMTXCopy
/* 80C6296C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C62970  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C62974  38 9E 05 6C */	addi r4, r30, 0x56c
/* 80C62978  4B 6E 3B 39 */	bl PSMTXCopy
/* 80C6297C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C62980  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C62984  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C62988  7C 08 03 A6 */	mtlr r0
/* 80C6298C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C62990  4E 80 00 20 */	blr 
