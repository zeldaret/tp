lbl_80CC5E7C:
/* 80CC5E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC5E80  7C 08 02 A6 */	mflr r0
/* 80CC5E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC5E88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC5E8C  7C 7F 1B 78 */	mr r31, r3
/* 80CC5E90  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80CC5E94  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CC5E98  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CC5E9C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CC5EA0  4B 68 0A 48 */	b PSMTXTrans
/* 80CC5EA4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80CC5EA8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CC5EAC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80CC5EB0  38 C0 00 00 */	li r6, 0
/* 80CC5EB4  4B 34 63 EC */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80CC5EB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC5EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC5EC0  7C 08 03 A6 */	mtlr r0
/* 80CC5EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC5EC8  4E 80 00 20 */	blr 
