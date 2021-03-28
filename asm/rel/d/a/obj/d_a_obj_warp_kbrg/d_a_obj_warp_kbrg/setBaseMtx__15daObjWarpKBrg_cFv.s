lbl_80D27008:
/* 80D27008  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2700C  7C 08 02 A6 */	mflr r0
/* 80D27010  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D27014  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D27018  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D2701C  7C 7E 1B 78 */	mr r30, r3
/* 80D27020  3C 60 80 D3 */	lis r3, l_bmd_idx@ha
/* 80D27024  3B E3 95 B4 */	addi r31, r3, l_bmd_idx@l
/* 80D27028  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D2702C  4B 2E 5D 38 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D27030  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D27034  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D27038  80 9E 05 B0 */	lwz r4, 0x5b0(r30)
/* 80D2703C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D27040  4B 61 F4 70 */	b PSMTXCopy
/* 80D27044  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80D27048  4B 2E 5E FC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D2704C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D27050  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D27054  38 9E 05 6C */	addi r4, r30, 0x56c
/* 80D27058  4B 61 F4 58 */	b PSMTXCopy
/* 80D2705C  80 1E 05 BC */	lwz r0, 0x5bc(r30)
/* 80D27060  28 00 00 00 */	cmplwi r0, 0
/* 80D27064  41 82 00 48 */	beq lbl_80D270AC
/* 80D27068  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80D2706C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D27070  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80D27074  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D27078  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80D2707C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D27080  38 61 00 08 */	addi r3, r1, 8
/* 80D27084  4B 2E 5C E0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D27088  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80D2708C  FC 40 08 90 */	fmr f2, f1
/* 80D27090  FC 60 08 90 */	fmr f3, f1
/* 80D27094  4B 2E 5D A4 */	b scaleM__14mDoMtx_stack_cFfff
/* 80D27098  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D2709C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D270A0  80 9E 05 BC */	lwz r4, 0x5bc(r30)
/* 80D270A4  38 84 00 24 */	addi r4, r4, 0x24
/* 80D270A8  4B 61 F4 08 */	b PSMTXCopy
lbl_80D270AC:
/* 80D270AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D270B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D270B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D270B8  7C 08 03 A6 */	mtlr r0
/* 80D270BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D270C0  4E 80 00 20 */	blr 
