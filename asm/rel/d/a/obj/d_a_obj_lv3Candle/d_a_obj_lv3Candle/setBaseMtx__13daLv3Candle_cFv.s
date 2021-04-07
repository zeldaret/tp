lbl_80C57B38:
/* 80C57B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57B3C  7C 08 02 A6 */	mflr r0
/* 80C57B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C57B44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C57B48  7C 7F 1B 78 */	mr r31, r3
/* 80C57B4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C57B50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C57B54  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C57B58  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C57B5C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C57B60  4B 6E ED 89 */	bl PSMTXTrans
/* 80C57B64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C57B68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C57B6C  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80C57B70  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80C57B74  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80C57B78  4B 3B 47 29 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C57B7C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C57B80  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C57B84  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C57B88  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C57B8C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C57B90  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C57B94  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C57B98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C57B9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C57BA0  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C57BA4  38 84 00 24 */	addi r4, r4, 0x24
/* 80C57BA8  4B 6E E9 09 */	bl PSMTXCopy
/* 80C57BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C57BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C57BB4  7C 08 03 A6 */	mtlr r0
/* 80C57BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57BBC  4E 80 00 20 */	blr 
