lbl_80C67834:
/* 80C67834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67838  7C 08 02 A6 */	mflr r0
/* 80C6783C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67840  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C67844  7C 7F 1B 78 */	mr r31, r3
/* 80C67848  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6784C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C67850  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C67854  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C67858  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 80C6785C  EC 42 00 2A */	fadds f2, f2, f0
/* 80C67860  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C67864  4B 6D F0 84 */	b PSMTXTrans
/* 80C67868  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6786C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C67870  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C67874  4B 3A 4B C0 */	b mDoMtx_YrotM__FPA4_fs
/* 80C67878  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6787C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C67880  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C67884  38 84 00 24 */	addi r4, r4, 0x24
/* 80C67888  4B 6D EC 28 */	b PSMTXCopy
/* 80C6788C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C67890  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C67894  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C67898  4B 6D EC 18 */	b PSMTXCopy
/* 80C6789C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C678A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C678A4  7C 08 03 A6 */	mtlr r0
/* 80C678A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C678AC  4E 80 00 20 */	blr 
