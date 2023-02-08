lbl_80C15E44:
/* 80C15E44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C15E48  7C 08 02 A6 */	mflr r0
/* 80C15E4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C15E50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C15E54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C15E58  7C 7F 1B 78 */	mr r31, r3
/* 80C15E5C  3C 60 80 C1 */	lis r3, lit_3703@ha /* 0x80C164C8@ha */
/* 80C15E60  3B C3 64 C8 */	addi r30, r3, lit_3703@l /* 0x80C164C8@l */
/* 80C15E64  38 61 00 08 */	addi r3, r1, 8
/* 80C15E68  A8 9F 05 BC */	lha r4, 0x5bc(r31)
/* 80C15E6C  A8 BF 05 BE */	lha r5, 0x5be(r31)
/* 80C15E70  A8 DF 05 C0 */	lha r6, 0x5c0(r31)
/* 80C15E74  4B 65 15 81 */	bl __ct__5csXyzFsss
/* 80C15E78  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 80C15E7C  4B 3F 6E E9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C15E80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C15E84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C15E88  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C15E8C  3C 84 00 01 */	addis r4, r4, 1
/* 80C15E90  38 04 80 00 */	addi r0, r4, -32768
/* 80C15E94  7C 04 07 34 */	extsh r4, r0
/* 80C15E98  4B 3F 65 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C15E9C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C15EA0  FC 40 08 90 */	fmr f2, f1
/* 80C15EA4  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C15EA8  4B 3F 6E F5 */	bl transM__14mDoMtx_stack_cFfff
/* 80C15EAC  38 61 00 08 */	addi r3, r1, 8
/* 80C15EB0  4B 3F 70 95 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C15EB4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C15EB8  FC 40 08 90 */	fmr f2, f1
/* 80C15EBC  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80C15EC0  4B 3F 6E DD */	bl transM__14mDoMtx_stack_cFfff
/* 80C15EC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C15EC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C15ECC  80 9F 06 28 */	lwz r4, 0x628(r31)
/* 80C15ED0  38 84 00 24 */	addi r4, r4, 0x24
/* 80C15ED4  4B 73 05 DD */	bl PSMTXCopy
/* 80C15ED8  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80C15EDC  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80C15EE0  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80C15EE4  B0 01 00 08 */	sth r0, 8(r1)
/* 80C15EE8  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80C15EEC  B0 81 00 0C */	sth r4, 0xc(r1)
/* 80C15EF0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C15EF4  4B 3F 6E 71 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C15EF8  38 61 00 08 */	addi r3, r1, 8
/* 80C15EFC  4B 3F 70 49 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C15F00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C15F04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C15F08  80 9F 06 2C */	lwz r4, 0x62c(r31)
/* 80C15F0C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C15F10  4B 73 05 A1 */	bl PSMTXCopy
/* 80C15F14  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80C15F18  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80C15F1C  FC 60 10 90 */	fmr f3, f2
/* 80C15F20  4B 3F 6F 19 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C15F24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C15F28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C15F2C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C15F30  4B 73 05 81 */	bl PSMTXCopy
/* 80C15F34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C15F38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C15F3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C15F40  7C 08 03 A6 */	mtlr r0
/* 80C15F44  38 21 00 20 */	addi r1, r1, 0x20
/* 80C15F48  4E 80 00 20 */	blr 
