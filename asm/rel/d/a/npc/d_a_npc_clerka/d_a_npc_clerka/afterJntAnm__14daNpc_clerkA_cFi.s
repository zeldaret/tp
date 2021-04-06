lbl_809930EC:
/* 809930EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809930F0  7C 08 02 A6 */	mflr r0
/* 809930F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809930F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809930FC  7C 7F 1B 78 */	mr r31, r3
/* 80993100  2C 04 00 01 */	cmpwi r4, 1
/* 80993104  40 82 00 30 */	bne lbl_80993134
/* 80993108  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 8099310C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80993110  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80993114  4B 67 93 21 */	bl mDoMtx_YrotM__FPA4_fs
/* 80993118  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099311C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80993120  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80993124  7C 00 00 D0 */	neg r0, r0
/* 80993128  7C 04 07 34 */	extsh r4, r0
/* 8099312C  4B 67 93 A1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80993130  48 00 00 2C */	b lbl_8099315C
lbl_80993134:
/* 80993134  2C 04 00 04 */	cmpwi r4, 4
/* 80993138  40 82 00 24 */	bne lbl_8099315C
/* 8099313C  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80993140  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80993144  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80993148  4B 67 92 ED */	bl mDoMtx_YrotM__FPA4_fs
/* 8099314C  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80993150  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80993154  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80993158  4B 67 93 75 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8099315C:
/* 8099315C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80993160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80993164  7C 08 03 A6 */	mtlr r0
/* 80993168  38 21 00 10 */	addi r1, r1, 0x10
/* 8099316C  4E 80 00 20 */	blr 
