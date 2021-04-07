lbl_80CC53B0:
/* 80CC53B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC53B4  7C 08 02 A6 */	mflr r0
/* 80CC53B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC53BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC53C0  7C 7F 1B 78 */	mr r31, r3
/* 80CC53C4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80CC53C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC53CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC53D0  C0 25 00 00 */	lfs f1, 0(r5)
/* 80CC53D4  C0 45 00 04 */	lfs f2, 4(r5)
/* 80CC53D8  3C 80 80 CC */	lis r4, lit_3669@ha /* 0x80CC690C@ha */
/* 80CC53DC  C0 04 69 0C */	lfs f0, lit_3669@l(r4)  /* 0x80CC690C@l */
/* 80CC53E0  EC 42 00 28 */	fsubs f2, f2, f0
/* 80CC53E4  C0 65 00 08 */	lfs f3, 8(r5)
/* 80CC53E8  4B 68 15 01 */	bl PSMTXTrans
/* 80CC53EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC53F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC53F4  A8 9F 00 34 */	lha r4, 0x34(r31)
/* 80CC53F8  4B 34 70 D5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80CC53FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC5400  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC5404  A8 9F 00 30 */	lha r4, 0x30(r31)
/* 80CC5408  4B 34 6F 95 */	bl mDoMtx_XrotM__FPA4_fs
/* 80CC540C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC5410  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC5414  A8 9F 00 32 */	lha r4, 0x32(r31)
/* 80CC5418  4B 34 70 1D */	bl mDoMtx_YrotM__FPA4_fs
/* 80CC541C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC5420  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC5424  80 9F 00 00 */	lwz r4, 0(r31)
/* 80CC5428  38 84 00 24 */	addi r4, r4, 0x24
/* 80CC542C  4B 68 10 85 */	bl PSMTXCopy
/* 80CC5430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC5434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC5438  7C 08 03 A6 */	mtlr r0
/* 80CC543C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC5440  4E 80 00 20 */	blr 
