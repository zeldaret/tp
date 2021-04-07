lbl_80CC1614:
/* 80CC1614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC1618  7C 08 02 A6 */	mflr r0
/* 80CC161C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC1620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC1624  7C 7F 1B 78 */	mr r31, r3
/* 80CC1628  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CC162C  4B 34 B7 39 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CC1630  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC1634  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC1638  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CC163C  4B 34 AD F9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CC1640  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC1644  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC1648  A8 9F 05 CE */	lha r4, 0x5ce(r31)
/* 80CC164C  4B 34 AD E9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CC1650  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC1654  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC1658  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CC165C  4B 68 4E 55 */	bl PSMTXCopy
/* 80CC1660  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC1664  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC1668  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CC166C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CC1670  4B 68 4E 41 */	bl PSMTXCopy
/* 80CC1674  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC1678  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC167C  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80CC1680  38 84 00 24 */	addi r4, r4, 0x24
/* 80CC1684  4B 68 4E 2D */	bl PSMTXCopy
/* 80CC1688  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC168C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC1690  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80CC1694  38 84 00 24 */	addi r4, r4, 0x24
/* 80CC1698  4B 68 4E 19 */	bl PSMTXCopy
/* 80CC169C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC16A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC16A4  7C 08 03 A6 */	mtlr r0
/* 80CC16A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC16AC  4E 80 00 20 */	blr 
