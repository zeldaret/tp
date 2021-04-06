lbl_805671F4:
/* 805671F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805671F8  7C 08 02 A6 */	mflr r0
/* 805671FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80567200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80567204  7C 7F 1B 78 */	mr r31, r3
/* 80567208  2C 04 00 01 */	cmpwi r4, 1
/* 8056720C  40 82 00 30 */	bne lbl_8056723C
/* 80567210  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80567214  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80567218  A8 1F 0D 12 */	lha r0, 0xd12(r31)
/* 8056721C  7C 00 00 D0 */	neg r0, r0
/* 80567220  7C 04 07 34 */	extsh r4, r0
/* 80567224  4B AA 52 11 */	bl mDoMtx_YrotM__FPA4_fs
/* 80567228  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 8056722C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80567230  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80567234  4B AA 52 99 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80567238  48 00 00 34 */	b lbl_8056726C
lbl_8056723C:
/* 8056723C  2C 04 00 04 */	cmpwi r4, 4
/* 80567240  40 82 00 2C */	bne lbl_8056726C
/* 80567244  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80567248  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8056724C  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80567250  7C 00 00 D0 */	neg r0, r0
/* 80567254  7C 04 07 34 */	extsh r4, r0
/* 80567258  4B AA 51 DD */	bl mDoMtx_YrotM__FPA4_fs
/* 8056725C  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80567260  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80567264  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80567268  4B AA 52 65 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8056726C:
/* 8056726C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80567270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80567274  7C 08 03 A6 */	mtlr r0
/* 80567278  38 21 00 10 */	addi r1, r1, 0x10
/* 8056727C  4E 80 00 20 */	blr 
