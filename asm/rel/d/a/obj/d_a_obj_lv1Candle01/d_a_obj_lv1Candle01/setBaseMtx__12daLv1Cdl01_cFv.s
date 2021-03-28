lbl_80C56D20:
/* 80C56D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C56D24  7C 08 02 A6 */	mflr r0
/* 80C56D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C56D2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C56D30  7C 7F 1B 78 */	mr r31, r3
/* 80C56D34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C56D38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C56D3C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C56D40  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C56D44  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C56D48  4B 6E FB A0 */	b PSMTXTrans
/* 80C56D4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C56D50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C56D54  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80C56D58  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80C56D5C  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80C56D60  4B 3B 55 40 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C56D64  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C56D68  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C56D6C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C56D70  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C56D74  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C56D78  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C56D7C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C56D80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C56D84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C56D88  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C56D8C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C56D90  4B 6E F7 20 */	b PSMTXCopy
/* 80C56D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C56D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C56D9C  7C 08 03 A6 */	mtlr r0
/* 80C56DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C56DA4  4E 80 00 20 */	blr 
