lbl_80D5DB38:
/* 80D5DB38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DB3C  7C 08 02 A6 */	mflr r0
/* 80D5DB40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DB44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5DB48  7C 7F 1B 78 */	mr r31, r3
/* 80D5DB4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D5DB50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D5DB54  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D5DB58  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D5DB5C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D5DB60  4B 5E 8D 88 */	b PSMTXTrans
/* 80D5DB64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D5DB68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D5DB6C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D5DB70  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D5DB74  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D5DB78  4B 2A E7 28 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80D5DB7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5DB80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DB84  7C 08 03 A6 */	mtlr r0
/* 80D5DB88  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DB8C  4E 80 00 20 */	blr 
