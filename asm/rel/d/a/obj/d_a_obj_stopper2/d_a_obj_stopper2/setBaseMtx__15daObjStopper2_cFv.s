lbl_80CEF3C8:
/* 80CEF3C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEF3CC  7C 08 02 A6 */	mflr r0
/* 80CEF3D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEF3D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEF3D8  7C 7F 1B 78 */	mr r31, r3
/* 80CEF3DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CEF3E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CEF3E4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CEF3E8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CEF3EC  C0 1F 05 74 */	lfs f0, 0x574(r31)
/* 80CEF3F0  EC 42 00 2A */	fadds f2, f2, f0
/* 80CEF3F4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CEF3F8  4B 65 74 F1 */	bl PSMTXTrans
/* 80CEF3FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CEF400  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CEF404  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CEF408  4B 31 D0 2D */	bl mDoMtx_YrotM__FPA4_fs
/* 80CEF40C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CEF410  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CEF414  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80CEF418  38 84 00 24 */	addi r4, r4, 0x24
/* 80CEF41C  4B 65 70 95 */	bl PSMTXCopy
/* 80CEF420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEF424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEF428  7C 08 03 A6 */	mtlr r0
/* 80CEF42C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEF430  4E 80 00 20 */	blr 
