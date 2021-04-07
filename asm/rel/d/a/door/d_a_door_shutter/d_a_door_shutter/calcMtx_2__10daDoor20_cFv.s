lbl_80462A5C:
/* 80462A5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80462A60  7C 08 02 A6 */	mflr r0
/* 80462A64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80462A68  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80462A6C  7C 7F 1B 78 */	mr r31, r3
/* 80462A70  3C 60 80 46 */	lis r3, lit_4018@ha /* 0x80466820@ha */
/* 80462A74  38 63 68 20 */	addi r3, r3, lit_4018@l /* 0x80466820@l */
/* 80462A78  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80462A7C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80462A80  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80462A84  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80462A88  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80462A8C  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 80462A90  D0 01 00 08 */	stfs f0, 8(r1)
/* 80462A94  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80462A98  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80462A9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80462AA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80462AA4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80462AA8  4B BA 99 35 */	bl mDoMtx_YrotS__FPA4_fs
/* 80462AAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80462AB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80462AB4  38 81 00 14 */	addi r4, r1, 0x14
/* 80462AB8  7C 85 23 78 */	mr r5, r4
/* 80462ABC  4B EE 42 B1 */	bl PSMTXMultVec
/* 80462AC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80462AC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80462AC8  38 81 00 08 */	addi r4, r1, 8
/* 80462ACC  7C 85 23 78 */	mr r5, r4
/* 80462AD0  4B EE 42 9D */	bl PSMTXMultVec
/* 80462AD4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80462AD8  4B BA A2 8D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80462ADC  38 61 00 14 */	addi r3, r1, 0x14
/* 80462AE0  4B BA A2 F5 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80462AE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80462AE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80462AEC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80462AF0  4B BA 99 45 */	bl mDoMtx_YrotM__FPA4_fs
/* 80462AF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80462AF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80462AFC  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 80462B00  38 84 00 24 */	addi r4, r4, 0x24
/* 80462B04  4B EE 39 AD */	bl PSMTXCopy
/* 80462B08  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80462B0C  4B BA A2 59 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80462B10  38 61 00 08 */	addi r3, r1, 8
/* 80462B14  4B BA A2 C1 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80462B18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80462B1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80462B20  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80462B24  38 04 7F FF */	addi r0, r4, 0x7fff
/* 80462B28  7C 04 07 34 */	extsh r4, r0
/* 80462B2C  4B BA 99 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 80462B30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80462B34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80462B38  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 80462B3C  38 84 00 24 */	addi r4, r4, 0x24
/* 80462B40  4B EE 39 71 */	bl PSMTXCopy
/* 80462B44  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80462B48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80462B4C  7C 08 03 A6 */	mtlr r0
/* 80462B50  38 21 00 30 */	addi r1, r1, 0x30
/* 80462B54  4E 80 00 20 */	blr 
