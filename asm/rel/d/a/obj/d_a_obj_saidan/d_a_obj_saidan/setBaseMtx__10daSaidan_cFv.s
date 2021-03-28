lbl_80CC3E28:
/* 80CC3E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC3E2C  7C 08 02 A6 */	mflr r0
/* 80CC3E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC3E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC3E38  7C 7F 1B 78 */	mr r31, r3
/* 80CC3E3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC3E40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC3E44  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CC3E48  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CC3E4C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CC3E50  4B 68 2A 98 */	b PSMTXTrans
/* 80CC3E54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC3E58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC3E5C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CC3E60  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80CC3E64  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80CC3E68  4B 34 84 38 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80CC3E6C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CC3E70  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CC3E74  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CC3E78  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CC3E7C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CC3E80  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CC3E84  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CC3E88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC3E8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC3E90  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CC3E94  38 84 00 24 */	addi r4, r4, 0x24
/* 80CC3E98  4B 68 26 18 */	b PSMTXCopy
/* 80CC3E9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC3EA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC3EA4  7C 08 03 A6 */	mtlr r0
/* 80CC3EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC3EAC  4E 80 00 20 */	blr 
