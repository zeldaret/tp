lbl_80B54B44:
/* 80B54B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B54B48  7C 08 02 A6 */	mflr r0
/* 80B54B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B54B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B54B54  7C 7F 1B 78 */	mr r31, r3
/* 80B54B58  2C 04 00 01 */	cmpwi r4, 1
/* 80B54B5C  40 82 00 30 */	bne lbl_80B54B8C
/* 80B54B60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B54B64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B54B68  A8 1F 0D 12 */	lha r0, 0xd12(r31)
/* 80B54B6C  7C 00 00 D0 */	neg r0, r0
/* 80B54B70  7C 04 07 34 */	extsh r4, r0
/* 80B54B74  4B 4B 78 C0 */	b mDoMtx_YrotM__FPA4_fs
/* 80B54B78  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 80B54B7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B54B80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B54B84  4B 4B 79 48 */	b mDoMtx_ZrotM__FPA4_fs
/* 80B54B88  48 00 00 34 */	b lbl_80B54BBC
lbl_80B54B8C:
/* 80B54B8C  2C 04 00 04 */	cmpwi r4, 4
/* 80B54B90  40 82 00 2C */	bne lbl_80B54BBC
/* 80B54B94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B54B98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B54B9C  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80B54BA0  7C 00 00 D0 */	neg r0, r0
/* 80B54BA4  7C 04 07 34 */	extsh r4, r0
/* 80B54BA8  4B 4B 78 8C */	b mDoMtx_YrotM__FPA4_fs
/* 80B54BAC  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80B54BB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B54BB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B54BB8  4B 4B 79 14 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80B54BBC:
/* 80B54BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B54BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B54BC4  7C 08 03 A6 */	mtlr r0
/* 80B54BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B54BCC  4E 80 00 20 */	blr 
