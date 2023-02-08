lbl_80B43C34:
/* 80B43C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B43C38  7C 08 02 A6 */	mflr r0
/* 80B43C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B43C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B43C44  7C 7F 1B 78 */	mr r31, r3
/* 80B43C48  2C 04 00 02 */	cmpwi r4, 2
/* 80B43C4C  40 82 00 30 */	bne lbl_80B43C7C
/* 80B43C50  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80B43C54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B43C58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B43C5C  4B 4C 87 D9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B43C60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B43C64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B43C68  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80B43C6C  7C 00 00 D0 */	neg r0, r0
/* 80B43C70  7C 04 07 34 */	extsh r4, r0
/* 80B43C74  4B 4C 88 59 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80B43C78  48 00 00 34 */	b lbl_80B43CAC
lbl_80B43C7C:
/* 80B43C7C  2C 04 00 04 */	cmpwi r4, 4
/* 80B43C80  40 82 00 2C */	bne lbl_80B43CAC
/* 80B43C84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B43C88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B43C8C  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80B43C90  7C 00 00 D0 */	neg r0, r0
/* 80B43C94  7C 04 07 34 */	extsh r4, r0
/* 80B43C98  4B 4C 87 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 80B43C9C  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80B43CA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B43CA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B43CA8  4B 4C 88 25 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80B43CAC:
/* 80B43CAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B43CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B43CB4  7C 08 03 A6 */	mtlr r0
/* 80B43CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B43CBC  4E 80 00 20 */	blr 
