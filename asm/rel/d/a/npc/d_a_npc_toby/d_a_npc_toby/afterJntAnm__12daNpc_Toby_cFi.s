lbl_80B1F5AC:
/* 80B1F5AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1F5B0  7C 08 02 A6 */	mflr r0
/* 80B1F5B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1F5B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1F5BC  7C 7F 1B 78 */	mr r31, r3
/* 80B1F5C0  2C 04 00 01 */	cmpwi r4, 1
/* 80B1F5C4  40 82 00 30 */	bne lbl_80B1F5F4
/* 80B1F5C8  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80B1F5CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B1F5D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B1F5D4  4B 4E CE 61 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B1F5D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B1F5DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B1F5E0  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80B1F5E4  7C 00 00 D0 */	neg r0, r0
/* 80B1F5E8  7C 04 07 34 */	extsh r4, r0
/* 80B1F5EC  4B 4E CE E1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80B1F5F0  48 00 00 34 */	b lbl_80B1F624
lbl_80B1F5F4:
/* 80B1F5F4  2C 04 00 04 */	cmpwi r4, 4
/* 80B1F5F8  40 82 00 2C */	bne lbl_80B1F624
/* 80B1F5FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B1F600  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B1F604  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80B1F608  7C 00 00 D0 */	neg r0, r0
/* 80B1F60C  7C 04 07 34 */	extsh r4, r0
/* 80B1F610  4B 4E CE 25 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B1F614  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80B1F618  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B1F61C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B1F620  4B 4E CE AD */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80B1F624:
/* 80B1F624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1F628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1F62C  7C 08 03 A6 */	mtlr r0
/* 80B1F630  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1F634  4E 80 00 20 */	blr 
