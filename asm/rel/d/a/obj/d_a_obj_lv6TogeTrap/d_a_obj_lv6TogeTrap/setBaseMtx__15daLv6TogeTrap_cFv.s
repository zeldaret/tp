lbl_80C79F10:
/* 80C79F10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C79F14  7C 08 02 A6 */	mflr r0
/* 80C79F18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C79F1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C79F20  7C 7F 1B 78 */	mr r31, r3
/* 80C79F24  C0 63 06 10 */	lfs f3, 0x610(r3)
/* 80C79F28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C79F2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C79F30  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C79F34  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80C79F38  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C79F3C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C79F40  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80C79F44  4B 6C C9 A5 */	bl PSMTXTrans
/* 80C79F48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C79F4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C79F50  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C79F54  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C79F58  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C79F5C  4B 39 23 45 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C79F60  C0 3F 05 FC */	lfs f1, 0x5fc(r31)
/* 80C79F64  3C 60 80 C8 */	lis r3, lit_3665@ha /* 0x80C7C6E8@ha */
/* 80C79F68  C0 43 C6 E8 */	lfs f2, lit_3665@l(r3)  /* 0x80C7C6E8@l */
/* 80C79F6C  FC 60 10 90 */	fmr f3, f2
/* 80C79F70  4B 39 2E 2D */	bl transM__14mDoMtx_stack_cFfff
/* 80C79F74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C79F78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C79F7C  38 80 00 00 */	li r4, 0
/* 80C79F80  A8 BF 06 00 */	lha r5, 0x600(r31)
/* 80C79F84  38 C0 00 00 */	li r6, 0
/* 80C79F88  4B 39 23 19 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C79F8C  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 80C79F90  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 80C79F94  C0 7F 04 F4 */	lfs f3, 0x4f4(r31)
/* 80C79F98  4B 39 2E A1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C79F9C  3C 60 80 C8 */	lis r3, lit_3632@ha /* 0x80C7C61C@ha */
/* 80C79FA0  C0 03 C6 1C */	lfs f0, lit_3632@l(r3)  /* 0x80C7C61C@l */
/* 80C79FA4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C79FA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C79FAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C79FB0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C79FB4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C79FB8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C79FBC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C79FC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C79FC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C79FC8  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C79FCC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C79FD0  4B 6C C4 E1 */	bl PSMTXCopy
/* 80C79FD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C79FD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C79FDC  7C 08 03 A6 */	mtlr r0
/* 80C79FE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C79FE4  4E 80 00 20 */	blr 
