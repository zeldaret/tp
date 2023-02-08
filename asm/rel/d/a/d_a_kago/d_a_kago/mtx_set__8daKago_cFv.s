lbl_80853EF0:
/* 80853EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80853EF4  7C 08 02 A6 */	mflr r0
/* 80853EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80853EFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80853F00  7C 7F 1B 78 */	mr r31, r3
/* 80853F04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80853F08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80853F0C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80853F10  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80853F14  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80853F18  4B AF 29 D1 */	bl PSMTXTrans
/* 80853F1C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80853F20  4B 7B 90 25 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80853F24  3C 60 80 85 */	lis r3, l_HIO@ha /* 0x80854F78@ha */
/* 80853F28  38 63 4F 78 */	addi r3, r3, l_HIO@l /* 0x80854F78@l */
/* 80853F2C  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80853F30  FC 40 08 90 */	fmr f2, f1
/* 80853F34  FC 60 08 90 */	fmr f3, f1
/* 80853F38  4B 7B 8F 01 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80853F3C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80853F40  80 83 00 04 */	lwz r4, 4(r3)
/* 80853F44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80853F48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80853F4C  38 84 00 24 */	addi r4, r4, 0x24
/* 80853F50  4B AF 25 61 */	bl PSMTXCopy
/* 80853F54  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80853F58  4B 7B D2 95 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80853F5C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80853F60  80 63 00 04 */	lwz r3, 4(r3)
/* 80853F64  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80853F68  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80853F6C  38 63 05 40 */	addi r3, r3, 0x540
/* 80853F70  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80853F74  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80853F78  4B AF 25 39 */	bl PSMTXCopy
/* 80853F7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80853F80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80853F84  A8 9F 06 CA */	lha r4, 0x6ca(r31)
/* 80853F88  4B 7B 85 45 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80853F8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80853F90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80853F94  38 9F 06 20 */	addi r4, r31, 0x620
/* 80853F98  4B AF 25 19 */	bl PSMTXCopy
/* 80853F9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80853FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80853FA4  7C 08 03 A6 */	mtlr r0
/* 80853FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80853FAC  4E 80 00 20 */	blr 
