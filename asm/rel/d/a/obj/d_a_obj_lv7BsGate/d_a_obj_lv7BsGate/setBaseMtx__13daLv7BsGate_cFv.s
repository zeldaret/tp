lbl_80C84930:
/* 80C84930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C84934  7C 08 02 A6 */	mflr r0
/* 80C84938  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8493C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C84940  7C 7F 1B 78 */	mr r31, r3
/* 80C84944  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C84948  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8494C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C84950  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C84954  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C84958  4B 6C 1F 91 */	bl PSMTXTrans
/* 80C8495C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C84960  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C84964  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C84968  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C8496C  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C84970  4B 38 79 31 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C84974  C0 3F 05 B8 */	lfs f1, 0x5b8(r31)
/* 80C84978  3C 60 80 C8 */	lis r3, lit_3650@ha /* 0x80C85218@ha */
/* 80C8497C  C0 43 52 18 */	lfs f2, lit_3650@l(r3)  /* 0x80C85218@l */
/* 80C84980  FC 60 10 90 */	fmr f3, f2
/* 80C84984  4B 38 84 19 */	bl transM__14mDoMtx_stack_cFfff
/* 80C84988  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C8498C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C84990  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C84994  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C84998  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C8499C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C849A0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C849A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C849A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C849AC  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C849B0  38 84 00 24 */	addi r4, r4, 0x24
/* 80C849B4  4B 6C 1A FD */	bl PSMTXCopy
/* 80C849B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C849BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C849C0  7C 08 03 A6 */	mtlr r0
/* 80C849C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C849C8  4E 80 00 20 */	blr 
