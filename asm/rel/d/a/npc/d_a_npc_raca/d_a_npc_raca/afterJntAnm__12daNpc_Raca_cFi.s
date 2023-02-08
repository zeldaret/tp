lbl_80AB6984:
/* 80AB6984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB6988  7C 08 02 A6 */	mflr r0
/* 80AB698C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB6990  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB6994  7C 7F 1B 78 */	mr r31, r3
/* 80AB6998  2C 04 00 01 */	cmpwi r4, 1
/* 80AB699C  40 82 00 30 */	bne lbl_80AB69CC
/* 80AB69A0  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80AB69A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AB69A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AB69AC  4B 55 5A 89 */	bl mDoMtx_YrotM__FPA4_fs
/* 80AB69B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AB69B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AB69B8  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80AB69BC  7C 00 00 D0 */	neg r0, r0
/* 80AB69C0  7C 04 07 34 */	extsh r4, r0
/* 80AB69C4  4B 55 5B 09 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80AB69C8  48 00 00 34 */	b lbl_80AB69FC
lbl_80AB69CC:
/* 80AB69CC  2C 04 00 04 */	cmpwi r4, 4
/* 80AB69D0  40 82 00 2C */	bne lbl_80AB69FC
/* 80AB69D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AB69D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AB69DC  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80AB69E0  7C 00 00 D0 */	neg r0, r0
/* 80AB69E4  7C 04 07 34 */	extsh r4, r0
/* 80AB69E8  4B 55 5A 4D */	bl mDoMtx_YrotM__FPA4_fs
/* 80AB69EC  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80AB69F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AB69F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AB69F8  4B 55 5A D5 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80AB69FC:
/* 80AB69FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB6A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB6A04  7C 08 03 A6 */	mtlr r0
/* 80AB6A08  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB6A0C  4E 80 00 20 */	blr 
