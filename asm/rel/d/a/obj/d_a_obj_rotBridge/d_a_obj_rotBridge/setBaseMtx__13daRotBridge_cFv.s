lbl_80CBEA24:
/* 80CBEA24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBEA28  7C 08 02 A6 */	mflr r0
/* 80CBEA2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBEA30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBEA34  7C 7F 1B 78 */	mr r31, r3
/* 80CBEA38  80 03 05 DC */	lwz r0, 0x5dc(r3)
/* 80CBEA3C  28 00 00 00 */	cmplwi r0, 0
/* 80CBEA40  41 82 00 8C */	beq lbl_80CBEACC
/* 80CBEA44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBEA48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBEA4C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CBEA50  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CBEA54  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CBEA58  4B 68 7E 90 */	b PSMTXTrans
/* 80CBEA5C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80CBEA60  2C 00 00 00 */	cmpwi r0, 0
/* 80CBEA64  40 82 00 18 */	bne lbl_80CBEA7C
/* 80CBEA68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBEA6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBEA70  38 80 C0 00 */	li r4, -16384
/* 80CBEA74  4B 34 D9 C0 */	b mDoMtx_YrotM__FPA4_fs
/* 80CBEA78  48 00 00 14 */	b lbl_80CBEA8C
lbl_80CBEA7C:
/* 80CBEA7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBEA80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBEA84  38 80 80 00 */	li r4, -32768
/* 80CBEA88  4B 34 D9 AC */	b mDoMtx_YrotM__FPA4_fs
lbl_80CBEA8C:
/* 80CBEA8C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CBEA90  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CBEA94  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CBEA98  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CBEA9C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CBEAA0  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CBEAA4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CBEAA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBEAAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBEAB0  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CBEAB4  38 84 00 24 */	addi r4, r4, 0x24
/* 80CBEAB8  4B 68 79 F8 */	b PSMTXCopy
/* 80CBEABC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBEAC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBEAC4  38 9F 05 E0 */	addi r4, r31, 0x5e0
/* 80CBEAC8  4B 68 79 E8 */	b PSMTXCopy
lbl_80CBEACC:
/* 80CBEACC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBEAD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBEAD4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CBEAD8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CBEADC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CBEAE0  4B 68 7E 08 */	b PSMTXTrans
/* 80CBEAE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBEAE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBEAEC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CBEAF0  4B 34 D9 44 */	b mDoMtx_YrotM__FPA4_fs
/* 80CBEAF4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CBEAF8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CBEAFC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CBEB00  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CBEB04  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CBEB08  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CBEB0C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CBEB10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBEB14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBEB18  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CBEB1C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CBEB20  4B 68 79 90 */	b PSMTXCopy
/* 80CBEB24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBEB28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBEB2C  7C 08 03 A6 */	mtlr r0
/* 80CBEB30  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBEB34  4E 80 00 20 */	blr 
