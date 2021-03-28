lbl_80D362D4:
/* 80D362D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D362D8  7C 08 02 A6 */	mflr r0
/* 80D362DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D362E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D362E4  7C 7F 1B 78 */	mr r31, r3
/* 80D362E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D362EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D362F0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D362F4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D362F8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D362FC  4B 61 05 EC */	b PSMTXTrans
/* 80D36300  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D36304  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D36308  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D3630C  4B 2D 61 28 */	b mDoMtx_YrotM__FPA4_fs
/* 80D36310  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D36314  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D36318  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D3631C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D36320  4B 61 01 90 */	b PSMTXCopy
/* 80D36324  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D36328  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D3632C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D36330  4B 61 01 80 */	b PSMTXCopy
/* 80D36334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D36338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3633C  7C 08 03 A6 */	mtlr r0
/* 80D36340  38 21 00 10 */	addi r1, r1, 0x10
/* 80D36344  4E 80 00 20 */	blr 
