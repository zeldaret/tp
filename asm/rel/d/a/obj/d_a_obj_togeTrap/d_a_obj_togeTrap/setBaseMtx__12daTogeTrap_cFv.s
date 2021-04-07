lbl_80D17C74:
/* 80D17C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D17C78  7C 08 02 A6 */	mflr r0
/* 80D17C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D17C80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D17C84  7C 7F 1B 78 */	mr r31, r3
/* 80D17C88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D17C8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D17C90  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D17C94  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D17C98  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D17C9C  4B 62 EC 4D */	bl PSMTXTrans
/* 80D17CA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D17CA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D17CA8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D17CAC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D17CB0  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D17CB4  4B 2F 45 ED */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D17CB8  80 7F 0A D4 */	lwz r3, 0xad4(r31)
/* 80D17CBC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D17CC0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D17CC4  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D17CC8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D17CCC  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80D17CD0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D17CD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D17CD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D17CDC  80 9F 0A D4 */	lwz r4, 0xad4(r31)
/* 80D17CE0  38 84 00 24 */	addi r4, r4, 0x24
/* 80D17CE4  4B 62 E7 CD */	bl PSMTXCopy
/* 80D17CE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D17CEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D17CF0  C0 3F 04 A8 */	lfs f1, 0x4a8(r31)
/* 80D17CF4  C0 5F 04 AC */	lfs f2, 0x4ac(r31)
/* 80D17CF8  C0 7F 04 B0 */	lfs f3, 0x4b0(r31)
/* 80D17CFC  4B 62 EB ED */	bl PSMTXTrans
/* 80D17D00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D17D04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D17D08  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D17D0C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D17D10  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D17D14  4B 2F 45 8D */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D17D18  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 80D17D1C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D17D20  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D17D24  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D17D28  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D17D2C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80D17D30  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D17D34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D17D38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D17D3C  80 9F 0A D8 */	lwz r4, 0xad8(r31)
/* 80D17D40  38 84 00 24 */	addi r4, r4, 0x24
/* 80D17D44  4B 62 E7 6D */	bl PSMTXCopy
/* 80D17D48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D17D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D17D50  7C 08 03 A6 */	mtlr r0
/* 80D17D54  38 21 00 10 */	addi r1, r1, 0x10
/* 80D17D58  4E 80 00 20 */	blr 
