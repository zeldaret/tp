lbl_80D04F8C:
/* 80D04F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04F90  7C 08 02 A6 */	mflr r0
/* 80D04F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04F98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D04F9C  7C 7F 1B 78 */	mr r31, r3
/* 80D04FA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D04FA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D04FA8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D04FAC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D04FB0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D04FB4  4B 64 19 34 */	b PSMTXTrans
/* 80D04FB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D04FBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D04FC0  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D04FC4  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D04FC8  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D04FCC  4B 30 72 D4 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80D04FD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D04FD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D04FD8  A8 9F 13 8C */	lha r4, 0x138c(r31)
/* 80D04FDC  A8 BF 13 8E */	lha r5, 0x138e(r31)
/* 80D04FE0  A8 DF 13 90 */	lha r6, 0x1390(r31)
/* 80D04FE4  4B 30 72 BC */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80D04FE8  C0 3F 13 AC */	lfs f1, 0x13ac(r31)
/* 80D04FEC  C0 5F 13 B0 */	lfs f2, 0x13b0(r31)
/* 80D04FF0  C0 7F 13 B4 */	lfs f3, 0x13b4(r31)
/* 80D04FF4  4B 30 7D A8 */	b transM__14mDoMtx_stack_cFfff
/* 80D04FF8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D04FFC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D05000  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D05004  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D05008  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D0500C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80D05010  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D05014  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D05018  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D0501C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D05020  38 84 00 24 */	addi r4, r4, 0x24
/* 80D05024  4B 64 14 8C */	b PSMTXCopy
/* 80D05028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0502C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D05030  7C 08 03 A6 */	mtlr r0
/* 80D05034  38 21 00 10 */	addi r1, r1, 0x10
/* 80D05038  4E 80 00 20 */	blr 
