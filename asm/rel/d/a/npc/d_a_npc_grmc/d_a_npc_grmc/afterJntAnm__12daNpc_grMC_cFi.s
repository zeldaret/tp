lbl_809D7D48:
/* 809D7D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D7D4C  7C 08 02 A6 */	mflr r0
/* 809D7D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D7D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D7D58  7C 7F 1B 78 */	mr r31, r3
/* 809D7D5C  2C 04 00 01 */	cmpwi r4, 1
/* 809D7D60  40 82 00 30 */	bne lbl_809D7D90
/* 809D7D64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809D7D68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809D7D6C  A8 1F 0D 12 */	lha r0, 0xd12(r31)
/* 809D7D70  7C 00 00 D0 */	neg r0, r0
/* 809D7D74  7C 04 07 34 */	extsh r4, r0
/* 809D7D78  4B 63 46 BC */	b mDoMtx_YrotM__FPA4_fs
/* 809D7D7C  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 809D7D80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809D7D84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809D7D88  4B 63 47 44 */	b mDoMtx_ZrotM__FPA4_fs
/* 809D7D8C  48 00 00 34 */	b lbl_809D7DC0
lbl_809D7D90:
/* 809D7D90  2C 04 00 04 */	cmpwi r4, 4
/* 809D7D94  40 82 00 2C */	bne lbl_809D7DC0
/* 809D7D98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809D7D9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809D7DA0  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 809D7DA4  7C 00 00 D0 */	neg r0, r0
/* 809D7DA8  7C 04 07 34 */	extsh r4, r0
/* 809D7DAC  4B 63 46 88 */	b mDoMtx_YrotM__FPA4_fs
/* 809D7DB0  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 809D7DB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809D7DB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809D7DBC  4B 63 47 10 */	b mDoMtx_ZrotM__FPA4_fs
lbl_809D7DC0:
/* 809D7DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D7DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D7DC8  7C 08 03 A6 */	mtlr r0
/* 809D7DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 809D7DD0  4E 80 00 20 */	blr 
