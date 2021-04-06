lbl_80554EBC:
/* 80554EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80554EC0  7C 08 02 A6 */	mflr r0
/* 80554EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80554EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80554ECC  7C 7F 1B 78 */	mr r31, r3
/* 80554ED0  2C 04 00 01 */	cmpwi r4, 1
/* 80554ED4  40 82 00 30 */	bne lbl_80554F04
/* 80554ED8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80554EDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80554EE0  A8 1F 0D 12 */	lha r0, 0xd12(r31)
/* 80554EE4  7C 00 00 D0 */	neg r0, r0
/* 80554EE8  7C 04 07 34 */	extsh r4, r0
/* 80554EEC  4B AB 75 49 */	bl mDoMtx_YrotM__FPA4_fs
/* 80554EF0  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 80554EF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80554EF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80554EFC  4B AB 75 D1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80554F00  48 00 00 34 */	b lbl_80554F34
lbl_80554F04:
/* 80554F04  2C 04 00 04 */	cmpwi r4, 4
/* 80554F08  40 82 00 2C */	bne lbl_80554F34
/* 80554F0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80554F10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80554F14  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80554F18  7C 00 00 D0 */	neg r0, r0
/* 80554F1C  7C 04 07 34 */	extsh r4, r0
/* 80554F20  4B AB 75 15 */	bl mDoMtx_YrotM__FPA4_fs
/* 80554F24  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80554F28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80554F2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80554F30  4B AB 75 9D */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80554F34:
/* 80554F34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80554F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80554F3C  7C 08 03 A6 */	mtlr r0
/* 80554F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80554F44  4E 80 00 20 */	blr 
