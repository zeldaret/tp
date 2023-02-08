lbl_80CCD84C:
/* 80CCD84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCD850  7C 08 02 A6 */	mflr r0
/* 80CCD854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCD858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCD85C  7C 7F 1B 78 */	mr r31, r3
/* 80CCD860  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCD864  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCD868  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CCD86C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CCD870  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 80CCD874  EC 42 00 2A */	fadds f2, f2, f0
/* 80CCD878  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CCD87C  4B 67 90 6D */	bl PSMTXTrans
/* 80CCD880  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCD884  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCD888  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CCD88C  4B 33 EB A9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CCD890  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCD894  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCD898  A8 9F 05 B4 */	lha r4, 0x5b4(r31)
/* 80CCD89C  4B 33 EC 31 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80CCD8A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCD8A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCD8A8  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80CCD8AC  38 84 00 24 */	addi r4, r4, 0x24
/* 80CCD8B0  4B 67 8C 01 */	bl PSMTXCopy
/* 80CCD8B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCD8B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCD8BC  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CCD8C0  4B 67 8B F1 */	bl PSMTXCopy
/* 80CCD8C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCD8C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCD8CC  7C 08 03 A6 */	mtlr r0
/* 80CCD8D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCD8D4  4E 80 00 20 */	blr 
