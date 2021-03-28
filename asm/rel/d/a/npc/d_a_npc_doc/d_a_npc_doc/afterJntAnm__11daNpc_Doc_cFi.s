lbl_809A7918:
/* 809A7918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A791C  7C 08 02 A6 */	mflr r0
/* 809A7920  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A7924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A7928  7C 7F 1B 78 */	mr r31, r3
/* 809A792C  2C 04 00 01 */	cmpwi r4, 1
/* 809A7930  40 82 00 30 */	bne lbl_809A7960
/* 809A7934  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 809A7938  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A793C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A7940  4B 66 4A F4 */	b mDoMtx_YrotM__FPA4_fs
/* 809A7944  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A7948  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A794C  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 809A7950  7C 00 00 D0 */	neg r0, r0
/* 809A7954  7C 04 07 34 */	extsh r4, r0
/* 809A7958  4B 66 4B 74 */	b mDoMtx_ZrotM__FPA4_fs
/* 809A795C  48 00 00 34 */	b lbl_809A7990
lbl_809A7960:
/* 809A7960  2C 04 00 04 */	cmpwi r4, 4
/* 809A7964  40 82 00 2C */	bne lbl_809A7990
/* 809A7968  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 809A796C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A7970  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A7974  4B 66 4A C0 */	b mDoMtx_YrotM__FPA4_fs
/* 809A7978  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A797C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A7980  A8 1F 0D 08 */	lha r0, 0xd08(r31)
/* 809A7984  7C 00 00 D0 */	neg r0, r0
/* 809A7988  7C 04 07 34 */	extsh r4, r0
/* 809A798C  4B 66 4B 40 */	b mDoMtx_ZrotM__FPA4_fs
lbl_809A7990:
/* 809A7990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A7994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A7998  7C 08 03 A6 */	mtlr r0
/* 809A799C  38 21 00 10 */	addi r1, r1, 0x10
/* 809A79A0  4E 80 00 20 */	blr 
