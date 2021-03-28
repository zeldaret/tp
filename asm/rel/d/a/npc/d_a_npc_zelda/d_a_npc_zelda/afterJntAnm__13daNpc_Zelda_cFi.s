lbl_80B75C9C:
/* 80B75C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B75CA0  7C 08 02 A6 */	mflr r0
/* 80B75CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B75CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B75CAC  7C 7F 1B 78 */	mr r31, r3
/* 80B75CB0  2C 04 00 01 */	cmpwi r4, 1
/* 80B75CB4  40 82 00 30 */	bne lbl_80B75CE4
/* 80B75CB8  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80B75CBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B75CC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B75CC4  4B 49 67 70 */	b mDoMtx_YrotM__FPA4_fs
/* 80B75CC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B75CCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B75CD0  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80B75CD4  7C 00 00 D0 */	neg r0, r0
/* 80B75CD8  7C 04 07 34 */	extsh r4, r0
/* 80B75CDC  4B 49 67 F0 */	b mDoMtx_ZrotM__FPA4_fs
/* 80B75CE0  48 00 00 34 */	b lbl_80B75D14
lbl_80B75CE4:
/* 80B75CE4  2C 04 00 04 */	cmpwi r4, 4
/* 80B75CE8  40 82 00 2C */	bne lbl_80B75D14
/* 80B75CEC  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80B75CF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B75CF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B75CF8  4B 49 67 3C */	b mDoMtx_YrotM__FPA4_fs
/* 80B75CFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B75D00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B75D04  A8 1F 0D 08 */	lha r0, 0xd08(r31)
/* 80B75D08  7C 00 00 D0 */	neg r0, r0
/* 80B75D0C  7C 04 07 34 */	extsh r4, r0
/* 80B75D10  4B 49 67 BC */	b mDoMtx_ZrotM__FPA4_fs
lbl_80B75D14:
/* 80B75D14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B75D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B75D1C  7C 08 03 A6 */	mtlr r0
/* 80B75D20  38 21 00 10 */	addi r1, r1, 0x10
/* 80B75D24  4E 80 00 20 */	blr 
