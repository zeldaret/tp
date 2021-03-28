lbl_80A93910:
/* 80A93910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A93914  7C 08 02 A6 */	mflr r0
/* 80A93918  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9391C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A93920  7C 7F 1B 78 */	mr r31, r3
/* 80A93924  2C 04 00 01 */	cmpwi r4, 1
/* 80A93928  40 82 00 28 */	bne lbl_80A93950
/* 80A9392C  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 80A93930  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A93934  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A93938  4B 57 8A FC */	b mDoMtx_YrotM__FPA4_fs
/* 80A9393C  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80A93940  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A93944  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A93948  4B 57 8B 84 */	b mDoMtx_ZrotM__FPA4_fs
/* 80A9394C  48 00 00 2C */	b lbl_80A93978
lbl_80A93950:
/* 80A93950  2C 04 00 04 */	cmpwi r4, 4
/* 80A93954  40 82 00 24 */	bne lbl_80A93978
/* 80A93958  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80A9395C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A93960  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A93964  4B 57 8A D0 */	b mDoMtx_YrotM__FPA4_fs
/* 80A93968  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80A9396C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A93970  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A93974  4B 57 8B 58 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80A93978:
/* 80A93978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9397C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A93980  7C 08 03 A6 */	mtlr r0
/* 80A93984  38 21 00 10 */	addi r1, r1, 0x10
/* 80A93988  4E 80 00 20 */	blr 
