lbl_80C9D0D4:
/* 80C9D0D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9D0D8  7C 08 02 A6 */	mflr r0
/* 80C9D0DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9D0E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9D0E4  7C 7F 1B 78 */	mr r31, r3
/* 80C9D0E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9D0EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9D0F0  C0 3F 06 50 */	lfs f1, 0x650(r31)
/* 80C9D0F4  C0 5F 06 54 */	lfs f2, 0x654(r31)
/* 80C9D0F8  C0 7F 06 58 */	lfs f3, 0x658(r31)
/* 80C9D0FC  4B 6A 97 EC */	b PSMTXTrans
/* 80C9D100  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9D104  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9D108  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C9D10C  4B 36 F3 28 */	b mDoMtx_YrotM__FPA4_fs
/* 80C9D110  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9D114  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9D118  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C9D11C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9D120  4B 6A 93 90 */	b PSMTXCopy
/* 80C9D124  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9D128  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9D12C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C9D130  4B 6A 93 80 */	b PSMTXCopy
/* 80C9D134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9D138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9D13C  7C 08 03 A6 */	mtlr r0
/* 80C9D140  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9D144  4E 80 00 20 */	blr 
