lbl_807F7EC0:
/* 807F7EC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807F7EC4  7C 08 02 A6 */	mflr r0
/* 807F7EC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807F7ECC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807F7ED0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807F7ED4  7C 7F 1B 78 */	mr r31, r3
/* 807F7ED8  3C 60 80 80 */	lis r3, lit_3707@ha /* 0x807F81E8@ha */
/* 807F7EDC  3B C3 81 E8 */	addi r30, r3, lit_3707@l /* 0x807F81E8@l */
/* 807F7EE0  88 1F 05 BA */	lbz r0, 0x5ba(r31)
/* 807F7EE4  7C 00 07 75 */	extsb. r0, r0
/* 807F7EE8  40 82 00 54 */	bne lbl_807F7F3C
/* 807F7EEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F7EF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F7EF4  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 807F7EF8  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 807F7EFC  7D 89 03 A6 */	mtctr r12
/* 807F7F00  4E 80 04 21 */	bctrl 
/* 807F7F04  80 03 00 0C */	lwz r0, 0xc(r3)
/* 807F7F08  54 00 87 7F */	rlwinm. r0, r0, 0x10, 0x1d, 0x1f
/* 807F7F0C  41 82 00 5C */	beq lbl_807F7F68
/* 807F7F10  80 1F 04 A4 */	lwz r0, 0x4a4(r31)
/* 807F7F14  90 01 00 08 */	stw r0, 8(r1)
/* 807F7F18  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807F7F1C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807F7F20  38 81 00 08 */	addi r4, r1, 8
/* 807F7F24  4B 82 18 D5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807F7F28  28 03 00 00 */	cmplwi r3, 0
/* 807F7F2C  40 82 00 3C */	bne lbl_807F7F68
/* 807F7F30  38 00 00 01 */	li r0, 1
/* 807F7F34  98 1F 05 BA */	stb r0, 0x5ba(r31)
/* 807F7F38  48 00 00 30 */	b lbl_807F7F68
lbl_807F7F3C:
/* 807F7F3C  38 7F 04 F0 */	addi r3, r31, 0x4f0
/* 807F7F40  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807F7F44  C0 5E 00 04 */	lfs f2, 4(r30)
/* 807F7F48  4B A7 7B 39 */	bl cLib_addCalc0__FPfff
/* 807F7F4C  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 807F7F50  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807F7F54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F7F58  4C 40 13 82 */	cror 2, 0, 2
/* 807F7F5C  40 82 00 0C */	bne lbl_807F7F68
/* 807F7F60  7F E3 FB 78 */	mr r3, r31
/* 807F7F64  4B 82 1D 19 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_807F7F68:
/* 807F7F68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807F7F6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807F7F70  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807F7F74  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 807F7F78  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 807F7F7C  4B B4 E9 6D */	bl PSMTXTrans
/* 807F7F80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807F7F84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807F7F88  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807F7F8C  4B 81 44 A9 */	bl mDoMtx_YrotM__FPA4_fs
/* 807F7F90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807F7F94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807F7F98  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 807F7F9C  4B 81 44 01 */	bl mDoMtx_XrotM__FPA4_fs
/* 807F7FA0  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 807F7FA4  FC 40 08 90 */	fmr f2, f1
/* 807F7FA8  FC 60 08 90 */	fmr f3, f1
/* 807F7FAC  4B 81 4E 8D */	bl scaleM__14mDoMtx_stack_cFfff
/* 807F7FB0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807F7FB4  80 83 00 04 */	lwz r4, 4(r3)
/* 807F7FB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807F7FBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807F7FC0  38 84 00 24 */	addi r4, r4, 0x24
/* 807F7FC4  4B B4 E4 ED */	bl PSMTXCopy
/* 807F7FC8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807F7FCC  4B 81 86 E1 */	bl modelCalc__14mDoExt_McaMorfFv
/* 807F7FD0  38 60 00 01 */	li r3, 1
/* 807F7FD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807F7FD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807F7FDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807F7FE0  7C 08 03 A6 */	mtlr r0
/* 807F7FE4  38 21 00 20 */	addi r1, r1, 0x20
/* 807F7FE8  4E 80 00 20 */	blr 
