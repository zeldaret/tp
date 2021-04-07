lbl_80D1343C:
/* 80D1343C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D13440  7C 08 02 A6 */	mflr r0
/* 80D13444  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D13448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1344C  7C 7F 1B 78 */	mr r31, r3
/* 80D13450  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D13454  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D13458  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D1345C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D13460  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D13464  4B 63 34 85 */	bl PSMTXTrans
/* 80D13468  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D1346C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D13470  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D13474  4B 2F 8F C1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D13478  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D1347C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D13480  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D13484  38 84 00 24 */	addi r4, r4, 0x24
/* 80D13488  4B 63 30 29 */	bl PSMTXCopy
/* 80D1348C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D13490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D13494  7C 08 03 A6 */	mtlr r0
/* 80D13498  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1349C  4E 80 00 20 */	blr 
