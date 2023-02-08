lbl_8055C834:
/* 8055C834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C838  7C 08 02 A6 */	mflr r0
/* 8055C83C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C840  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055C844  7C 7F 1B 78 */	mr r31, r3
/* 8055C848  2C 04 00 01 */	cmpwi r4, 1
/* 8055C84C  40 82 00 28 */	bne lbl_8055C874
/* 8055C850  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 8055C854  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8055C858  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8055C85C  4B AA FB D9 */	bl mDoMtx_YrotM__FPA4_fs
/* 8055C860  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 8055C864  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8055C868  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8055C86C  4B AA FC 61 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8055C870  48 00 00 2C */	b lbl_8055C89C
lbl_8055C874:
/* 8055C874  2C 04 00 04 */	cmpwi r4, 4
/* 8055C878  40 82 00 24 */	bne lbl_8055C89C
/* 8055C87C  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 8055C880  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8055C884  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8055C888  4B AA FB AD */	bl mDoMtx_YrotM__FPA4_fs
/* 8055C88C  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 8055C890  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8055C894  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8055C898  4B AA FC 35 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8055C89C:
/* 8055C89C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055C8A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C8A4  7C 08 03 A6 */	mtlr r0
/* 8055C8A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C8AC  4E 80 00 20 */	blr 
