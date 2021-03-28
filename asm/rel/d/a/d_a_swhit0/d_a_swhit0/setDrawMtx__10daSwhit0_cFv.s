lbl_804870E0:
/* 804870E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804870E4  7C 08 02 A6 */	mflr r0
/* 804870E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804870EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804870F0  7C 7F 1B 78 */	mr r31, r3
/* 804870F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804870F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804870FC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80487100  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80487104  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80487108  4B EB F7 E0 */	b PSMTXTrans
/* 8048710C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80487110  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80487114  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80487118  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 8048711C  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80487120  4B B8 50 44 */	b mDoMtx_XYZrotM__FPA4_fsss
/* 80487124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80487128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048712C  7C 08 03 A6 */	mtlr r0
/* 80487130  38 21 00 10 */	addi r1, r1, 0x10
/* 80487134  4E 80 00 20 */	blr 
