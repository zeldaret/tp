lbl_805C4684:
/* 805C4684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C4688  7C 08 02 A6 */	mflr r0
/* 805C468C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C4690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C4694  7C 7F 1B 78 */	mr r31, r3
/* 805C4698  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805C469C  4B A4 86 C8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 805C46A0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805C46A4  4B A4 88 A0 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805C46A8  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 805C46AC  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 805C46B0  C0 7F 04 F4 */	lfs f3, 0x4f4(r31)
/* 805C46B4  4B A4 87 84 */	b scaleM__14mDoMtx_stack_cFfff
/* 805C46B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805C46BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805C46C0  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 805C46C4  38 84 00 24 */	addi r4, r4, 0x24
/* 805C46C8  4B D8 1D E8 */	b PSMTXCopy
/* 805C46CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C46D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C46D4  7C 08 03 A6 */	mtlr r0
/* 805C46D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805C46DC  4E 80 00 20 */	blr 
