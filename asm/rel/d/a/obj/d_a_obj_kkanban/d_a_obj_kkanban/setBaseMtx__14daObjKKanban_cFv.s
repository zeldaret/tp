lbl_80C467A4:
/* 80C467A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C467A8  7C 08 02 A6 */	mflr r0
/* 80C467AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C467B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C467B4  7C 7F 1B 78 */	mr r31, r3
/* 80C467B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C467BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C467C0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C467C4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C467C8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C467CC  4B 70 01 1C */	b PSMTXTrans
/* 80C467D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C467D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C467D8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C467DC  4B 3C 5C 58 */	b mDoMtx_YrotM__FPA4_fs
/* 80C467E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C467E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C467E8  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C467EC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C467F0  4B 6F FC C0 */	b PSMTXCopy
/* 80C467F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C467F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C467FC  7C 08 03 A6 */	mtlr r0
/* 80C46800  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46804  4E 80 00 20 */	blr 
