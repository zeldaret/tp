lbl_809B32D0:
/* 809B32D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B32D4  7C 08 02 A6 */	mflr r0
/* 809B32D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B32DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B32E0  7C 7F 1B 78 */	mr r31, r3
/* 809B32E4  2C 04 00 01 */	cmpwi r4, 1
/* 809B32E8  40 82 00 30 */	bne lbl_809B3318
/* 809B32EC  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 809B32F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809B32F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809B32F8  4B 65 91 3D */	bl mDoMtx_YrotM__FPA4_fs
/* 809B32FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809B3300  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809B3304  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 809B3308  7C 00 00 D0 */	neg r0, r0
/* 809B330C  7C 04 07 34 */	extsh r4, r0
/* 809B3310  4B 65 91 BD */	bl mDoMtx_ZrotM__FPA4_fs
/* 809B3314  48 00 00 34 */	b lbl_809B3348
lbl_809B3318:
/* 809B3318  2C 04 00 0D */	cmpwi r4, 0xd
/* 809B331C  40 82 00 2C */	bne lbl_809B3348
/* 809B3320  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 809B3324  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809B3328  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809B332C  4B 65 91 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 809B3330  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809B3334  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809B3338  A8 1F 0D 08 */	lha r0, 0xd08(r31)
/* 809B333C  7C 00 00 D0 */	neg r0, r0
/* 809B3340  7C 04 07 34 */	extsh r4, r0
/* 809B3344  4B 65 91 89 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_809B3348:
/* 809B3348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B334C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B3350  7C 08 03 A6 */	mtlr r0
/* 809B3354  38 21 00 10 */	addi r1, r1, 0x10
/* 809B3358  4E 80 00 20 */	blr 
