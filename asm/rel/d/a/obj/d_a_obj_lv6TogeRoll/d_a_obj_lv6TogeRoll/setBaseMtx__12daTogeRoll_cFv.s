lbl_80C77CC8:
/* 80C77CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C77CCC  7C 08 02 A6 */	mflr r0
/* 80C77CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C77CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C77CD8  7C 7F 1B 78 */	mr r31, r3
/* 80C77CDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C77CE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C77CE4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C77CE8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C77CEC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C77CF0  4B 6C EB F8 */	b PSMTXTrans
/* 80C77CF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C77CF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C77CFC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C77D00  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C77D04  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C77D08  4B 39 45 98 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C77D0C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C77D10  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C77D14  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C77D18  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C77D1C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C77D20  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C77D24  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C77D28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C77D2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C77D30  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C77D34  38 84 00 24 */	addi r4, r4, 0x24
/* 80C77D38  4B 6C E7 78 */	b PSMTXCopy
/* 80C77D3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C77D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C77D44  7C 08 03 A6 */	mtlr r0
/* 80C77D48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C77D4C  4E 80 00 20 */	blr 
