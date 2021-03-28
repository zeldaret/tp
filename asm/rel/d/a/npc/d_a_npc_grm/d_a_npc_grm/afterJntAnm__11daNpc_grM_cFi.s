lbl_809D4944:
/* 809D4944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D4948  7C 08 02 A6 */	mflr r0
/* 809D494C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D4950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D4954  7C 7F 1B 78 */	mr r31, r3
/* 809D4958  2C 04 00 01 */	cmpwi r4, 1
/* 809D495C  40 82 00 30 */	bne lbl_809D498C
/* 809D4960  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809D4964  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809D4968  A8 1F 0D 12 */	lha r0, 0xd12(r31)
/* 809D496C  7C 00 00 D0 */	neg r0, r0
/* 809D4970  7C 04 07 34 */	extsh r4, r0
/* 809D4974  4B 63 7A C0 */	b mDoMtx_YrotM__FPA4_fs
/* 809D4978  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 809D497C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809D4980  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809D4984  4B 63 7B 48 */	b mDoMtx_ZrotM__FPA4_fs
/* 809D4988  48 00 00 34 */	b lbl_809D49BC
lbl_809D498C:
/* 809D498C  2C 04 00 04 */	cmpwi r4, 4
/* 809D4990  40 82 00 2C */	bne lbl_809D49BC
/* 809D4994  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809D4998  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809D499C  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 809D49A0  7C 00 00 D0 */	neg r0, r0
/* 809D49A4  7C 04 07 34 */	extsh r4, r0
/* 809D49A8  4B 63 7A 8C */	b mDoMtx_YrotM__FPA4_fs
/* 809D49AC  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 809D49B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809D49B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809D49B8  4B 63 7B 14 */	b mDoMtx_ZrotM__FPA4_fs
lbl_809D49BC:
/* 809D49BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D49C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D49C4  7C 08 03 A6 */	mtlr r0
/* 809D49C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809D49CC  4E 80 00 20 */	blr 
