lbl_80B358F0:
/* 80B358F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B358F4  7C 08 02 A6 */	mflr r0
/* 80B358F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B358FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B35900  7C 7F 1B 78 */	mr r31, r3
/* 80B35904  80 64 05 68 */	lwz r3, 0x568(r4)
/* 80B35908  80 63 00 04 */	lwz r3, 4(r3)
/* 80B3590C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B35910  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B35914  1C 05 00 30 */	mulli r0, r5, 0x30
/* 80B35918  7C 63 02 14 */	add r3, r3, r0
/* 80B3591C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B35920  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B35924  4B 81 0B 8D */	bl PSMTXCopy
/* 80B35928  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3592C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B35930  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80B35934  D0 41 00 08 */	stfs f2, 8(r1)
/* 80B35938  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3593C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B35940  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B35944  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B35948  D0 5F 00 00 */	stfs f2, 0(r31)
/* 80B3594C  D0 3F 00 04 */	stfs f1, 4(r31)
/* 80B35950  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80B35954  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B35958  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B3595C  7C 08 03 A6 */	mtlr r0
/* 80B35960  38 21 00 20 */	addi r1, r1, 0x20
/* 80B35964  4E 80 00 20 */	blr 
