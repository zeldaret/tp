lbl_80593630:
/* 80593630  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80593634  7C 08 02 A6 */	mflr r0
/* 80593638  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059363C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80593640  7C 7F 1B 78 */	mr r31, r3
/* 80593644  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80593648  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059364C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80593650  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80593654  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80593658  4B DB 32 91 */	bl PSMTXTrans
/* 8059365C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80593660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80593664  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80593668  4B A7 8D CD */	bl mDoMtx_YrotM__FPA4_fs
/* 8059366C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80593670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80593674  A8 9F 05 BA */	lha r4, 0x5ba(r31)
/* 80593678  A8 BF 05 BC */	lha r5, 0x5bc(r31)
/* 8059367C  A8 DF 05 BE */	lha r6, 0x5be(r31)
/* 80593680  4B A7 8C 21 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80593684  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80593688  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059368C  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80593690  38 84 00 24 */	addi r4, r4, 0x24
/* 80593694  4B DB 2E 1D */	bl PSMTXCopy
/* 80593698  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059369C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805936A0  38 9F 05 6C */	addi r4, r31, 0x56c
/* 805936A4  4B DB 2E 0D */	bl PSMTXCopy
/* 805936A8  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 805936AC  28 00 00 00 */	cmplwi r0, 0
/* 805936B0  41 82 00 9C */	beq lbl_8059374C
/* 805936B4  88 1F 05 B9 */	lbz r0, 0x5b9(r31)
/* 805936B8  1C 80 00 0C */	mulli r4, r0, 0xc
/* 805936BC  3C 60 80 59 */	lis r3, l_key_offset@ha /* 0x80593E48@ha */
/* 805936C0  38 03 3E 48 */	addi r0, r3, l_key_offset@l /* 0x80593E48@l */
/* 805936C4  7C 60 22 14 */	add r3, r0, r4
/* 805936C8  C0 03 00 00 */	lfs f0, 0(r3)
/* 805936CC  D0 01 00 08 */	stfs f0, 8(r1)
/* 805936D0  C0 03 00 04 */	lfs f0, 4(r3)
/* 805936D4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805936D8  C0 03 00 08 */	lfs f0, 8(r3)
/* 805936DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805936E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805936E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805936E8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805936EC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 805936F0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 805936F4  4B DB 31 F5 */	bl PSMTXTrans
/* 805936F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805936FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80593700  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80593704  4B A7 8D 31 */	bl mDoMtx_YrotM__FPA4_fs
/* 80593708  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059370C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80593710  A8 9F 05 BA */	lha r4, 0x5ba(r31)
/* 80593714  A8 BF 05 BC */	lha r5, 0x5bc(r31)
/* 80593718  A8 DF 05 BE */	lha r6, 0x5be(r31)
/* 8059371C  4B A7 8B 85 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80593720  38 61 00 08 */	addi r3, r1, 8
/* 80593724  4B A7 96 B1 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80593728  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059372C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80593730  A8 9F 05 CC */	lha r4, 0x5cc(r31)
/* 80593734  4B A7 8C 69 */	bl mDoMtx_XrotM__FPA4_fs
/* 80593738  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059373C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80593740  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 80593744  38 84 00 24 */	addi r4, r4, 0x24
/* 80593748  4B DB 2D 69 */	bl PSMTXCopy
lbl_8059374C:
/* 8059374C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80593750  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80593754  7C 08 03 A6 */	mtlr r0
/* 80593758  38 21 00 20 */	addi r1, r1, 0x20
/* 8059375C  4E 80 00 20 */	blr 
