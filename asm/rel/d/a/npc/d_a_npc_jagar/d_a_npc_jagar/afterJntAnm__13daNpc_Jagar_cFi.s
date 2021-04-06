lbl_80A15364:
/* 80A15364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A15368  7C 08 02 A6 */	mflr r0
/* 80A1536C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A15370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A15374  7C 7F 1B 78 */	mr r31, r3
/* 80A15378  2C 04 00 01 */	cmpwi r4, 1
/* 80A1537C  40 82 00 30 */	bne lbl_80A153AC
/* 80A15380  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80A15384  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A15388  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A1538C  4B 5F 70 A9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A15390  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A15394  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A15398  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80A1539C  7C 00 00 D0 */	neg r0, r0
/* 80A153A0  7C 04 07 34 */	extsh r4, r0
/* 80A153A4  4B 5F 71 29 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80A153A8  48 00 00 2C */	b lbl_80A153D4
lbl_80A153AC:
/* 80A153AC  2C 04 00 04 */	cmpwi r4, 4
/* 80A153B0  40 82 00 24 */	bne lbl_80A153D4
/* 80A153B4  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80A153B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A153BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A153C0  4B 5F 70 75 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A153C4  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80A153C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A153CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A153D0  4B 5F 70 FD */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80A153D4:
/* 80A153D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A153D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A153DC  7C 08 03 A6 */	mtlr r0
/* 80A153E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A153E4  4E 80 00 20 */	blr 
