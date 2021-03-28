lbl_80BE82D0:
/* 80BE82D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE82D4  7C 08 02 A6 */	mflr r0
/* 80BE82D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE82DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE82E0  7C 7F 1B 78 */	mr r31, r3
/* 80BE82E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BE82E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BE82EC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BE82F0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BE82F4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BE82F8  4B 75 E5 F0 */	b PSMTXTrans
/* 80BE82FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BE8300  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BE8304  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80BE8308  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80BE830C  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80BE8310  4B 42 3F 90 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80BE8314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE8318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE831C  7C 08 03 A6 */	mtlr r0
/* 80BE8320  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE8324  4E 80 00 20 */	blr 
